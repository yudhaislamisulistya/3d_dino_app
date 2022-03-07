import 'package:ashraf_skripsi/screens/detail_hewan_screen.dart';
import 'package:flutter/material.dart';

class HewanScreen extends StatefulWidget {
  const HewanScreen({Key? key}) : super(key: key);

  @override
  _HewanScreenState createState() => _HewanScreenState();
}

class _HewanScreenState extends State<HewanScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Hewan"),
        backgroundColor: Color(0xffB91646),
        centerTitle: true,
        elevation: 0,
      ),
      body: new SingleChildScrollView(
        child: new Column(
          children: [
            _daftarHewan("assets/images/Tryannosaurus Rex.jpg", "TyronnosaurusRex",
                "Tyronnosaurus Rex atau disingkat T-Rex, bisa jadi merupakan jenis dinosaurus paling populer", "Tyronnosaurus Rex atau disingkat T-Rex, bisa jadi merupakan jenis dinosaurus paling populer, terutama berkat pengaruh film-film Hollywood tentang dinosaurus. Hewan ini menjadi karnivora darat terbesar sepanjang sejarah. T-Rex pun dikenal sebagai predator ganas dengan gigitan tertajam di antara hewan purba"),
            _daftarHewan("assets/images/Brachiosaurus.jpeg", "Brontosaurus",
                "Brachiosaurus hidup pada zaman Jurasik Akhir,155-145 juta tahun yang lalu", "Brachiosaurus hidup pada zaman Jurasik Akhir,155-145 juta tahun yang lalu. Brachiosaurus memiliki leher sepanjang 9 m yang tersusun dari belasan tulang belakang dan tulang rusuk berbentuk aneh.Keadaan ini menyebabkan leher Brachiosaurus kemungkinan besar tidak selentur yang pernah diduga para ilmuwan.Kaki depannya juga jauh lebih tinggi daripada kaki  belakangnya,membuat tubuh Brachiosaurus terlihat menurun"),
            _daftarHewan("assets/images/Triceratops.jpg", "Triceratops",
                "Triceratops merupakan salah satu jenis dinosaurus yang terkenal dan biasa disebut Tritop", "Triceratops merupakan salah satu jenis dinosaurus yang terkenal dan biasa disebut Tritop. Ini merupakan merupakan jenis  dinosaurus bertanduk tiga yang berbadan besar. Tanduknya pun bisa berfungsi sebagai penyerangan atau pertahanan dari musuh"),
            _daftarHewan("assets/images/Mosasaurus.jpg", "Mosasaurus",
                "Mosasaurus adalah genus mosasaur, kadal air karnivora, kadang-kadang menyerupai buaya bersirip", "Mosasaurus adalah genus mosasaur, kadal air karnivora, kadang-kadang menyerupai buaya bersirip. Mosasaurus memiliki rahang besar memanjang. Genus ini hidup pada era Maastrichtian dalam periode Cretaceous (era Mesozoik ),  sekitar 70-65 juta tahun yang lalu. Namanya berarti kadal Meuse,  karena binatang ini ditemui didekat sungai mause"),
            _daftarHewan("assets/images/Pteranodon.jpg", "Pteranodon",
                "Pteranodon termasuk dalam jenis Pterosaurus. Menyebut Pteranodon sebagai dinosaurus sama salahnya dengan menyebut manusia bagian dari keluarga hewan pengarat", "Pteranodon termasuk dalam jenis Pterosaurus. Menyebut Pteranodon sebagai dinosaurus sama salahnya dengan menyebut  manusia bagian dari keluarga hewan pengarat. Sekali lagi karena  Pteranodon bisa terbang, sementara dinoasurus tidak bisa terbang"),
            _daftarHewan("assets/images/Brontosaurus.jpg", "Brontosaurus",
                "Brontosaurus menjadi salah satu jenis jenis dinosaurus. Jenis aslinya bernama Apatosaurus, namun sering disebut Brontosaurus", "Brontosaurus menjadi salah satu jenis jenis dinosaurus. Jenis aslinya bernama Apatosaurus, namun sering disebut Brontosaurus. Jenis dinosaurus ini memiliki leher yang panjang dan tubuhnya bisa  mencapai 26 meter dengan berat 32 ton. Habitat Brontosaurus ada  di tepi danau dan hutan serta termasuk hewan herbivora."),
            _daftarHewan("assets/images/Velociraptor.jpg", "Velociraptor",
                "Velociraptor atau biasa disingkat Raptor saja, merupakan jenis dinosaurus pemangsa yang mirip dengan T-Rex", "Velociraptor atau biasa disingkat Raptor saja, merupakan  jenis dinosaurus pemangsa yang mirip dengan T-Rex, hanya saja  dalam ukuran yang lebih kecil. Jenis Velociraptor biasa hidup  berkelompok dan tergolong sebagai jenis dinosaurus yang cerdas.  Mereka memangsa dengan menggunakan strategi pengalih perhatian"),
            _daftarHewan("assets/images/Spinosaurus.jpg", "Spinosaurus",
                "Salah satu jenis dinosaurus terbesar di dunia sepanjang sejarah adalah Spinosaurus", "Salah satu jenis dinosaurus terbesar di dunia sepanjang  sejarah adalah Spinosaurus. Spinosaurus merupakan theropoda  raksasa yang dapat tumbuh hingga 15 meter dengan tinggi sekitar 5  meter dan berat mencapai 7,6 ton. Panjang tengkorak Spinosaurus  1,75 m dengan seratus gigi-gigi runcing yang lurus sepanjang kirakira 17 cm"),
          ],
        ),
      ),
    );
  }

  Widget _daftarHewan(String images, String title, String content, String desc) {
    return new GestureDetector(
      onTap: (){
        Navigator.of(context).push(new MaterialPageRoute(builder: (context){
          return new DetailHewanScreen(desc: desc, images: title,);
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
