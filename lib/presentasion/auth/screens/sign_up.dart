import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_auth/bloc/auth_signup/auth_signup_cubit.dart';
import 'package:freezed_auth/bloc/auth_signup/auth_signup_state.dart';
import 'package:freezed_auth/constant/font_size.dart';
import 'package:freezed_auth/presentasion/auth/screens/sign_in.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    nameController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child:
        BlocBuilder<AuthSignupCubit, AuthSignupState>(builder: (context, s) {
      return BlocListener<AuthSignupCubit, AuthSignupState>(
        listener: (context, state) {
          if (state.isSuccess == 'success') {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const SignIn()));
          } else if (state.isSuccess == 'fail') {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('Sign Up Failed')));
          } else if (state.isSuccess == 'validate_problem') {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Please check your input')));
          }
        },
        child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Icon(FluentIcons.person_accounts_20_filled,
                      size: 50, color: Color(0xFF0D41E1)),
                  const SizedBox(height: 20),
                  Text('Sign Your Account',
                      style: FontPoppins.font24
                          .copyWith(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Nama",
                        style: FontPoppins.font14
                            .copyWith(fontWeight: FontWeight.bold),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8, top: 15),
                    child: TextFormField(
                      onChanged: (v) => {
                        setState(() {
                          context.read<AuthSignupCubit>().updateName(v);
                        })
                      },
                      decoration: InputDecoration(
                          errorText: s.isNameValid ? null : 'Name is not valid',
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide:
                                BorderSide(color: Color.fromARGB(113, 0, 0, 0)),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                              color: Color.fromARGB(113, 0, 0,
                                  0), // Transparent border color when focused
                            ),
                          ),
                          filled: true,
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(113, 0, 0, 0)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          hintText: 'John Doe',
                          hintStyle:
                              const TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
                          context.read<AuthSignupCubit>().updateEmail(v);
                        })
                      },
                      decoration: InputDecoration(
                          errorText:
                              s.isEmailValid ? null : 'Email is not valid',
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide:
                                BorderSide(color: Color.fromARGB(113, 0, 0, 0)),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                              color: Color.fromARGB(113, 0, 0,
                                  0), // Transparent border color when focused
                            ),
                          ),
                          filled: true,
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(113, 0, 0, 0)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          hintText: 'john.doe@gmail.com',
                          hintStyle:
                              const TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Password",
                        style: FontPoppins.font14
                            .copyWith(fontWeight: FontWeight.bold),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8, top: 15),
                    child: TextFormField(
                      onChanged: (v) => {
                        setState(() {
                          context.read<AuthSignupCubit>().updatePassword(v);
                        })
                      },
                      decoration: InputDecoration(
                          errorText: s.isPasswordValid
                              ? null
                              : 'Password is not valid',
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide:
                                BorderSide(color: Color.fromARGB(113, 0, 0, 0)),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                              color: Color.fromARGB(113, 0, 0,
                                  0), // Transparent border color when focused
                            ),
                          ),
                          filled: true,
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(113, 0, 0, 0)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          hintText: '******',
                          hintStyle:
                              const TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
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
                        context.read<AuthSignupCubit>().signUp();
                      },
                      child: Text('Sign Up',
                          style: FontPoppins.font14.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              )),
        ),
      );
    })));
  }
}
