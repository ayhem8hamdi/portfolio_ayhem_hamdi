sealed class EmailSendState {}

final class EmailSendInitial extends EmailSendState {}

final class EmailSendLoading extends EmailSendState {}

final class EmailSendSucces extends EmailSendState {}

final class EmailSendFailure extends EmailSendState {}
