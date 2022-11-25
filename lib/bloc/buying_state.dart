part of 'buying_bloc.dart';

@immutable
abstract class BuyingState {}

class BuyingInitial extends BuyingState {}

class Success extends BuyingState {}

class Error extends BuyingState {}
