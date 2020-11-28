import 'package:catalog_apps/routing_apps/kasir_kedai_pisang/main.dart';
import 'package:catalog_apps/routing_apps/konversi_suhu/homepage.dart';
import 'package:catalog_apps/routing_apps/luas_jajar_genjang/main.dart';
import 'package:catalog_apps/routing_apps/omset_janji_jiwa/main.dart';
import 'package:catalog_apps/routing_apps/ongkir_check/view/formpage.dart';
import 'package:catalog_apps/routing_apps/volume_balok/main.dart';
import 'package:catalog_apps/style/assetUI.dart';
import 'package:flutter/cupertino.dart';

class AppsModel {
  final int id_apps;
  final String bannerApp;
  final String logoApp;
  final String nameApp;
  final String descApp;
  final String img_dev;
  final String name_dev;
  final String npm_dev;
  final String notelp;
  final double rate;
  final Widget classApps;
  final String url_wa;

  AppsModel(
      {this.id_apps,
      this.bannerApp,
      this.logoApp,
      this.nameApp,
      this.descApp,
      this.img_dev,
      this.name_dev,
      this.npm_dev,
      this.notelp,
      this.rate,
      this.classApps,
      this.url_wa});
}

final appGrid = [
  AppsModel(
      id_apps: 11,
      bannerApp: AssetUI.banner1,
      logoApp: AssetUI.logo_ongkir,
      nameApp: 'Ongkir Check!',
      descApp:
          'Aplikasi Ongkir Check adalah aplikasi untuk menghitung ongkos pengiriman luar kota maupun dalam kota.  Dan juga ada beberapa pilihan jasa pengiriman yang terbaik di Indonesia.',
      img_dev: AssetUI.alfin,
      name_dev: 'Alfin Sugestian',
      npm_dev: '13.2018.1.00697',
      notelp: '628974879215',
      rate: 8.9,
      classApps: FormPage(),
      url_wa: 'https://api.whatsapp.com/send?phone=628974879215'),
  AppsModel(
      id_apps: 12,
      bannerApp: AssetUI.banner4,
      logoApp: AssetUI.logo_suhu,
      nameApp: 'Konversi Suhu',
      descApp:
          'Aplikasi ini merupakan sebuah aplikasi perhitungan suhu atau konversi suhu dari satuan Celcius ke fahenheit, reamur dan kelvin. Aplikasi ini berfungsi untuk menghitung berapa suhu jika dikonversi',
      img_dev: AssetUI.wulan,
      name_dev: 'Novylia Dwi Wulanndari',
      npm_dev: '13.2018.1.00746',
      notelp: '6285706640188',
      rate: 9.0,
      classApps: KonversiPage(),
      url_wa: 'https://api.whatsapp.com/send?phone=6285706640188'),
  AppsModel(
      id_apps: 13,
      bannerApp: AssetUI.banner3,
      logoApp: AssetUI.logo_balok,
      nameApp: 'Volume Balok',
      descApp:
          'Aplikasi ini merupakan aplikasi Penghitung Volume  Balok, memudahkan anda dalam menghitung Volume Balok, Tanpa Ribet',
      img_dev: AssetUI.fairuz,
      name_dev: 'Fairuz Abadi Muthahari',
      npm_dev: "13.2018.1.00713",
      notelp: '6281234535939',
      rate: 9.0,
      classApps: home(),
      url_wa: 'https://api.whatsapp.com/send?phone=6281234535939'),
  AppsModel(
      id_apps: 14,
      bannerApp: AssetUI.banner5,
      logoApp: AssetUI.logo_janjiJiwa,
      nameApp: 'Omset Janji Jiwa',
      descApp:
          'Aplikasi bernama janji jawa ini adalah aplikasi untuk menghitung omzet harian yang nantinya akan menjadi laporan harian bagi si pemilik atau owner.',
      img_dev: AssetUI.ajes,
      name_dev: 'Muhammad Abdul Azis',
      npm_dev: "13.2018.1.00735",
      notelp: '6285785945722',
      rate: 9.0,
      classApps: Omset(),
      url_wa: 'https://api.whatsapp.com/send?phone=6285785945722'),
  AppsModel(
      id_apps: 15,
      bannerApp: AssetUI.banner6,
      logoApp: AssetUI.logo_jajar,
      nameApp: 'Luas Jajar Genjang',
      descApp:
          'Aplikasi ini menampilkan hasil perhitungan dari luas bangun datar jajar genjang, yang terdiri dari alas (cm) dan tinggi (cm).',
      img_dev: AssetUI.jeje,
      name_dev: 'Jasinta Sulistyo Ermawati',
      npm_dev: "13.2018.1.00661",
      notelp: '6287855878500',
      rate: 9.0,
      classApps: Awal(),
      url_wa: 'https://api.whatsapp.com/send?phone=6287855878500'),
  AppsModel(
      id_apps: 16,
      bannerApp: AssetUI.banner2,
      logoApp: AssetUI.logo_kedai,
      nameApp: 'Kasir Kedai Pisang',
      descApp:
          'Aplikasi ini adalah aplikasi kasir yang ada pada Kedai Pisang B&V, aplikasi ini berfungsi untuk mencatat pesanan yang telah diterima, total pendapatan, dan total penjualan',
      img_dev: AssetUI.kevin,
      name_dev: 'David Berwin Key',
      npm_dev: "13.2018.1.90125",
      notelp: '6288217900346',
      rate: 9.0,
      classApps: Home(),
      url_wa: 'https://api.whatsapp.com/send?phone=6288217900346'),
];
