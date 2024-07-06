import 'package:flutter/material.dart';
import 'package:monew/HomePage.dart';
import 'package:monew/utils/utils.dart';

class Interestsetpage extends StatefulWidget {
  const Interestsetpage({super.key});

  @override
  _InterestsetpageState createState() => _InterestsetpageState();
}

class _InterestsetpageState extends State<Interestsetpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      home:Scaffold(
          body: ListView(children: [
            title(),
            InterestList(),
            logo(),
          ],)
      ),
    );
  }
}

class title extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 70),
        Text(
          'MoNew',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            height: 0.06,
            letterSpacing: -0.24,
          ),
        ),
        SizedBox(height: 100),
        Container(
          width: 150,
          height: 27,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '관심사 선택',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 0.08,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
class Interest {
  final String name;
  bool isSelected;

  Interest({required this.name, this.isSelected = false});
}

class InterestList extends StatefulWidget{
  const InterestList({Key? key}) : super(key: key);
  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<InterestList>{
  List<Interest> interests = [
    Interest(name: '경제'),
    Interest(name: '정치'),
    Interest(name: '사회'),
    Interest(name: '문화'),
    Interest(name: '과학 및 기술'),
    Interest(name: '국제 뉴스'),
    Interest(name: '스포츠'),
    Interest(name: '의견 및 분석'),
    Interest(name: '라이프스타일'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var interest in interests)
              GestureDetector(
                onTap: () {
                  setState(() {
                    interest.isSelected = !interest.isSelected;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    color: interest.isSelected ? null : Color(0xFFF6F6F6),
                    gradient: interest.isSelected
                        ? LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xFF3860EE), Color(0xFF54BDF8)],
                    )
                        : null,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    interest.name,
                    style: TextStyle(
                      color: interest.isSelected ? Colors.white : Colors.black,
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            SizedBox(height: 25),
            Container(
              width: double.infinity,
              height: 40,
              // padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                  begin: Alignment(1.00, 0.00),
                  end: Alignment(-1, 0),
                  colors: [Color(0xFF3860EE), Color(0xFF54BDF8)],
                ),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              child: ElevatedButton(
                onPressed: (){
                  print('clicked');
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage())
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent, // 버튼의 배경색을 투명하게 설정합니다.
                  elevation: 0, // 그림자를 제거합니다.
                  padding: EdgeInsets.zero, // 내부 패딩을 없앱니다.
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0.10,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  '저장',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0.10,
                  ),
                ),
              ),
            ),
          ],
        )
      )
    );
  }
}
