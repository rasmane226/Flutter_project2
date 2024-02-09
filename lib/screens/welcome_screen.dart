import 'package:doctor_randevu/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:doctor_randevu/colors.dart';

class WelcomeScreen extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
          colors:[
            pcolor.withOpacity(0.8),
            pcolor,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Image.asset("images/doctors.png"),
            ),
            SizedBox(height: 50),
            Text(
              "Online Doctor",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                wordSpacing: 2,
                letterSpacing: 1,

              ),
            ),
            SizedBox(height: 10),
            Text(
              "Doktorla Görüş ",
              style: TextStyle(
                color: Wcolor,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 50),
            Material(
              color: Wcolor,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                     MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                       ),
                     );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  child: Text(
                    "Haydi!!!",
                    style: TextStyle(
                      color: pcolor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Image.asset(
              "images/lined heart.png",
              color: Wcolor,
              scale: 2,
              ),

            
          ],
        ),
      ),
    );
  }
}