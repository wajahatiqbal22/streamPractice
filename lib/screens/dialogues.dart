import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showLoadingDailogue() {
  Get.dialog(
    const Center(
      child: CircularProgressIndicator(),
    ),
    barrierDismissible: false,
  );
}
