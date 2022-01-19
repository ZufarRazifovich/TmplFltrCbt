import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'hello_state.dart';

class HelloCubit extends Cubit<HelloState> {
  HelloCubit() : super(HelloState(nameValue: 'noname'));

  void returnName() => emit(HelloState(nameValue: state.nameValue));
}
