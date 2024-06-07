import 'package:flutter/material.dart';
import 'package:mentalapp/screens/login_screen.dart';
import 'package:mentalapp/screens/signup_screen.dart';
import 'package:mentalapp/widgets/navbar_roots.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(height: 15),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NavbarRoots(),
                  ),
                );
              },
              child: Text("Skip", style: TextStyle(color: Color(0xFF1c56c6))),
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.all(40),
            child: ClipOval(
              child: Image.asset(
                "images/logo1.jpeg",
                width: 100, // Adjust the width as needed
                height: 100, // Adjust the height as needed
                fit: BoxFit
                    .cover, // Maintain aspect ratio and cover circular area
              ),
            ),
          ),
          SizedBox(height: 50),
          Text(
            "Mindful Horizon",
            style: TextStyle(
              color: Color(0xFF1c56c6),
              fontWeight: FontWeight.bold,
              fontSize: 25,
              letterSpacing: 1,
              wordSpacing: 2,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Fostering calmness, resilience & support",
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                  color: Color(0xFF1c56c6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 40),
                          child: Text("Log In",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ))))),
              // SIGN IN
              Material(
                  color: Color(0xFF1c56c6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupScreen(),
                          ),
                        );
                      },
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 40),
                          child: Text("Sign Up",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ))))),
            ],
          )
        ],
      ),
    ));
  }
}
