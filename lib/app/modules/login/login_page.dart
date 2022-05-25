import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'login_store.dart';
import 'package:apresentacao/app/core/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:apresentacao/app/shared/common_button_widget.dart';
import 'package:apresentacao/app/shared/loading_widget.dart';
import 'package:apresentacao/app/shared/textfield_widget.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key? key, this.title = 'Tela de Login'}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginStore> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    Widget loading = Container();
    return Scaffold(
      body: TripleBuilder<LoginStore, Exception, UserModel>(
        store: store,
        builder: (_, triple) {
          if (triple.isLoading) {
            loading = const LoadingWidget();
          }
          return Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Image.asset(
                  'assets/imagens/background_login.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                color: Colors.black.withOpacity(0.1),
              ),
              _buildLoginBody(),
              loading,
            ],
          );
        },
      ),
    );
  }

  Widget _buildLoginBody() {
    return Column(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFieldWidget(
                    textInputType: TextInputType.emailAddress,
                    prefixIcon: const Icon(Icons.login),
                    label: 'Usuário',
                    validator: (text) {
                      if (text!.isEmpty) {
                        return 'Este campo não pode ser vazio';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFieldWidget(
                    obscureText: true,
                    prefixIcon: const Icon(Icons.lock),
                    label: 'Senha',
                    validator: (text) {
                      if (text!.isEmpty) {
                        return 'Este campo não pode ser vazio';
                      } else {
                        return null;
                      }
                    },
                  ),
                  Container(
                    height: 40,
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      child: const Text(
                        'Recuperar Senha',
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    child: Text(
                      'Não tem cadastro? Então cadastre-se!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.subtitle2!.fontSize,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/signup');
                    },
                  ),
                  TripleBuilder<LoginStore, Exception, UserModel>(
                    builder: (_, triple) {
                      return CommonButtonWidget(
                        onTap: store.isLoading
                            ? null
                            : () async {
                                // if (_formKey.currentState!.validate()) {
                                log('login');
                                await store.login();
                                // }
                              },
                        label: 'Login',
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class DeviceOrientation {}
