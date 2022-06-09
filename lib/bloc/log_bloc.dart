import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'log_event.dart';
part 'log_state.dart';

const status = 200;

class LogBloc extends Bloc<LogEvent, LogState> {
  LogBloc() : super(LogInitial()) {
    on<TryToLogIn>((event, emit) {
      if (status == 200)
        emit(Success());
      else if (status == 400)
        emit(Falied());
      else
        emit(Error());
    });
  }
}
