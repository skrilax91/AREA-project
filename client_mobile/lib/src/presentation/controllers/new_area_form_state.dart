import 'package:area/src/data/models/service.dart';
import 'package:area/src/data/models/service_action.dart';
import 'package:area/src/domain/entities/short_service.dart';
import 'package:flutter/widgets.dart';
import "package:freezed_annotation/freezed_annotation.dart";
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../domain/entities/field.dart';

part "new_area_form_state.freezed.dart";

typedef AsyncNewAreaFormState = AsyncValue<NewAreaFormState>;

@freezed
class NewAreaFormState with _$NewAreaFormState {
  const NewAreaFormState._();

  const factory NewAreaFormState({
    required Field name,
    required Field description,
    required List<ShortService> services,
    required ShortService? selectedTriggerService,
    required List<ServiceActionModel> triggers,
    required ServiceActionModel? selectedTrigger,
    required List<ServiceActionParameter> triggerParams,
    required List<TextEditingController> triggerParamsValues,
    required ShortService? selectedActionService,
  }) = _NewAreaFormState;

  static const empty = NewAreaFormState(
    name: Field(value: ""),
    description: Field(value: ""),
    services: [],
    selectedTriggerService: null,
    triggers: [],
    selectedTrigger: null,
    triggerParams: [],
    triggerParamsValues: [],
    selectedActionService: null,
  );
}
