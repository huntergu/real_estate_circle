import 'package:real_estate_circle/main.dart';
import 'package:real_estate_circle/pages/agents.dart';
import 'package:real_estate_circle/pages/companies.dart';
import 'package:real_estate_circle/pages/house_recomm.dart';
import 'package:real_estate_circle/pages/new_condo_recomm.dart';
import 'package:real_estate_circle/pages/new_house_recomm.dart';
import 'package:real_estate_circle/pages/real_estate_news.dart';
import 'package:real_estate_circle/pages/rec_feature.dart';
import 'package:real_estate_circle/pages/teams.dart';

class PageFactory {
  static Map factories = <String, Object Function()>{
    'RealEstateCircleApp' : () => new RealEstateCircleApp(),
    'RealEstateNews' : () => RealEstateNews(),
    'HouseRecomm' : () => HouseRecomm(),
    'NewCondoRecomm' : () => NewCondoRecomm(),
    'NewHouseRecomm' : () => NewHouseRecomm(),
    'Companies' : () => Companies(),
    'Teams' : () => Teams(),
    'Agents' : () => Agents(),
    'RecFeatures' : () => RecFeatures(),
    'Settings' : () => Settings(),
    'Helps' : () => Helps()
  };

}