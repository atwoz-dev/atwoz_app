extension SetX<T> on Set<T> {
  void toggle(T item) {
    if (contains(item)) {
      remove(item);
      return;
    }
    add(item);
  }
}
