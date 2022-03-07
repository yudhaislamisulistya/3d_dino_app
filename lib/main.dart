import 'package:ashraf_skripsi/screens/home_screen.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
      new MaterialApp(
        title: "AR Hewan Purbakala",
        debugShowCheckedModeBanner: false,
        home: Main(),
      )
  );
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset("assets/images/new/Brontosaurus.png"),
      logoSize: 150.0,
      loadingTextPadding: EdgeInsets.all(20.0),
      title: Text(
        "AR Hewan dan Fosil Purba",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
      ),
      backgroundColor: Color(0xffB91646),
      showLoader: true,
      loaderColor: Colors.white,
      loadingText: Text("Loading...", style: new TextStyle(color: Colors.white),),
      navigator: HomeScreen(),
      durationInSeconds: 2,
    );
  }
}
