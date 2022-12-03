import 'package:flutter/material.dart';
import 'package:shecodesapplication/navbar.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width),
        decoration:  BoxDecoration(color: Colors.blue[300]),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 36.0, horizontal: 24.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Login",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 46,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Enter to the world!",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w300),
                        )
                      ]),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Column(children: [
                              TextField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        borderSide: BorderSide.none),
                                    filled: true,
                                    hintStyle: const TextStyle(
                                      fontFamily: 'Poppins',
                                    ),
                                    hintText: "E-mail",
                                    prefixIcon: const Icon(Icons.mail)),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        borderSide: BorderSide.none),
                                    filled: true,
                                    hintText: "Password",
                                    hintStyle: const TextStyle(
                                      fontFamily: 'Poppins',
                                    ),
                                    prefixIcon: const Icon(Icons.lock)),
                              ),
                              const SizedBox(height: 10.0),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Forgot Password?",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'Poppins'),
                                  )),
                            ]),
                          ),
                          Container(
                              child: Column(
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const NavigationBarPage()),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue[300],
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          12), // <-- Radius
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                          fontFamily: 'Poppins', fontSize: 20),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Don't have an account?",
                                    style: TextStyle(fontFamily: 'Poppins'),
                                  ),
                                  TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        "Sign Up",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: 'Poppins'),
                                      )),
                                ],
                              ),
                            ],
                          ))
                        ]),
                  ),
                ),
              )
            ]),
      ),
    ));
  }
}
