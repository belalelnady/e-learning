import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../widgets/global/background.dart';
import '../../widgets/global/header.dart';
import '../../providers/theme_provider.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Header(title: "Account", route: "/"),
          // -------AVATAR-------
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            width: 110,
            height: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Colors.white,
              image: const DecorationImage(
                image: NetworkImage("https://eduport.webestica.com/assets/images/avatar/09.jpg"),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Text(
            "Lori Stevens",
            style: Theme.of(context)
                .textTheme
                .headline1
                ?.copyWith(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            "Email.example@gmail.com",
            style: Theme.of(context).textTheme.headline2?.copyWith(fontSize: 18),
          ),
          Background(
            child: SingleChildScrollView(
              child: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Account Settings',
                      style: Theme.of(context).textTheme.caption?.copyWith(fontSize: 12),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/payment_screen');
                      },
                      child: Text(
                        'Account Setting',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/payment_screen');
                      },
                      child: Text(
                        'Payment',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/quiz_screen');
                      },
                      child: Text('Quiz     ', style: Theme.of(context).textTheme.bodyText1),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Settings',
                      style: Theme.of(context).textTheme.caption?.copyWith(fontSize: 12),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/web_view_screen');
                      },
                      child: Text(
                        'Go To Website',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Provider.of<ThemeProvider>(context, listen: false).switchMode();
                      },
                      child: Text(
                        'Dark Mode',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/sign_in');
                      },
                      child: Text(
                        'Sign out',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
