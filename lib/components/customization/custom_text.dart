import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Customtextfield extends StatelessWidget {
  final String? hinttext;
  final String? counterText;
  final String? pref;
  final TextInputType? inputtext;
  TextEditingController controlar = TextEditingController();
  final IconData? suffixIcon;
  final String? Function(String?)? validator;
  final double? width;
  final double? high;
  final String? labelText;
  final int? maxlenght;
  final void Function()? onTap;
  final String? titel;
  // ignore: prefer_typing_uninitialized_variables
  final inputFormatters;
  final int? maxline;
  final IconData? icon2;
  final vaildkey = GlobalKey<FormState>();
  final bool? obscure;
  Customtextfield({
    super.key,
    this.hinttext,
    required this.controlar,
    this.validator,
    this.suffixIcon,
    this.onTap,
    this.obscure,
    this.inputFormatters,
    this.counterText,
    this.width,
    this.high,
    this.labelText,
    this.maxline,
    this.icon2,
    this.pref,
    this.maxlenght,
    this.inputtext,
    this.titel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: Text(
            titel!,
            style: const TextStyle(color: Colors.black),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Card(
          shape:OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide:BorderSide.none,gapPadding: 20) ,
        child: TextFormField(
            maxLength: maxlenght,
            maxLines: maxline,
            textDirection: TextDirection.ltr,
            inputFormatters: inputFormatters,
            validator: validator,
            controller: controlar,
            keyboardType: inputtext,
            textInputAction: TextInputAction.done,
            obscureText: obscure ?? false,
            decoration: InputDecoration(
              
                prefixIcon: Icon(icon2,color: Colors.deepPurple,),
                errorStyle:const TextStyle(color: Colors.red,fontWeight: FontWeight.bold) ,
                counterText: counterText,
                prefixText: pref,
                prefixStyle: const TextStyle(color: Colors.blue),
                hintText: "$hinttext",
                labelText: "$labelText",
                border: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                suffixIcon:
                IconButton(onPressed: onTap, icon: Icon(suffixIcon))),
          ),
        ),
      ],
    );
  }
}
