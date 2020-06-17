extension IterablePipeExtension<T, A> on Iterable<A> {
  void operator |(Function(A value) func) => this.forEach(func);
  Iterable<T> operator ^(T Function(A value) func) => this.map(func);
}

extension MapPipeExtension<T, K, V> on Map<K, V> {
  void operator |(Function(V value) func) => this.forEach((k, v) => func(v));
  Map<K, T> operator ^(T Function(V value) func) =>
      this.map((k, v) => MapEntry<K, T>(k, func(v)));
}
