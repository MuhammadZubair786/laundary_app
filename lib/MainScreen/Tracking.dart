import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TrackingScreen extends StatefulWidget {
  const TrackingScreen({super.key});

  @override
  State<TrackingScreen> createState() => _TrackingScreenState();
}

class _TrackingScreenState extends State<TrackingScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: SafeArea(
          child:Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          child: Image.network("https://external-preview.redd.it/0ykEElItI4Pnj-i_XG4bwFUmOlPQvC_ZXvS7Mg7IXc4.jpg?auto=webp&s=cfe3b75dcb8397068d84e96f583baa58068d6517",
          fit: BoxFit.cover,
          ),
          )),
         
           
    );;
  }
}