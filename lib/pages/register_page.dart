import 'package:alssa/models/otp_controller.dart';
import 'package:alssa/models/phone_container.dart';
import 'package:alssa/pages/login_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String dialCodeDigits = "";
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              Image.asset(
                "assets/images/Frame.png",
                fit: BoxFit.cover,
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: const Center(
                  child: Text(
                    "Your Home Services Expert",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: const Center(
                  child: Text(
                    "Continue with phone number",
                    style: TextStyle(
                      color: Color(0xFF9C9C9C),
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              PhoneContainer(
                  dialCodeDigits: dialCodeDigits, controller: _controller),
              //  SignUp
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                child: MaterialButton(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  minWidth: double.infinity,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (c) => OTPController(
                              phone: _controller.text,
                              codeDigits: dialCodeDigits,
                            )));
                  },
                  child: const Text(
                    "SIGNUP",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              InkWell(
                onTap: () {},
                child: const Text(
                  "View other Option",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (c) => const LoginPage()));
                },
                child: const Text(
                  "Don't Have an acount?",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF9C9C9C),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
