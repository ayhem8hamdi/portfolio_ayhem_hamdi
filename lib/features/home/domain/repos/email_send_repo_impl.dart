import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:portfolio_ayhem_hamdi/core/errors/failure.dart';
import 'package:portfolio_ayhem_hamdi/core/services/email_service.dart';
import 'package:portfolio_ayhem_hamdi/features/home/domain/repos/email_send_repo.dart';

class EmailSendRepoImpl implements EmailSendRepo {
  EmailSendRepoImpl();

  @override
  Future<Either<Failure, Unit>> sendEmail({
    required String name,
    required String email,
    required String subject,
    required String message,
  }) async {
    try {
      final isSuccess = await EmailService.sendEmail(
        email: email,
        name: name,
        subject: subject,
        message: message,
      );

      if (isSuccess) {
        return const Right(unit);
      } else {
        return Left(
          NetworkFailure(
            message: 'Failed to send email. Unknown error.',
            code: 'EMAIL_SEND_FAILED',
          ),
        );
      }
    } catch (error) {
      log(error.toString());
      return Left(Failure.fromException(error));
    }
  }
}
