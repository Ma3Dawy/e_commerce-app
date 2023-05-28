import 'package:apptask/components/customization/custom_list_title.dart';
import 'package:apptask/components/customization/custom_text.dart';
import 'package:apptask/components/data/appdata/profiledata/profile_screen_bar.dart';
import 'package:apptask/controlar/validator.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  ContactUs({super.key});
  final subject = TextEditingController();
  final message = TextEditingController();
  final formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              ProfileScreenbar.profilebar(context, title: "Contact Us"),
              CustomlistTilel.coustomlist(
                  context, "Phone", const Text("+123 984489483534"),
                  icon: Icons.phone_android),
              const SizedBox(
                height: 15,
              ),
              CustomlistTilel.coustomlist(
                  context, "Email", const Text("E-commerce @gmial.com"),
                  icon: Icons.email_outlined),
              const SizedBox(
                height: 15,
              ),
              Customtextfield(
                controlar: subject,
                labelText: 'Type your subject here',
                hinttext: '',
                titel: 'Subjcet',
                maxline: 1,
                validator: Validator().namevalidate(context,"Enter your subeject please"),
              ),
              const SizedBox(
                height: 15,
              ),
              Customtextfield(
                controlar: message,
                labelText: 'Type your Message here',
                hinttext: '',
                titel: 'Your  Message',
                maxline: 7,
                validator: Validator().namevalidate(context,"Enter your Message please"),
    
              ),const SizedBox(
                height: 15,
              ),
              ElevatedButton(onPressed: (){
                  if (formkey.currentState!.validate()==true) {
                    
                  }
              }, style: const ButtonStyle(fixedSize: MaterialStatePropertyAll(Size.fromHeight(50)),backgroundColor: MaterialStatePropertyAll(Colors.deepPurple)),child: const Text("Send",style:TextStyle(fontSize: 20),))
            ],
          ),
        ),
      ),
    );
  }
}
