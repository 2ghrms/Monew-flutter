import 'package:flutter/material.dart';
import 'package:monew/ProfilePage.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
    ),
    home:Scaffold(
      body: ListView(children: [
        title(),
        SignupInput(),
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
          width: 80,
          height: 27,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '회원가입',
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

class SignupInput extends StatefulWidget{
  const SignupInput({Key? key}) : super(key: key);
  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<SignupInput>{
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
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
                '아이디',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0.09,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFDFDFDF)),
                  borderRadius: BorderRadius.circular(8),
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
                          controller: _idController,
                          decoration: InputDecoration(
                            hintText: '아이디를 입력하세요.',
                            hintStyle: TextStyle(
                              color: Color(0xFF828282),
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0.10,
                            ),
                            border: InputBorder.none,
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 100,
                  height: 25,
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
                      '중복확인',
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
            ),
            SizedBox(height: 25),
            Container(
              width: 100,
              height: 20,
              child: Text(
                '이메일',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0.09,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFDFDFDF)),
                  borderRadius: BorderRadius.circular(8),
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
                          controller: _emailController,
                          decoration: InputDecoration(
                            hintText: '이메일을 입력하세요.',
                            hintStyle: TextStyle(
                              color: Color(0xFF828282),
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0.10,
                            ),
                            border: InputBorder.none,
                          )
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
                '비밀번호',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0.09,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFDFDFDF)),
                  borderRadius: BorderRadius.circular(8),
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
                          controller: _passwordController,
                          decoration: InputDecoration(
                            hintText: '비밀번호를 입력하세요.',
                            hintStyle: TextStyle(
                              color: Color(0xFF828282),
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0.10,
                            ),
                            border: InputBorder.none,
                          )
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
                '비밀번호 확인',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0.09,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFDFDFDF)),
                  borderRadius: BorderRadius.circular(8),
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
                          controller: _idController,
                          decoration: InputDecoration(
                            hintText: '비밀번호를 한번 더 입력하세요.',
                            hintStyle: TextStyle(
                              color: Color(0xFF828282),
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0.10,
                            ),
                            border: InputBorder.none,
                          )
                      ),
                    ),
                  ),
                ],
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
                  '회원가입',
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
            SizedBox(height: 15),
            Container(
              width: double.infinity,
              height: 20,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      decoration: BoxDecoration(color: Color(0xFFE6E6E6)),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'or continue with',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF828282),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0.10,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Container(
                      height: 1,
                      decoration: BoxDecoration(color: Color(0xFFE6E6E6)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
        Center(
          child: ElevatedButton(
            onPressed: () {
              print('Google button clicked');
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFEEEEEE),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.zero,
              elevation: 0, // Remove shadow
            ),
            child: Container(
              width: double.infinity,
              height: 40,
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: ShapeDecoration(
                color: Color(0xFFEEEEEE),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: double.infinity,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: FlutterLogo(),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Google',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0.10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
          ],
        ),
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