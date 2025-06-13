import 'package:project_management/consts/const.dart';
import 'package:project_management/view/splashScreen/splashScreen1.dart';
void main(){
  runApp(splashScreen());
}
class splashScreen extends StatelessWidget {
  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen1(),
    );
  }
}
