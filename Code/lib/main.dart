<<<<<<< HEAD
import 'package:chineasy/presentation/Flashcards/Notifires/Notify.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
=======
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
import 'core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Future.wait([
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]),
    PrefUtils().init()
  ]).then((value) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
<<<<<<< HEAD
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
                    initialRoute: AppRoutes.initialRoute,
                    routes: AppRoutes.routes,
                  );
                },
              ),
            ));
=======
        return BlocProvider(
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
                initialRoute: AppRoutes.initialRoute,
                routes: AppRoutes.routes,
              );
            },
          ),
        );
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
      },
    );
  }
}
