import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OTPController extends StatefulWidget {
  final String phone;
  final String codeDigits;

  OTPController({required this.phone, required this.codeDigits});

  @override
  State<OTPController> createState() => _OTPControllerState();
}

class _OTPControllerState extends State<OTPController> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  String? varificationCode;

  final BoxDecoration pinOTPCodeDecoration = BoxDecoration(
    color: Colors.blueAccent,
    borderRadius: BorderRadius.circular(10.0),
    border: Border.all(color: Colors.black),
  );

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text("OTP Verification"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/images/password.png",
                  height: 300,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: const Center(
                  child: Text(
                    "OTP Verification",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Center(
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Enter the OTP sent to : ${widget.codeDigits}+91- ${widget.phone}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: OTPTextField(
                          length: 4,
                          width: MediaQuery.of(context).size.width,
                          textFieldAlignment: MainAxisAlignment.spaceAround,
                          fieldWidth: 40,
                          fieldStyle: FieldStyle.underline,
                          style: const TextStyle(fontSize: 17),
                          onCompleted: (pin) {
                            print("Completed:" + pin);
                          },
                          onChanged: (pin) {},
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
