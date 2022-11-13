import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:area/src/domain/entities/short_service.dart';
import 'package:area/src/presentation/controllers/new_area_form_controller.dart';

class ServiceDropdown extends ConsumerWidget {
  const ServiceDropdown({
    required this.onChanged,
    required this.value,
    Key? key,
  }) : super(key: key);

  final void Function(ShortService?)? onChanged;
  final ShortService? value;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formState = ref.watch(newAreaFormControllerProvider);

    return DropdownButton(
      items: formState.value!.services
          .map<DropdownMenuItem<ShortService>>((ShortService service) {
        return DropdownMenuItem<ShortService>(
          value: service,
          child: Text(service.name),
        );
      }).toList(),
      value: value,
      onChanged: (e) {
        onChanged!(e);
      },
    );
  }
}
