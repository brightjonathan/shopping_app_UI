import 'package:flutter/material.dart';
import '../Screens/welcome_screen.dart';
import '../Screens/Home_Screen.dart';

class Registration_screen extends StatefulWidget {
  const Registration_screen({Key? key}) : super(key: key);

  @override
  State<Registration_screen> createState() => _Registration_screenState();
}

class _Registration_screenState extends State<Registration_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff06AB8D),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                        height: 143.0,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: Color(0xff06AB8D),
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/images/shape_register.png",
                              ),
                              fit: BoxFit.fitWidth),
                        ),
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 39),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Register",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "Enter your personal details to create your account",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 130,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 700.0,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 30),
                              child: TextFormField(
                                onChanged: (value) {},
                                keyboardType: TextInputType.text,
                                decoration: const InputDecoration(
                                  labelText: 'Full Name',
                                  labelStyle: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                horizontal: 30,
                              ),
                              child: TextFormField(
                                onChanged: (value) {},
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                  labelText: 'Email Address',
                                  labelStyle: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 30, right: 30, top: 30),
                              child: TextFormField(
                                onChanged: (value) {},
                                keyboardType: TextInputType.phone,
                                decoration: const InputDecoration(
                                  labelText: 'Phone Number',
                                  labelStyle: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 30, right: 30, top: 30),
                              child: TextFormField(
                                onChanged: (value) {},
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                decoration: const InputDecoration(
                                  labelText: 'Password',
                                  labelStyle: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 30, right: 30, top: 30),
                              child: TextFormField(
                                onChanged: (value) {},
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                decoration: const InputDecoration(
                                  labelText: 'Confirm Password',
                                  labelStyle: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 59.0,
                            ),
                            SizedBox(
                              width: 325,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HomeScreen()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xffFFB039),
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(50), // <-- Radius
                                  ),
                                ),
                                child: const Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 50.0,
                            ),
                            Container(
                              height: 20,
                              width: 167,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(16.0),
                                ),
                              ),
                              child: Row(
                                children: [
                                  const Text(
                                    "Have an account?",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.normal),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const welcomeScreen(),
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      " Sign In",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Color(0xffFFB039),
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
