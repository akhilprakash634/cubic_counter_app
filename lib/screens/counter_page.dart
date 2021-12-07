import 'dart:ui';
import 'package:counter_bloc/logics/_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class counterpage extends StatelessWidget {
  counterpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: const Text(
                'Counter Page',
                style: TextStyle(color: Colors.white),
              ),
              centerTitle: true,
              backgroundColor: Colors.lightBlueAccent,
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    state.CounterValue.toString(),
                    style: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            floatingActionButton: Column(
              mainAxisAlignment: MainAxisAlignment.end,


              children: [
                FloatingActionButton(
                  onPressed: () =>
                      context.read<CounterBloc>().add(IncrementEvent()),
                  child: const Icon(Icons.add),
                ),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () =>
                      context.read<CounterBloc>().add(ResetEvent()),
                  child: const Icon(Icons.loop),
                ),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () =>
                      context.read<CounterBloc>().add(DecrementEvent()),
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
