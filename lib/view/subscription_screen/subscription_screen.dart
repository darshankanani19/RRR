import 'package:project_management/comman_widget/ourButton.dart';
import 'package:project_management/consts/const.dart';

class CreateSubscriptionScreen extends StatefulWidget {
  final int restaurantIndex;
  const CreateSubscriptionScreen({super.key, required this.restaurantIndex});

  @override
  State<CreateSubscriptionScreen> createState() => _CreateSubscriptionScreenState();
}

class _CreateSubscriptionScreenState extends State<CreateSubscriptionScreen> {
  int count = 0;


  final PortionSizeList =[lite,standard];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: createSubscription.text.make(),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "Regular Tifin".text.color(Purple).size(18).fontFamily(semibold).make(),
                    15.heightBox,
                    "Matar Panner,Bhindi,4 Chapati".text.color(Colors.blueGrey).size(16).make()
                  ],
                ),
                Row(
                  children: [
                    "-".text.size(16).make().paddingAll(3).onTap(() {
                      if (count > 0) {
                        setState(() {
                          count--;
                        });
                      }
                    }),
                    8.widthBox,
                    "$count".text.fontFamily(semibold).color(Purple).size(16).make(),
                    8.widthBox,
                    "+".text.size(16).make().paddingAll(3).onTap(() {
                      setState(() {
                        count++;
                      });
                    }),
                  ],
                ).box.roundedSM.color(lightestPurple).padding(EdgeInsets.symmetric(horizontal: 15, vertical: 3)).margin(EdgeInsets.only(right: 5)).make(),
              ],
            ).box.width(context.screenWidth * 0.95).make(),
            20.heightBox,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.food_bank_outlined, size: 30),
                    5.widthBox,
                    "Regular Tifin".text.fontFamily(semibold).size(18).color(Purple).make()
                  ],
                ),
                15.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    regularTifin.length,
                        (index) => Row(
                      children: [
                        Checkbox(
                          value: isChecked[index],
                          onChanged: (value) {
                            setState(() {
                              isChecked[index] = value!;
                            });
                          },
                          activeColor: Purple,
                          focusColor: Purple,
                        ),
                        2.widthBox,
                        regularTifin[index].text.color(Colors.blueGrey).size(16).make()
                      ],
                    ),
                  ),
                ),
              ],
            ),
            20.heightBox,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.food_bank_outlined, size: 30),
                    5.widthBox,
                    portionSize.text.fontFamily(semibold).size(18).color(Purple).make()
                  ],
                ),
                15.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    PortionSizeList.length,
                        (index) => Row(
                      children: [
                        Checkbox(
                          value: isCheckedPortionSize[index],
                          onChanged: (value) {
                            setState(() {
                              isCheckedPortionSize[index] = value!;
                            });
                          },
                          activeColor: Purple,
                          focusColor: Purple,
                        ),
                        2.widthBox,
                        PortionSizeList[index].text.color(Colors.blueGrey).size(16).make()
                      ],
                    ),
                  ),
                ),
              ],
            ),
            20.heightBox,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.food_bank_outlined, size: 30),
                    5.widthBox,
                    subscriptionPlan.text.fontFamily(semibold).size(18).color(Purple).make()
                  ],
                ),
                15.heightBox,
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    subscriptionPlanList.length,
                        (index){
                     final subscriptionPlan = subscriptionPlanList[index];
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                                subscriptionPlan['name'].toString().text.make(),
                               5.heightBox,
                                "\$ ${subscriptionPlan['price']} / $meal".text.fontFamily(regular).color(Colors.blueGrey).make(),
                            5.heightBox,

                                "\$ ${subscriptionPlan['days']} $fullMeal".text.fontFamily(regular).color(Colors.blueGrey).make(),
                                ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                          Checkbox(
                            value: isCheckedSubscriptionPlan[index],
                            onChanged: (value) {
                              setState(() {
                                isCheckedSubscriptionPlan[index] = value!;
                              });
                            },
                            activeColor: Purple,
                            focusColor: Purple,
                          ),
                          10.heightBox,
                          "$total \$${subscriptionPlan['total']} ".text.fontFamily(bold).color(Purple).make(),
                          ],),

                         ],
                    ).box.padding(EdgeInsets.all(15)).margin(EdgeInsets.symmetric(vertical: 5)).shadowSm.roundedSM.width(context.screenWidth*0.90).white.make();;}
                  ),
                ),


              ],
            ),
            20.heightBox,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.refresh, size: 30),
                    5.widthBox,
                    repeatOn.text.fontFamily(semibold).size(18).color(Purple).make()
                  ],
                ),
                15.heightBox,
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      daysList.length,
                          (index) => daysList[index].text.size(15).makeCentered().box.color(lightestPurple).padding(EdgeInsets.symmetric(vertical: 15)).width(context.screenWidth*0.1).roundedSM.margin(EdgeInsets.symmetric(horizontal: 5)).make(),
                    ),
                  ),
                ),
              ],
            ),
            20.heightBox,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.refresh, size: 30),
                    5.widthBox,
                    startFrom.text.fontFamily(semibold).size(18).color(Purple).make()
                  ],
                ),
                15.heightBox,
                ListTile(
                  leading: Icon(Icons.calendar_today_outlined,color: Purple,size: 30,),
                  title: calendar.text.color(Purple).bold.make(),
                  trailing: Icon(Icons.keyboard_arrow_down_outlined,color: Purple,size: 30,),

                ).box.shadowSm.width(context.screenWidth*0.9).make(),
                20.heightBox,
                ourButton(text: "$proceedToPay \$ 770",onPress: (){},textSize: 16,textColor: lightCream,color: Purple).box.roundedSM.padding(EdgeInsets.all(5)).width(context.screenWidth*0.5).makeCentered(),
              ],
            ),
          ],
        ).paddingAll(20),
      ),
    );
  }
}
