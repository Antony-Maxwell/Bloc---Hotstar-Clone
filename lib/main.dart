import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_project/application/home/home_bloc.dart';
import 'package:mini_project/application/hot_and_new/hot_and_new_bloc.dart';
import 'package:mini_project/application/search/search_bloc.dart';
import 'package:mini_project/application/trending/trending_bloc.dart';
import 'package:mini_project/core/colors/colors.dart';
import 'package:mini_project/domain/core/di/injectable.dart';
import 'package:mini_project/presentation/main_page/screen_main.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => getIt<TrendingBloc>()),
        BlocProvider(create: (ctx) => getIt<SearchBloc>()),
        BlocProvider(create: (ctx) => getIt<HotAndNewBloc>()),
        BlocProvider(create: (ctx) => getIt<HomeBloc>()),
      ],
      child: MaterialApp(
          theme: ThemeData(
            textTheme: const TextTheme(
                bodyMedium: TextStyle(color: Colors.white),
                bodySmall: TextStyle(color: Colors.white),
                bodyLarge: TextStyle(color: Colors.white)),
            colorScheme: colorScheme,
          ),
          debugShowCheckedModeBanner: false,
          home: ScreenMainPage()),
    );
  }
}
