import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(counterValue: 1));
  
  void returnValuePlus() => emit(CounterState(counterValue: state.counterValue + state.counterValue));
  void returnValueMinus() => emit(CounterState(counterValue: state.counterValue - 1));
}
