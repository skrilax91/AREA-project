import "dart:async";
import 'package:area/src/controllers/short_service_list_controller.dart';
import 'package:area/src/controllers/short_service_list_state.dart';
import 'package:area/src/domain/entities/short_service.dart';
import 'package:area/src/presentation/controllers/new_area_form_state.dart';
import "package:flutter_riverpod/flutter_riverpod.dart";

class NewAreaFormController extends AsyncNotifier<NewAreaFormState> {
  @override
  FutureOr<NewAreaFormState> build() async {
    await ref.read(shortServiceListControllerProvider.notifier).get();
    final state = ref.watch(shortServiceListControllerProvider);

    if (state is LoadedShortServiceListState) {
      final services = state.shortServiceList;
      return NewAreaFormState(
        services: services,
        selectedTrigger: null,
        selectedAction: null,
      );
    } else {
      return const NewAreaFormState(
        services: [],
        selectedTrigger: null,
        selectedAction: null,
      );
    }
  }

  Future<void> selectTrigger(ShortService? service) async {
    if (service == null) return;
    state = await AsyncNewAreaFormState.guard(() async {
      return state.value!.copyWith(selectedTrigger: service);
    });
  }

  Future<void> selectAction(ShortService? service) async {
    if (service == null) return;
    state = await AsyncNewAreaFormState.guard(() async {
      return state.value!.copyWith(selectedAction: service);
    });
  }
}

final newAreaFormControllerProvider =
    AsyncNotifierProvider<NewAreaFormController, NewAreaFormState>(() {
  return NewAreaFormController();
});
