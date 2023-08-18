import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'list_screen.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // timer를 설정하여 2초내에 moveScreen()함수가 동작하도록 선언
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2),(){
      moveScreen();
    });
  }

  @override
  Widget build(BuildContext context) { // 스플래시 화면
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('SplashScreen' , style: TextStyle(fontSize: 20),),
            Text('나만의 일정관리 : TODO 리스트 앱', style: TextStyle(fontSize: 20),),
          ],
        ),
      ),
    );
  }

  void moveScreen() async{
    // 로그인 정보 확인
    await checkLogin().then((isLogin){
      if(isLogin){ // 로그인 되어있으면 Listscreen으로 이동
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>ListScreen()));

      }else{ // 로그인이 안되어있으면 로그인 스크린으로 이동
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginScreen()));
      }
    });
  }

  // shared preference 와 연동하여 로그인 정보 확인하는 함수
 Future<bool> checkLogin() async{
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isLogin = prefs.getBool('isLogin') ?? false;
  print('[*] Login : ' + isLogin.toString());
  return isLogin;
  }


}
