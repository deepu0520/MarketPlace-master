
class FormValidator {
  static FormValidator _instance;

  factory FormValidator() => _instance ??= new FormValidator._();

  FormValidator._();

  String validatePassword(String value) {
    // String patttern = r'(^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{6,}$)';
    if (value.isEmpty) {
      return "Password is Required";
    } else if (value.length < 6) {
      return "Password must minimum six characters";
    }
    /* else if (!regExp.hasMatch(value)) {
      return "Password at least one letter and one number";
    }*/
    return null;
  }

  String validateEmail(String value) {
    String pattern =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp regExp = new RegExp(pattern);
    if (value.isEmpty) {
      return "Email is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Invalid Email";
    } else {
      return null;
    }
  }

  String validateUserName(String value) {
    if (value.isEmpty) {
      return "Username is Required";
    } else {
      return null;
    }
  }

  String validateField(String value, String key) {
    if (value.isEmpty) {
      return "$key is Required";
    } else {
      return null;
    }
  }

  String validateEmptyString(String value) {
    if (value.isEmpty) {
      return "Cannot be empty !!";
    } else {
      return null;
    }
  }



}
