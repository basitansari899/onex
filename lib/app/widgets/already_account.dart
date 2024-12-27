import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:onex/app/theme/colors.dart';

class AlreadyHaveAccount extends StatelessWidget {
  final VoidCallback onLoginTap;

  const AlreadyHaveAccount({Key? key, required this.onLoginTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          text: 'Already have an account? ',
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
          children: [
            TextSpan(
              text: 'Login',
              style: const TextStyle(
                color: AppColors.primary,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  onLoginTap();
                },
            ),
          ],
        ),
      ),
    );
  }
}
