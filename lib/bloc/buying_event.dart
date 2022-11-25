part of 'buying_bloc.dart';

@immutable
abstract class BuyingEvent {}

class Buythisproduct extends BuyingEvent {
  late String product_id;
}
