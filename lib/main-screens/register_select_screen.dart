import 'package:flutter/material.dart';
import 'package:streesathi/buttons/sub_button.dart';
import 'package:streesathi/main-screens/login-screen/login_screen.dart';
import 'package:streesathi/const/constants.dart';
import 'package:streesathi/widgets/register/display_husband_register.dart';
import 'package:streesathi/widgets/register/display_volunteer_register.dart';
import 'package:streesathi/widgets/register/display_wife_register.dart';

class RegisterSelectScreen extends StatelessWidget {
  const RegisterSelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top:10,left:10,bottom: 10,right:10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top:10,left:10,right:10),
                        child: Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DisplayWifeRegister(),
                      DisplayHusbandRegister(),
                      DisplayVolunteerRegister(),
                    ],
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom:30.0),
                    child: SubButton(
                        title: 'Already have an account? Login',
                        onPressed: () {
                          goTo(context, LoginScreen());
                        }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

