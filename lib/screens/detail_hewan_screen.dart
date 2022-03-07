import 'package:animated_flip_card/animated_flip_card.dart';
import 'package:ashraf_skripsi/screens/ar_hewan_screen.dart';
import 'package:flutter/material.dart';


class DetailHewanScreen extends StatelessWidget {
  final String? images;
  final String? desc;
  const DetailHewanScreen({Key? key, this.images, this.desc}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Detail Hewan"),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(0xffB91646),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 0, left: 40),
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            new Center(
              child: Container(
                alignment: Alignment.center,
                child: AnimatedFlipCard(
                  front: Image.asset(
                    'assets/images/FRONT ${images!}.png',
                    width: 300,
                    fit: BoxFit.contain,
                  ),
                  back: Image.asset(
                    'assets/images/BACK ${images!}.png',
                    width: 300,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 20),
              child: Center(
                child: Text(
                  'Keterangan',
                  style: TextStyle(
                      fontFamily: 'MysteryQuest',
                      color: Colors.black54,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            new Center(
              child: new Padding(
                padding: EdgeInsets.only(right: 40, left: 40, bottom: 10),
                child: new Text(
                  desc!,
                  style: TextStyle(
                    fontFamily: 'MysteryQuest',
                    color: Colors.black54,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            new Center(
              child: new Padding(
                padding: EdgeInsets.only(right: 40, left: 40),
                child: new ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(new MaterialPageRoute(builder: (context){
                      return new ArHewanScreen(title: images!,);
                    }));
                  },
                  child: Text('AR (AUGMENTED REALITY)'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffB91646),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

