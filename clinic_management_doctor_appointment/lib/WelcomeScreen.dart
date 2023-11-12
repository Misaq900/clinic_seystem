
import 'package:clinic_management_doctor_appointment/color.dart';
import 'package:clinic_management_doctor_appointment/home_screen.dart';
import 'package:flutter/material.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height:  MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [pColor.withOpacity(0.8),
          pColor,
          ],begin: Alignment.topCenter,
          end: Alignment.bottomCenter)
        ),
         child: FittedBox(
           child: Column(
             children: [Padding(padding:EdgeInsets.all(20),
             child: Image.asset("assets/img2.png"),
             ),
             SizedBox(
               height: 50,
             ),
               Text(" Masoudi Clinic",style: TextStyle(
                 color: Colors.white,
                 fontSize: 35,
                 fontWeight: FontWeight.bold,
                 letterSpacing: 1,
                 wordSpacing: 2
               ),
               ),
               SizedBox(
                 height: 10,
               ),
               Text("Most Welcome",style: TextStyle(
                 color: Colors.white,
                  fontSize: 18,
                 fontWeight: FontWeight.w500,
               ),
               ),
               SizedBox(height: 60,)
               ,Material(color: Colors.white,
               borderRadius: BorderRadius.circular(10),child:
                 InkWell(
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder:(context) => MyHomePage(),),);
                   },
                   child: Container(
                     padding: EdgeInsets.symmetric(vertical: 15,horizontal: 40),
                     child: Text("Let's Go",style: TextStyle(color: pColor,
                     fontSize: 22,
                       fontWeight: FontWeight.bold
                     ),),
                   ),
                 ),
               ),
             ],
           ),
         ),
      ),
    );
  }
}
