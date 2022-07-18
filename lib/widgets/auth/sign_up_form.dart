import 'package:flutter/material.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //----TextField 1  email----
        Container(
          margin: const EdgeInsets.only(top: 20.0, bottom: 10),
          width: MediaQuery.of(context).size.width * .9,
          child: TextField(
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
        //----TextField 2  password----
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
        //----TextField 2 confirm password----
        Container(
          margin: const EdgeInsets.only(top: 10.0, bottom: 20),
          width: MediaQuery.of(context).size.width * .9,
          child: TextField(
            obscureText: true,
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
              fillColor: Colors.grey.shade100,
              prefixIcon: const Icon(Icons.lock_open_outlined),
              hintStyle: const TextStyle(color: Colors.grey),
              filled: true,
              hintText: 'Confirm Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        //-------sign in btn-----
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

        // ---back to sign IN----
        Container(
          height: 40,
          child: TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'Sign In',
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 13,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
