class EmailFormValidator {
  static String? validate(String value) {
    if (value.isEmpty) {
      return "Email can't be empty";
    } else if (!validateEmail(value.trim())) {
      return 'Please enter a valid email';
    }
    return null;
  }
}

bool validateEmail(value) {
  var pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = RegExp(pattern);
  return (!regex.hasMatch(value)) ? false : true;
}

class PasswordFormValidator {
  static String? validate(String value) {
    if (value.isEmpty) {
      return "Password can't be empty";
    } else if (value.length < 6) {
      return "Password must have at least 6 characters long.";
    }
    return null;
  }
}
