import "package:flutter/services.dart";
import "package:flutter/material.dart";
import "package:dynamic_color/dynamic_color.dart";
import "package:area/src/presentation/router.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routerProvider);

    return DynamicColorBuilder(
      builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
        return MaterialApp.router(
          routeInformationParser: router.routeInformationParser,
          routerDelegate: router.routerDelegate,
          routeInformationProvider: router.routeInformationProvider,
          title: "AREA",
          builder: (context, child) {
            Color overlayColor = Theme.of(context).scaffoldBackgroundColor;
            final systemBarColors = SystemUiOverlayStyle(
              systemNavigationBarColor: overlayColor,
              statusBarIconBrightness: Brightness.dark,
              statusBarColor: Colors.transparent,
            );
            SystemChrome.setSystemUIOverlayStyle(systemBarColors);
            return AnnotatedRegion<SystemUiOverlayStyle>(
              value: systemBarColors,
              child: Scaffold(
                body: SafeArea(
                  minimum: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
                  child: child ?? const Text("where app ? 🐒"),
                ),
              ),
            );
          },
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: lightDynamic,
          ),
        );
      },
    );
  }
}
