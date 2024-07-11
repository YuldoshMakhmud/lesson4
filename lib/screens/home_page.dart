import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lesson4/widgets/circle_item.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  int curIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
          child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/oy.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
          const  Expanded(flex: 1, child:SizedBox()),
            Expanded(
              flex: 4,
              child: Center(
                child: ZoomTapAnimation(
                    onTap: () {
                     if(curIndex == 0 && counter == 33 || curIndex == 1 && counter == 99){
                      counter = 0;

                     }
                      // pastagi code tepadagi bn bir hil

                      // if(curIndex == 0 && counter == 33){
                      //    counter = 0;
                      // }else if( curIndex == 1 && counter == 99){
                      //   counter = 0;
                      // }
                     counter++;
                      setState(() {

                      });
                    },
                    child: CircleItem(
                    text: counter.toString(),
                radius: 120,
              ),
            ),
          ),
      ),
            Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                     ZoomTapAnimation(
                      onTap: () {
                        if (counter>= 33) {
                          counter = 0;
                          
                        }
                        curIndex = 0;
                      setState((){});
                      },
                      child:  CircleItem(text: "33", )),

                    ZoomTapAnimation(
                       onTap: () {
                        if (counter>= 99) {
                          counter = 0;
                          
                        }
                        curIndex = 1;
                      setState((){});
                       },
                      child:  CircleItem(text: "99", )),

                    ZoomTapAnimation(
                       onTap: () {
                      curIndex = 2;
                      setState((){});
                       },
                      child:  CircleItem(text: "∞",color:  curIndex == 2 ? Colors.blueAccent : Colors.blue, )),
                  ],
                )),
          ],
        ),
      )),
    );
  }
}
