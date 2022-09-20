<?php

namespace App\Controller;

use App\Entity\AuthToken;
use App\Entity\User;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Http\Attribute\CurrentUser;

#[Route('/api/auth', name: 'api_auth_')]
class AuthController extends AbstractController
{
    private EntityManagerInterface $em;

    public function __construct(EntityManagerInterface $em)
    {
        $this->em = $em;
    }


    #[Route('/login', name: 'login')]
    public function login(#[CurrentUser] ?User $user): JsonResponse
    {
        if (null === $user) {
            return $this->json([
                'message' => 'missing credentials',
            ], 403);
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
    public function logout(#[CurrentUser] ?User $user): JsonResponse
    {
        if (null === $user) {
            return $this->json([
                'message' => 'This route need a token',
            ], 403);
        }

        $authToken = $this->em->getRepository(AuthToken::class)->findOneByUser($user);

        if (null === $authToken) {
            return $this->json([
                'message' => "Can't find token",
            ], 404);
        }

        return $this->json([
            'message' => "Successfully logged out"
        ]);
    }
}
