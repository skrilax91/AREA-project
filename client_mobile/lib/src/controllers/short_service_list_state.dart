import "package:equatable/equatable.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../domain/entities/short_service.dart";

part "short_service_list_state.freezed.dart";

abstract class BaseShortServiceListState<T extends BaseShortServiceListState<T>>
    extends Equatable {
  const BaseShortServiceListState();

  @override
  List<Object?> get props => [];
}

@freezed
class ShortServiceListState
    extends BaseShortServiceListState<ShortServiceListState>
    with _$ShortServiceListState {
  const ShortServiceListState._();

  const factory ShortServiceListState() = _ShortServiceListState;
}

@freezed
class LoadedShortServiceListState
    extends BaseShortServiceListState<LoadedShortServiceListState>
    with _$LoadedShortServiceListState {
  const LoadedShortServiceListState._();

  const factory LoadedShortServiceListState({
    required List<ShortService> shortServiceList,
  }) = _LoadedShortServiceListState;

  @override
  List<Object?> get props => [shortServiceList];
}

@freezed
class LoadingShortServiceListState
    extends BaseShortServiceListState<LoadingShortServiceListState>
    with _$LoadingShortServiceListState {
  const LoadingShortServiceListState._();

  const factory LoadingShortServiceListState() = _LoadingShortServiceListState;
}

@freezed
class ErrorShortServiceListState
    extends BaseShortServiceListState<ErrorShortServiceListState>
    with _$ErrorShortServiceListState {
  const ErrorShortServiceListState._();

  const factory ErrorShortServiceListState({
    @Default("Unknown Error") String error,
  }) = _ErrorShortServiceListState;

  @override
  List<Object?> get props => [error];
}
