import 'package:project_management/comman_widget/ourButton.dart';
import 'package:project_management/comman_widget/simpleProfileField.dart';
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
        title: "Profile".text.fontFamily(bold).make(),

        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile picture and name
            20.heightBox,
            Image.asset(
              profileimg,
              height: context.screenHeight * 0.13,
              width: context.screenHeight * 0.13,
              fit: BoxFit.cover,
            ).box.roundedFull.clip(Clip.antiAlias).make(),
            10.heightBox,
            user.text.fontFamily(bold).size(20).make(),

            30.heightBox,

            // Personal section title
            Align(
              alignment: Alignment.centerLeft,
              child: "Personal"
                  .text
                  .fontFamily(bold)
                  .color(Colors.black)
                  .size(18)
                  .make()
                  .marginOnly(left: 20),
            ),

            10.heightBox,

            // Fields
            simpleProfileField(value: firstName).marginOnly(bottom: 10,left: 15,right: 15),
            simpleProfileField(value: secondName).marginOnly(bottom: 10,left: 15,right: 15),
            simpleProfileField(value: mobileNumber).marginOnly(bottom: 10,left: 15,right: 15),
            simpleProfileField(value: male).marginOnly(bottom: 10,left: 15,right: 15),
            simpleProfileField(value: birthDate).marginOnly(bottom: 10,left: 15,right: 15),
            simpleProfileField(value: mailId).marginOnly(bottom: 10,left: 15,right: 15),

            // Change Password text
            Align(
              alignment: Alignment.centerLeft,
              child: "Change Password"
                  .text
                  .fontFamily(bold)
                  .color(Colors.black)
                  .size(18)
                  .make()
                  .marginOnly(left: 20),
            ),
15.heightBox,
            simpleProfileField(value: oldPass).marginOnly(bottom: 10,left: 15,right: 15),
            simpleProfileField(value: newPass).marginOnly(bottom: 10,left: 15,right: 15),

            ourButton(text: updateProfile,color: Purple,textColor: cream,textSize: 16,onPress: (){}).box.width(context.width*0.5).height(80).padding(EdgeInsets.all(10)).roundedSM.make(),
            40.heightBox,
          ],
        ),
      ),
    );
  }
}
