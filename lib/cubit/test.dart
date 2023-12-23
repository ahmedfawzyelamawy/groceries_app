import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workshop/cubit/math_cubit.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('cubit test')),
      ),
      body: BlocProvider(
        create: (context) => MathCubit(),
        child: BlocConsumer<MathCubit, MathState>(
          builder: (context, state) {
            var cubit = BlocProvider.of<MathCubit>(context);
            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: cubit.number1controllar,
                  ),
                  TextFormField(
                    controller: cubit.number2controllar,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        cubit.sum(
                            number1: cubit.number1controllar,
                            number2: cubit.number2controllar);
                      },
                      child: Text("sum")),
                  Text('Result: ${cubit.total}')
                ],
              ),
            );
          },
          listener: (context, state) {
            if (state is SumSuccessState) {
              print('Sum Successfully');
            }
          },
        ),
      ),
    );
  }
}
