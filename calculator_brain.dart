import 'dart:math';
import 'package:flutter/material.dart';

class Calculate {
  Calculate({required this.height, required this.weight});
  final int height;
  final int weight;
  double _bmi = 0;
  Color _textColor = Color(0xFF24D876);
  String result() {
    _bmi = (weight / pow(height / 100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String getText() {
    if (_bmi >= 25) {
      return 'THỪA CÂN';
    } else if (_bmi > 18.5) {
      return 'BÌNH THƯỜNG';
    } else {
      return 'THIẾU CÂN';
    }
  }

  String getAdvise() {
    if (_bmi >= 25) {
      return 'Bạn có trọng lượng cơ thể cao hơn bình thường.\n Hãy cố gắng tập thể dục nhiều hơn';
    } else if (_bmi > 18.5) {
      return 'Bạn có trọng lượng cơ thể bình thường.\nLàm tốt lắm!';
    } else {
      return 'Bạn có trọng lượng cơ thể thấp hơn bình thường.\n Hãy cố gắng ăn nhiều hơn';
    }
  }

  Color getTextColor() {
    if (_bmi >= 25 || _bmi <= 18.5) {
      return Colors.deepOrangeAccent;
    } else {
      return Color(0xFF24D876);
    }
  }
}