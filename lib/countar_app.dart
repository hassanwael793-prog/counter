



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter/counter_cubit.dart';
import 'counter/counter_screen.dart';

class CountarApp extends StatelessWidget{
  const CountarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
          create: (context) => CounterCubit(),
      child: const CounterScreen()) ,
    );
  }

}