import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_domestika_list/app/view/task_list/task_list.dart';

import '../components/h1.dart';
import '../components/shape.dart';
import '../task_list/task_list.dart';

class SplashPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            Row(
              children: [
                Shape(),
              ],
            ),
            const SizedBox(height: 79), //create gap
            Image.asset('assets/onboarding-image.png', width:180, height: 168,),
            const SizedBox(height: 79), //create gap
            h1( 'Welcome to my app!', Colors.blue),
            const SizedBox(height: 21), //create gap
            GestureDetector(
              onTap: (){
                print("Pulsado");
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return TaskListPage();
                }));
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.0),
                child: Text('This is my practice app splash screen. Feel free to play around',
                textAlign: TextAlign.center,),
              ),
            ),
          ],
        ),
      );

  }

}