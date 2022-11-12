enum ResultType {
  value,
  error,
}

class Result<T, U> {
  final ResultType type;
  final U? _error;
  final T? _value;

  T get requireValue => _value as T;

  U get requireError => _error as U;

  Result({
    required this.type,
    final T? value,
    final U? error,
  })  : _value = value,
        _error = error;

  factory Result.value(value) {
    return Result(
      type: ResultType.value,
      value: value,
    );
  }

  factory Result.error(error) {
    return Result(
      type: ResultType.error,
      error: error,
    );
  }
}
