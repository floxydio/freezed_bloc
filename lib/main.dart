import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_auth/bloc/auth_signin/auth_cubit.dart';
import 'package:freezed_auth/bloc/auth_signup/auth_signup_cubit.dart';
import 'package:freezed_auth/bloc/category/category_cubit.dart';
import 'package:freezed_auth/bloc/product_detail/product_detail_cubit.dart';
import 'package:freezed_auth/bloc/products/product_cubit.dart';
import 'package:freezed_auth/bloc/slider/slider_cubit.dart';
import 'package:freezed_auth/bloc/wishlist/add_wishlist_cubit.dart';
import 'package:freezed_auth/constant/shared_prefs.dart';
import 'package:freezed_auth/hydrated_bloc/auth_save/hydrated_authsave.dart';
import 'package:freezed_auth/presentasion/home/screens/home.dart';
import 'package:freezed_auth/repository/auth_repository.dart';
import 'package:freezed_auth/presentasion/auth/screens/sign_in.dart';
import 'package:freezed_auth/repository/product_repository.dart';
import 'package:freezed_auth/repository/slider_repository.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );
  runApp(MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(authRepository: AuthRepository(Dio())),
        ),
        BlocProvider(
          create: (context) =>
              SliderCubit(sliderRepository: SliderRepository(Dio())),
        ),
        BlocProvider(create: (context) => CategoryCubit()),
        BlocProvider(
            create: (context) =>
                ProductCubit(productRepository: ProductRepository(Dio()))),
        BlocProvider(create: (context) => AddWishlistCubit()),
        BlocProvider(
            create: (context) => ProductDetailCubit(ProductRepository(Dio()))),
        BlocProvider(
            create: (context) =>
                AuthSignupCubit(authRepository: AuthRepository(Dio()))),
        BlocProvider(create: (context) => HydratedAuthsaveCubit())
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
    if (checkLogin == null) {
      Timer(const Duration(seconds: 1), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const SignIn()),
        );
      });
    } else {
      Timer(const Duration(seconds: 1), () {
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
