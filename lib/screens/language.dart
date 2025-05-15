import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fuel_app/screens/languageprovider.dart';
import 'package:provider/provider.dart';

class LanguageScreen extends StatelessWidget {
  final List<Map<String, String>> languages = [
    {'name': 'मराठी', 'code': 'mr'},
    {'name': 'বাংলা', 'code': 'bn'},
    {'name': 'English', 'code': 'en'},
    {'name': 'हिन्दी', 'code': 'hi'},
    {'name': 'தமிழ்', 'code': 'ta'},
    {'name': 'ગુજરાતી', 'code': 'gu'},
    {'name': 'తెలుగు', 'code': 'te'},
    {'name': 'ಕನ್ನಡ', 'code': 'kn'},
    {'name': 'മലയാളം', 'code': 'ml'},
    {'name': 'অসমীয়া', 'code': 'as'},
  ];

  @override
  Widget build(BuildContext context) {
    
    var languageProvider = Provider.of<LanguageProvider>(context); 
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2B00D4),
        toolbarHeight: 100.h,
        title: Text(
          "My Language",
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            color: Color(0xffffffff),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 27.w),
            child: Image.asset(
              "assets/help.png",
              height: 24.h,
              width: 24.w,
            ),
          )
        ],
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: languages.length,
              itemBuilder: (context, index) {
                String langName = languages[index]['name']!;
                String langCode = languages[index]['code']!;
                bool isSelected = languageProvider.locale.languageCode == langCode;

                return ListTile(
                  title: Text(
                    langName,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                      color: isSelected ? Colors.blue.shade800 : Colors.black,
                    ),
                  ),
                  trailing: isSelected ? Icon(Icons.check_circle, color: Colors.green) : null,
                  onTap: () {
                    languageProvider.setLocale(Locale(langCode));
                    languageProvider.updateLanguageOnServer(langCode);
                  },
                );
              },
              separatorBuilder: (context, index) => SizedBox(height: 10.h),
            ),
          ),
          GestureDetector(
            onTap: () {
              print("Continue button pressed with language: ${languageProvider.locale.languageCode}");
              // Navigate to the next screen if needed
            },
            child: Container(
              height: 50.h,
              width: double.infinity,
              color: Color(0xff2B00D4),
              child: Center(
                child: Text(
                  "Continue",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
