part of '_bloc.dart';

@immutable
abstract class CounterEvent {}


class IncrementEvent extends CounterEvent {}
class DecrementEvent extends CounterEvent {}
class ResetEvent extends CounterEvent {}