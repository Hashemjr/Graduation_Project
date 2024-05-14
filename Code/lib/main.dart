import 'dart:async';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:chineasy/presentation/Flashcards/Notifires/Notify.dart';
import 'package:chineasy/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:chineasy/presentation/app_navigation_screen/bloc/app_navigation_bloc.dart';
import 'package:chineasy/presentation/app_navigation_screen/models/app_navigation_model.dart';
//import 'package:chineasy/presentation/choose_accountone_screen/choose_accountone_screen.dart';
//import 'package:chineasy/presentation/welcome_page_four_screen/welcome_page_four_screen.dart';
//import 'package:chineasy/presentation/welcome_page_one_screen/welcome_page_one_screen.dart';
//import 'package:chineasy/presentation/welcome_page_three_screen/welcome_page_three_screen.dart';
//import 'package:chineasy/presentation/welcome_page_two_screen/welcome_page_two_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'core/app_export.dart';
import 'package:firebase_core/firebase_core.dart';
var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Future.wait([
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]),
    PrefUtils().init()
  ]).then((value) {
    runApp(MyApp());
  });
}

// Splash Screen
class SplashScreen extends  StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
                          begin: Alignment(0.5, 0),
                          end: Alignment(0.5, 1),
                          colors: [appTheme.black900, appTheme.gray90001]), // Choose your desired background color // Use a circle shape for the background
      ),
      child: Lottie.asset(
        'assets/images/splash screen.json',
        repeat: false,
      ),
    ),
      nextScreen: BlocProvider(
                      create: (context) => AppNavigationBloc(
                        AppNavigationState(
                          appNavigationModelObj: AppNavigationModel(),
                        ),
                      ),
                      child: AppNavigationScreen(title:''),
                    ),splashIconSize: 1500,
      duration: 3500,splashTransition: SplashTransition.slideTransition,
      pageTransitionType: PageTransitionType.fade);
  }
  //@override
  //_SplashScreenState createState() => _SplashScreenState();
}

/*class _SplashScreenState extends State<SplashScreen> {
  int _currentIndex = 0;
  late Timer _timer;
  List<Widget> _splashWidgets = [
    WelcomePageOneScreen(),
    WelcomePageTwoScreen(),
    WelcomePageThreeScreen(),
    WelcomePageFourScreen(),
    AppNavigationScreen(),
  ];

  @override
  void initState() {
    super.initState();
    // Start timer to switch between widgets
    _timer = Timer.periodic(Duration(seconds: 2), (timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % _splashWidgets.length;
        if (_currentIndex == 4) _timer.cancel();
      });
    });
  }

  @override
  void dispose() {
    // Cancel the timer when the widget is disposed
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 500),
      child: _splashWidgets[_currentIndex],
    );
  }
}*/

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (_) => FlashCardsNotifier()),
            ],
            child: BlocProvider(
              create: (context) => ThemeBloc(
                ThemeState(
                  themeType: PrefUtils().getThemeData(),
                ),
              ),
              child: BlocBuilder<ThemeBloc, ThemeState>(
                builder: (context, state) {
                  return MaterialApp(
                    theme: theme,
                    title: 'chineasy',
                    navigatorKey: NavigatorService.navigatorKey,
                    debugShowCheckedModeBanner: false,
                    localizationsDelegates: [
                      AppLocalizationDelegate(),
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate,
                    ],
                    supportedLocales: [
                      Locale(
                        'en',
                        '',
                      ),
                    ],
                    home:
                    BlocProvider(
                      create: (context) => AppNavigationBloc(
                        AppNavigationState(
                          appNavigationModelObj: AppNavigationModel(),
                        ),
                      ),
                      child: SplashScreen(),
                    ),
                    routes: AppRoutes.routes,
                  );
                },
              ),
            ));
      },
    );
  }
}
