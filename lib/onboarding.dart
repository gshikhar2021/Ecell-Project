import 'package:demo_project/Covistats.dart';
import 'package:flutter/material.dart';

const double button_radius = 15.0;

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  child: Image.asset('images/digiq2.jpg'),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: Image.asset('images/1.jpg'),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      ConstrainedBox(
                        constraints:
                            BoxConstraints.tightFor(width: 350, height: 55),
                        child: TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Colors.lightBlue[400]),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(button_radius),
                              ),
                            ),
                          ),
                          onPressed: () {
                            // print("Register Button Clicked");
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CoviStats()));
                            });
                          },
                          child: Text(
                            "Register",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5,
                              fontSize: 18,
                              color: Colors.white,
                              // color:
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      ConstrainedBox(
                        constraints:
                            BoxConstraints.tightFor(width: 350, height: 55),
                        child: TextButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(button_radius),
                                  side: BorderSide(color: Colors.lightBlue)),
                            ),
                          ),
                          onPressed: () {
                            // print("Sign in Button Clicked");
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CoviStats()));
                            });
                          },
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5,
                              fontSize: 18,
                            ),
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
    ));
  }
}
