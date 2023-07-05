import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class TodayPlan extends StatelessWidget {
  TodayPlan(this.index, this.explane, this.precent, this.text, {super.key});
  String text;

  String explane;
  int precent;
  int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: 350,
        height: 120,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(23),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 164,
              height: 105,
              child: Image.asset("assets/images/plan_${this.index + 1}.jpg"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24, bottom: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "pushing up",
                        style: TextStyle(
                          color: Color(0xFF192126),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      // Container(
                      //   width: 81,
                      //   height: 19,
                      //   padding: const EdgeInsets.symmetric(
                      //       horizontal: 8, vertical: 2),
                      //   decoration: ShapeDecoration(
                      //     color: Color(0xFF192126),
                      //     shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.only(
                      //         bottomLeft: Radius.circular(6),
                      //         bottomRight: Radius.circular(6),
                      //       ),
                      //     ),
                      //   ),
                      //   child: Row(
                      //     mainAxisSize: MainAxisSize.min,
                      //     mainAxisAlignment: MainAxisAlignment.start,
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       Text(
                      //         'Intermediate',
                      //         style: TextStyle(
                      //           color: Colors.white,
                      //           fontSize: 10,
                      //           fontFamily: 'Poppins',
                      //           fontWeight: FontWeight.w400,
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // )
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    '100 Push up a day',
                    style: TextStyle(
                      color: Color(0x7F192126),
                      fontSize: 13,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  SizedBox(
                    width: 180,
                    child: FAProgressBar(
                      currentValue: 45,
                      backgroundColor: const Color(0xff192126),
                      progressColor: const Color(0xff71C8FF),
                      size: 16,
                      displayText: "%",
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
