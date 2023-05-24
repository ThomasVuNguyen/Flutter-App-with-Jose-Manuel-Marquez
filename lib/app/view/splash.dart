import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            Row(
              children: [
                Image.asset('assets/shape.png', width:141, height: 129,),
              ],
            ),
            const SizedBox(height: 79), //create gap
            Image.asset('assets/onboarding-image.png', width:180, height: 168,),
            const SizedBox(height: 79), //create gap
            Text(
              'Welcome to my app!',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w600,
            ),),
            const SizedBox(height: 21), //create gap
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Text('This is my practice app splash screen. Feel free to play around',
              textAlign: TextAlign.center,),
            ),
          ],
        ),
      );

  }

}