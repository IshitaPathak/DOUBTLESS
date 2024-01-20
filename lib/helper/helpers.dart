import 'package:shared_preferences/shared_preferences.dart';

class HelperFunction {
  // keys
  // this are the three keys with which we will be operaitng shared preferences
  static String userLoogedInKey = "LOOGEDINKEY";
  static String userNameKey = "USERNAMEKEY";
  static String userEmailKey = "USEREMAILKEY";

  // saving the data to shared preferences

  // getting the data from shared preferences
  static Future<bool?> getUserLoggedInStatus() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getBool(userLoogedInKey);
  }
}
