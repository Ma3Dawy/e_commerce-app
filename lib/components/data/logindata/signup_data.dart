import 'package:apptask/controlar/navigator_helper.dart';
import 'package:apptask/controlar/validator.dart';
import 'package:apptask/models/login_model.dart';
import 'package:apptask/view/loginscreen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../controlar/provider/cheak.dart';
import '../../customization/custom_text.dart';

class Singupdata extends ConsumerWidget {
  Singupdata({super.key});
  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final valid = ref.watch(cheakProvider);
    return Form(
      key: formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Customtextfield(
            controlar: username,
            hinttext: 'Plaese enter your name',
            labelText: '',
            validator: Validator().namevalidate(context,"Enter your Name please"),
            maxline: 1,
            titel: 'Name',
          ),
          const SizedBox(
            height: 10,
          ),
          Customtextfield(
            controlar: email,
            titel: 'Email',
            labelText: '',
            hinttext: 'Please enter your emlai',
            maxline: 1,
            validator: Validator().emailvalidator(context),
          ),
          const SizedBox(
            height: 10,
          ),
          Customtextfield(
            controlar: password,
            hinttext: 'Please enter your password',
            labelText: '',
            titel: 'Password',
            maxline: 1,
            validator: Validator().validateCreatePassword(context),
            obscure: valid,
            suffixIcon: valid ? Icons.visibility_off : Icons.visibility,
            onTap: () {
              // ignore: invalid_use_of_protected_member
              ref.watch(cheakProvider.notifier).state = !valid;
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: ElevatedButton(
                onPressed: () async {
                  SharedPreferences sharedPreferences =
                      await SharedPreferences.getInstance();
                  Loginmodel user = Loginmodel(
                      username: username.text,
                      email: email.text,
                      password: password.text);
                  String data = user.fromMapToString(user.toMap());
                  sharedPreferences.setString("user", data);
                  print(data);
                  if (formkey.currentState!.validate() == true) {
                    // ignore: use_build_context_synchronously
                    Navigatorhelper.navigatpush(context, const Loginscreen());
                  }
                },
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.deepPurple)),
                child: const Text("Sign up ")),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Already have an account?"),
              TextButton(
                  onPressed: () {
                    Navigatorhelper.navigatpush(context, const Loginscreen());
                  },
                  child: const Text('Sine in',
                      style: TextStyle(
                        color: Colors.grey,
                      )))
            ],
          )
        ],
      ),
    );
  }
}
