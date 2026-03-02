import 'package:auto_route/auto_route.dart';
import 'package:customtemplate/di/injection.dart';
import 'package:customtemplate/features/auth/domain/usecases/api_auth_login_post_use_case/api_auth_login_post_params.dart'
    show ApiAuthLoginPostParams;
import 'package:customtemplate/features/auth/domain/usecases/api_auth_login_post_use_case/api_auth_login_post_use_case.dart';
import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          TextField(
            controller: emailController,
            decoration: const InputDecoration(labelText: 'Email'),
          ),
          const SizedBox(height: 16.0),
          TextField(
            controller: passwordController,
            decoration: const InputDecoration(labelText: 'Password'),
            obscureText: true,
          ),
          const SizedBox(height: 32.0),
          ElevatedButton(
            onPressed: () async {
              final ea = await getIt<ApiAuthLoginPostUseCase>().call(
                ApiAuthLoginPostParams(
                  'v1',
                  LoginCommand(
                    (b) => b
                      ..email = 'khaled963sawan@gmail.com'
                      ..password = 'Google9008',
                  ),
                ),
              );
              ea.fold(
                (l) => print('error ${l.toString()}'),
                (r) => print('success ${r.toString()}'),
              );
            },
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}
