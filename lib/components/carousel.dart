import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int selectedDot = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: MoonCarousel(
            gap: 32,
            itemCount: 5,
            itemExtent: MediaQuery.of(context).size.width - 32,
            physics: const PageScrollPhysics(),
            onIndexChanged: (int index) => setState(() => selectedDot = index),
            itemBuilder: (BuildContext context, int itemIndex, int _) =>
                Container(
              decoration: ShapeDecoration(
                color: context.moonColors!.goku,
                shape: MoonSquircleBorder(
                  borderRadius:
                      BorderRadius.circular(12).squircleBorderRadius(context),
                ),
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                      child: Center(
                    child: Image.asset("assets/images/pradippaudel.jpeg",fit: BoxFit.cover,),
                  )),
                  Positioned(
                      bottom: 12,
                      right: 0,
                      left: 0,
                      child: Card(
                        color: Colors.white.withOpacity(0.75),
                          child: const Padding(
                        padding: EdgeInsets.all(22.0),
                        child:
                            Center(child: Text("This is information on app")),
                      ),),)
                ],
              ),
            ),
          ),
        ),
        MoonDotIndicator(
          selectedDot: selectedDot,
          dotCount: 5,
        ),
      ],
    );
  }
}
