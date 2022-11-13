import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:area/src/domain/entities/short_service.dart';
import 'package:area/src/presentation/controllers/new_area_form_controller.dart';

class ServiceDropdown<T> extends ConsumerWidget {
  const ServiceDropdown({
    required this.onChanged,
    required this.value,
    required this.list,
    required this.getDisplay,
    this.hint,
    Key? key,
  }) : super(key: key);

  final T? value;
  final List<T> list;
  final String? hint;
  final void Function(T?)? onChanged;
  final String Function(T) getDisplay;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formState = ref.watch(newAreaFormControllerProvider);

    return DropdownButton(
      hint: Text(hint ?? ""),
      disabledHint: const Text("Server Error"),
      items: list.map<DropdownMenuItem<T>>((T e) {
        return DropdownMenuItem<T>(
          value: e,
          child: Text(getDisplay(e)),
        );
      }).toList(),
      value: value,
      onChanged: (e) {
        onChanged!(e);
      },
    );
  }
}
