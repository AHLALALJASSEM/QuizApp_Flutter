import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizapp_flutter/core/constants/assets.dart';
import 'package:quizapp_flutter/logic/internet_Cubit/cubit/internet_cubit.dart';
import 'package:quizapp_flutter/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path: AppAssets.translatios,
      fallbackLocale: Locale('en'),
      saveLocale: true,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InternetCubit(),
      child: MaterialApp(
        builder: (context, child) {
          return BlocListener<InternetCubit, InternetState>(
            listener: (context, state) {
                final messenger = ScaffoldMessenger.of(context);
              if(state is InternetDisConnect){
                  messenger.showSnackBar(SnackBar(content: Text('no_internet_connection'),backgroundColor: Colors.red,));
              }else{
                  messenger.clearSnackBars();
                  messenger.showSnackBar(SnackBar(content: Text('internet_connection'),backgroundColor: Colors.green,));
              }
            },
            child: child!,
          );
        },
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        title: 'QuizApp',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF673AB7)),
        ),
        routes: AppRoutes.routes,
        initialRoute: AppRoutes.splashScreen,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('title'.tr())));
  }
}
