import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final helloWorldProvider = Provider((_) => 'Hello World');

class App extends ConsumerWidget {
    const App({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context, WidgetRef ref) {
        final String value = ref.watch(helloWorldProvider);

        return MaterialApp(
            theme: ThemeData(
                useMaterial3: true,
            ),
            home: Scaffold(
                appBar: AppBar(title: const Text('AREA')),
                body: Center(
                    child: Text(value),
                ),
            ),
        );
    }
}
