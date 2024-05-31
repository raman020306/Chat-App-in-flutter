import 'package:flutter/material.dart';

import '../utiles/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;

  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.HomePage);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: SafeArea(
              child: Column(
                children: [
                  Image.asset("assets/images/NewLogin.png", fit: BoxFit.cover, height: 200,width: 220,),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Welcome $name",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 20.0),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Enter UserName",
                            labelText: "UserName",
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
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: "Enter Password",
                            labelText: "Password",
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
            
                        const SizedBox(
                          height: 50.0,
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
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                            ),
                          ),
                        )
            
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
        ));
  }
}
