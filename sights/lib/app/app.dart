import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:keyboard_visibility/keyboard_visibility.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:sights/app/presentation/screens/splash/bloc/splash_bloc.dart';
import 'package:sights/app/presentation/screens/splash/splash_screen.dart';
import 'package:sights/core/ui/widgets/base_body.dart';
import 'package:sights/data/gateways/local/preferences_local_gateway.dart';
import 'package:sights/di/injection.dart';
import 'package:sights/localization/app_localizations.dart';

import 'resources/app_themes.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  PreferencesLocalGateway preferencesLocalGateway = injection();

  late KeyboardVisibilityNotification _keyboardListener;

  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

  late FirebaseMessaging messaging;


  @override
  void initState() {
    super.initState();
    _keyboardListener = KeyboardVisibilityNotification();
    _keyboardListener.addNewListener(onChange: (bool visible) {
      if (!visible) {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      }
    });
    // _setupNotifications();
  }

  void _setupNotifications() async {
    messaging = FirebaseMessaging.instance;
    await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
    messaging.onTokenRefresh.listen((String firebaseToken) async {
      String? token = await preferencesLocalGateway.getToken();
      bool rememberMe = await preferencesLocalGateway.getRememberMeStatus();

      if (token != null && rememberMe) {
        // var newTokenResponse = await authorizationRemoteGateway.sendDeviceToken(
        //   token: token,
        //   body: DeviceTokenBody(
        //     deviceToken: firebaseToken ?? '',
        //   ),
        // );
      }
    });
    messaging.getToken().then((value) async {
      String? token = await preferencesLocalGateway.getToken();
      bool rememberMe = await preferencesLocalGateway.getRememberMeStatus();

      // if (token != null && rememberMe) {
      //   var newTokenResponse = await authorizationRemoteGateway.sendDeviceToken(
      //     token: token,
      //     body: DeviceTokenBody(
      //       deviceToken: value ?? '',
      //     ),
      //   );
      // }
    });
    FirebaseMessaging.onMessage.listen((RemoteMessage event) {
      print("message recieved");
      // if (event.notification != null && event.data.isNotEmpty) {
      //   showOverlayNotification(
      //         (context) {
      //       return SafeArea(
      //           child: Material(
      //               color: Colors.transparent,
      //               child: NotificationToast(
      //                 title: event.notification!.title!,
      //                 message: event.notification!.body!,
      //                 type: event.,
      //               )));
      //     },
      //     duration: Duration(seconds: 2),
      //   );
        // FlutterRingtonePlayer.playNotification();
      // }
    });
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      print('Message clicked!');
    });
  }

  @override
  void dispose() {
    super.dispose();
    _keyboardListener.dispose();
  }

  @override
  Widget build(BuildContext context) => CloseKeyboardByTap(
    OverlaySupport.global(
          child: MaterialApp(
            navigatorKey: navigatorKey,
            theme: AppThemes.appTheme,
            locale: Locale('ru'),
            debugShowCheckedModeBanner: false,
            localizationsDelegates: <LocalizationsDelegate<dynamic>>[
              AppLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: [Locale('ru'), Locale('en'), Locale('de')],
            home: BlocProvider(
              create: (BuildContext context) => SplashBloc(
                preferencesLocalGateway: injection())
                  ..add(SplashEvent.checkAuthorizationStatus()),
              child: SplashScreen(navigatorKey: navigatorKey),
            ),
            //home: Container()),
          ),
        ),
      );
}