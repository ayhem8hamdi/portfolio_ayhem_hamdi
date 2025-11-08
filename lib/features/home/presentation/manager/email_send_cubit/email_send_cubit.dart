import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:portfolio_ayhem_hamdi/core/errors/failure.dart';
import 'package:portfolio_ayhem_hamdi/features/home/domain/repos/email_send_repo.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/manager/email_send_cubit/email_send_state.dart';

class EmailSendCubit extends Cubit<EmailSendState> {
  final EmailSendRepo _emailSendRepo;

  EmailSendCubit(this._emailSendRepo) : super(EmailSendInitial());

  /// Sends an email and updates the Cubit state
  Future<void> sendEmail({
    required String name,
    required String email,
    required String subject,
    required String message,
  }) async {
    emit(EmailSendLoading());

    try {
      final Either<Failure, Unit> result = await _emailSendRepo.sendEmail(
        name: name,
        email: email,
        subject: subject,
        message: message,
      );

      result.fold(
        (failure) {
          emit(EmailSendFailure(failure.message, failure: failure));
        },
        (_) {
          emit(EmailSendSucces());
        },
      );
    } catch (e) {
      emit(
        EmailSendFailure(
          'Unexpected error: ${e.toString()}',
          failure: UnknownFailure(message: e.toString(), code: 'UNKNOWN'),
        ),
      );
    }
  }
}
