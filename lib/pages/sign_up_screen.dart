import 'package:flutter/material.dart';
import 'package:smart_u/widgets/text_form.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: size.height * 0.4,
                      decoration: const BoxDecoration(
                        color: Color(0xff181fc1),
                      ),
                    ),
                    Positioned(
                      top: -130,
                      right: 0,
                      child: Transform.rotate(
                        angle: 27.82,
                        child: Container(
                          width: 200,
                          height: 182,
                          decoration: BoxDecoration(
                            color: const Color(0xff3b41cf),
                            borderRadius: BorderRadius.circular(32),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: -220,
                      child: Transform.rotate(
                        angle: 27.82,
                        child: Container(
                          width: 304,
                          height: 303,
                          decoration: BoxDecoration(
                            color: const Color(0xff3b41cf),
                            borderRadius: BorderRadius.circular(32),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.1,
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/logo.png'),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Register',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'You\'re just a few steps away, just\nprovide some details below to\nregister.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                              width: 100,
                              child: Divider(
                                height: 2,
                                color: Colors.pink,
                                thickness: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: Stack(
                    children: [
                      Container(
                        color: const Color(0xff181fc1),
                      ),
                      Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(61),
                          ),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 50,
                            ),
                            const TextForm(),
                            const SizedBox(
                              height: 10,
                            ),
                            const TextForm(
                              focus: 'Username',
                              icon: Icons.verified_user,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const TextForm(
                              focus: 'Password',
                              icon: Icons.lock,
                              keyboardType: TextInputType.number,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const TextForm(
                              focus: 'Confirm Password',
                              icon: Icons.lock,
                              keyboardType: TextInputType.number,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  // maximumSize: Size(100, 0),
                                  minimumSize: Size(size.width, 0),
                                  backgroundColor: const Color(0xff181fc1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Register',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'All ready have an account? ',
                                  style: TextStyle(
                                    color: Color(0xff181fc1),
                                  ),
                                ),
                                Text(
                                  'Sign In',
                                  style: TextStyle(
                                      color: Color(0xff181fc1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
