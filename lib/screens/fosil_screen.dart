import 'package:ashraf_skripsi/screens/detail_fosil_screen.dart';
import 'package:ashraf_skripsi/screens/detail_fosil_screen_two.dart';
import 'package:ashraf_skripsi/screens/detail_hewan_screen.dart';
import 'package:flutter/material.dart';

class FosilScreen extends StatefulWidget {
  const FosilScreen({Key? key}) : super(key: key);

  @override
  _FosilScreenState createState() => _FosilScreenState();
}

class _FosilScreenState extends State<FosilScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Fosil"),
        backgroundColor: Color(0xffB91646),
        centerTitle: true,
        elevation: 0,
      ),
      body: new SingleChildScrollView(
        child: new Column(
          children: [
            _daftarFosil("https://sketchfab.com/models/21341bbe998a40f0b76af3f4c4ba8e7d/embed?autostart=1&internal=1&tracking=0&ui_ar=0&ui_infos=0&ui_snapshots=1&ui_stop=0&ui_theatre=1&ui_watermark=1", "assets/images/Bos Palaesondaicus.jpg", "Bos Palaesondaicus",
                "Bos Palaesondaicus adalah sejenis kerbau purba yang masuk dalam subfamili Bovanie", "Bos Palaesondaicus adalah sejenis kerbau purba yang masuk dalam subfamili Bovanie. Diperkirakan hewan ini hidup di masa Pleistocene Jawa. Zaman ini berlangsung sekitar 2,6 juta – 12.000 tahun yang lalu. Fosil Bos Palaesondaicus pertama kali ditemukan oleh Eugene Dubois pada tahun 1908. Sayangnya fosil yang ditemukan di Trinil ini hanya berupa tengkoraknya saja. Diperkirakan Bos Palaesondaicus adalah sesepuh dari Banteng yang ada di Jawa"),
            _daftarFosil("https://sketchfab.com/models/6b2399aaee2840aaa3e0da7cf7099a28/embed?autostart=1&internal=1&tracking=0&ui_infos=0&ui_snapshots=1&ui_stop=0&ui_theatre=1&ui_watermark=0", "assets/images/Stegodon Trigonocephalus.jpg", "Stegodon Trigonocephalus",
                "Stegodon Trigonocephalus adalah gajah purba yang paling tua dan ditemukan di Indonesia", "Stegodon Trigonocephalus adalah gajah purba yang paling tua dan ditemukan di Indonesia. Gajah ini diperkirakan menyebar di kawasan Indonesia hingga dataran Timur Tengah Seperti Suriah. Gajah ini satu zaman dengan Bos Palaesondaicus yaitu pada Pleistocene Jawa. Di Indonesia, fosil gajah ini ditemukan di tiga tempat yang berbeda. Pertama adalah di Sangiran, lalu Trinil, dan terakhir Gunung Patiayam"),
            _daftarFosilTwo("assets/images/Mammoth.jpg", "Mammoth", "Mamut adalah genus gajah purba yang telah punah", "kelompok gajah yang punah yang ditemukan sebagai fosil di setiap benua kecuali Australia dan Amerika Selatan dan Amerika Utara. (Epoch Pleistosen dimulai 2,6 juta tahun yang lalu dan berakhir 11.700 tahun yang lalu."),
            _daftarFosilTwo("assets/images/Anthracotherium.jpg", "Anthracotherium", "Anthracotherium adalah genus mamalia berkuku artiodactyl yang telah punah", "Anthracotherium adalah genus mamalia berkuku artiodactyl yang telah punah, ditandai dengan memiliki 44 gigi, dengan lima cusp semi-sabit pada mahkota.")
          ],
        ),
      ),
    );
  }
  Widget _daftarFosilTwo(String images, String title, String content, String desc) {
    return new GestureDetector(
      onTap: (){
        Navigator.of(context).push(new MaterialPageRoute(builder: (context){
          return new DetailFosilScreenTwo(
            images: title,
            desc: desc,
          );
        }));
      },
      child: new Container(
        margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.circular(10.0),
        ),
        child: new Row(
          children: [
            new Column(
              children: [
                new Container(
                  margin: const EdgeInsets.only(right: 10.0),
                  height: 100.0,
                  width: 100.0,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: new AssetImage(images),
                    ),
                  ),
                )
              ],
            ),
            new Expanded(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  new Text(
                    title,
                    style: new TextStyle(
                        color: Color(0xffB91646),
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0),
                  ),
                  new Text(
                    content,
                    style: new TextStyle(fontSize: 10.0),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


  Widget _daftarFosil(String link, String images, String title, String content, String desc) {
    return new GestureDetector(
      onTap: (){
        Navigator.of(context).push(new MaterialPageRoute(builder: (context){
          return new DetailFosilScreen(
            images: title,
            desc: desc,
            link: link,
          );
        }));
      },
      child: new Container(
        margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.circular(10.0),
        ),
        child: new Row(
          children: [
            new Column(
              children: [
                new Container(
                  margin: const EdgeInsets.only(right: 10.0),
                  height: 100.0,
                  width: 100.0,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: new AssetImage(images),
                    ),
                  ),
                )
              ],
            ),
            new Expanded(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  new Text(
                    title,
                    style: new TextStyle(
                        color: Color(0xffB91646),
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0),
                  ),
                  new Text(
                    content,
                    style: new TextStyle(fontSize: 10.0),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
