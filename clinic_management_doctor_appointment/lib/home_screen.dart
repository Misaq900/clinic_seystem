import 'package:clinic_management_doctor_appointment/color.dart';
import 'package:clinic_management_doctor_appointment/doctors_list.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child:Column(
      children: [
        Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3.5,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    pColor.withOpacity(0.8),
                    pColor,
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30,left: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("images/doctor3.jpg"),
                      ),
                      Icon(
                        Icons.notifications_active,
                        size: 30,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(padding: EdgeInsets.only(left: 30),
                    child: Text(
                      "Hi , Choose your Doctor for appointment",
                      style: TextStyle(
                        color: wColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(padding: EdgeInsets.only(left: 30),
                    child: Text(
                      "your Health is over first Priority",
                      style: TextStyle(
                        color: wColor,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15, bottom: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: wColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 6,
                            spreadRadius: 3,
                          )
                        ]),
                    child: Scaffold(
                      body: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "search here....",
                            hintStyle: TextStyle(
                                color: Colors.blueGrey.withOpacity(0.5)),
                            prefixIcon: Icon(
                              Icons.search,
                              size: 25,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],),

        const SingleChildScrollView(
          child: DoctorsList(),
        ), ],
    ),
    );
  }
}
