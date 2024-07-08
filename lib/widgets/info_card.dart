import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Infocard extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function onPressed;
  Infocard({required this.text,required this.icon,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
              onTap:(){
                onPressed();
              },
              child: Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 8.0,horizontal: 20.0),
                child: ListTile(
                  leading: Icon(
                    icon,
                    color: Colors.red,
                  ),
                  title: Text(
                    text,
                    style: GoogleFonts.sourceCodePro(
                      fontSize: 20,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
     );
  }
}
 