import 'package:dartz/dartz.dart';
import 'package:portfolio_ayhem_hamdi/core/errors/failure.dart';

abstract class EmailSendRepo {
  Future<Either<Failure, Unit>> sendEmail({
    required String name,
    required String email,
    required String subject,
    required String message,
  });
}
