import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:workuot_application/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StartScreen(),
    );
  }
}

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  double _currentValue = 0;
  bool navigate = false;

  setEndPressed(double value) {
    setState(() {
      _currentValue = value;
    });
    if (_currentValue == 100) {
      navigate = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            textDirection: TextDirection.rtl,
            children: [
              Container(
                width: double.infinity,
                height: 573,
                child: Image.asset(
                  'assets/images/train.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                width: 500,
                height: 193,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: const Alignment(0.00, -1.0),
                      end: const Alignment(0, 1),
                      colors: [
                        Colors.white.withOpacity(0),
                        Colors.white,
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Column(
            children: const [
              Text(
                'Wherever you are',
                style: TextStyle(
                  color: Color(0xFF192126),
                  fontSize: 24,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text('Health is number one',
                  style: TextStyle(
                    color: Color(0xFF192126),
                    fontSize: 24,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w800,
                  ))
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          const Text(
            'There is no instant way to a healthy life',
            style: TextStyle(
              color: Color(0x7F192126),
              fontSize: 15,
              fontFamily: 'Lato',
              fontWeight: FontWeight.w400,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 60),
            child: FAProgressBar(
              currentValue: _currentValue,
              backgroundColor: const Color(0xff192126),
              progressColor: const Color(0xff71C8FF),
              size: 10,
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff192126),
                minimumSize: Size(350, 56),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                setEndPressed(100);
                Future.delayed(
                  Duration(milliseconds: 450),
                  () {
                    if (navigate) {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return HomeScreen();
                      }));
                    }
                  },
                );
              },
              child: const Text("Get started"))
        ],
      ),
    );
  }
}
