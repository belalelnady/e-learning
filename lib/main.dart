import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

import './screans/navigation.dart';
import './screans/homescreans/home.dart';
import './screans/course_details/course_detail.dart';
import './screans/course_details/instructor_detail.dart';
import './screans/explore_screens/search_result.dart';
import './screans/my_courses/course_playlist.dart';
import './screans/authentication/sign_up.dart';
import './screans/authentication/sign_in.dart';
import './screans/cart/cart.dart';
import './screans/cart/checkout.dart';
import './screans/account/web_view_screen.dart';
import './screans/account/payment_screen.dart';
import './screans/account/quiz_screen.dart';

import './providers/theme_provider.dart';
import './providers/course_provider.dart';
import './providers/cart_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => CourseProvider()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: Provider.of<ThemeProvider>(context).themeData,
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomeApp(),
        '/home': (context) => const Home(),
        '/course_detail': (context) => const CourseDetail(),
        '/search_result': (context) => const SearchResult(),
        '/instructor_detail': (context) => const InstructorDetail(),
        '/course_playlist': (context) => const CoursePlaylist(),
        '/cart': (context) => const Cart(),
        '/checkout': (context) => const Checkout(),
        '/sign_in': (context) => const SignIn(),
        '/sign_up': (context) => const SignUp(),
        '/web_view_screen': (context) => const WebViewScreen(),
        '/payment_screen': (context) => const PaymentScreen(),
        '/quiz_screen': (context) => const QuizScreen(),
      },
    );
  }
}

class MyHomeApp extends StatelessWidget {
  const MyHomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Navigation();
  }
}
