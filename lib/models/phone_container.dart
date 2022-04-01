import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class PhoneContainer extends StatelessWidget {
  const PhoneContainer({
    Key? key,
    required this.dialCodeDigits,
    required TextEditingController controller,
  })  : _controller = controller,
        super(key: key);

  final String dialCodeDigits;
  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: TextFormField(
        controller: _controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 2),
          prefixIcon: CountryCodePicker(
            initialSelection: '+91',
            favorite: const ["+91", "IN"],
            textStyle: const TextStyle(color: Colors.black),
            showFlag: true,
          ),
          hintText: "Enter Mobile Number",
          prefix: Padding(
            padding: const EdgeInsets.all(0),
            child: Text(dialCodeDigits),
          ),
        ),
        maxLength: 12,
        keyboardType: TextInputType.number,
      ),
    );
  }
}
