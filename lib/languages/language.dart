

import 'package:get/get_navigation/src/root/internacionalization.dart';

import 'ban.dart';
import 'eng.dart';



class Languages extends Translations{

  Map<String, Map<String, String>> get keys =>{
    'en_US' : eng,
    'bn_BD':ban,

  };

}