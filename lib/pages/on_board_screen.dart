import 'package:flutter/material.dart';
import 'package:smart_u/pages/sign_up_screen.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff181fc1),
      body: Stack(
        children: [
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
            top: -100,
            left: -260,
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
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0)
                        .copyWith(top: 120),
                    child: Container(
                      // width: size.width * 0.7,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/undraw_social_sharing_re_pvmr 1.png',
                            width: 250,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Image.asset('assets/logo.png'),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Smart-U',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'The best School platform for Schools who care about their studen\'s success',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(size.width, 0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUpPage(),
                                ),
                              );
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Get Started',
                                style: TextStyle(
                                    color: Color(0xff181fc1),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
