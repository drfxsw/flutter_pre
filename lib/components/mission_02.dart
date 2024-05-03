import 'package:flutter/material.dart';

class Mission02Screen extends StatelessWidget {
  const Mission02Screen({super.key});

  @override
  Widget build(BuildContext context) {
    int a = 10;
    int b = 5;
    int sum = a + b;
    int sub = a - b;
    int mul = a * b;
    double div = a / b;
    div = double.parse(div.toStringAsFixed(2));

    return Scaffold(
      appBar: AppBar(
        title: Text('Mission 02'),
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
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '변수 a에 10, b에 5를 할당합니다.',
                  ),
                  Text(
                    '나눗셈 결과는 소수점 두 자리까지 표시합니다.',
                  ),
                  Text(
                    'a와 b의 합, 차, 곱, 나눗셈 결과를 새로운 변수에 저장하고 출력합니다.',
                  ),
                ],
              )
            ),
            const SizedBox(height: 20), // 여백
            Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'a + b = $sum',
                    ),
                    Text(
                      'a - b = $sub',
                    ),
                    Text(
                      'a * b = $mul',
                    ),
                    Text(
                      'a / b = $div',
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