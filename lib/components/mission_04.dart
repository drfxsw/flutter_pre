import 'package:flutter/material.dart';

class Mission04Screen extends StatefulWidget {
  const Mission04Screen({super.key});

  @override
  _Mission04ScreenState createState() => _Mission04ScreenState();
}

class _Mission04ScreenState extends State<Mission04Screen> {
  List<String> students = [];
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mission 04'),
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
                    '학생들의 이름을 저장하는 리스트를 만듭니다.',
                  ),
                  Text(
                    '사용자로부터 학생들의 이름을 입력받아 리스트에 추가합니다.',
                  ),
                  Text(
                    '리스트에 저장된 모든 학생들의 이름을 출력합니다.',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20), // 여백
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 50),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextField(
                    controller: _textEditingController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '학생 이름을 입력하세요',
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      addStudent(students, _textEditingController.text);
                      _textEditingController.clear();
                      setState(() {}); // 리스트 갱신을 위한 setState 호출
                    },
                    child: Text('확인'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20), // 여백
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text('학생 리스트'),
                  // 학생 이름을 출력하는 리스트
                  for (String student in students)
                    Text(
                      student,
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

//textfield 에 입력된 값을 리스트에 추가하는 함수
void addStudent(List<String> students, String name) {
  students.add(name);
}