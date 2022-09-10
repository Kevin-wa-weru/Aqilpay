import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final firstNameController = TextEditingController();
  final secondNameController = TextEditingController();

  Timer? _timer;
  int _start = 30;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            _start = 00;
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              'Register new account',
              style: GoogleFonts.getFont('Poppins').copyWith(
                  color: const Color(0xFF2D3D9C),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 150.25,
            width: 150.5,
            child: SvgPicture.asset('assets/icons/icon.svg', fit: BoxFit.fill),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'Please enter your first and ',
              style: GoogleFonts.getFont('Poppins').copyWith(
                  color: const Color(0xFF98989C),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Center(
            child: Text(
              'lat name',
              style: GoogleFonts.getFont('Poppins').copyWith(
                  color: const Color(0xFF98989C),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 400,
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: TextFormField(
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont('Poppins').copyWith(
                    color: const Color(0xFF98989C),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 20.0),
                  fillColor: Colors.transparent,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide:
                        const BorderSide(color: Colors.transparent, width: 0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xFFD8D8D8), width: 1),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xFFD8D8D8), width: 1),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  filled: true,
                  hintText: 'First name',
                  hintStyle: GoogleFonts.getFont('Poppins').copyWith(
                      color: const Color(0xFF98989C),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                onChanged: (value) {
                  setState(() {});
                },
                controller: firstNameController,
              ),
            ),
          ),
          SizedBox(
            width: 400,
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: TextFormField(
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont('Poppins').copyWith(
                    color: const Color(0xFF98989C),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 20.0),
                  fillColor: Colors.transparent,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide:
                        const BorderSide(color: Colors.transparent, width: 0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xFFD8D8D8), width: 1),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xFFD8D8D8), width: 1),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  filled: true,
                  hintText: 'Last name',
                  hintStyle: GoogleFonts.getFont('Poppins').copyWith(
                      color: const Color(0xFF98989C),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                onChanged: (value) {
                  setState(() {});
                },
                controller: secondNameController,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 55,
            width: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xFF2D3D9C),
            ),
            child: Center(
              child: Text(
                'NEXT',
                style: GoogleFonts.getFont('Poppins').copyWith(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
