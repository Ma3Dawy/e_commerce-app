import 'package:apptask/components/customization/custom_text.dart';
import 'package:apptask/controlar/validator.dart';
import 'package:apptask/models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: must_be_immutable
class Editprofile extends StatelessWidget {
  Editprofile({super.key});
  final name = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  final country = TextEditingController();
  final formkey=GlobalKey<FormState>();
  Profilemodel? user;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            alignment: Alignment.center,
            children: const [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/ahmed.jpg'),
              ),
              Positioned(
                  bottom: 0,
                  left:210,
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 238, 237, 237),
                    child: Icon(
                      Icons.photo_camera,
                      color: Colors.white,
                    ),
                  ))
            ],
          ),
          Customtextfield(
              controlar: name,
              labelText: "Name",
              hinttext: '',
              titel: "",
              maxline: 1,
              validator: Validator().namevalidate(context)),
          Customtextfield(
              controlar: email,
              labelText: "Email",
              hinttext: '',
              titel: "",
              maxline: 1,
              validator: Validator().emailvalidator(context)),
          Customtextfield(
              controlar: phone,
              labelText: "Phone",
              hinttext: '',
              pref: "+02  ",
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              maxlenght: 11,
              titel: "",
              maxline: 1,
              validator: Validator().phonevalidator(context)),
          Customtextfield(
              controlar: country,
              labelText: "Country",
              hinttext: '',
              titel: "",
              maxline: 1,
              validator: Validator().countyvalidate(context)),
          ElevatedButton(
              onPressed: () async {
                SharedPreferences sharedPreferences =
                    await SharedPreferences.getInstance();
                user = Profilemodel(
                    name: name.text,
                    email: email.text,
                    phone: phone.text,
                    country: country.text);
                String profil = user!.fromMaptoString(user!.tomap());
                sharedPreferences.setString("editprofile", profil);
                if (formkey.currentState!.validate()==true) {
                  
                }
              },
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.deepPurple)),
              child: const Text(
                'Save',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
