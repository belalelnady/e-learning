import 'package:flutter/material.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ----TextField Email----
        Container(
          margin: const EdgeInsets.only(top: 20.0, bottom: 10),
          width: MediaQuery.of(context).size.width * .9,
          child: TextFormField(
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.email_outlined),
              prefixIconColor: Theme.of(context).colorScheme.primary,
              hintStyle: const TextStyle(color: Colors.grey),
              fillColor: Colors.white,
              filled: true,
              hintText: 'Email',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),

        // ----TextField Password----
        Container(
          margin: const EdgeInsets.only(top: 10.0, bottom: 20),
          width: MediaQuery.of(context).size.width * .9,
          child: TextField(
            obscureText: true,
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.lock_open_outlined),
              prefixIconColor: Theme.of(context).colorScheme.primary,
              hintStyle: const TextStyle(color: Colors.grey),
              fillColor: Colors.grey.shade100,
              filled: true,
              hintText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        //-------sign in button-----
        Container(
          width: MediaQuery.of(context).size.width * .9,
          height: 53,
          child: TextButton(
            child: const Text('Sign In'),
            style: TextButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
              textStyle: Theme.of(context).textTheme.button,
              primary: Theme.of(context).colorScheme.onPrimary,
            ),
            onPressed: () {},
          ),
        ),
        // --------sign btn with google------
        Container(
          width: MediaQuery.of(context).size.width * .9,
          margin: const EdgeInsets.only(top: 20.0, bottom: 10.0),
          height: 53,
          child: TextButton(
            child: const Text(
              'Sign In with Google',
            ),
            style: TextButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.surface,
              textStyle: Theme.of(context).textTheme.button,
              primary: Theme.of(context).colorScheme.onPrimary,
            ),
            onPressed: () {},
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/sign_up');
            },
            child: Text(
              'Sign Up',
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 13,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Forgot Password',
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 13,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
          ),
        ]),
      ],
    );
  }
}
