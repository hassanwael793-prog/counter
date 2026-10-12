import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_cubit.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterCubit, CounterState>(
            builder: (context, state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      context.read<CounterCubit>().increment();
                    },
                    icon: const Icon(Icons.add, size: 40),
                  ),
                  SizedBox(width: 20),
                  Text(
                    context.read<CounterCubit>().counter.toString(),
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 20),
                  IconButton(
                    onPressed: () {
                      context.read<CounterCubit>().decrement();
                    },
                    icon: const Icon(Icons.remove, size: 40),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
