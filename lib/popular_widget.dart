import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class PopularWidget extends StatefulWidget {
  PopularWidget(this.img, this.ckal, this.min, this.text, {super.key});
  int img;
  String ckal;
  String text;
  String min;
  @override
  State<PopularWidget> createState() => _PopularWidgetState();
}

class _PopularWidgetState extends State<PopularWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 174,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Image.asset(
              "assets/images/train_${widget.img + 1}.jpg",
              width: 280,
              height: 174,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 20,
              left: 20,
              child: Text(
                widget.text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Positioned(
              top: 92,
              left: 20,
              child: Container(
                width: 80,
                height: 26,
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 4,
                ),
                decoration: ShapeDecoration(
                  color: Colors.white.withOpacity(0.800000011920929),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images/hot.svg",
                      width: 14,
                      height: 14,
                    ),
                    const SizedBox(width: 2),
                    Text(
                      "${widget.ckal} ckal",
                      style: const TextStyle(
                        color: Color(0xFF192126),
                        fontSize: 11,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Container(
                width: 72,
                height: 26,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: ShapeDecoration(
                  color: Colors.white.withOpacity(0.800000011920929),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9)),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/clock.svg',
                    ),
                    const SizedBox(width: 2),
                    Text(
                      "${widget.min} min",
                      style: const TextStyle(
                        color: Color(0xFF192126),
                        fontSize: 11,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 68,
              right: 20,
              child: SizedBox(
                child: SvgPicture.asset(
                  'assets/images/icon_play.svg',
                  width: 38,
                  height: 38,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
