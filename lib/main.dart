import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/di/injector.dart';
import 'data/db/database_helper.dart';
import 'features/home/ui/bloc/home_bloc.dart';
import 'features/home/ui/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseHelper().database;
  await init(); // initialize GetIt and register dependencies
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (context) => getIt<HomeBloc>(),
        ),
        // Add more BlocProviders here if needed
      ],
      child: MaterialApp(
        title: 'Bloc Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
