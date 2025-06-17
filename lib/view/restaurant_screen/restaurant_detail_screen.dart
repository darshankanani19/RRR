import 'package:project_management/comman_widget/ourButton.dart';
import 'package:project_management/consts/const.dart';

class RestaurantDetailScreen extends StatelessWidget {
  final String name ;
  final int index ;
  const RestaurantDetailScreen({super.key, required this.name,required this.index});

  @override
  Widget build(BuildContext context) {
    final restaurant = restaurantList[index];
    return Scaffold(
      appBar: AppBar(
        title: name.text.fontFamily(bold).make(),
        backgroundColor: lightPurple,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.star,color: Colors.yellow,)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.share_outlined,color: Colors.black,)),
        ],
      ),

      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
            //   details session
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  restaurant['title']!.text.fontFamily(bold).color(Purple).size(24).make(),

                    Row(
                      children: [
                        restaurant['rating']!.text.size(14).make(),
                        1.widthBox,
                        Icon(Icons.star,color: Colors.black,size: 15,),
                        ],
                    ).box.roundedLg.color(lightestPurple).padding(EdgeInsets.all(8)).margin(EdgeInsets.only(right: 5)).make(),

                ],
              ),
              8.heightBox,
              restaurant['location']!.text.size(16).fontFamily(regular).color(Colors.blueGrey).make(),
              8.heightBox,
              restaurant['timing']!.text.size(16).fontFamily(regular).color(Colors.blueGrey).make(),
              8.heightBox,
              restaurant['distance']!.text.size(16).fontFamily(regular).color(Colors.blueGrey).make(),
              // items photo gallery
              20.heightBox,

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(tiffinImgList.length, (index)=>Image.asset(tiffinImgList[index],width: 150,height: 120,fit: BoxFit.cover,).box.shadowSm.roundedSM.margin(EdgeInsets.symmetric(horizontal: 5)).make()),
              ),
            ),
              20.heightBox,

            //   order now and subscribe button 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 ourButton(text: orderNow,color: Purple,textColor: lightCream,textSize: 16,onPress: (){}).box.size(context.screenWidth*0.4, 50).leftRounded(value: 15  ).rightRounded(value: 0).make(),
                 ourButton(text: subscribe,color: lightCream,textColor: Purple,textSize: 16,onPress: (){}).box.size(context.screenWidth*0.4, 50).rightRounded(value: 15).leftRounded(value: 0).make(),
               ],
              ).box.width(context.screenWidth*0.9).make(),
              20.heightBox,
              breakfast.text.size(18).fontFamily(semibold).color(Purple).make(),
              20.heightBox,
              Column(
                children: List.generate(tifinRestaurantList.length, (index){
                  var count = 0;
                    final tifin =  tifinRestaurantList[index];
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    tifin['type']!.text.fontFamily(semibold).color(Purple).size(18).make(),
                    5.heightBox,
                    tifin['details']!.text.fontFamily(regular).color(Colors.blueGrey).size(16).make(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       "\$ ${tifin['Price']}".text.fontFamily(regular).color(Colors.blueGrey).size(16).make(),
                        Row(
                          children: [
                            
                            "-".text.size(16).make().paddingAll(3).onTap((){if(count>0){count--;}}),
                           2.widthBox,
                            add.text.fontFamily(semibold).color(Purple).size(16).make(),
                            2.widthBox,
                            "+".text.size(16).make().paddingAll(3).onTap((){count++;}),
                          ],
                        ).box.roundedLg.color(lightestPurple).padding(EdgeInsets.symmetric(horizontal: 15,vertical: 3)).margin(EdgeInsets.only(right: 5)).make(),

                      ],
                    ),
                    ]).box.padding(EdgeInsets.all(15)).margin(EdgeInsets.symmetric(vertical: 5)).shadowSm.roundedSM.width(context.screenWidth*0.95).white.make();
                }
      ),
              ),
              20.heightBox,
              lunch.text.size(18).fontFamily(semibold).color(Purple).make(),
              20.heightBox,
              Column(
                children: List.generate(tifinRestaurantList.length, (index){
                  var count = 0;
                  final tifin =  tifinRestaurantList[index];
                  return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        tifin['type']!.text.fontFamily(semibold).color(Purple).size(18).make(),
                        5.heightBox,
                        tifin['details']!.text.fontFamily(regular).color(Colors.blueGrey).size(16).make(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            "\$ ${tifin['Price']}".text.fontFamily(regular).color(Colors.blueGrey).size(16).make(),
                            Row(
                              children: [

                                "-".text.size(16).make().paddingAll(3).onTap((){if(count>0){count--;}}),
                                2.widthBox,
                                add.text.fontFamily(semibold).color(Purple).size(16).make(),
                                2.widthBox,
                                "+".text.size(16).make().paddingAll(3).onTap((){count++;}),
                              ],
                            ).box.roundedLg.color(lightestPurple).padding(EdgeInsets.symmetric(horizontal: 15,vertical: 3)).margin(EdgeInsets.only(right: 5)).make(),

                          ],
                        ),
                      ]).box.padding(EdgeInsets.all(15)).margin(EdgeInsets.symmetric(vertical: 5)).shadowSm.roundedSM.width(context.screenWidth*0.95).white.make();
                }
                ),
              ),
              20.heightBox,
              dinner.text.size(18).fontFamily(semibold).color(Purple).make(),
              20.heightBox,
              Column(
                children: List.generate(tifinRestaurantList.length, (index){
                  var count = 0;
                  final tifin =  tifinRestaurantList[index];
                  return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        tifin['type']!.text.fontFamily(semibold).color(Purple).size(18).make(),
                        5.heightBox,
                        tifin['details']!.text.fontFamily(regular).color(Colors.blueGrey).size(16).make(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            "\$ ${tifin['Price']}".text.fontFamily(regular).color(Colors.blueGrey).size(16).make(),
                            Row(
                              children: [

                                "-".text.size(16).make().paddingAll(3).onTap((){if(count>0){count--;}}),
                                2.widthBox,
                                add.text.fontFamily(semibold).color(Purple).size(16).make(),
                                2.widthBox,
                                "+".text.size(16).make().paddingAll(3).onTap((){count++;}),
                              ],
                            ).box.roundedLg.color(lightestPurple).padding(EdgeInsets.symmetric(horizontal: 15,vertical: 3)).margin(EdgeInsets.only(right: 5)).make(),

                          ],
                        ),
                      ]).box.padding(EdgeInsets.all(15)).margin(EdgeInsets.symmetric(vertical: 5)).shadowSm.roundedSM.width(context.screenWidth*0.95).white.make();
                }
                ),
              ),
            ],
          ).paddingAll(20),
      ),
    );
  }
}
