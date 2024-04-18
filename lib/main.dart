import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/main_page/screen_main_page.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await configureInjucton();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        title: 'Netflix App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: backGroundColor,
            appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),

      textTheme: const TextTheme(
         bodyLarge: TextStyle(color: Colors.white),
         bodyMedium: TextStyle(color: Colors.white)
      ),

            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
                .copyWith(background: Colors.black)),
        home: ScreenMainPage(),
      );
    
  }
}
