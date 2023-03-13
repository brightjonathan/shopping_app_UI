import 'package:flutter/material.dart';
import '../Screens/registration_screen.dart';

class welcomeScreen extends StatefulWidget {
  const welcomeScreen({Key? key}) : super(key: key);

  @override
  State<welcomeScreen> createState() => _welcomeScreenState();
}

class _welcomeScreenState extends State<welcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff06AB8D),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                        height: 285.0,
                        decoration: const BoxDecoration(
                          color: Color(0xff06AB8D),
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/login_screen.png",
                            ),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30.0, vertical: 31),
                              child: Column(
                                children: const [
                                  Text(
                                    "Welcome",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 28,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "Sign in to Continue",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      left: 0,
                      top: 255,
                      child: Container(
                        height: 600,
                        width: 375,
                        // ignore: prefer_const_constructors
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              30.0,
                            ),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 35),
                              child: TextFormField(
                                onChanged: (value) {},
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                  labelText: 'Your Email Address',
                                  labelStyle: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xff8B9E9E),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 30, right: 30),
                              child: TextFormField(
                                onChanged: (value) {},
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                decoration: const InputDecoration(
                                  labelText: 'Password',
                                  labelStyle: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xff8B9E9E),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 44.0,
                            ),
                            Container(
                              height: 20.0,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 31.0),
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    16.0,
                                  ),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Radio(
                                    value: 0,
                                    groupValue: 1,
                                    onChanged: (value) {},
                                  ),
                                  const Text(
                                    "Remember me",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xff899B9A),
                                    ),
                                  ),
                                  const Spacer(),
                                  const Text(
                                    "Forgot Password?",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xffFF8933),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 71.0,
                            ),
                            SizedBox(
                              width: 325,
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xffFFB039),
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(50), // <-- Radius
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  "Sign In",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: 20.0,
                                width: 219,
                                decoration: const BoxDecoration(),
                                child: Row(
                                  children: [
                                    const Text(
                                      "Don’t have an account?",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const Registration_screen(),
                                          ),
                                        );
                                      },
                                      child: const Text(
                                        " Sign Up",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xffFF8933),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
