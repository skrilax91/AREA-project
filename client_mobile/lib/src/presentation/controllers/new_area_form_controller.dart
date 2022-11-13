import "dart:async";
import 'package:area/src/controllers/short_service_list_controller.dart';
import 'package:area/src/controllers/short_service_list_state.dart';
import 'package:area/src/data/models/service_action.dart';
import 'package:area/src/domain/entities/result.dart';
import 'package:area/src/domain/entities/short_service.dart';
import 'package:area/src/domain/repositories/service_repository.dart';
import 'package:area/src/presentation/controllers/new_area_form_state.dart';
import 'package:flutter/widgets.dart';
import "package:flutter_riverpod/flutter_riverpod.dart";

class NewAreaFormController extends AsyncNotifier<NewAreaFormState> {
  @override
  FutureOr<NewAreaFormState> build() async {
    await ref.read(shortServiceListControllerProvider.notifier).get();
    final state = ref.watch(shortServiceListControllerProvider);

    return NewAreaFormState.empty.copyWith(
      services:
          state is LoadedShortServiceListState ? state.shortServiceList : [],
    );
  }

  Future<void> selectTriggerService(ShortService? service) async {
    if (service == null) return;
    final result = await ref.read(serviceRepositoryProvider).get(service.uid);
    if (result.type == ResultType.error) return;
    final longService = result.requireValue;
    state = await AsyncNewAreaFormState.guard(() async {
      return state.value!.copyWith(
        selectedTriggerService: service,
        triggers: longService.triggers,
      );
    });
  }

  Future<void> selectTrigger(ServiceActionModel? trigger) async {
    if (trigger == null) return;
    state = await AsyncNewAreaFormState.guard(() async {
      return state.value!.copyWith(
        selectedTrigger: trigger,
        triggerParams: trigger.params,
        triggerParamsValues: [],
      );
    });
  }

  Future<void> selectActionService(ShortService? service) async {
    if (service == null) return;
    state = await AsyncNewAreaFormState.guard(() async {
      return state.value!.copyWith(selectedActionService: service);
    });
  }
}

final newAreaFormControllerProvider =
    AsyncNotifierProvider<NewAreaFormController, NewAreaFormState>(() {
  return NewAreaFormController();
});
