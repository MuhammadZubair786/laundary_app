import 'package:bus_tracking_app/Login/Driverregistration.dart';
import 'package:bus_tracking_app/Login/stdregistration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class signUpScreen extends StatefulWidget {
  const signUpScreen({super.key});

  @override
  State<signUpScreen> createState() => _signUpScreenState();
}

class _signUpScreenState extends State<signUpScreen> {
  double? height;
  double? width;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    width = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                decoration: BoxDecoration(
                    color: Color(0xff140967),
                    borderRadius: BorderRadius.only(
                        // bottomRight: Radius.circular(50)
                        )),
                child: Image.asset("images/img12.png",
                // fit: BoxFit.cover,
                ),
              ),
              Stack(children: [
                Container(
                  decoration: BoxDecoration(color: Color(0xff140967)),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),

                    // child: Column(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    // children: [
                    //   ElevatedButton(onPressed: (){}, child: Text("Sign Up")),
                    //     ElevatedButton(onPressed: (){}, child: Text("Sign Up"))
                    // ],
                    // ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 20,),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.80,
                        height: 40,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                             primary: Color.fromARGB(255, 5, 45, 66),
                              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            //border radius equal to or more than 50% of width
                          )),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>BHDriverRegistrationScreen()));
                          },
                          child: Text("Sign Up as Driver"),
                        ),
                      ),
                         SizedBox(height: 10,),
                      Divider(),
                         SizedBox(height: 10,),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.80,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          // color: Colors.black
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>BHRegistrationScreen()));

                          },
                          child: Text("Sign Up as Student"),
                          style: ElevatedButton.styleFrom(
                             primary: Color(0xff140967).withOpacity(0.9),
                              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            //border radius equal to or more than 50% of width
                          )),
                        ),
                      )
                    ],
                  ),
                )
              ]),
            ],
          )
        ],
      ),
    );
  }
}
