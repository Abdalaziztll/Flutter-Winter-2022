import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counterbloc_event.dart';
part 'counterbloc_state.dart';

class CounterblocBloc extends Bloc<CounterblocEvent, CounterblocState> {
  CounterblocBloc() : super(Counterblocinit()) {
    on<Evnet1>(((event, emit) => {
          print(state),
          emit(State1()),
          print(state),
        }));
    on<Evnet2>(((event, emit) =>
        {print(state), emit(State2()), print(state)}));
    on<Evnet3>(((event, emit) => {
          print(state),
          emit(State3()),
          print(state),
        }));
  }
}
