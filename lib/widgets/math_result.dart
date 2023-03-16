import 'package:calculadora/controllers/calculator_controller.dart';
import 'package:calculadora/widgets/sub_result.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

import 'line_separator.dart';
import 'main_result.dart';

class MathResult extends StatelessWidget {
  final calculatorCtrl = Get.find<CalculatorController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
      children: [
        SubResult(text: '${calculatorCtrl.firtsNumber}'),
        SubResult(text: '${calculatorCtrl.operation}'),
        SubResult(text: '${calculatorCtrl.secondNumber}'),
        LineSeparator(),
        MainResultText(text: '${calculatorCtrl.mathResult}'),
      ],
    ));
  }
}