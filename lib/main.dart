import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:fuel_app/screens/login.dart';
import 'package:fuel_app/screens/languageprovider.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart'; // Generated localization import

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => LanguageProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final languageProvider = Provider.of<LanguageProvider>(context);

    return ScreenUtilInit(
      designSize: const Size(490, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          locale: languageProvider.locale, // ✅ Apply selected locale
          supportedLocales: const [
            Locale('en'), Locale('hi'), Locale('mr'), Locale('bn'),
            Locale('ta'), Locale('gu'), Locale('te'), Locale('kn'),
            Locale('ml'), Locale('as'),
          ],
          // localizationsDelegates: const [
          //   AppLocalizations.delegate, // ✅ Your generated delegate
          //   GlobalMaterialLocalizations.delegate,
          //   GlobalWidgetsLocalizations.delegate,
          //   GlobalCupertinoLocalizations.delegate,
          // ],
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child: const LoginPage(), // ✅ Will respond to locale changes
    );
  }
}
