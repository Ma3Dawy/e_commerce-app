import 'package:apptask/controlar/costom_text.dart';
import 'package:apptask/controlar/validator.dart';
import 'package:apptask/view/otp_screen.dart';
import 'package:apptask/view/singup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controlar/provider/cheak.dart';

class Loginmodel extends ConsumerWidget {
  Loginmodel({super.key});
  final email = TextEditingController();
  final password = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cheaker = ref.watch(cheakProvider);
    final box = ref.watch(cheakboxProvider);
    return Form(
      key: formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Coustemtextfield(
            titel: 'Email Adress',
            controlar: email,
            maxline: 1,
            hinttext: '',
            labelText: "e.g name @ example.com",
            validator: Validator().emailvalidator(context),
          ),
          const SizedBox(
            height: 15,
          ),
          Coustemtextfield(
            titel: 'Password',
            controlar: password,
            hinttext: "",
            labelText: "password",
            maxline: 1,
            obscure: cheaker,
            validator: Validator().validateLoginPassword(context),
            suffixIcon: Icons.visibility,
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
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Otpscreen(),
                      ));
                },
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
                onPressed: () {},
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Sineupscreen(),
                        ));
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
