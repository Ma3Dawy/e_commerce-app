import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const OtpInput(this.controller,{Key? key, this.validator}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 50,
      child: TextFormField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        validator: validator,
        cursorColor: Theme.of(context).primaryColor,
        decoration: const InputDecoration(
        border: OutlineInputBorder(),
        counterText: '',
        hintStyle: TextStyle(color: Colors.black, fontSize: 20.0)),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}