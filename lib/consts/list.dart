import 'package:project_management/consts/const.dart';

const offersList =[o_1,o_2];
const iconList =[vegFoodIcon,nonVegFoodIcon,fastFoodIcon,dessertIcon];
const titleList =[veg,nonVeg,fastFood,dessert];
const tiffinImgList =[t1,t2,t3,t4];
const tiffinTitleList =["Tiffin 1","Tiffin 2","Tiffin 3","Tiffin 4"];
const tiffinDescriptionList =["Details of Tiffin 1 items ","Details of Tiffin 2 items ","Details of Tiffin 3 items ","Details of Tiffin 4 items "];
const tiffinPriceList =["₹99","₹250","₹400","₹300"];
const profileSettingList =[privacySetting,orderHistory,paymentRefund,manageAddress,subscription,favourites,rewardPoints,helpSupport,logout];
const redirectPage =[PrivacySettingsScreen() ,OrderHistoryScreen(title: orderHistory),PaymentRefundScreen(),ManageAddressScreen(),SubscriptionScreen(),FavouritesScreen(),RewardPointsScreen(),HelpSupportScreen(),LogoutScreen()];
const profileSettingHintList =[privacySettingHint,orderHistoryHint,paymentRefundHint,manageAddressHint,subscriptionHint,favouritesHint,rewardPointsHint,helpSupportHint,logoutHint];
const profileSettingIconList =[Icons.settings_outlined,Icons.history_edu_outlined,Icons.payment_outlined,Icons.location_on_outlined,Icons.subscriptions_outlined,Icons.favorite_outline,Icons.star_outline,Icons.help_outline,Icons.logout_outlined];
const cartItems =[];
const orderList =[
  {
  'title': "Rudder Garden",
  'type':'Mini Tiffin',
  'status':'success',
  "dateAndTime":"14 June 2025, 12:00 PM",
  "Price":"\$ 80.00",
  "rating":"4.2",
  'image':r1
},
  {
  'title': "Punaabi Point",
  'type':'Mini Tiffin',
  'status':'success',
  "rating":"4.2",
  "dateAndTime":"12 June 2025, 1:30 PM",
  "Price":"\$ 100.00",
  'image':r2
},
   {
    'title': "Sankalp Restaurant",
    'type':'Mini Tiffin',
     "rating":"4.2",
    'status':'Failed',
    "dateAndTime":"10 June 2025, 12:00 PM",
    "Price":"\$ 150.00",
    'image':r3
  },

];
const tifinRestaurantList =[
  {
    "type": "Mini Tifin",
    "details": "Aloo Sabji,2 Chapati,Dal,Rice",
    "Price": "70.0",
  },
  {
    "type": "regular Tifin",
    "details": "Matar Panner,Bhindi,4 chapati",
    "Price": "80.0",
  },
  {
    "type": "Jumbo Tifin",
    "details": "Matar Panner,Bhindi,4 chapati, Dal,Rice",
    "Price": "150.0",
  },
];
const restaurantList =[{
  'title': "Rudra Garden",
  'type':'Mini Tiffin',
  'status':'success',
  "description":"description about Related restaurant in details",
  "dateAndTime":"14 June 2025, 12:00 PM",
  "Price":"\$ 80.00",
  "distance" : "3km away",
  "rating":"4.2",
  "location":"rajpat",
"timing":"12 pm -3 pm | 7 pm -11 pm ",
  'image':r1
},
  {
    'title': "Punaabi Point",
    "distance" : "5km away",
    'type':'Mini Tiffin',
    'status':'success',
    "rating":"4.2",
    "description":"description about Related restaurant in details",
    "dateAndTime":"12 June 2025, 1:30 PM",
    "location":"Lila circle",
    "timing":"12 pm -3 pm | 7 pm -11 pm ",
    "Price":"\$ 100.00",
    'image':r2
  },
  {
    'title': "Sankalp Restaurant",
    "distance" : "4km away",
    'type':'Mini Tiffin',
    "rating":"4.2",
    "location":"Virani Circle",
    "timing":"12 pm -3 pm | 7 pm -11 pm ",
    'status':'Failed',
    "description":"description about Related restaurant in details",
    "dateAndTime":"10 June 2025, 12:00 PM",
    "Price":"\$ 150.00",
    'image':r3
  },

];
const paymentRefundList = [
  {
    'transactionId': 'TXN123456789',
    'amount': '₹499.00',
  },
  {
    'transactionId': 'TXN987654321',
    'amount': '₹299.00',
  },
];
const addressList = [
  {
    'title': 'Home',
    'details': 'patel Park soc., sidsar, bhavnagar',
  },
  {
    'title': 'College',
    'details': 'Shantilal Shah Engineering College',
  },
  // Add more addresses as needed
];

const subscriptionsList = [
  {
    'vendor': 'Homeful Tiffins',
    'plan': 'Regular Tiffin',
    'status': 'Ongoing'
  },
  {
    'vendor': 'Maa ka Tiffin',
    'plan': 'Mini Tiffin',
    'status': 'Expired'
  },
  {
    'vendor': 'Maa ka Tiffin',
    'plan': 'Regular Tiffin',
    'status': 'Expired'
  },
];

const favouritesList = [
  {
    'title': 'Homeful Tiffins',
    'details': 'Healthy homemade food',
  },
  {
    'title': 'Maa Ka Dabba',
    'details': 'Authentic taste',
  },
];


const settingsList = [
  {
    'title': 'Change Password',
  },
  {
    'title': 'Delete Account',
  },
];
const rewardList = [
  {
    'title': 'Order #1001',
    'points': '20',
  },
  {
    'title': 'Referral Bonus',
    'points': '50',
  },
];

class NotificationItem {
  final String title;
  final String subtitle;
  final String time;
  final IconData icon;
  final bool isHighlighted;

  NotificationItem({
    required this.title,
    required this.subtitle,
    required this.time,
    required this.icon,
    this.isHighlighted = false,
  });
}

List<NotificationItem> notificationList = [
  NotificationItem(
    title: "Tiffin is on its way!",
    subtitle: "Your tiffin is on the way. Track your daily tiffin",
    time: "10:00 pm",
    icon: Icons.delivery_dining_rounded,
    isHighlighted: true,
  ),
  NotificationItem(
    title: "Tiffin delivered",
    subtitle: "Your tiffin from Daily Dabba has been delivered.",
    time: "10 Oct",
    icon: Icons.check_circle_outline_rounded,
  ),
  NotificationItem(
    title: "Annual Subscription",
    subtitle: "Subscribe to our weekly subscriptions & get discounts!",
    time: "8th Aug",
    icon: Icons.subscriptions_outlined,
  ),
];
const daysList =[mon,tue,wed,thu,fri,sat,sun];
final regularTifin = [breakfast, lunch, dinner];
List<bool> isChecked = [false, false, false];
List<bool> isCheckedPortionSize = [ false, false];
final subscriptionPlanList=[
  {
    "name":daysMealPlan,
    "price":110,
    "days":7,
    "total":770
  },
  {
    "name":monthlyMealPlan,
    "price":100,
    "days":30,
    "total":2699
  }
];List<bool> isCheckedSubscriptionPlan = [ false, false];
