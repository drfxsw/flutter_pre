import 'package:flutter/material.dart';

class Mission03Screen extends StatelessWidget {
  const Mission03Screen({super.key});

  @override
  Widget build(BuildContext context) {
    int width = 80;
    int height = 50;
    return Scaffold(
      appBar: AppBar(
        title: Text('Mission 03'),
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
                      'calculateArea(width, height)라는 함수를 작성하여 사각형의 넓이를 계산합니다.',
                    ),
                    Text(
                      '함수는 두 개의 매개변수 width와 height를 받아야 합니다.',
                    ),
                    Text(
                      '함수는 넓이를 반환해야 합니다.',
                    ),
                    Text(
                      'main 함수에서 calculateArea 함수를 호출하여 넓이를 계산하고 출력합니다.',
                    ),
                  ],
                )
            ),
            const SizedBox(height: 20), // 여백
            Container(
              width: width.toDouble(),
              height: height.toDouble(),
              color: Colors.red,
            ),
const SizedBox(height: 20), // 여백
            Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'width : $width',
                    ),
                    Text(
                      'hight : $height',
                    ),
                    Text(
                      'area : ${calculateArea(width, height)}',
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

int calculateArea(int width, int height) {
  return width * height;
}