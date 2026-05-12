import 'package:flutter_bloc/flutter_bloc.dart';

sealed class CounterEvent {
  const CounterEvent();
}

class CounterIncremented extends CounterEvent {
  const CounterIncremented();
}

class CounterDecremented extends CounterEvent {
  const CounterDecremented();
}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncremented>((event, emit) => emit(state + 1));
    on<CounterDecremented>((event, emit) => emit(state - 1));
  }
}
