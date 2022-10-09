import 'package:flutter/material.dart';
import 'package:user_repository/user_repository.dart';
import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:area/authentication/authentication.dart';
import 'package:area/splash/splash.dart';
import 'package:area/login/login.dart';

class App extends StatelessWidget {
  const App({
      super.key,
      required this.authenticationRepository,
      required this.userRepository,
  });

    final AuthenticationRepository authenticationRepository;
    final UserRepository userRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
        value: authenticationRepository,
        child: BlocProvider(
            create: (_) => AuthenticationBloc(
                authenticationRepository: authenticationRepository,
                userRepository: userRepository,
            ),
            child: const AppView(),
        ),
    );
  }
}

class AppView extends StatefulWidget {
    const AppView({super.key});

    @override
    State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
    final _navigatorKey = GlobalKey<NavigatorState>();

    NavigatorState get _navigator => _navigatorKey.currentState!;

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            navigatorKey: _navigatorKey,
            theme: ThemeData(
                useMaterial3: true,
            ),
            darkTheme: ThemeData(
                useMaterial3: true,
            ),
            builder: (context, child) {
                return BlocListener<AuthenticationBloc, AuthenticationState>(
                    listener: (context, state) {
                        switch (state.status) {
                            /* Todo : Implement Home Page
                            case AuthenticationStatus.authenticated:
                                _navigator.pushAndRemoveUntil<void>(
                                    HomePage.route(),
                                    (route) => false,
                                );
                                break;
                            */
                            case AuthenticationStatus.unauthenticated:
                                _navigator.pushAndRemoveUntil(
                                    LoginPage.route(),
                                    (route) => false,
                                );
                                break;
                            default:
                                break;
                        }
                    },
                    child: child,
                );
            },
            onGenerateRoute: (_) => SplashPage.route(),
        );
    }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
