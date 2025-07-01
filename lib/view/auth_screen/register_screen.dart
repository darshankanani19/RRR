import 'package:project_management/consts/const.dart';

import '../../comman_widget/customTextField.dart';
import '../../comman_widget/ourButton.dart';
import '../splashScreen/location_screen.dart';
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child:  SizedBox(
            height: context.screenHeight,
            width: context.screenWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0,left: 30),
                  child: Center(
                      child: Image.asset(appIconImg,height: 200,width: 200,fit: BoxFit.fill,).box.color(Colors.white).make()
                  ),
                ),
                SizedBox(
                  height: context.screenHeight-250,
                  width: context.screenWidth-50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Column(
                        children: [
                          customTextfiled(textColor: Purple,hint: usernameHint,isPass: false,width: context.screenWidth-100).box.width(context.screenWidth-100).make(),
                          10.heightBox,
                          customTextfiled(textColor: Purple,hint: password,isPass: false,width: context.screenWidth-100).box.width(context.screenWidth-100).make(),


                          5.heightBox,
                          Align(
                              alignment: Alignment.centerRight,
                              child: forgotPassword.text.align(TextAlign.right).fontFamily(semibold).black.make()),
                          20.heightBox,
                          ourButton(text: login,onPress: (){
                            Get.to(()=>LocationScreen());
                          },color:Purple,textColor: lightCream).box.width(context.screenWidth-100).height(50).make(),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          doNotHaveAnAccount.text.color(Colors.black).make(),
                          5.widthBox,
                          registerNow.text.color(Purple).fontFamily(bold).make().onTap((){
                            Get.to(()=>RegisterScreen());
                          }),
                        ],
                      ),

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
