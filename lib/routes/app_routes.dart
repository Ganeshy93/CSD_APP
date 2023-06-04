import 'package:flutter/material.dart';
import 'package:csd_flutter_application/presentation/login_screen_three_screen/login_screen_three_screen.dart';
import 'package:csd_flutter_application/presentation/splash_screen/splash_screen.dart';
import 'package:csd_flutter_application/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:csd_flutter_application/presentation/csd_profile_screen/csd_profile_screen.dart';
import 'package:csd_flutter_application/presentation/srkr_profile_screen/srkr_profile_screen.dart';
import 'package:csd_flutter_application/presentation/group_chart_screen/group_chart_screen.dart';
import 'package:csd_flutter_application/presentation/home_screen/home_screen.dart';
import 'package:csd_flutter_application/presentation/events_screen/events_screen.dart';
import 'package:csd_flutter_application/presentation/portals_screen/portals_screen.dart';
import 'package:csd_flutter_application/presentation/under_progress_screen/under_progress_screen.dart';
import 'package:csd_flutter_application/presentation/student_profile_screen/student_profile_screen.dart';
import 'package:csd_flutter_application/presentation/frame_3607_screen/frame_3607_screen.dart';
import 'package:csd_flutter_application/presentation/under_progres_two_screen/under_progres_two_screen.dart';
import 'package:csd_flutter_application/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loginScreenThreeScreen = '/login_screen_three_screen';

  static const String splashScreen = '/splash_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String csdProfileScreen = '/csd_profile_screen';

  static const String srkrProfileScreen = '/srkr_profile_screen';

  static const String groupChartScreen = '/group_chart_screen';

  static const String homeScreen = '/home_screen';

  static const String eventsScreen = '/events_screen';

  static const String portalsScreen = '/portals_screen';

  static const String underProgressScreen = '/under_progress_screen';

  static const String studentProfileScreen = '/student_profile_screen';

  static const String frame3607Screen = '/frame_3607_screen';

  static const String underProgresTwoScreen = '/under_progres_two_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        loginScreenThreeScreen: LoginScreenThreeScreen.builder,
        splashScreen: SplashScreen.builder,
        signUpScreen: SignUpScreen.builder,
        csdProfileScreen: CsdProfileScreen.builder,
        srkrProfileScreen: SrkrProfileScreen.builder,
        groupChartScreen: GroupChartScreen.builder,
        homeScreen: HomeScreen.builder,
        eventsScreen: EventsScreen.builder,
        portalsScreen: PortalsScreen.builder,
        underProgressScreen: UnderProgressScreen.builder,
        studentProfileScreen: StudentProfileScreen.builder,
        frame3607Screen: Frame3607Screen.builder,
        underProgresTwoScreen: UnderProgresTwoScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
