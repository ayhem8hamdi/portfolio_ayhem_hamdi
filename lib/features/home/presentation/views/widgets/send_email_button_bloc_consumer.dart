import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/reusable_widgets/custom_button.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/reusable_widgets/ui_handler.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/manager/email_send_cubit/email_send_cubit.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/manager/email_send_cubit/email_send_state.dart';

class SendEmailButtonBlocConsumer extends StatelessWidget {
  const SendEmailButtonBlocConsumer({
    super.key,
    required this.getInTouch,
    required this.nameController,
    required this.emailController,
    required this.helpController,
    required this.subjectController,
  });
  final void Function()? getInTouch;
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController helpController;
  final TextEditingController subjectController;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EmailSendCubit, EmailSendState>(
      listener: (context, state) {
        if (state is EmailSendSucces) {
          nameController.clear();
          emailController.clear();
          subjectController.clear();
          helpController.clear();
          UiSnackbar.showSuccess(context, "Email Sent Successfully");
        } else if (state is EmailSendFailure) {
          UiSnackbar.showError(context, state.failure.message);
        }
      },
      builder: (context, state) {
        if (state is EmailSendLoading) {
          return const LoadingButton();
        }
        return CustomButton(text: "Get in Touch", onPressed: getInTouch);
      },
    );
  }
}
