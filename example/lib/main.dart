import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo for country picker package',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      supportedLocales: [
        const Locale('ar'),
        const Locale('en'),
        const Locale('es'),
        const Locale('de'),
        const Locale('fr'),
        const Locale('el'),
        const Locale('et'),
        const Locale('nb'),
        const Locale('nn'),
        const Locale('pl'),
        const Locale('pt'),
        const Locale('ru'),
        const Locale('hi'),
        const Locale('ne'),
        const Locale('uk'),
        const Locale('hr'),
        const Locale('tr'),
        const Locale('lv'),
        const Locale('lt'),
        const Locale('ku'),
        const Locale('nl'),
        const Locale('it'),
        const Locale('ko'),
        const Locale('ja'),
        const Locale('id'),
        const Locale('cs'),
        const Locale.fromSubtags(
            languageCode: 'zh',
            scriptCode: 'Hans'), // Generic Simplified Chinese 'zh_Hans'
        const Locale.fromSubtags(
            languageCode: 'zh',
            scriptCode: 'Hant'), // Generic traditional Chinese 'zh_Hant'
      ],
      locale: Locale('ar'),
      localizationsDelegates: [
        CountryLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CountryLocalizations? countryLocalizations =
        CountryLocalizations.of(context);

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: Text('Demo for country picker')),
        body: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 21.3, vertical: 20),
            height: 58.6,
            child: ElevatedButton(
              onPressed: () {
                showCountryPicker(
                  showPhoneCode: true,
                  showWorldWide: false,
                  context: context,
                  onSelect: (Country country) {},
                  countryListTheme: CountryListThemeData(
                    searchTextFaildPadding: EdgeInsets.only(
                      top: 25,
                      bottom: 38,
                      right: 30.5,
                      left: 30.5,
                    ),
                    textStylenum: TextStyle(
                      fontFamily: 'Ithra',
                      fontWeight: FontWeight.bold,
                      fontSize: 21.3,
                      color: Color.fromRGBO(147, 147, 147, 1.0),
                    ),
                    dividerWidget: Padding(
                      padding: EdgeInsets.symmetric(vertical: 26.5),
                      child: Container(
                        width: 513,
                        height: 1.0,
                        color: Colors.grey,
                      ),
                    ),
                    bottomSheetTopWidget: Padding(
                      padding: EdgeInsets.only(top: 16, bottom: 10.6),
                      child: Container(
                        width: 48,
                        height: 6.6,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(3.3),
                        ),
                      ),
                    ),
                    bottomSheetHeight: MediaQuery.sizeOf(context).height * .75,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32),
                    ),
                    inputDecoration: InputDecoration(
                      fillColor: Colors.grey,
                      filled: true,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 5, vertical: 16),
                      // prefixIcon: IconButton(
                      //   onPressed: () {},
                      //   icon: SvgPicture.asset(
                      //     AssetsManager.searchIconPath,
                      //     width: (kIsWeb || size.width >= AppConstants.kIsWebValue)
                      //         ? AppSize.w30.w
                      //         : AppSize.w26_6.w,
                      //     height: (kIsWeb || size.width >= AppConstants.kIsWebValue)
                      //         ? AppSize.h30.h
                      //         : AppSize.h26_6.h,
                      //   ),
                      // ),
                      border: InputBorder.none,
                      hintText: "chooseCountry",
                      hintStyle: TextStyle(
                        fontFamily: "NotoKufiArabic-Regular",
                        fontSize: 18.6,
                        color: Colors.red,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    textStyle: TextStyle(
                      fontFamily: "NotoKufiArabic-SemiBold",
                      color: Colors.black,
                      fontSize: 21.3,
                      fontWeight: FontWeight.w600,
                    ),
                    // Optional. Styles the text in the search field
                    searchTextStyle: TextStyle(
                      fontFamily: "NotoKufiArabic-Regular",
                      color: Colors.red,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                );
              },
              child: const Text('Show country picker'),
            ),
          ),
        ),
      ),
    );
  }
}
