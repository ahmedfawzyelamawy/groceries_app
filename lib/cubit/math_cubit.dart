import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'math_state.dart';

class MathCubit extends Cubit<MathState> {
  MathCubit() : super(MathInitial());
  var number1controllar = TextEditingController();
  var number2controllar = TextEditingController();
  num total = 0;

  void sum(
      {required TextEditingController number2,
      required TextEditingController number1}) {
    total =
        num.parse(number1controllar.text) + num.parse(number2controllar.text);
    emit(SumSuccessState());
  }
}
