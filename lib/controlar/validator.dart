import 'package:flutter/cupertino.dart';

class Validator {
  String? Function(String?)? emailvalidator(BuildContext context) {
    return (value) {
      if (value!.isEmpty) {
        return "Please Enter Your Email Address";
      }

      if (!value.contains("@")) {
        return "Your Email is missing @";
      }
      if (!value.contains(".com")) {
        return "Your Email is missing .com";
      }
      if (value.isEmpty) {
        return "Please Enter Your Email Address";
      }
      return null;
    };
  }

  String? Function(String?)? namevalidate(BuildContext context) {
    return (value) {
      if (value!.isEmpty) {
        return " Enter your name please" ;
      }
      return null;
    };
  }

  String? Function(String?)? countyvalidate(BuildContext context) {
    return (value) {
      if (value!.isEmpty) {
        return " Enter your country please" ;
      }
      return null;
    };
  }


  String? Function(String?)? otpvalidator(BuildContext context) {
    return (value) {
      if (value!.isEmpty) {
        return '';
      } else {
        return null;
      }
    };
  }

  String? Function(String?)? validateLoginPassword(BuildContext context) {
    return (value) {
      if (value!.isEmpty) {
        return "Please Enter Your Password";
      } else {
        return null;
      }
    };
  }

  String? Function(String?)? validateCreatePassword(BuildContext context) {
    String patternEmail =
        r'^(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!-_@\#&$%^*]).{8,32}$';
    return (value) {
      if (value!.isEmpty) {
        return "PLaese Enter Your Password";
      }
      if (value.length < 8) {
        return "Your Password must be more than 8 number";
      }
      if (!checkPattern(pattern: patternEmail, value: value)) {
        return "Your Password is Weak";
      } else {
        return null;
      }
    };
  }

  String? Function(String?)? validateConfirmPassword(
    BuildContext context,
    String password,
  ) {
    return (value) {
      if (value!.isEmpty) {
        return "Please Enter Your Confirm Password";
      }
      if (value.length < 8) {
        return "Your Password must be more than 8 number";
      }
      if (value != password) {
        return "Your Password is Not the same";
      } else {
        return null;
      }
    };
  }

  String? Function(String?)? phonevalidator(BuildContext context) {
    return (p0) {
      if (!p0!.startsWith("012") &&
          !p0.startsWith("010") &&
          !p0.startsWith("011") &&
          !p0.startsWith("015")) {
        return "Please Enter Valid Number";
      }
      if (p0.isNotEmpty && p0.length < 11) {
        return "Your Number is less than 11 number";
      }
      if (p0.isNotEmpty && p0.length == 11) {
        return null;
      }
      if (p0.isNotEmpty && p0.length > 11) {
        return "Your Number is Overflow";
      }

      if (p0.isEmpty) {
        return "Please Enter Phone Number";
      }
      return null;
    };
  }

  static bool checkPattern({pattern, value}) {
    RegExp regularCheck = RegExp(pattern);
    return regularCheck.hasMatch(value);
  }
}
