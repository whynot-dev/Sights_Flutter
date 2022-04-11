import 'package:collection/collection.dart';
import 'package:hive/hive.dart';

abstract class HiveGateway<T> {
  final Box<T> _box;

  HiveGateway(this._box);

  Future<T?> get(dynamic id) async {
    if (_boxIsClosed) {
      return null;
    }
    return this._box.get(id);
  }

  Future<List<T>?> getAll() async {
    if (_boxIsClosed) {
      return null;
    }
    return this._box.values.toList();
  }

  Future<T> getFirst() async {
    if (_boxIsClosed) {
      throw HiveErrors.boxAlreadyClosed;
    }
    if (_box.isEmpty) {
      throw HiveErrors.notContainsElements;
    }
    return _box.values.first;
  }

  Future clear() async {
    await _box.clear();
  }

  Future<T?> getFirstWhere(bool where(T element)) async {
    if (_boxIsClosed) {
      throw HiveErrors.boxAlreadyClosed;
    }
    return _box.values.firstWhereOrNull(where);
  }

  Future<void> add(T object) async {
    if (_boxIsClosed) {
      throw HiveErrors.boxAlreadyClosed;
    }

    await _box.add(object);
  }

  Future<void> updateWhere(bool where(T? element), T newValue) async {
    if (_boxIsClosed) {
      throw HiveErrors.boxAlreadyClosed;
    }
    List<int> indices = List.empty(growable: true);
    for (int index = 0; index < _box.values.length; index++) {
      if (where(_box.getAt(index))) {
        indices.add(index);
      }
    }
    indices.forEach((index) async {
      await _box.putAt(index, newValue);
    });
  }

  Future<void> removeWhere(bool where(T? element)) async {
    if (_boxIsClosed) {
      throw HiveErrors.boxAlreadyClosed;
    }
    List<int> indices = List.empty(growable: true);
    for (int index = 0; index < _box.values.length; index++) {
      if (where(_box.getAt(index))) {
        indices.add(index);
      }
    }
    indices.forEach((index) async {
      await _box.deleteAt(index);
    });
  }

  bool get _boxIsClosed => !(this._box?.isOpen ?? false);
}

class HiveError extends Error {
  final String message;

  HiveError(this.message);

  String toString() => "Hive error: $message";
}

abstract class HiveErrors {
  static final notContainsElements = HiveError("Hive does not contain elements");
  static final boxAlreadyClosed = HiveError("The box is already closed");
}
