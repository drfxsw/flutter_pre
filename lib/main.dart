import 'package:flutter/material.dart';
import 'components/mission_01.dart';
import 'components/mission_02.dart';
import 'components/mission_03.dart';
import 'components/mission_04.dart';
import 'components/mission_05.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(), // MainScreen을 앱의 홈으로 설정
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // 버튼 클릭시 mission_01.dart 파일의 화면으로 이동
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Mission01Screen()),
                );
              },
              child: Text('Mission 01'),
            ),
            ElevatedButton(
              onPressed: () {
                // 버튼 클릭시 mission_02.dart 파일의 화면으로 이동
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Mission02Screen()),
                );
              },
              child: Text('Mission 02'),
            ),
            ElevatedButton(
              onPressed: () {
                // 버튼 클릭시 mission_03.dart 파일의 화면으로 이동
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Mission03Screen()),
                );
              },
              child: Text('Mission 03'),
            ),
            ElevatedButton(
              onPressed: () {
                // 버튼 클릭시 mission_04.dart 파일의 화면으로 이동
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Mission04Screen()),
                );
              },
              child: Text('Mission 04'),
            ),
            ElevatedButton(
              onPressed: () {
                // 버튼 클릭시 mission_04.dart 파일의 화면으로 이동
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Mission05Screen()),
                );
              },
              child: Text('Mission 05'),
            ),
          ],
        ),
      ),
    );
  }
}