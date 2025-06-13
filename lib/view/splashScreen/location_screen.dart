import 'package:project_management/comman_widget/ourButton.dart';
import 'package:project_management/consts/const.dart';
import 'package:project_management/view/home_screen/Home.dart';
class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
              alignment: Alignment.topCenter,
              child: Image.asset(locationImg,height: context.screenHeight*0.6,width: context.screenWidth,fit: BoxFit.fitWidth,)),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                20.heightBox,
                shareYourLocation.text.fontFamily(bold).color(Purple).size(22).make(),
                20.heightBox,
                Padding(
                  
                  padding: const EdgeInsets.all(24.0),
                  child: enterCurrentLocationMessage.text.color(Colors.black).fontFamily(regular).size(18).wrapWords(true).make(),
                ),
                20.heightBox,

                ourButton(text: confirmTheLocation,onPress: (){
                  Get.to(()=>Home());
                },color:Purple,textColor: lightCream).box.shadowSm.width(context.screenWidth-100).height(50).make(),
                20.heightBox,
                ourButton(text: noThatIsNotMyAddress,onPress: (){},color:lightPurple,textColor: Purple).box.shadowSm.width(context.screenWidth-100).height(50).make(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
