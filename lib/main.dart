import 'package:app_wallet/HomePage/home_page.dart';
//import 'package:app_wallet/HomePage/login_page.dart';
//import 'package:app_wallet/HomePage/register_page.dart';
import 'package:app_wallet/HomePage/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  final runnableApp = _buildRunnableApp(
    isWeb: true,
    webAppWidth: 380.0,
    app: const _MyApp(),
  );

  runApp(runnableApp);
}

Widget _buildRunnableApp({
  required bool isWeb,
  required double webAppWidth,
  required Widget app,
}) {

  if (!isWeb) {
    return app;
  }
  
  return Center(
    child: ClipRect(
      child: SizedBox(
        width: webAppWidth,
        child: app,
      ),
    ),
  );
}

class _MyApp extends StatelessWidget {
  const _MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 44, 62, 80),
        fontFamily: GoogleFonts.lato().fontFamily,
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Color.fromARGB(255, 255, 255, 255),
            statusBarBrightness: Brightness.dark, // For iOS: (dark icons)
            statusBarIconBrightness:
                Brightness.dark, // For Android(M and greater): (dark icons)
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        //'/login': (context) => const LoginPage(),
        //'/register': (context) => const RegisterPage(),
        // '/HomePage': (context) => HomePage(
        //       userData: ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>,
        //     ),
      },
    );
  }
}