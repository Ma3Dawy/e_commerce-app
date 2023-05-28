import 'dart:convert';

import 'package:apptask/controlar/navigator_helper.dart';
import 'package:apptask/controlar/validator.dart';
import 'package:apptask/models/login_model.dart';
import 'package:apptask/view/appscreen/homescreen/homescreen.dart';
import 'package:apptask/view/loginscreen/singup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../controlar/provider/cheak.dart';
import '../../customization/custom_text.dart';

// ignore: must_be_immutable
class Logindata extends ConsumerWidget {
  Logindata({super.key});
  final email = TextEditingController();
  final password = TextEditingController();
  final formkey = GlobalKey<FormState>();
  Loginmodel? newuser;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cheaker = ref.watch(cheakProvider);
    final box = ref.watch(cheakboxProvider);
    return Form(
      key: formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Customtextfield(
            titel: 'Email Adress',
            controlar: email,
            maxline: 1,
            hinttext: 'e.g name @ example.com',
            labelText: "",
            validator: Validator().emailvalidator(context),
          ),
          const SizedBox(
            height: 15,
          ),
          Customtextfield(
            titel: 'Password',
            controlar: password,
            hinttext: "password",
            labelText: "",
            maxline: 1,
            obscure: cheaker,
            validator: Validator().validateLoginPassword(context),
            suffixIcon: cheaker ? Icons.visibility_off : Icons.visibility,
            onTap: () {
              // ignore: invalid_use_of_protected_member
              ref.watch(cheakProvider.notifier).state = !cheaker;
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Row(
                  children: [
                    Checkbox(
                      value: box,
                      onChanged: (value) {
                        // ignore: invalid_use_of_protected_member
                        ref.watch(cheakboxProvider.notifier).state = !box;
                      },
                    ),
                    const SizedBox(width: 5.0),
                    const Text("Remember Me",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ))
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Forget Password ",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: ElevatedButton(
                onPressed: () async {
                  SharedPreferences sharedPreferences =
                      await SharedPreferences.getInstance();
                  String? userdata = sharedPreferences.getString("user");
                  newuser = Loginmodel.formMap(jsonDecode(userdata!));
                  if (newuser!.email == email.text &&newuser!.password == password.text) {
                    Navigatorhelper.navigatRepleace(context, Homescreen());
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Login Sucsses")));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Username or Password is not correct")));
                  }
                },
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.deepPurple)),
                child: const Text("Login")),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/2.png'),
              ),
              SizedBox(
                width: 30,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/images 1.png'),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Dont have an account?",
                  style: TextStyle(color: Colors.black)),
              TextButton(
                  onPressed: () {
                    Navigatorhelper.navigatpush(context, const Sineupscreen());
                  },
                  child: const Text('Sine up',
                      style: TextStyle(
                        color: Colors.deepPurple,
                      )))
            ],
          )
        ],
      ),
    );
  }
}
