import 'package:alssa/models/otp_controller.dart';
import 'package:alssa/models/phone_container.dart';
import 'package:alssa/pages/register_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String dialCodeDigits = "";
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Welcome Back!",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    //
                    // Container of facebook
                    Container(
                      child: MaterialButton(
                        color: const Color(0xFF7583CA),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 15),
                        minWidth: double.infinity,
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'f  ',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "CONTINUE WITH FACEBOOK",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    //
                    // Container of Google
                    Container(
                      child: MaterialButton(
                        color: const Color(0xFFE5E5E5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        minWidth: double.infinity,
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'G  ',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "CONTINUE WITH GOOGLE",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    // Text Phone Number
                    const Text(
                      "Or Continue with Phone Number",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF9C9C9C),
                      ),
                    ),
                    const SizedBox(height: 15),
                    PhoneContainer(
                        dialCodeDigits: dialCodeDigits,
                        controller: _controller),
                    const SizedBox(height: 15),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      child: MaterialButton(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 15),
                        minWidth: double.infinity,
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (c) => OTPController(
                                    phone: _controller.text,
                                    codeDigits: dialCodeDigits,
                                  )));
                        },
                        child: const Text(
                          "LOGIN",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    InkWell(
                      onTap: () {},
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    const SizedBox(height: 30),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (c) => const RegisterPage()));
                      },
                      child: const Text(
                        "Don't Have an acount? SIGNUP",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF9C9C9C),
                        ),
                      ),
                    ),
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
