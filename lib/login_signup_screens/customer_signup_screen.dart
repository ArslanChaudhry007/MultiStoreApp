import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'auth_widgets.dart';


// final TextEditingController _nameController = TextEditingController();
// final TextEditingController _emailController = TextEditingController();
// final TextEditingController _passwordController = TextEditingController();

class CustomerRegisterScreen extends StatefulWidget {
  const CustomerRegisterScreen({Key? key}) : super(key: key);

  @override
  State<CustomerRegisterScreen> createState() => _CustomerRegisterScreenState();
}

class _CustomerRegisterScreenState extends State<CustomerRegisterScreen> {
  late String name;
  late String email;
  late String password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool passwordVisibility = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            reverse: true,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    // sign up and home button
                    const AuthHeaderLabel(
                      label: 'Sign Up',
                    ),
                    // profile image with camera and photo icons
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 40),
                          child: CircleAvatar(
                            radius: 60,
                            backgroundColor: Colors.purpleAccent,
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15))),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.camera_alt,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15))),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.photo,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    // Full Name field
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your Name';
                          }
                          return null;
                        },
                      onChanged: (value){
                          name = value;
                      },
                        decoration: textFormDecoration.copyWith(
                            labelText: 'Full Name',
                            hintText: 'Enter you full name'),
                      ),
                    ),
                    // Email field
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your Email Address';
                          } else if (value.isValidEmail() == false) {
                            return ' Invalid email';
                          } else if (value.isValidEmail() == true) {
                            return null;
                          }
                          return null;
                        },
                       onChanged: (value){
                          email = value;
                       },
                        keyboardType: TextInputType.emailAddress,
                        decoration: textFormDecoration.copyWith(
                            labelText: 'Email Address',
                            hintText: 'Enter your Email'),
                      ),
                    ),
                    // password field
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                       onChanged: (value){
                          password = value;
                       },
                        obscureText: passwordVisibility,
                        decoration: textFormDecoration.copyWith(
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    passwordVisibility = !passwordVisibility;
                                  });
                                },
                                icon: Icon(
                                  passwordVisibility
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Colors.purple,
                                )),
                            labelText: 'Password',
                            hintText: 'Enter your Password'),
                      ),
                    ),
                    // already have a account text
                    HaveAccount(
                      haveAccount: 'Already have account? ',
                      actionLabel: 'Log In',
                      onPressed: () {},
                    ),
                    // signup button
                    AuthMainButton(
                      mainButtonLable: 'Sign Up',
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                         if (kDebugMode) {
                           print(name);
                         }
                         if (kDebugMode) {
                           print(email);
                         }
                         if (kDebugMode) {
                           print(password);
                         }
                        } else {
                          if (kDebugMode) {
                            print('Not valid');
                          }
                        }
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}
