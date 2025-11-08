import 'package:get_it/get_it.dart';
import 'package:portfolio_ayhem_hamdi/core/services/email_service.dart';
import 'package:portfolio_ayhem_hamdi/features/home/domain/repos/email_send_repo.dart';
import 'package:portfolio_ayhem_hamdi/features/home/domain/repos/email_send_repo_impl.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/manager/email_send_cubit/email_send_cubit.dart';

final getIt = GetIt.instance;

void setupDI() {
  getIt.registerLazySingleton(() => EmailService());

  getIt.registerLazySingleton<EmailSendRepo>(() => EmailSendRepoImpl());

  getIt.registerFactory(() => EmailSendCubit(getIt<EmailSendRepo>()));
}
