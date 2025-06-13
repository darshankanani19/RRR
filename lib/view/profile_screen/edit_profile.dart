import 'package:project_management/comman_widget/customTextField.dart';
import 'package:project_management/consts/const.dart';
class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: profile.text.fontFamily(bold).make(),
      ),
      body: Column(
crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // profile photo name
          SizedBox(
            width: context.screenWidth,
          height: context.screenHeight*0.2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(profileimg,height: context.screenHeight*0.12,fit: BoxFit.cover,width: context.screenHeight*0.12,).box.shadowSm.roundedFull.make(),
              10.heightBox,
              user.text.fontFamily(bold).size(24).make(),
            ],
          ),
        )  ,
          15.heightBox,
          personal.text.fontFamily(bold).color(Purple).size(20).align(TextAlign.start).make().box.margin(EdgeInsets.symmetric(horizontal: 10)).make(),
          customTextfiled(width: context.screenWidth*0.85,height: 100,isPass: false,textColor: Colors.black,hint: firstName).box.margin(EdgeInsets.all(8)).roundedSM.clip(Clip.antiAlias).border(color: Purple,style: BorderStyle.solid,width: 1.1).make(),

        ],
      ),
    );
  }
}
