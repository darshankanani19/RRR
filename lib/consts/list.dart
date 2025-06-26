import 'package:project_management/consts/const.dart';
import 'package:project_management/room_module/home_screen_room/home_screen_room.dart';

import '../room_module/model/chat_model.dart';
import '../view/cart_screen/cart_screen.dart';
import '../view/home_screen/home_screen.dart';
import '../view/profile_screen/profile_screen.dart';

const appList = [room,roti,ride];
const screensRoti = [
  CartScreen(),
  HomeScreen(),
  ProfileScreen(),
];
const screensRoom = [
  ChatHomeScreen(),
  HomeScreenRoom(),
  SearchScreen(),
  ProfileScreen(),
];
var screensRide = [
  const CartScreen(),
  HomeScreenRide(),
  const ProfileScreen(),
];
const roombottumNavbar = const [
  BottomNavigationBarItem(
    icon: Icon(Icons.chat_outlined),
    label: 'Chat',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.home_outlined),
    label: 'Home',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.search_off_outlined),
    label: 'Search',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.person_outline),
    label: 'Profile',
  ),
];
const rotibottumNavbar = const [
  BottomNavigationBarItem(
    icon: Icon(Icons.shopping_cart_outlined),
    label: 'Cart',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.home_outlined),
    label: 'Home',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.person_outline),
    label: 'Profile',
  ),
];
const ridebottumNavbar = const [
  BottomNavigationBarItem(
    icon: Icon(Icons.shopping_cart_outlined),
    label: 'Cart',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.home_outlined),
    label: 'Home',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.person_outline),
    label: 'Profile',
  ),
];

