extension Curry0Extension<T, A> on T Function(A) {
  T Function() operator %(A a) => () => this(a);
}

extension Curry1Extension<T, A, B> on T Function(A, B) {
  T Function(B) operator %(A a) => (B b) => this(a, b);
}

extension Curry2Extension<T, A, B, C> on T Function(A, B, C) {
  T Function(B, C) operator %(A a) => (B b, C c) => this(a, b, c);
}

extension Curry3Extension<T, A, B, C, D> on T Function(A, B, C, D) {
  T Function(B, C, D) operator %(A a) => (B b, C c, D d) => this(a, b, c, d);
}

extension Curry4Extension<T, A, B, C, D, E> on T Function(A, B, C, D, E) {
  T Function(B, C, D, E) operator %(A a) =>
      (B b, C c, D d, E e) => this(a, b, c, d, e);
}

extension Curry5Extension<T, A, B, C, D, E, F> on T Function(A, B, C, D, E, F) {
  T Function(B, C, D, E, F) operator %(A a) =>
      (B b, C c, D d, E e, F f) => this(a, b, c, d, e, f);
}

extension Curry6Extension<T, A, B, C, D, E, F, G> on T Function(
    A, B, C, D, E, F, G) {
  T Function(B, C, D, E, F, G) operator %(A a) =>
      (B b, C c, D d, E e, F f, G g) => this(a, b, c, d, e, f, g);
}

extension Curry7Extension<T, A, B, C, D, E, F, G, H> on T Function(
    A, B, C, D, E, F, G, H) {
  T Function(B, C, D, E, F, G, H) operator %(A a) =>
      (B b, C c, D d, E e, F f, G g, H h) => this(a, b, c, d, e, f, g, h);
}

extension Curry8Extension<T, A, B, C, D, E, F, G, H, I> on T Function(
    A, B, C, D, E, F, G, H, I) {
  T Function(B, C, D, E, F, G, H, I) operator %(A a) =>
      (B b, C c, D d, E e, F f, G g, H h, I i) =>
          this(a, b, c, d, e, f, g, h, i);
}

extension Curry9Extension<T, A, B, C, D, E, F, G, H, I, J> on T Function(
    A, B, C, D, E, F, G, H, I, J) {
  T Function(B, C, D, E, F, G, H, I, J) operator %(A a) =>
      (B b, C c, D d, E e, F f, G g, H h, I i, J j) =>
          this(a, b, c, d, e, f, g, h, i, j);
}
