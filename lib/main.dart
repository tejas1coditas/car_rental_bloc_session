import 'package:car_rental_app/features/home/home_bloc/home_bloc.dart';
import 'package:car_rental_app/features/home/home_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => HomeBloc()..add(FetchDataEvent()),
        child: HomeScreen(),
      ),
    );
  }
}