// room related list
const adsRoomList = [ad1,ad2,ad3,ad4];
const rentHouseList=[rent1,rent2,rent3,rent4];
const shareHouseList=[share1,share2,share3,share4];
final List<Property> allProperties = [
  Property(
    id: 'p1',
    type: 'Rent',
    imageUrl: rent1,
    title: 'Modern Apartment',
    description: 'Spacious 2BHK apartment in city center.',
    price: '₹25,000/month',
    location: 'Kaliyabid',
  ),
  Property(
    id: 'p2',
    type: 'Buy',
    imageUrl: buy1,
    title: 'Luxury Villa',
    description: 'Beautiful 4BHK villa with garden and pool.',
    price: '₹2.5 Crore',
    location: 'Malnath',
  ),
  Property(
    id: 'p3',
    type: 'Share',
    imageUrl:share1,
    title: 'Shared Room (Girls)',
    description: 'Furnished room available for rent, includes all utilities.',
    price: '₹7,500/month (per person)',
    location: 'Virani',
  ),
  Property(
    id: 'p4',
    type: 'Rent',
    imageUrl: rent2,
    title: 'Studio Flat',
    description: 'Cozy studio flat ideal for bachelors.',
    price: '₹12,000/month',
    location: 'Tech Park',
  ),
  Property(
    id: 'p5',
    type: 'Buy',
    imageUrl: buy2,
    title: 'Commercial Office Space',
    description: 'Prime location for your new business.',
    price: '₹1.2 Crore',
    location: 'Business District',
  ),
  Property(
    id: 'p6',
    type: 'Share',
    imageUrl: share2,
    title: 'PG for Boys',
    description: 'Affordable PG with food, near colleges.',
    price: '₹6,000/month',
    location: 'Student Hub',
  ),
  Property(
    id: 'p7',
    type: 'Rent',
    imageUrl: rent3,
    title: 'Family Home',
    description: '3BHK independent house with car parking.',
    price: '₹35,000/month',
    location: 'Quiet Suburb',
  ),
  Property(
    id: 'p8',
    type: 'Buy',
    imageUrl: buy3,
    title: 'Vacant Land',
    description: 'Residential plot, ready for construction.',
    price: '₹80 Lakh',
    location: 'Developing Area',
  ),
  Property(
    id: 'p9',
    type: 'Share',
    imageUrl: share3,
    title: 'PG for Boys',
    description: 'Affordable PG with food, near colleges.',
    price: '₹6,000/month',
    location: 'Student Hub',
  ),
  Property(
    id: 'p10',
    type: 'Rent',
    imageUrl: rent4,
    title: 'Family Home',
    description: '3BHK independent house with car parking.',
    price: '₹35,000/month',
    location: 'Quiet Suburb',
  ),
  Property(
    id: 'p11',
    type: 'Buy',
    imageUrl: buy4,
    title: 'Vacant Land',
    description: 'Residential plot, ready for construction.',
    price: '₹80 Lakh',
    location: 'Developing Area',
  ),
  Property(
    id: 'p12',
    type: 'Share',
    imageUrl: share4,
    title: 'PG for Boys',
    description: 'Affordable PG with food, near colleges.',
    price: '₹6,000/month',
    location: 'Student Hub',
  ),
  Property(
    id: 'n1',
    type: 'Rent',
    imageUrl: n1,
    title: '1BHK near Takhteshwar',
    description: 'Well-furnished flat near Takhteshwar Temple.',
    price: '₹8,500/month',
    location: 'Takhteshwar, Bhavnagar',
  ),
  Property(
    id: 'n2',
    type: 'Share',
    imageUrl: n2,
    title: 'PG in Sardarnagar',
    description: 'Girls PG with AC and food facilities.',
    price: '₹6,000/month',
    location: 'Sardarnagar, Bhavnagar',
  ),
  Property(
    id: 'n3',
    type: 'Rent',
    imageUrl: n3,
    title: 'Studio Flat near Waghawadi',
    description: 'Compact and cozy studio for students.',
    price: '₹7,200/month',
    location: 'Waghawadi Road, Bhavnagar',
  ),
  Property(
    id: 'n4',
    type: 'Share',
    imageUrl: n4,
    title: 'Shared Room near Hill Drive',
    description: 'Peaceful area with all amenities included.',
    price: '₹5,500/month',
    location: 'Hill Drive, Bhavnagar',
  ),
  Property(
    id: 'n5',
    type: 'Rent',
    imageUrl: n5,
    title: 'Flat near Krishna Hospital',
    description: 'Ideal for medical professionals & staff.',
    price: '₹10,000/month',
    location: 'Krishna Hospital, Bhavnagar',
  ),
  Property(
    id: 'n6',
    type: 'Share',
    imageUrl: n6,
    title: 'Boys PG in Ghogha Circle',
    description: 'Spacious PG with fast Wi-Fi and meals.',
    price: '₹5,800/month',
    location: 'Ghogha Circle, Bhavnagar',
  ),
  Property(
    id: 'best1',
    type: 'Rent',
    imageUrl: best1,
    title: 'Modern Apartment',
    description: 'Spacious 2BHK apartment in city center.',
    price: '₹25,000/month',
    location: 'Kaliyabid',
  ),
  Property(
    id: 'best2',
    type: 'Buy',
    imageUrl: best2,
    title: 'Luxury Villa',
    description: 'Beautiful 4BHK villa with garden and pool.',
    price: '₹2.5 Crore',
    location: 'Malnath',
  ),
  Property(
    id: 'best3',
    type: 'Share',
    imageUrl:best3,
    title: 'Shared Room (Girls)',
    description: 'Furnished room available for rent, includes all utilities.',
    price: '₹7,500/month (per person)',
    location: 'Virani',
  ),
  Property(
    id: 'best4',
    type: 'Rent',
    imageUrl: best4,
    title: 'Studio Flat',
    description: 'Cozy studio flat ideal for bachelors.',
    price: '₹12,000/month',
    location: 'Tech Park',
  ),
  Property(
    id: 'best5',
    type: 'Rent',
    imageUrl: best5,
    title: 'Golden City',
    description: 'Cozy studio flat ideal for bachelors.',
    price: '15,000/month',
    location: 'Kaliyabid ',
  ),
];
final List<Property> nearbyRoomsList = [
  Property(
    id: 'n1',
    type: 'Rent',
    imageUrl: n1,
    title: '1BHK near Takhteshwar',
    description: 'Well-furnished flat near Takhteshwar Temple.',
    price: '₹8,500/month',
    location: 'Takhteshwar, Bhavnagar',
  ),
  Property(
    id: 'n2',
    type: 'Share',
    imageUrl: n2,
    title: 'PG in Sardarnagar',
    description: 'Girls PG with AC and food facilities.',
    price: '₹6,000/month',
    location: 'Sardarnagar, Bhavnagar',
  ),
  Property(
    id: 'n3',
    type: 'Rent',
    imageUrl: n3,
    title: 'Studio Flat near Waghawadi',
    description: 'Compact and cozy studio for students.',
    price: '₹7,200/month',
    location: 'Waghawadi Road, Bhavnagar',
  ),
  Property(
    id: 'n4',
    type: 'Share',
    imageUrl: n4,
    title: 'Shared Room near Hill Drive',
    description: 'Peaceful area with all amenities included.',
    price: '₹5,500/month',
    location: 'Hill Drive, Bhavnagar',
  ),
  Property(
    id: 'n5',
    type: 'Rent',
    imageUrl: n5,
    title: 'Flat near Krishna Hospital',
    description: 'Ideal for medical professionals & staff.',
    price: '₹10,000/month',
    location: 'Krishna Hospital, Bhavnagar',
  ),
  Property(
    id: 'n6',
    type: 'Share',
    imageUrl: n6,
    title: 'Boys PG in Ghogha Circle',
    description: 'Spacious PG with fast Wi-Fi and meals.',
    price: '₹5,800/month',
    location: 'Ghogha Circle, Bhavnagar',
  ),
];
final List<Property> bestPropertiesList = [
  Property(
    id: 'best1',
    type: 'Rent',
    imageUrl: best1,
    title: 'Modern Apartment',
    description: 'Spacious 2BHK apartment in city center.',
    price: '₹25,000/month',
    location: 'Kaliyabid',
  ),
  Property(
    id: 'best2',
    type: 'Buy',
    imageUrl: best2,
    title: 'Luxury Villa',
    description: 'Beautiful 4BHK villa with garden and pool.',
    price: '₹2.5 Crore',
    location: 'Malnath',
  ),
  Property(
    id: 'best3',
    type: 'Share',
    imageUrl:best3,
    title: 'Shared Room (Girls)',
    description: 'Furnished room available for rent, includes all utilities.',
    price: '₹7,500/month (per person)',
    location: 'Virani',
  ),
  Property(
    id: 'best4',
    type: 'Rent',
    imageUrl: best4,
    title: 'Studio Flat',
    description: 'Cozy studio flat ideal for bachelors.',
    price: '₹12,000/month',
    location: 'Tech Park',
  ),
  Property(
    id: 'best5',
    type: 'Rent',
    imageUrl: best5,
    title: 'Golden City',
    description: 'Cozy studio flat ideal for bachelors.',
    price: '15,000/month',
    location: 'Kaliyabid ',
  ),
];
final List<Chat> userChats = [
  Chat(
    roomId: 'room_p1',
    userId: 'user_darshan',
    userName: 'Darshan Kanani',
    dealerId: 'dealer_1',
    dealerName: 'Mr. Patel',
    lastMessage: 'Hi, is this property still available?',
    timestamp: '2025-06-25T10:00:00Z',
    unreadCount: 1,
    messages: [
      'Darshan: Hi, is this property still available?',
    ],
    property: allProperties.firstWhere((p) => p.id == 'p1'),
  ),
  Chat(
    roomId: 'room_p2',
    userId: 'user_darshan',
    userName: 'Darshan Kanani',
    dealerId: 'dealer_2',
    dealerName: 'Mrs. Shah',
    lastMessage: 'Yes, it is available.',
    timestamp: '2025-06-25T09:50:00Z',
    unreadCount: 0,
    messages: [
      'Darshan: Interested in this villa.',
      'Dealer: Yes, it is available.',
    ],
    property: allProperties.firstWhere((p) => p.id == 'p2'),
  ),
  Chat(
    roomId: 'room_p3',
    userId: 'user_darshan',
    userName: 'Darshan Kanani',
    dealerId: 'dealer_3',
    dealerName: 'Ms. Mehta',
    lastMessage: 'Shared rooms are still vacant.',
    timestamp: '2025-06-25T08:30:00Z',
    unreadCount: 0,
    messages: [
      'Darshan: Looking for PG for girls in Virani.',
      'Dealer: Shared rooms are still vacant.',
    ],
    property: allProperties.firstWhere((p) => p.id == 'p3'),
  ),
  Chat(
    roomId: 'room_p4',
    userId: 'user_darshan',
    userName: 'Darshan Kanani',
    dealerId: 'dealer_4',
    dealerName: 'Mr. Desai',
    lastMessage: 'Great bachelor option!',
    timestamp: '2025-06-25T08:00:00Z',
    unreadCount: 2,
    messages: [
      'Darshan: Studio flat looks good.',
      'Dealer: Great bachelor option!',
    ],
    property: allProperties.firstWhere((p) => p.id == 'p4'),
  ),
  Chat(
    roomId: 'room_p5',
    userId: 'user_darshan',
    userName: 'Darshan Kanani',
    dealerId: 'dealer_5',
    dealerName: 'Mr. Bhatt',
    lastMessage: 'We can schedule a visit.',
    timestamp: '2025-06-24T18:15:00Z',
    unreadCount: 0,
    messages: [
      'Darshan: Interested in commercial space.',
      'Dealer: We can schedule a visit.',
    ],
    property: allProperties.firstWhere((p) => p.id == 'p5'),
  ),
  Chat(
    roomId: 'room_p6',
    userId: 'user_darshan',
    userName: 'Darshan Kanani',
    dealerId: 'dealer_6',
    dealerName: 'Mr. Yadav',
    lastMessage: 'Includes food and Wi-Fi.',
    timestamp: '2025-06-24T17:00:00Z',
    unreadCount: 0,
    messages: [
      'Darshan: Tell me more about PG.',
      'Dealer: Includes food and Wi-Fi.',
    ],
    property: allProperties.firstWhere((p) => p.id == 'p6'),
  ),
];
 List<Property> favouriteProperties = [];


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
];
List<bool> isCheckedSubscriptionPlan = [ false, false];



