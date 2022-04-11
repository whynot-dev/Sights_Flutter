extension IterableUtils<I> on Iterable<I> {
  I? find(bool test(I element)) {
    for (I element in this) {
      if (test(element)) return element;
    }
    return null;
  }

  static I? found(Iterable<I> items, bool test(I element)) {
    for (I element in items) {
      if (test(element)) return element;
    }
    return null;
  }
}
