// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CounterController on _CounterController, Store {
  late final _$counterAtom =
      Atom(name: '_CounterController.counter', context: context);

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  late final _$_CounterControllerActionController =
      ActionController(name: '_CounterController', context: context);

  @override
  void increment() {
    final _$actionInfo = _$_CounterControllerActionController.startAction(
        name: '_CounterController.increment');
    try {
      return super.increment();
    } finally {
      _$_CounterControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrement() {
    final _$actionInfo = _$_CounterControllerActionController.startAction(
        name: '_CounterController.decrement');
    try {
      return super.decrement();
    } finally {
      _$_CounterControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reset() {
    final _$actionInfo = _$_CounterControllerActionController.startAction(
        name: '_CounterController.reset');
    try {
      return super.reset();
    } finally {
      _$_CounterControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
counter: ${counter}
    ''';
  }
}
