import 'package:area/src/domain/entities/short_service.dart';
import "package:freezed_annotation/freezed_annotation.dart";
import 'package:hooks_riverpod/hooks_riverpod.dart';

part "new_area_form_state.freezed.dart";

typedef AsyncNewAreaFormState = AsyncValue<NewAreaFormState>;

@freezed
class NewAreaFormState with _$NewAreaFormState {
  const NewAreaFormState._();

  const factory NewAreaFormState({
    required List<ShortService> services,
    required ShortService? selectedTrigger,
    required ShortService? selectedAction,
  }) = _NewAreaFormState;
}
