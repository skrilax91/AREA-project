import 'package:area/src/domain/entities/short_service.dart';
import 'package:area/src/presentation/controllers/new_area_form_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'services_dropdown.dart';
import '../../widgets/input_field.dart';

class TriggerForm extends ConsumerWidget {
  const TriggerForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = ref.watch(newAreaFormControllerProvider).requireValue;
    final controller = ref.read(newAreaFormControllerProvider.notifier);

    return Form(
      child: Column(
        children: [
          ServiceDropdown(
            hint: "Choose Action Service",
            list: form.services,
            value: form.selectedTriggerService,
            onChanged: controller.selectTriggerService,
            getDisplay: (e) => e.name,
          ),
          if (form.selectedTriggerService != null)
            ServiceDropdown(
              hint: "Choose Action",
              list: form.triggers,
              value: form.selectedTrigger,
              onChanged: controller.selectTrigger,
              getDisplay: (e) => e.name,
            ),
        ],
      ),
    );
  }
}

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
          const TriggerForm(),
          const SizedBox(
            height: 16.0,
          ),
          Container(
            child: Column(
              children: [
                ServiceDropdown(
                  hint: "Choose Reaction Service",
                  list: form.services,
                  onChanged: controller.selectActionService,
                  value: form.selectedActionService,
                  getDisplay: (e) => e.name,
                ),
              ],
            ),
          ),
        ],
      );
    }
  }
}
