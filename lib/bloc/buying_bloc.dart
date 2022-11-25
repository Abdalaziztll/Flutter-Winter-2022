import 'package:baby_sita/home_service.dart';
import 'package:bloc/bloc.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

part 'buying_event.dart';
part 'buying_state.dart';

class BuyingBloc extends Bloc<BuyingEvent, BuyingState> {
  BuyingBloc() : super(BuyingInitial()) {
    on<Buythisproduct>((event, emit) {
      var status = SendOrder(event.product_id);
      if (status.runtimeType == "200") {
        emit(Success());
        print(state);
      } else {
        emit(Error());
        print(state);
      }
    });
  }
}
