part of '_bloc.dart';

class CounterState{
  int CounterValue;
  CounterState({
    required this.CounterValue,
});
}

class CounterInitial extends CounterState{
  CounterInitial() : super(CounterValue: 0);

}
