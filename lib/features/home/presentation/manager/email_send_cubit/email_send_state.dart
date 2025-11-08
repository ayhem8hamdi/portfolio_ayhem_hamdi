import 'package:portfolio_ayhem_hamdi/core/errors/failure.dart';

sealed class EmailSendState {}

final class EmailSendInitial extends EmailSendState {}

final class EmailSendLoading extends EmailSendState {}

final class EmailSendSucces extends EmailSendState {}

final class EmailSendFailure extends EmailSendState {
  final Failure failure;

  EmailSendFailure(String message, {required this.failure});
}
