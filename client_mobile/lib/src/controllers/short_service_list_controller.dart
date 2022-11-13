import 'package:area/src/domain/entities/result.dart';
import 'package:area/src/domain/repositories/short_service_list_repository.dart';
import "package:flutter_riverpod/flutter_riverpod.dart";

import "short_service_list_state.dart";

class ShortServiceListController
    extends StateNotifier<BaseShortServiceListState> {
  final ShortServiceListRepository _shortServiceListRepository;

  ShortServiceListController({
    required ShortServiceListRepository shortServiceListRepository,
  })  : _shortServiceListRepository = shortServiceListRepository,
        super(const LoadingShortServiceListState());

  Future<void> get() async {
    state = const LoadingShortServiceListState();
    final result = await _shortServiceListRepository.get();

    if (result.type == ResultType.value) {
      state =
          LoadedShortServiceListState(shortServiceList: result.requireValue);
    } else {
      state = ErrorShortServiceListState(error: result.requireError.toString());
    }
  }
}

final shortServiceListControllerProvider = StateNotifierProvider<
    ShortServiceListController, BaseShortServiceListState>((ref) {
  final shortServiceListRepository =
      ref.read(shortServiceListRepositoryProvider);
  return ShortServiceListController(
    shortServiceListRepository: shortServiceListRepository,
  );
});
