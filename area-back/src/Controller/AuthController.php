<?php

namespace App\Controller;

use App\Entity\AuthToken;
use App\Entity\User;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Http\Attribute\CurrentUser;

#[Route('/api/auth', name: 'api_auth_')]
class AuthController extends AbstractController
{
    private EntityManagerInterface $em;
    private UserPasswordHasherInterface $userPasswordHasher;

    public function __construct(EntityManagerInterface $em, UserPasswordHasherInterface $userPasswordHasher)
    {
        $this->em = $em;
        $this->userPasswordHasher = $userPasswordHasher;
    }

    #[Route('/register', name: 'register', methods: ["POST"])]
    public function register(Request $request): JsonResponse
    {
        $params = json_decode($request->getContent(), true);

        if (empty($params["username"])) {
            return $this->json(['message' => 'Username field should be supplied', 'field' => 'username'], 400);
        }
        if (empty($params["password"])) {
            return $this->json(['message' => 'Password field should be supplied', 'field' => 'password'], 400);
        }

        if ($this->em->getRepository(User::class)->findOneByEmail($params["username"]))
            return $this->json(['message' => 'Email already exist', 'field' => 'username'], 409);

        if (strlen($params["password"]) < 8 || !preg_match('~[0-9]+~', $params['password']))
            return $this->json(['message' => 'Password need to be more than 8 characters and should contain a number', 'field' => 'password'], 400);

        $user = new User($params["username"]);
        $user->setPassword($this->userPasswordHasher->hashPassword($user, $params['password']));

        $this->em->persist($user);
        $this->em->flush();

        return $this->json(['message' => 'Successfully created account']);
    }


    #[Route('/login', name: 'login', methods: ['POST'])]
    public function login(): JsonResponse
    {
        $user = $this->getUser();
        if (!$user) {
            return $this->json(['message' => 'missing credentials'], 403);
        }

        $authToken = new AuthToken($user, sha1(random_bytes(10)));
        $this->em->persist($authToken);
        $this->em->flush();

        return $this->json([
            'token' => $authToken->getToken(),
            'user' => [
                'id' => $user->getId(),
                'email' => $user->getEmail()
            ]
        ]);
    }

    #[Route('/logout', name: 'logout')]
    public function logout(): JsonResponse
    {
        $user = $this->getUser();
        if (!$user) {
            return $this->json(['message' => 'This route need a token'], 403);
        }

        $authToken = $this->em->getRepository(AuthToken::class)->findOneByUser($user);

        if (null === $authToken) {
            return $this->json(['message' => "Can't find token"], 404);
        }

        $this->em->remove($authToken);
        $this->em->flush();
        
        return $this->json([
            'message' => "Successfully logged out"
        ]);
    }
}
