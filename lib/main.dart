import 'package:flutter/material.dart';
import 'package:ktuhelp/attendence/pages/AttendanceHomePage.dart';
import 'package:ktuhelp/home_page.dart';
import 'package:ktuhelp/loginpage.dart';
import 'gpa_page.dart';
import 'notes_page.dart';
import 'performance_page.dart';
import 'ResultAnalysis/resultanalysis.dart';
import 'videolectures_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(Ktumain());
}

class Ktumain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color.fromRGBO(34, 34, 34, 10),
      ),
      home: Login(),
      routes: {
        "attendance": (context) => AttendanceHome(),
        "SGPA/CGPA": (context) => GPAHomePage(),
        "Notes": (context) => NotesHomePage(),
        "performance": (context) => PerformanceHomePage(),
        "Result Analysis": (context) => ResultAnsalysisHomePage(),
        "Video Lectures": (context) => VideoLecturesHomePage(),
      },
    );
  }
}
