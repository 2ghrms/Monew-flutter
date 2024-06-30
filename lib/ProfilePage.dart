import 'package:flutter/material.dart';
import 'package:monew/InterestSetPage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<ProfilePage>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      home:Scaffold(
          body: ListView(children: [
            title(),
            ProfileInput(),
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
          width: double.infinity,
          height: 27,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '여러분의 프로필을 생성합니다.',
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

class ProfileInput extends StatefulWidget{
  const ProfileInput({Key? key}) : super(key: key);
  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<ProfileInput>{
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _jobController = TextEditingController();
  final TextEditingController _birthController= TextEditingController();
  final TextEditingController _introController = TextEditingController();
  bool isMaleSelected = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100,
              height: 20,
              child: Text(
                '성별',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  height: 0.06,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isMaleSelected = true;
                      });
                    },
                    child: Container(
                      width: 162.51,
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 13),
                      decoration: ShapeDecoration(
                        color: isMaleSelected ? null : Color(0xFFF6F6F6),
                        gradient: isMaleSelected ?
                        LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors : [Color(0xFF3860EE), Color(0xFF54BDF8)],
                        ) : null,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Male',
                          style: TextStyle(
                            color: isMaleSelected ? Colors.white : Color(0xFF4A4A4A),
                            fontSize: 18,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isMaleSelected = false;
                      });
                    },
                    child: Container(
                      width: 159.85,
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 13),
                      decoration: ShapeDecoration(
                        color: isMaleSelected ? Color(0xFFF6F6F6) : null,
                        gradient: isMaleSelected ? null :
                        LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors : [Color(0xFF3860EE), Color(0xFF54BDF8)],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Female',
                          style: TextStyle(
                            color: isMaleSelected ? Color(0xFF4A4A4A) : Colors.white,
                            fontSize: 18,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Container(
              width: 100,
              height: 20,
              child: Text(
                '이름',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  height: 0.06,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 50.05,
              padding: const EdgeInsets.symmetric(horizontal: 17.23),
              decoration: ShapeDecoration(
                color: Color(0xFFF6F6F6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: SizedBox(
                        child: TextField(
                          controller: _nameController,
                          decoration: InputDecoration(
                            hintText: '이름',
                            hintStyle: TextStyle(
                              color: Color(0xFF8E8E93),
                              fontSize: 18,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      )
                  )
                ],
              )
            ),
            SizedBox(height: 25),
            Container(
              width: 100,
              height: 20,
              child: Text(
                '생일',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  height: 0.06,
                ),
              ),
            ),
            Container(
                width: double.infinity,
                height: 50.05,
                padding: const EdgeInsets.symmetric(horizontal: 17.23),
                decoration: ShapeDecoration(
                  color: Color(0xFFF6F6F6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child: SizedBox(
                          child: TextField(
                            controller: _birthController,
                            decoration: InputDecoration(
                              hintText: '[MM/dd/yyyy]',
                              hintStyle: TextStyle(
                                color: Color(0xFF8E8E93),
                                fontSize: 18,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        )
                    )
                  ],
                )
            ),
            SizedBox(height: 25),
            Container(
              width: 100,
              height: 20,
              child: Text(
                '직업',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  height: 0.06,
                ),
              ),
            ),
            Container(
                width: double.infinity,
                height: 50.05,
                padding: const EdgeInsets.symmetric(horizontal: 17.23),
                decoration: ShapeDecoration(
                  color: Color(0xFFF6F6F6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child: SizedBox(
                          child: TextField(
                            controller: _jobController,
                            decoration: InputDecoration(
                              hintText: 'job',
                              hintStyle: TextStyle(
                                color: Color(0xFF8E8E93),
                                fontSize: 18,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        )
                    )
                  ],
                )
            ),
            SizedBox(height: 25),
            Container(
              width: 100,
              height: 20,
              child: Text(
                '소개',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  height: 0.06,
                ),
              ),
            ),
            Container(
                width: double.infinity,
                height: 150,
                padding: const EdgeInsets.symmetric(horizontal: 17.23),
                decoration: ShapeDecoration(
                  color: Color(0xFFF6F6F6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child: SizedBox(
                          child: TextField(
                            controller: _introController,
                            decoration: InputDecoration(
                              hintText: 'About Me',
                              hintStyle: TextStyle(
                                color: Color(0xFF8E8E93),
                                fontSize: 18,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        )
                    )
                  ],
                )
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Interestsetpage())
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
      ),
    );
  }
}

class logo extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        SizedBox(height: 50),
        Container(
          width: 70,
          height: 67,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/monew_logo_bottom.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}