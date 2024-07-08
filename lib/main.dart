import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';


import 'package:google_fonts/google_fonts.dart';
import 'package:profile/widgets/info_card.dart';
import 'package:url_launcher/url_launcher_string.dart';

const url = 'https://www.google.com/';
const email = 'sanchithcs@gmail.com';
const phone = '+919944333955';
const location = 'Chennai';

/// void main() => runApp(MyApp());
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 223, 63, 79),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('images/elon.webp'),
          ),
          Text(
            "SANCHITH C S",
            style: GoogleFonts.josefinSans(
              fontSize: 30.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Software Engineer',
            style: GoogleFonts.sourceCodePro(
              fontSize: 30,
              letterSpacing: 1,
              color: Colors.red[100],
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 20,
            width: 200,
            child: Divider(
              color: const Color.fromARGB(255, 240, 151, 150),
            ),
          ),
          Infocard(
            text: phone,
            icon: Icons.phone,
            onPressed: (){
              FlutterPhoneDirectCaller.callNumber(phone);
            },
          ),
          Infocard(
            text: email,
            icon: Icons.email,
            onPressed: () {
              print('email');
            },
          ),
          Infocard(
            text: url,
            icon: Icons.web,
            onPressed: () async {
              if (!await launchUrlString(url)) {
                print('Error');
              }
            },
          ),
          Infocard(
            text: location,
            icon: Icons.location_city,
            onPressed: () {
              print('location');
            },
          ),
        ],
      )),
    );
  }
}
