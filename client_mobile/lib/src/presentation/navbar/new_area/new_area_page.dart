import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NewAreaPage extends ConsumerWidget {
  const NewAreaPage({super.key});
  static String get routeName => 'new_area';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text("New Area"),
      ],
    );
  }
}
