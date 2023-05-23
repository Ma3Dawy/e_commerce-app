import 'package:apptask/components/customization/custom_otp.dart';
import 'package:apptask/controlar/validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class Otpmodel extends ConsumerWidget {
  Otpmodel({super.key});
  final textcontrolar1 = TextEditingController();
  final textcontrolar2 = TextEditingController();
  final textcontrolar3 = TextEditingController();
  final textcontrolar4 = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Form(
      key: formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Verification ',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 40),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Please enter the OTP code sent to you by SMS',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            OtpInput(textcontrolar1,
                validator: Validator().otpvalidator(context)),
            OtpInput(textcontrolar2,
                validator: Validator().otpvalidator(context)),
            OtpInput(textcontrolar3,
                validator: Validator().otpvalidator(context)),
            OtpInput(textcontrolar4,
                validator: Validator().otpvalidator(context)),
          ]),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Dont have an account?"),
              TextButton(
                  onPressed: () {},
                  child: const Text('send again',
                      style: TextStyle(
                        color: Colors.deepPurple,
                      )))
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          ElevatedButton(
              onPressed: () {
                if (formkey.currentState!.validate() == false) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content:Text("Please Enter the code"))
                  );
                }
              },
              child: const Text("Verify"))
        ],
      ),
    );
  }
}
