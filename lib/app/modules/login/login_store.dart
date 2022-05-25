import 'package:flutter_triple/flutter_triple.dart';
import 'package:apresentacao/app/core/models/user_model.dart';

class LoginStore extends NotifierStore<Exception, UserModel> {
  // final LoginRepository _repository = Modular.get();

  LoginStore() : super(UserModel());

  Future<void> login() async {
    setLoading(true);

    await Future.delayed(const Duration(seconds: 3));

    setLoading(false);
  }

  Future<void> logout() async {
    setLoading(true);

    await Future.delayed(const Duration(seconds: 3));

    setLoading(false);
  }
}
