import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_auth/bloc/auth/auth_cubit.dart';
import 'package:freezed_auth/bloc/category/category_cubit.dart';
import 'package:freezed_auth/bloc/products/product_cubit.dart';
import 'package:freezed_auth/bloc/slider/slider_cubit.dart';
import 'package:freezed_auth/constant/shared_prefs.dart';
import 'package:freezed_auth/presentasion/home/screens/home.dart';
import 'package:freezed_auth/repository/auth_repository.dart';
import 'package:freezed_auth/presentasion/auth/screens/sign_in.dart';
import 'package:freezed_auth/repository/product_repository.dart';
import 'package:freezed_auth/repository/slider_repository.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(authRepository: AuthRepository(Dio())),
        ),
        BlocProvider(
          create: (context) => SliderCubit(sliderRepository: SliderRepository(Dio())),
        ),
        BlocProvider(create: (context) => CategoryCubit()),
        BlocProvider(create: (context) => ProductCubit(productRepository: ProductRepository(Dio()))),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            useMaterial3: false, textTheme: GoogleFonts.poppinsTextTheme()),
        home: const SplashScreen(),
      )));
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void navigateToNextScreen() async {
    String? checkLogin = await SharedPrefs().getString("token");
    if(checkLogin == null) {
      Timer(const Duration(seconds: 2), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const SignIn()),
        );
      });
    } else {
      Timer(const Duration(seconds: 2), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      });
    }

  }

  @override
  void initState() {
    super.initState();
    navigateToNextScreen();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Loading...'),
      ),
    );
  }
}
