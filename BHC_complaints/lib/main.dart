import 'dart:async';

import 'package:bhc_tms/Authentication.dart';
import 'package:bhc_tms/Mapping.dart';
import 'package:flutter/material.dart';

//import 'HomePage.dart';

void main()
{
  runApp(new TenantManagementApp());
}

class TenantManagementApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    return new MaterialApp
    (
      title: 'OFFICE OF THE PRESIDENT',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData
      (
        primarySwatch: Colors.blue,
      ),

      home: SplashScreen(),
      
    );

  }
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var duration = Duration(seconds: 2);
    return Timer(duration, navigateToPage);
  }

  void navigateToPage() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => MappingPage(
              auth: Auth(),
            )));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Image(
              image: AssetImage('images/otp.jpg'),
            ),
          ),
          SizedBox(height: 20,),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}

/*class BHCApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "CEDA LOANS",
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MappingPage(
        auth: Auth(),
      ),
    );
  }
}*/