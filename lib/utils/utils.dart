import 'package:flutter/material.dart';

class title extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 70),
        Text(
          'MoNew',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            height: 0.06,
            letterSpacing: -0.24,
          ),
        ),
        SizedBox(height: 100),
        Container(
          width: 50,
          height: 27,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Login',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 0.08,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class logo extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        SizedBox(height: 150),
        Container(
          width: 70,
          height: 67,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/monew_logo_bottom.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}