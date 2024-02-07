import 'package:bloc_app/bloc/slider/slider_bloc.dart';
import 'package:bloc_app/bloc/switch/switch_bloc.dart';
import 'package:bloc_app/counter/bloc/counter_bloc.dart';
import 'package:bloc_app/counter/ui/counter_screen.dart';
import 'package:bloc_app/equitabale/equitable_sceen.dart';
import 'package:bloc_app/ui/image_example_screen/image_example_screen.dart';
import 'package:bloc_app/ui/switch_example_screen.dart/switch_example_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterBloc(),
        ),
        BlocProvider(
          create: (context) => SwitchBloc(),
        ),
        BlocProvider(
          create: (context) => SliderBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Bloc',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const ImageExampleScreen(),
      ),
    );
  }
}
