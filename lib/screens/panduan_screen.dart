import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class PanduanScreen extends StatefulWidget {
  const PanduanScreen({Key? key}) : super(key: key);

  @override
  _PanduanScreenState createState() => _PanduanScreenState();
}

class _PanduanScreenState extends State<PanduanScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Panduan Aplikasi"),
        backgroundColor: Color(0xffB91646),
        centerTitle: true,
        elevation: 0,
      ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: HtmlWidget(
              """
                  <h1 style="color: #5e9ca0;"><span style="color: #800000;">Panduan Penggunaan Aplikasi</span></h1>
                  <ol>
                  <li>Halaman Utama Dalam Aplikasi Ini Berisi Beberapa Menu atau Bagian Pada Sisi Bawah dan Dapat di Operasikan Sebagaimana Mestinya</li>
                  <li>Menu Hewan dan Fosil Menampilkan Seluruh Daftar Dari Hewan Purbakala Yang Terdata dan Tercatat Dalam Sistem</li>
                  <li>Setelah Memilih Salah Satu Bagian Menu Pada Sisi Bagian Bawah. Kalian Dapat Memilih Hewan Purbakal</li>
                  <li>Detail atau Detil Halaman Akan Berdasarkan Kepada Hewan atau Fosil Yang Telah Dipilih Sebelumnya</li>
                  <li>Keterangan dan Foto Dari Masing-Masing Hewan Purbakala Dapat Dilihat Melalui Halaman Detail atau Detil</li>
                  <li>Kita Dapat Memilih dan Melihat AR atau Augmented Reality Dari Model Hewan Yang Telah Divisualisasikan Agar Dapat Memberikan Informasi Yang Efektif dalam Bentuk 3 Dimensi</li>
                  <li>Kalian Akan Mendapatkan Informasi Penting Dalam Aplikasi Hewan dan Fosil Purbakala</li>
                  </ol>
                  <p><img style="display: block; margin-left: auto; margin-right: auto;" src="https://sivia.id/bro.png" alt="" width="126" height="110" /></p>
                """,
            ),
          ),
        )
    );
  }
}
