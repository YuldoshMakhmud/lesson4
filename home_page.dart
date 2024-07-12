import 'package:flutter/material.dart';
import 'package:lesson4/widgets/circle_item.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  int curIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/oy.jpg"), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: ZoomTapAnimation(
                    onTap: () {
                      counter = 0;
                      setState(() {});
                    },
                    child: CircleAvatar(
                      radius: 52,
                      backgroundColor: Colors.blue,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset("assets/images/yer.png"),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Center(
                  child: ZoomTapAnimation(
                    onTap: () {
                      if (curIndex == 0 && counter == 33 || curIndex == 1 && counter == 99) {
                        counter = 0;
                      } else {
                        counter++;
                      }
                      setState(() {});
                    },
                    child: CircleItem(
                      text: counter.toString(),
                      color: Colors.grey.withOpacity(0.3),
                      radius: 120,
                      textSize: 60,
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
                        if (counter >= 33) {
                          counter = 0;
                        }
                        curIndex = 0;
                        setState(() {});
                      },
                      child: CircleItem(
                        text: "33",
                        color: curIndex == 0 ? Colors.blueAccent : Colors.grey,
                        radius: 50,
                        textSize: 25,
                      ),
                    ),
                    ZoomTapAnimation(
                      onTap: () {
                        if (counter >= 99) {
                          counter = 0;
                        }
                        curIndex = 1;
                        setState(() {});
                      },
                      child: CircleItem(
                        text: "99",
                        color: curIndex == 1 ? Colors.blueAccent : Colors.grey,
                        radius: 50,
                        textSize: 25,
                      ),
                    ),
                    ZoomTapAnimation(
                      onTap: () {
                        curIndex = 2;
                        setState(() {});
                      },
                      child: CircleItem(
                        text: "∞",
                        color: curIndex == 2 ? Colors.blueAccent : Colors.grey,
                        radius: 50,
                        textSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
