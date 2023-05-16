import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:shikkha/authentication/login/log_in.dart';
import 'package:shikkha/authentication/otp/otp.dart';
import 'package:shikkha/authentication/signin/sign_in.dart';
import 'package:shikkha/dahboard/dashboard.dart';
import 'package:shikkha/dahboard/draewr/new_drawer.dart';
import 'package:shikkha/exaampol/doctor.dart';
import 'package:shikkha/exaampol/exampol.dart';
import 'package:shikkha/numbar_of_student_teacher/numbar_of_student_teacher.dart';
import 'package:shikkha/onboarding/onboadring.dart';
import 'package:shikkha/price/price.dart';
import 'package:shikkha/user_select/user_select.dart';
import 'package:shikkha/welcome_page/welcome_page.dart';

import '../barchat/barchart.dart';
import '../dahboard/creat_class/class.dart';
import '../splash/splash_screen.dart';

const String splash = '/splash-screen';
const String onboarding = '/Onbordings';
const String userselect = '/User-Select';
const String login = '/Log-In';
const String signin = '/Sign-In';
const String otp = '/Otp';
const String welcomepage = '/Welcome-Page';
const String studentteacher = '/Student-Teacher';
const String price = '/Price';
const String homescreen = '/HomeScreen';
const String dashboard = '/Dash-Board';

const String barchartsample7= '/BarChartSample7';
const String mydropdown= '/MyDropdown';
const String creatclass= '/Creat-Class';
const String scheduletab= '/ScheduleTab';





List<GetPage> getPages = [
GetPage(
name: splash,
page: () => SplashScreen(),
),
  GetPage(
    name: onboarding,
    page: () => Onbordings(),
  ),
  GetPage(
    name: userselect,
    page: () => UserSelect(),
  ),
  GetPage(
    name: login,
    page: () => LogIn(),
  ),
  GetPage(
    name: signin,
    page: () => SignIn(),
  ),
  GetPage(
    name: otp,
    page: () => Otp(),
  ),
  GetPage(name: welcomepage, page: () => WelcomePage(),),
  GetPage(name: studentteacher, page: () => StudentTeacher(),),
  GetPage(name: price, page: () => Price(),),
  GetPage(name: homescreen, page: () => HomeScreen(),),
  GetPage(name: dashboard, page: () => DashBoard(),),
  //GetPage(name: barchartsample7, page: () => BarChartSample7(),),
  GetPage(name: mydropdown, page: () => MyDropdown(),),
  GetPage(name: creatclass, page: () => CreatClass(),),
  GetPage(name: scheduletab, page: () => ScheduleTab(),),


];
