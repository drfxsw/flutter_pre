import 'package:flutter/material.dart';

class Mission01Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // int = 정수형, String = 문자열, double = 실수형, bool = 불리언, List<String> = 문자열 리스트
    int number = 10;
    String message = "Hello, world!";
    double decimal = 3.14;
    bool isAdult = true;
    List<String> names = ["Alice", "Bob", "Charlie"];

    return Scaffold(
      appBar: AppBar(
        title: Text('Mission 01'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '**question**',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10), // 여백
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 50),
              child: const Text(
                '변수 선언 및 데이터 타입: 다음 코드에서 변수들의 데이터 타입을 적절하게 선언하고 값을 할당하세요. 또한, 각 변수에 대한 주석을 작성하세요.',
              ),
            ),
            const SizedBox(height: 20), // 여백
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'int number : $number',
                  ),
                  Text(
                    'String message : $message',
                  ),
                  Text(
                    'double decimal : $decimal',
                  ),
                  Text(
                    'bool isAdult : $isAdult',
                  ),
                  Text(
                    'List<String> names : $names',
                  ),
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}