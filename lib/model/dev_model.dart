import 'package:catalog_apps/style/assetUI.dart';

class DeveloperModel {
  final int id_dev;
  final String img;
  final String name_dev;
  final String logoApp;
  final String nameApp;
  final String npm;

  DeveloperModel({
    this.id_dev,
    this.img,
    this.name_dev,
    this.logoApp,
    this.nameApp,
    this.npm,
  });
}

final devList = [
  DeveloperModel(
    id_dev: 1,
    img: AssetUI.alfin2,
    name_dev: "Alfin Sugestian",
    logoApp: AssetUI.logo_ongkir,
    nameApp: 'Ongkir Check!',
    npm: "13.2018.1.00697",
  ),
  DeveloperModel(
    id_dev: 2,
    img: AssetUI.wulan2,
    name_dev: "Novylia Dwi Wulanndari",
    logoApp: AssetUI.logo_suhu,
    nameApp: 'Konversi Suhu',
    npm: "13.2018.1.00746",
  ),
  DeveloperModel(
    id_dev: 3,
    img: AssetUI.fairuz2,
    name_dev: "Fairuz Abadi Muthahari",
    logoApp: AssetUI.logo_balok,
    nameApp: 'Volume Balok',
    npm: "13.2018.1.00713",
  ),
  DeveloperModel(
    id_dev: 4,
    img: AssetUI.jeje2,
    name_dev: "Jasinta Sulistyo Ermawati",
    logoApp: AssetUI.logo_jajar,
    nameApp: 'Luas Jajar Genjang',
    npm: "13.2018.1.00661",
  ),
  DeveloperModel(
    id_dev: 5,
    img: AssetUI.ajes2,
    name_dev: "Muhammad Abdul Azis",
    logoApp: AssetUI.logo_janjiJiwa,
    nameApp: 'Omset Janji Jiwa',
    npm: "13.2018.1.00735",
  ),
  DeveloperModel(
    id_dev: 6,
    img: AssetUI.kevin2,
    name_dev: "David Berwin Key",
    logoApp: AssetUI.logo_kedai,
    nameApp: 'Kasir Kedai Pisang',
    npm: "13.2018.1.90125",
  )
];
