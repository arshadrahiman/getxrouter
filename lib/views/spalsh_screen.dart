import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      color: Colors.white,
      child:FlutterLogo(size:MediaQuery.of(context).size.height)
    );
  }
}
