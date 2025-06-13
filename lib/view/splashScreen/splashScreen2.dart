import 'package:flutter/material.dart';
import 'package:project_management/comman_widget/ourButton.dart';
import 'package:project_management/view/auth_screen/loginScreen.dart';
import 'package:video_player/video_player.dart';
import 'package:project_management/consts/const.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  _SplashScreen2State createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset('assets/videos/logo.mp4')
      ..initialize().then((_) {
        setState(() {});
        _controller.play();

        // Navigate after video ends
        _controller.addListener(() {
          if (_controller.value.position >= _controller.value.duration &&
              !_controller.value.isPlaying) {
            // Prevent multiple triggers
            if (mounted) {
              // Navigator.of(context).pushReplacement(
              //   MaterialPageRoute(builder: (_) => Scaffold(body: Center(child: Container(color: Colors.red,)))),
              // );
            }
          }
        });
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child:  SizedBox(
          height: context.screenHeight,
          width: context.screenWidth-50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0,left: 30),
                child: SizedBox(
                  height: 300,
                  width: 300,
                  child: Center(
                      child: Image.asset('assets/photos/logo.jpg',height: 300,width: 300,fit: BoxFit.fill,).box.color(Colors.white).make()
                  ),
                ),
              ),
              SizedBox(
                child: Column(

                  children: [


                    ourButton(text: signIn,onPress: (){
                      Get.to(()=>LoginScreen());
                    },color:Purple,textColor: lightCream).box.width(context.screenWidth).height(50).make(),
                    20.heightBox,
                    ourButton(text: register,onPress: (){},color:lightCream,textColor: Colors.black).box.width(context.screenWidth).height(50).make(),


                  ],
                ).box.margin(EdgeInsets.only(left: 50,right: 50,bottom: 20)).make(),
              ),
            ],
          ),
        )
      ),
    );
  }
}
