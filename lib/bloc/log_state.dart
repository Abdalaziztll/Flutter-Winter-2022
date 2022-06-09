part of 'log_bloc.dart';

@immutable
abstract class LogState {}

class LogInitial extends LogState {}

class Success extends LogState{}

class Falied extends LogState{}

class Error extends LogState{}
