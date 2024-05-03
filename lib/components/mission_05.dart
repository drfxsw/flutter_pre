
import 'package:flutter/material.dart';

class Mission05Screen extends StatefulWidget {
  const Mission05Screen({super.key});

  @override
  _Mission05ScreenState createState() => _Mission05ScreenState();
}
class _Mission05ScreenState extends State<Mission05Screen> {
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mission 05'),
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
                      '"동물" 클래스를 만들고, "말", "소", "돼지" 클래스를 "동물" 클래스를 상속받도록 설계하세요.',
                    ),
                    Text(
                      '각 동물 클래스마다 고유한 메서드 (말: 울음소리 내기, 소: 울음소리 내기, 돼지: 꽥꽥 울음소리 내기)를 정의하세요.',
                    ),
                    Text(
                      '각 동물 객체를 생성하고, 고유한 메서드를 호출하여 동작을 확인합니다.',
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(onPressed: () {
                            setState(() {
                              Horse horse = Horse();
                              result = horse.makeSound();
                            });
                          }, child: const Text('말')),
                          ElevatedButton(onPressed: () {
                            setState(() {
                              Cow cow = Cow();
                              result = cow.makeSound();
                            });
                          }, child: const Text('소')),
                          ElevatedButton(onPressed: () {
                            setState(() {
                              Pig pig = Pig();
                              result = pig.makeSound();
                            });
                          }, child: const Text('돼지')),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '결과: $result',
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
class Animal {
  String name;
  String sound;
  Animal({required this.name, required this.sound});

  String makeSound() {
    return sound;
  }
}

class Horse extends Animal {
  Horse() : super(name: '말', sound: '히이잉');
}

class Cow extends Animal {
  Cow() : super(name: '소', sound: '음메');
}

class Pig extends Animal {
  Pig() : super(name: '돼지', sound: '꿀꿀');
}