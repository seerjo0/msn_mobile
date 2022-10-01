import 'package:flutter/material.dart';
import 'Home.dart';
import 'PasswordRecover.dart';
import 'Register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  _loginController() {}

  _passwordController() {}

  bool _passwordVisible = false;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/background.png',
                  fit: BoxFit.fill,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 1),
                    child: TextField(
                      controller: _loginController(),
                      maxLines: 1,
                      keyboardType: TextInputType.emailAddress,
                      enabled: true,
                      decoration: InputDecoration(
                        label: const Text(
                          'E-mail',
                          style: TextStyle(color: Colors.blue),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.lightBlue),
                          borderRadius: BorderRadius.circular(60),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.lightBlue),
                          borderRadius: BorderRadius.circular(60),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: TextField(
                      controller: _passwordController(),
                      maxLines: 1,
                      keyboardType: TextInputType.text,
                      obscureText: !_passwordVisible,
                      enabled: true,
                      decoration: InputDecoration(
                          label: const Text('Password',
                              style: TextStyle(color: Colors.blue)),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.lightBlue),
                            borderRadius: BorderRadius.circular(60),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.lightBlue),
                            borderRadius: BorderRadius.circular(60),
                          ),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                              icon: Icon(
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Theme.of(context).primaryColorDark,
                              ))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Home()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder()),
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PasswordRecover()),
                      );
                    },
                    child: const Text("Forgot my password."),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Register()),
                      );
                    },
                    child: const Text("Don't have an account."),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
