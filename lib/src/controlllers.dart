// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controlllers extends GetxController {
  RxString monOnTime = "${TimeOfDay.now().hour}: ${DateTime.now().minute}".obs;
  RxString monOffTime = "${TimeOfDay.now().hour}: ${DateTime.now().minute}".obs;
  RxBool monClosed = false.obs;
  RxString tueOnTime = "${TimeOfDay.now().hour}: ${DateTime.now().minute}".obs;
  RxString tueOffTime = "${TimeOfDay.now().hour}: ${DateTime.now().minute}".obs;
  RxBool tueClosed = false.obs;
  RxString wedOnTime = "${TimeOfDay.now().hour}: ${DateTime.now().minute}".obs;
  RxString wedOffTime = "${TimeOfDay.now().hour}: ${DateTime.now().minute}".obs;
  RxBool wedClosed = false.obs;
  RxString thuOnTime = "${TimeOfDay.now().hour}: ${DateTime.now().minute}".obs;
  RxString thuOffTime = "${TimeOfDay.now().hour}: ${DateTime.now().minute}".obs;
  RxBool thuClosed = false.obs;
  RxString friOnTime = "${TimeOfDay.now().hour}: ${DateTime.now().minute}".obs;
  RxString friOffTime = "${TimeOfDay.now().hour}: ${DateTime.now().minute}".obs;
  RxBool friClosed = false.obs;
  RxString satOnTime = "${TimeOfDay.now().hour}: ${DateTime.now().minute}".obs;
  RxString satOffTime = "${TimeOfDay.now().hour}: ${DateTime.now().minute}".obs;
  RxBool satClosed = false.obs;
  RxString sunOnTime = "${TimeOfDay.now().hour}: ${DateTime.now().minute}".obs;
  RxString sunOffTime = "${TimeOfDay.now().hour}: ${DateTime.now().minute}".obs;
  RxBool sunClosed = false.obs;

  // functions to open and choose Time

  void changeMonOn(BuildContext context) async {
    final selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (selectedTime != null) {
      monOnTime.value = "${selectedTime.hour}: ${selectedTime.minute}";
    }
  }

  Future<void> changeMonOff(BuildContext context) async {
    final selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (selectedTime != null) {
      monOffTime.value = "${selectedTime.hour}: ${selectedTime.minute}";
    }
  }

  Future<void> changeTueOn(BuildContext context) async {
    final selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (selectedTime != null) {
      tueOnTime.value = "${selectedTime.hour}: ${selectedTime.minute}";
    }
  }

  Future<void> changeTueOff(BuildContext context) async {
    final selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (selectedTime != null) {
      tueOffTime.value = "${selectedTime.hour}: ${selectedTime.minute}";
    }
  }

  Future<void> changeWedOn(BuildContext context) async {
    final selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (selectedTime != null) {
      wedOnTime.value = "${selectedTime.hour}: ${selectedTime.minute}";
    }
  }

  Future<void> changeWedOff(BuildContext context) async {
    final selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (selectedTime != null) {
      wedOffTime.value = "${selectedTime.hour}: ${selectedTime.minute}";
    }
  }

  Future<void> changeThuOn(BuildContext context) async {
    final selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (selectedTime != null) {
      thuOnTime.value = "${selectedTime.hour}: ${selectedTime.minute}";
    }
  }

  Future<void> changeThuOff(BuildContext context) async {
    final selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (selectedTime != null) {
      thuOffTime.value = "${selectedTime.hour}: ${selectedTime.minute}";
    }
  }

  Future<void> changeFriOn(BuildContext context) async {
    final selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (selectedTime != null) {
      friOnTime.value = "${selectedTime.hour}: ${selectedTime.minute}";
    }
  }

  Future<void> changeFriOff(BuildContext context) async {
    final selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (selectedTime != null) {
      friOffTime.value = "${selectedTime.hour}: ${selectedTime.minute}";
    }
  }

  Future<void> changeSatOn(BuildContext context) async {
    final selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (selectedTime != null) {
      satOnTime.value = "${selectedTime.hour}: ${selectedTime.minute}";
    }
  }

  Future<void> changeSatOff(BuildContext context) async {
    final selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (selectedTime != null) {
      satOffTime.value = "${selectedTime.hour}: ${selectedTime.minute}";
    }
  }

  Future<void> changeSunOn(BuildContext context) async {
    final selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (selectedTime != null) {
      sunOnTime.value = "${selectedTime.hour}: ${selectedTime.minute}";
    }
  }

  Future<void> changeSunOff(BuildContext context) async {
    final selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (selectedTime != null) {
      sunOffTime.value = "${selectedTime.hour}: ${selectedTime.minute}";
    }
  }

  void changeOnOff(int i) {
    switch (i) {
      case 0:
        monClosed.value = !monClosed.value;
        break;
      case 1:
        tueClosed.value = !tueClosed.value;
        break;
      case 2:
        wedClosed.value = !wedClosed.value;
        break;
      case 3:
        thuClosed.value = !thuClosed.value;
        break;
      case 4:
        friClosed.value = !friClosed.value;
        break;
      case 5:
        satClosed.value = !satClosed.value;
        break;
      default:
        sunClosed.value = !sunClosed.value;
    }
    update();
  }

  List generateOutput() {
    return [
      {
        'day': "Monday",
        'onTime': monOnTime.value,
        'offTime': monOffTime.value,
        'closed': monClosed.value,
      },
      {
        'day': "Tuesday",
        'onTime': tueOnTime.value,
        'offTime': tueOffTime.value,
        'closed': tueClosed.value,
      },
      {
        'day': "Wednesday",
        'onTime': wedOnTime.value,
        'offTime': wedOffTime.value,
        'closed': wedClosed.value,
      },
      {
        'day': "Thursday",
        'onTime': thuOnTime.value,
        'offTime': thuOffTime.value,
        'closed': thuClosed.value,
      },
      {
        'day': "Friday",
        'onTime': friOnTime.value,
        'offTime': friOffTime.value,
        'closed': friClosed.value,
      },
      {
        'day': "Saturday",
        'onTime': satOnTime.value,
        'offTime': satOffTime.value,
        'closed': satClosed.value,
      },
      {
        'day': "Sunday",
        'onTime': sunOnTime.value,
        'offTime': sunOffTime.value,
        'closed': sunClosed.value,
      },
    ];
  }
}
