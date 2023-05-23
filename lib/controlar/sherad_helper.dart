
import 'package:apptask/models/login_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SheradHelper {
  late SharedPreferences sharedPreferences;
  late Loginmodel user;
  Future savedate(
      {required String name,
      required String email,
      required String pass,
      required String key}) async {
    sharedPreferences = await SharedPreferences.getInstance();
    user = Loginmodel(username: name, email: email, password: pass);
    String data = user.fromMapToString(user.toMap());
    final sherad = sharedPreferences.setString(key, data);
    return sherad;
  }

/*  Future<Loginmodel> getuserdate(String key) async {
    String? data = sharedPreferences.getString(key);
    //Loginmodel newUser = user.formStringtomap(jsonDecode(data!)) as Loginmodel;
    return newUser;*/
  
}
