import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sign_in_button/sign_in_button.dart';

import '../utiles/routes.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  
  get controller => null;

  @override
  State<SignUp> createState() => _SignUpState();
}


class _SignUpState extends State<SignUp> {
  String name = "";
  bool changebutton = false;

  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      // ignore: use_build_context_synchronously
      await Navigator.pushNamed(context, MyRoutes.loginRoute);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        // color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: SafeArea(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/DVS.png",
                    fit: BoxFit.cover,
                    height: 200,
                    width: 250,
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "Welcome $name",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  const Text(
                    "Create your Profile ",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 20.0),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            
                            prefixIcon: Icon(Icons.person_outline_outlined),
                            
                            hintText: "Enter your first ame",
                            labelText: "First Name",
                            
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return ("user cannot be empty");
                            }
                            return null;
                          },
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined),
                            hintText: "Enter Email",
                            labelText: "Email Id",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return ("user cannot be empty");
                            }
                            return null;
                          },
                          // onChanged: (value) {
                          //   name = value;
                          //   setState(() {});
                          // },
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.fingerprint),
                            hintText: "Enter Password",
                            labelText: "Password",
                            suffixIcon: IconButton(
                              onPressed: null,
                              icon: Icon(Icons.remove_red_eye_sharp),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return ("Password cannot be empty");
                            } else if (value.length < 6) {
                              return ("Password length shold be at least 6");
                            }
                            return null;
                          },
                        ),

                        // Container(
                        //   alignment: Alignment.centerRight,
                        //   child: FlatButton(
                        //     onPressed:() => print("Forgot Password Button Pressed"),
                        //     child:const Text("Forgot Password?"
                        //     ),
                        //   )
                        // ),

                        const SizedBox(
                          height: 40.0,
                        ),

                        Material(
                          color: Colors.blue,
                          borderRadius:
                              BorderRadius.circular(changebutton ? 50 : 8),
                          child: InkWell(
                            onTap: () => moveToHome(context),
                            child: AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              width: changebutton ? 50 : 150,
                              height: 40,
                              alignment: Alignment.center,
                              // color: Colors.green,
                              child: changebutton
                                  ? const Icon(
                                      Icons.done,
                                      color: Colors.white,
                                    )
                                  : const Text(
                                      "Sign Up",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                            ),
                          ),
                        ),

                        _buildSignInWithText(),
                        _buildSocialBtn(),
                        Center(
                          child: InkWell(
                            onTap: () => Navigator.pushNamed(
                                context, MyRoutes.loginRoute),
                            child: RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Already have an Account?',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Login',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 27, 124, 203),
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        // ElevatedButton(
                        //   onPressed: () {
                        //     Navigator.pushNamed(context, MyRoutes.HomePage);
                        //   },
                        //   child: Text(
                        //     "login",
                        //     style: TextStyle(
                        //         fontSize: 18, fontWeight: FontWeight.bold),
                        //   ),
                        //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                        // )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildSignInWithText() {
  return Column(
    children: const <Widget>[
      SizedBox(height: 25.0),
      Text(
        "-- OR --",
        style: TextStyle(
          color: Color.fromARGB(191, 0, 0, 0),
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
      ),
      SizedBox(height: 20.0),
      // Text(
      //   "Sign in with",
      //   style: TextStyle(
      //     color: Color.fromARGB(188, 0, 0, 0),
      //     fontWeight: FontWeight.w500,
      //     fontSize: 20,
      //   ),
      // ),
    ],
  );
}

Widget _buildSocialBtn() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SignInButton(
          Buttons.google,
          onPressed: () {},
        ),
        const SizedBox(
          height: 30.0,
        ),
      ],
    ),
  );
}
