import 'package:doctor_randevu/colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AppointScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xFFD9E4EE),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.1,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "images/doctor1.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      pcolor.withOpacity(0.9),
                      pcolor.withOpacity(0),
                      pcolor.withOpacity(0),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 30, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              margin: EdgeInsets.all(8),
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  color: Color(0xFFF2F8FF),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: scolor,
                                      blurRadius: 4,
                                      spreadRadius: 2,
                                    ),
                                  ]),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_back,
                                  color: pcolor,
                                  size: 28,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(8),
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                color: Color(0xFFF2F8FF),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: scolor,
                                    blurRadius: 4,
                                    spreadRadius: 2,
                                  ),
                                ]),
                            child: Center(
                              child: Icon(
                                Icons.favorite_outline,
                                color: pcolor,
                                size: 28,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Hastalar",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Wcolor,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "1.8k",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Wcolor,
                                ),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Deneyim",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Wcolor,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "9 yil",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Wcolor,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Değerlendirme",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Wcolor,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "4.8",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Wcolor,
                                ),
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
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dr Elif",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: pcolor,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(MdiIcons.heartPulse, color: Colors.red, size: 28),
                      SizedBox(width: 5),
                      Text(
                        "Cerrah",
                        style: TextStyle(
                          fontSize: 17,
                          color: bcolor.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Text messages are used for personal, family, business, and social purposes.",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.6),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "kitap tarihi",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: bcolor.withOpacity(0.6),
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    height: 70,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              InkWell(
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 5),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 25),
                                  decoration: BoxDecoration(
                                    color:
                                        index == 1 ? pcolor : Color(0xFFF2F8FF),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: scolor,
                                        blurRadius: 4,
                                        spreadRadius: 2,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "${index + 8}",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: index == 1
                                              ? Wcolor
                                              : bcolor.withOpacity(0.6),
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "DEC",
                                        style: TextStyle(
                                          color: index == 1
                                              ? Wcolor
                                              : bcolor.withOpacity(0.6),
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Kitap Saati",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: bcolor.withOpacity(0.6),
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    height: 60,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 5),
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 5),
                            decoration: BoxDecoration(
                                color: index == 2 ? pcolor : Color(0xFFF2F8FF),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: scolor,
                                    blurRadius: 4,
                                    spreadRadius: 2,
                                  ),
                                ]),
                            child: Center(
                              child: Text(
                                "${index + 8}: 00 AM",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: index == 2
                                      ? Wcolor
                                      : bcolor.withOpacity(0.6),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  SizedBox(height: 15),
                  Material(
                    color: pcolor,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Text(
                            "kitap randevusu",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Wcolor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
