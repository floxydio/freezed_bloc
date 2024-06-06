import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_auth/bloc/auth/auth_cubit.dart';
import 'package:freezed_auth/bloc/auth/auth_state.dart';
import 'package:freezed_auth/constant/font_size.dart';
import 'package:freezed_auth/presentasion/home/screens/home.dart';
import 'package:icons_plus/icons_plus.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder<AuthCubit, AuthState>(builder: (context, stateAuth) {
      return SingleChildScrollView(
        child: BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state.isSuccess == 'success') {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (_) => const HomeScreen()));
            } else if (state.isSuccess == 'fail') {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Email or password is wrong!'),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          child: SafeArea(
              child: Padding(
            padding: const EdgeInsets.only(left: 18, right: 18),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Icon(FluentIcons.lock_closed_20_filled,
                    size: 50, color: Color(0xFF0D41E1)),
                const SizedBox(height: 20),
                Text('Welcome back!',
                    style: FontPoppins.font24
                        .copyWith(fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                Text(
                  'Enter the email and password you used to register.',
                  style: FontPoppins.font18.copyWith(color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Email",
                      style: FontPoppins.font14
                          .copyWith(fontWeight: FontWeight.bold),
                    )),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8, top: 15),
                  child: TextFormField(
                    onChanged: (v) => {
                      setState(() {
                        context.read<AuthCubit>().updateEmail(v);
                      })
                    },
                    decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide:
                              BorderSide(color: Color.fromARGB(113, 0, 0, 0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(
                            color: Color.fromARGB(113, 0, 0,
                                0), // Transparent border color when focused
                          ),
                        ),
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color.fromARGB(113, 0, 0, 0)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        hintText: 'john.doe@gmail.com',
                        hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Password",
                      style: FontPoppins.font14
                          .copyWith(fontWeight: FontWeight.bold),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: TextFormField(
                    obscureText: true,
                    onChanged: (v) => {
                      setState(() {
                        context.read<AuthCubit>().updatePassword(v);
                      })
                    },
                    decoration: const InputDecoration(
                      suffixIcon: Icon(FluentIcons.eye_12_regular),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                          color: Color.fromARGB(113, 0, 0,
                              0), // Transparent border color when enabled
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                          color: Color.fromARGB(113, 0, 0,
                              0), // Transparent border color when focused
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      hintText: '*******',
                      hintStyle: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot password?',
                      style: TextStyle(color: Color(0xFF0D41E1)),
                    ),
                  )
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0D41E1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      context.read<AuthCubit>().signIn();
                    },
                    child: Text('Log in', style: FontPoppins.font14.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold

                    )),
                  ),
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.center,
                  child: Text("OR", style: FontPoppins.font14.copyWith(color: Colors.grey)),
                ),
                const SizedBox(height: 20),
                 SizedBox(
                   width: MediaQuery.of(context).size.width,
                   height: 50,
                   child: OutlinedButton.icon(
                     icon: Brand(Brands.google, size: 18,),
                     style: TextButton.styleFrom(
                       // backgroundColor: const Color(0xFF0D41E1),
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20),
                       ),
                     ),
                    label: Text("Continue With Google", style:FontPoppins.font14.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    )),
                    onPressed: () {},),
                 ),
                const SizedBox(height: 20,),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: OutlinedButton.icon(
                    icon: Brand(Brands.facebook, size: 18,),
                    style: TextButton.styleFrom(
                      // backgroundColor: const Color(0xFF0D41E1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    label: Text("Continue With Facebook", style:FontPoppins.font14.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    )),
                    onPressed: () {},),
                ),
                const SizedBox(height: 20),
                RichText(text: TextSpan(
                  text: "Don't have an account? ",
                  style: FontPoppins.font14.copyWith(color: Colors.grey),
                  children: [
                    TextSpan(
                      text: "Sign Up",
                      style: FontPoppins.font14.copyWith(fontWeight: FontWeight.bold,color: const Color(0xFF0D41E1))
                    )
                  ]
                )),
              ],
            ),
          )),
        ),
      );
    }));
  }
}
