import 'package:area/src/controllers/short_service_list_controller.dart';
import 'package:area/src/controllers/short_service_list_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ServiceList extends ConsumerWidget {
  const ServiceList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(shortServiceListControllerProvider);

    if (state is LoadedShortServiceListState) {
      final services = state.shortServiceList;
      return ListView.builder(
        itemBuilder: (context, index) {
          return Text(services[index].name);
        },
      );
    } else if (state is LoadingShortServiceListState) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CircularProgressIndicator(),
        ],
      );
    } else if (state is ErrorShortServiceListState) {
      return Text("Error : ${state.error}");
    }
    return const Text("wtf");
  }
}

class NewAreaPage extends ConsumerWidget {
  const NewAreaPage({super.key});
  static String get routeName => 'new_area';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(shortServiceListControllerProvider.notifier).get();

    return const ServiceList();
  }
}
