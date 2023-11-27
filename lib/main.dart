import 'package:converter/common/theme/theme.dart';
import 'package:converter/common/utils/bloc_observer.dart';
import 'package:converter/common/utils/intl.dart';
import 'package:converter/core/services/hive_adapters.dart';
import 'package:converter/core/services/service_locator.dart';
import 'package:converter/feature/presentasion/ui/screens/currency_converter/currency_converter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  injectDependencies();
  Bloc.observer = AppBlocObserver.instance();

  await Hive.initFlutter();
  HiveAdapters.init();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: Intl.localizationsDelegates,
      supportedLocales: Intl.supportedLocales,
      theme: ThemeData.light().copyWith(extensions: <ThemeExtension<CustomTheme>>[AppTheme.light]),
      home: const CurrencyConverterPage(),
    );
  }
}
