// import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';

import 'package:project_management/consts/const.dart';
import 'package:project_management/view/profile_screen/edit_profile.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: account.text.make(),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           15.heightBox,
         //   profile
           Container(
             width: context.screenWidth*0.90,
             height: context.screenHeight*0.15,
             decoration: BoxDecoration(
               color: lightestPurple,
               borderRadius: BorderRadius.circular(15)
             ),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 15.widthBox,
                 Image.asset(profileimg,height: context.screenHeight*0.1,width: context.screenHeight*0.1,fit: BoxFit.cover,).box.roundedFull.shadowSm.clip(Clip.antiAlias).make(),
                15.widthBox,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    user.text.color(Purple).size(24).fontFamily(bold).make(),

                    editProfile.text.size(18).underline.make().onTap((){Get.to(()=>EditProfile());}),
                  ],
                )
               ],
             ),
           ),

           20.heightBox,

           Column(
             children: List.generate(profileSettingList.length, (index)=>ListTile(
               title: profileSettingList[index].text.fontFamily(semibold).make(),
               subtitle: profileSettingHintList[index].text.fontFamily(regular).make(),
               leading: Icon(profileSettingIconList[index],size: 40,color: Purple,),
               trailing: Icon(Icons.navigate_next_outlined,size: 40,color: Purple,).onTap((){}),
             ).box.white.margin(EdgeInsets.all(5)).roundedSM.border(color: Purple,width: 1.1,style: BorderStyle.solid).height(context.screenHeight*0.08).make().onTap((){})
             ).toList(),
           )

         ],
        ).box.color(lightCream).width(context.screenWidth).make(),
      ),
    );
  }
}
