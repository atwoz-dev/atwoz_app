import 'package:flutter/widgets.dart';

extension ListExtension<T> on List<T> {
  /// 존재하지 않으면 추가하고 존재하면 제거
  void addOrRemove(T data) {
    contains(data) ? remove(data) : add(data);
  }

  /// 존재하지 않으면 추가
  void addIfNotContains(T data) {
    if (!contains(data)) {
      add(data);
    }
  }

  /// 존재하지 않으면 모든 아이템 추가
  void addAllIfNotContains(Iterable<T> data) {
    for (final T x in data) {
      if (!contains(x)) {
        add(x);
      }
    }
  }

  /// 존재하면 모든 아이템 제거
  void removeAllIfContains(Iterable<T> data) {
    for (final T x in data) {
      if (contains(x)) {
        remove(x);
      }
    }
  }

  /// 각 요소와 인덱스를 새로운 값으로 매핑
  Iterable<R> mapIndexed<R>(R Function(int index, T element) convert) sync* {
    for (var index = 0; index < length; index++) {
      yield convert(index, this[index]);
    }
  }

  /// 존재하면 해당 요소를 제외하고 반환하고, 존재하지 않으면 요소를 추가하여 반환
  List<T> appendOrExceptElement(T item) {
    return contains(item)
        ? exceptElement(item).toList(growable: false)
        : appendElement(item).toList(growable: false);
  }

  /// 요소를 추가한 리스트를 반환 (리스트는 수정하지 않음)
  List<T> plus(T element) {
    return appendElement(element).toList(growable: false);
  }

  /// 요소를 제거한 리스트를 반환 (리스트는 수정하지 않음)
  List<T> minus(T element) {
    return exceptElement(element).toList(growable: false);
  }

  /// 여러 요소를 추가한 리스트를 반환 (리스트는 수정하지 않음)
  List<T> plusAll(List<T> elements) {
    return append(elements).toList(growable: false);
  }

  /// 여러 요소를 제거한 리스트를 반환 (리스트는 수정하지 않음)
  List<T> minusAll(List<T> elements) {
    return except(elements).toList(growable: false);
  }
}

extension ListDividerExtension on List<Widget> {
  /// 각 요소 사이에 구분자를 추가하여 반환
  List<Widget> applySeparator(Widget separator) {
    return mapIndexed((int index, Widget item) => <Widget>[
          if (index != 0) separator,
          item,
        ]).expand((List<Widget> element) => element).toList();
  }
}

extension IterableExt<T> on Iterable<T> {
  /// 주어진 [element]를 포함하여 새로운 lazy [Iterable]을 반환
  Iterable<T> appendElement(T element) sync* {
    yield* this;
    yield element;
  }

  /// 주어진 [elements] 컬렉션의 모든 요소를 포함하여 새로운 lazy [Iterable]을 반환
  Iterable<T> append(Iterable<T> elements) sync* {
    yield* this;
    yield* elements;
  }

  /// 주어진 [element]를 제외한 새로운 lazy [Iterable]을 반환
  Iterable<T> exceptElement(T element) sync* {
    for (final current in this) {
      if (element != current) yield current;
    }
  }

  /// 주어진 [elements] 컬렉션에 포함된 요소들을 제외한 새로운 lazy [Iterable]을 반환
  Iterable<T> except(Iterable<T> elements) sync* {
    for (final current in this) {
      if (!elements.contains(current)) yield current;
    }
  }
}
