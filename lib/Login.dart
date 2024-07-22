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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome back!',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Text(
                          'E-mail',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 1, bottom: 30),
                    child: TextField(
                      controller: _loginController(),
                      maxLines: 1,
                      keyboardType: TextInputType.emailAddress,
                      enabled: true,
                      decoration: InputDecoration(
                        label: const Text(
                          '',
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
                  const Row(
                    children: [
                      Text(
                        'Password',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: TextField(
                      controller: _passwordController(),
                      maxLines: 1,
                      keyboardType: TextInputType.text,
                      obscureText: !_passwordVisible,
                      enabled: true,
                      decoration: InputDecoration(
                          label: const Text('',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
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
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: SizedBox(
                      width: 250.0,
                      height: 50.0,
                      child: ButtonTheme(
                        buttonColor: Colors.blue[1000],
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Home()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder()),
                          child: const Text(
                            'Login',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      )
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
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
                        child: const Text("Sign up"),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
