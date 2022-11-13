import 'package:area/src/domain/entities/short_service.dart';
import 'package:area/src/presentation/controllers/new_area_form_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'services_dropdown.dart';

class NewAreaPage extends ConsumerWidget {
  const NewAreaPage({super.key});
  static String get routeName => 'new_area';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formState = ref.watch(newAreaFormControllerProvider);
    final controller = ref.read(newAreaFormControllerProvider.notifier);
    final form = formState.value;

    if (formState.isLoading || form == null) {
      return const CircularProgressIndicator();
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.all(Radius.circular(3.0)),
            ),
            child: Column(
              children: [
                ServiceDropdown(
                  onChanged: controller.selectTrigger,
                  value: form.selectedTrigger,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Container(
            child: Column(
              children: [
                ServiceDropdown(
                  onChanged: controller.selectAction,
                  value: form.selectedAction,
                ),
              ],
            ),
          ),
        ],
      );
    }
  }
}
