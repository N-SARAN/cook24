import 'package:flutter/material.dart';
import 'package:streesathi/db/shared_pref.dart';
import 'package:streesathi/main-screens/login-screen/login_screen.dart';
import 'package:streesathi/const/constants.dart';

class HusbandHomeScreen extends StatelessWidget {
  const HusbandHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("pregAthI",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      body: Center(
        child: Padding(
    padding: EdgeInsets.only(bottom: 20),
    child: ElevatedButton(
            onPressed: () {
              UserSharedPreference.setUserRole('');
              goTo(context, LoginScreen());
            },
            child: Padding(
              padding: EdgeInsets.all(0),
              child: Text(
                "Logout from Husband homescreen",
                style: TextStyle(
                  fontSize: 18,
                  //fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
  ),
      ),
    );
  }
}
 