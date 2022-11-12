import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AreaListPage extends ConsumerWidget {
  const AreaListPage({super.key});
  static String get routeName => 'areas';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text("Areas"),
      ],
    );
  }
}
