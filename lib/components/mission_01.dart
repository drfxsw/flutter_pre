import 'package:flutter/material.dart';

class Mission01Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mission 01'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Question',
            //좌측정렬
              style: TextStyle()
           ),
            Text('변수 선언 및 데이터 타입: 다음 코드에서 변수들의 데이터 타입을 적절하게 선언하고 값을 할당하세요. 또한, 각 변수에 대한 주석을 작성하세요.',),
            Text('int number String message double decimal bool isAdult List<String> names'),
            Text('Answer')
          ],
        ),
      ),
    );
  }
}