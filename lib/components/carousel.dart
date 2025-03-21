import 'package:flutter/material.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart' as shadcnui;

final shadcnui.CarouselController controller = shadcnui.CarouselController();

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int selectedDot = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 800,
      child: Row(
        children: [
          shadcnui.OutlineButton(
              shape: shadcnui.ButtonShape.circle,
              onPressed: () {
                controller.animatePrevious(const Duration(milliseconds: 500));
              },
              child: const Icon(Icons.arrow_back)),
          const shadcnui.Gap(24),
          Expanded(
            child: SizedBox(
              height: 200,
              child: shadcnui.Carousel(
                // frameTransform: Carousel.fadingTransform,
                controller: controller,
                autoplaySpeed: const Duration(seconds: 2),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        "assets/images/pradippaudel.jpeg",
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        left: 0,
                        child: Material(
                          color: Colors.white.withOpacity(0.75),
                          child: const Padding(
                            padding: EdgeInsets.all(22.0),
                            child: Center(child: Text("This is information on app")),
                          ),
                        ),
                      ),
                    ],
                  );
                },
                duration: const Duration(seconds: 1), transition: shadcnui.CarouselTransition.sliding(),
              ),
            ),
          ),
          const shadcnui.Gap(24),
          shadcnui.OutlineButton(
              shape: shadcnui.ButtonShape.circle,
              onPressed: () {
                controller.animateNext(const Duration(milliseconds: 500));
              },
              child: const Icon(Icons.arrow_forward)),
        ],
      ),
    );
  }
}
