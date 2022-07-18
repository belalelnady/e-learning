import 'package:flutter/material.dart';

import '../../widgets/global/background.dart';
import '../../widgets/auth/sign_up_form.dart';
import '../../widgets/auth/logo.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Logo(),
          Background(
            child: SingleChildScrollView(
              child: SignUpForm(),
            ),
          ),
        ],
      ),
    );
  }
}
