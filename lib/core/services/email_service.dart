import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class EmailService {
  /// Sends an email via EmailJS and returns true if successful
  static Future<bool> sendEmail({
    required String name,
    required String email,
    required String subject,
    required String message,
  }) async {
    final endPointUrl = Uri.parse(
      'https://api.emailjs.com/api/v1.0/email/send',
    );

    try {
      final response = await http.post(
        endPointUrl,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'service_id': 'service_hal4o1d',
          'template_id': 'template_xr3c0og',
          'user_id': 'L76Xhfpx8eXukbha9',
          'template_params': {
            'user_name': name,
            'user_email': email,
            'user_subject': subject,
            'user_message': message,
          },
        }),
      );

      if (response.statusCode == 200) {
        log('Email sent successfully: ${response.body}');
        return true;
      } else {
        log('Failed to send email: ${response.statusCode} -> ${response.body}');
        return false;
      }
    } on Exception catch (e) {
      log('Exception sending email: $e');
      return false;
    }
  }
}
