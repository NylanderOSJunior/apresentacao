import 'package:flutter_triple/flutter_triple.dart';

class PasswordFieldStore extends NotifierStore<Exception, bool> {
  PasswordFieldStore() : super(true);

  void setObscureText(bool obscureText) {
    update(obscureText);
  }
}
