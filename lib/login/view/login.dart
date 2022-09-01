import 'package:admin/login/login.dart';
import 'package:admin/profile/profile.dart';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _email = TextEditingController();

  final TextEditingController _password = TextEditingController();

  void _clear() {
    _email.clear();
    _password.clear();
  }
   final _globalKey = GlobalKey<FormState>();

  String errormsg = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Login Page'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _globalKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height - 650,
                  ),
                  const Text(
                    'Login ',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    '\n Please Login to your account',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 15),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == '') {
                        return 'Nothing entered';
                      } else {
                        return null;
                      }
                    },
                    controller: _email,
                    decoration:
                        const InputDecoration(hintText: 'Email / MobileNumber'),
                  ),
                  TextFormField(
                    // validator: (value) {
                    //   if (value == '') {
                    //     return 'Nothing entered';
                    //   } else {
                    //     return null;
                    //   }
                    // },
                    controller: _password,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      suffix: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'forgot password?',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90, right: 90),
                    child: ElevatedButton(
                      onPressed: () async {
                        try {
                          if (await LoginRepo()
                              .signIn(_email.text, _password.text)) {
                            _clear();

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ProfilePage()));
                          }
                        } catch (e) {
                          setState(() {
                            errormsg = 'invalid email & password';
                          });
                        }
                      },
                      child: const Text('Login'),
                    ),
                  ),
                  Text(
                    errormsg,
                    style: const TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
