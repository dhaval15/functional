extension PipeExtension<T, A, B> on B Function(A) {
  T Function(A value) operator |(T Function(B) func) {
    return (A value) {
      return func(this(value));
    };
  }

  T Function(A value) pipe<T>(T Function(B) func) {
    return (A value) {
      return func(this(value));
    };
  }
}
