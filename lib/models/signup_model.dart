import 'package:apptask/controlar/costom_text.dart';
import 'package:apptask/controlar/validator.dart';
import 'package:apptask/view/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controlar/provider/cheak.dart';

class Singupmodle extends ConsumerWidget {
  Singupmodle({super.key});
  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final valid = ref.watch(cheakProvider);
    return Form(
      key: formkey,
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Coustemtextfield(
            controlar: username,
            hinttext: '',
            labelText: 'Plaese enter your name',
            validator: Validator().namevalidate(context),
            maxline: 1,
            titel: 'Name',
          ),const SizedBox(height: 10,),
          Coustemtextfield(
            controlar: email,
            titel: 'Email',
            labelText: 'Please enter your email',
            hinttext: '',
            maxline: 1,
            validator: Validator().emailvalidator(context),
          ),const SizedBox(height: 10,),
          Coustemtextfield(
            controlar: password,
            hinttext: '',
            labelText: 'Please enter your password',
            titel: 'Password',
            maxline: 1,
            validator: Validator().validateCreatePassword(context),
            obscure: valid,
            suffixIcon: Icons.visibility,
            onTap: () {
              // ignore: invalid_use_of_protected_member
              ref.watch(cheakProvider.notifier).state = !valid;
            },
          ),Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: ElevatedButton(onPressed: () {
              if(formkey.currentState!.validate()==true){

              }
            },style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.deepPurple)),
               child: const Text("Sign up ")),
          ),const SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Already have an account?"),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Loginscreen(),
                        ));
                  },
                  child: const Text('Sine ip',style: TextStyle(color: Colors.grey,))
          )],
          )
        ],
      ),
    );
  }
}
