import 'package:project_management/comman_widget/ourButton.dart';
import 'package:project_management/consts/const.dart';
import 'package:project_management/view/home_screen/Home.dart';
import 'package:project_management/view/home_screen/home_screen.dart';
import 'package:video_player/video_player.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  late VideoPlayerController _videoController;

  @override
  void initState() {
    super.initState();

    // Initialize video controller with looping enabled
    _videoController = VideoPlayerController.asset(emptyCartVideo)
      ..initialize().then((_) {
        setState(() {});
        _videoController.setLooping(true);
        _videoController.play();
      });
  }

  @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: cart.text.make()),
      body: cartItems.isEmpty
          ? Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: context.screenHeight*0.3,
              width: context.screenHeight*0.3,
              child: _videoController.value.isInitialized
                  ? AspectRatio(
                aspectRatio: _videoController.value.aspectRatio,
                child: VideoPlayer(_videoController),
              )
                  : const CircularProgressIndicator(),
            ),
10.heightBox,
            cartString1.text.fontFamily(semibold).color(Purple).size(18).make(),
            5.heightBox,
            
            cartString2.text.fontFamily(regular).color(Colors.black45).size(16).make(),

            20.heightBox,
            ourButton(text: continueOrdering,onPress: (){Get.offAll(()=>Home(currentValueIndex: 1,));},textSize: 16,textColor: lightCream,color: Purple).box.width(context.screenWidth*0.6).height(50).make(),
            
          ],
        ),
      )
          : ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: Text(cartItems[index]),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  setState(() {
                    cartItems.removeAt(index);
                  });
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
