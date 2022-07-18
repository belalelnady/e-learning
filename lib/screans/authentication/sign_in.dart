import 'package:flutter/material.dart';

import '../../widgets/auth/logo.dart';
import '../../widgets/global/background.dart';
import '../../widgets/auth/sign_in_form.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Logo(),
            Background(
              child: SingleChildScrollView(
                child: SignInForm(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
