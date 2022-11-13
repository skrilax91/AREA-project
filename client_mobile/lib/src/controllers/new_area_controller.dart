import 'package:area/src/controllers/auth_info_controller.dart';
import 'package:area/src/data/models/area_model.dart';
import 'package:area/src/domain/entities/area.dart';
import 'package:area/src/domain/repositories/new_area_repository.dart';
import 'package:area/src/presentation/controllers/new_area_form_state.dart';
import "package:flutter_riverpod/flutter_riverpod.dart";

import "new_area_state.dart";

class NewAreaController extends StateNotifier<BaseNewAreaState> {
  final NewAreaRepository _newAreaRepository;
  final String _token;

  NewAreaController({
    String token = "",
    required NewAreaRepository newAreaRepository,
  })  : _token = token,
        _newAreaRepository = newAreaRepository,
        super(const NewAreaState());

  Future<void> createArea(NewAreaFormState form) async {
    final area = AreaModel(
      name: form.name.value,
      description: form.description.value,
      config: AreaConfigModel(
        services: [],
      ),
    );
    _newAreaRepository.createArea(token: _token, area: area);
  }
}

final newAreaControllerProvider =
    StateNotifierProvider<NewAreaController, BaseNewAreaState>((ref) {
  final authState = ref.read(authInfoControllerProvider).requireValue;
  final newAreaRepository = ref.read(newAreaRepositoryProvider);
  late String token;

  if (authState is LoggedAuthInfoState) {
    token = authState.authInfo.token;
  }
  return NewAreaController(
    token: token,
    newAreaRepository: newAreaRepository,
  );
});
