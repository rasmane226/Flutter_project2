import 'package:doctor_randevu/colors.dart';
import 'package:doctor_randevu/widgets/doctors_section.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  List catNames = [
    "Diş",
    "Kalp",
    "Göz",
    "Beyin",
    "Kulak",
  ];

  List<Icon> catIcons = [
    Icon(
      MdiIcons.toothOutline,
      color: pcolor,
      size: 35,
    ),
    Icon(
      MdiIcons.heartPlus,
      color: pcolor,
      size: 35,
    ),
    Icon(
      MdiIcons.eye,
      color: pcolor,
      size: 35,
    ),
    Icon(
      MdiIcons.brain,
      color: pcolor,
      size: 35,
    ),
    Icon(
      MdiIcons.earHearing,
      color: pcolor,
      size: 35,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xFFD9E4EE),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    pcolor.withOpacity(0.8),
                    pcolor,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage("images/doctor1.png"),
                            ),
                            Icon(
                              Icons.notifications_outlined,
                              color: Wcolor,
                              size: 30,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Text(
                          "Merhaba programci",
                          style: TextStyle(
                            color: Wcolor,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Sağliğiniz \nilk Önceliğimizdir",
                          style: TextStyle(
                            color: Wcolor,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 30, bottom: 20),
                          width: MediaQuery.of(context).size.width,
                          height: 48,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Wcolor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: scolor,
                                blurRadius: 6,
                                spreadRadius: 3,
                              ),
                            ],
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Arama yap ...",
                              hintStyle: TextStyle(
                                  color: Colors.black.withOpacity(0.5)),
                              prefixIcon: Icon(
                                Icons.search,
                                size: 25,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Kategoriler",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: bcolor.withOpacity(0.7),
                      ),
                    ),
                  ),
                  SizedBox(height: 13),
                  Container(
                    height: 110,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: catNames.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 15),
                                height: 50,
                                width: 65,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF2F8FF),
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: scolor,
                                      blurRadius: 4,
                                      spreadRadius: 2,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: catIcons[index],
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                catNames[index],
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: bcolor.withOpacity(0.7),
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Önerilen doktorlar",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: bcolor.withOpacity(0.7),
                      ),
                    ),
                  ),
                  DoctorsSection()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
