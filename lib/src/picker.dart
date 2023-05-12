import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rashail_store_schedular/src/controlllers.dart';

class StoreScheduler extends StatefulWidget {
  const StoreScheduler({
    super.key,
    this.dayStyle = const TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    this.buttonTextStyle = const TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    this.pickerColor = Colors.white,
    this.borderColor = Colors.black,
    this.buttonColor = Colors.black,
    this.buttonHeight = 45,
    this.submitButtonText = "Save",
    this.borderRadius = 8.0,
    this.borderWidth = 2.0,
    this.fontFamily = "Arial",
    this.fontColor = Colors.black,
    this.pickerFontSize = 16.0,
    this.pickerFontWeight = FontWeight.normal,
    this.showBorder = true,
    required this.onChangeValue,
  });
  final String fontFamily;
  final Color pickerColor, borderColor, fontColor, buttonColor;
  final double borderRadius, borderWidth, pickerFontSize, buttonHeight;
  final FontWeight pickerFontWeight;
  final TextStyle dayStyle, buttonTextStyle;
  final ValueChanged<List> onChangeValue;
  final String submitButtonText;
  final bool showBorder;

  @override
  State<StoreScheduler> createState() => _StoreSchedulerState();
}

class _StoreSchedulerState extends State<StoreScheduler> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => Controlllers());
    final Controlllers controlllers = Get.find<Controlllers>();
    return SingleChildScrollView(
      child: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            RowBuilder(
              title: "Monday",
              onController: controlllers.monOnTime.value,
              offController: controlllers.monOffTime.value,
              borderColor: widget.borderColor,
              borderRadius: widget.borderRadius,
              borderWidth: widget.borderWidth,
              dayStyle: widget.dayStyle,
              fontColor: widget.fontColor,
              fontFamily: widget.fontFamily,
              fontSize: widget.pickerFontSize,
              fontWeight: widget.pickerFontWeight,
              showBorder: widget.showBorder,
              tileColor: widget.pickerColor,
              onTimeFunction: () {
                controlllers.changeMonOn(context);
              },
              offTimeFunction: () => controlllers.changeMonOff(context),
              isClosed: controlllers.monClosed.value,
              onCloseChanged: (value) {
                controlllers.changeOnOff(0);
              },
            ),
            RowBuilder(
              title: "Tuesday",
              onController: controlllers.tueOnTime.value,
              offController: controlllers.tueOffTime.value,
              borderColor: widget.borderColor,
              borderRadius: widget.borderRadius,
              borderWidth: widget.borderWidth,
              dayStyle: widget.dayStyle,
              fontColor: widget.fontColor,
              fontFamily: widget.fontFamily,
              fontSize: widget.pickerFontSize,
              fontWeight: widget.pickerFontWeight,
              showBorder: widget.showBorder,
              tileColor: widget.pickerColor,
              onTimeFunction: () => controlllers.changeTueOn(context),
              offTimeFunction: () => controlllers.changeTueOff(context),
              isClosed: controlllers.tueClosed.value,
              onCloseChanged: (value) {
                controlllers.changeOnOff(1);
              },
            ),
            RowBuilder(
              title: "Wednesday",
              onController: controlllers.wedOnTime.value,
              offController: controlllers.wedOffTime.value,
              borderColor: widget.borderColor,
              borderRadius: widget.borderRadius,
              borderWidth: widget.borderWidth,
              dayStyle: widget.dayStyle,
              fontColor: widget.fontColor,
              fontFamily: widget.fontFamily,
              fontSize: widget.pickerFontSize,
              fontWeight: widget.pickerFontWeight,
              showBorder: widget.showBorder,
              tileColor: widget.pickerColor,
              onTimeFunction: () => controlllers.changeWedOn(context),
              offTimeFunction: () => controlllers.changeWedOff(context),
              isClosed: controlllers.wedClosed.value,
              onCloseChanged: (value) {
                controlllers.changeOnOff(2);
              },
            ),
            RowBuilder(
              title: "Thursday",
              onController: controlllers.thuOnTime.value,
              offController: controlllers.thuOffTime.value,
              borderColor: widget.borderColor,
              borderRadius: widget.borderRadius,
              borderWidth: widget.borderWidth,
              dayStyle: widget.dayStyle,
              fontColor: widget.fontColor,
              fontFamily: widget.fontFamily,
              fontSize: widget.pickerFontSize,
              fontWeight: widget.pickerFontWeight,
              showBorder: widget.showBorder,
              tileColor: widget.pickerColor,
              onTimeFunction: () => controlllers.changeThuOn(context),
              offTimeFunction: () => controlllers.changeThuOff(context),
              isClosed: controlllers.thuClosed.value,
              onCloseChanged: (value) {
                controlllers.changeOnOff(3);
              },
            ),
            RowBuilder(
              title: "Friday",
              onController: controlllers.friOnTime.value,
              offController: controlllers.friOffTime.value,
              borderColor: widget.borderColor,
              borderRadius: widget.borderRadius,
              borderWidth: widget.borderWidth,
              dayStyle: widget.dayStyle,
              fontColor: widget.fontColor,
              fontFamily: widget.fontFamily,
              fontSize: widget.pickerFontSize,
              fontWeight: widget.pickerFontWeight,
              showBorder: widget.showBorder,
              tileColor: widget.pickerColor,
              onTimeFunction: () => controlllers.changeFriOn(context),
              offTimeFunction: () => controlllers.changeFriOff(context),
              isClosed: controlllers.friClosed.value,
              onCloseChanged: (value) {
                controlllers.changeOnOff(4);
              },
            ),
            RowBuilder(
              title: "Saturday",
              onController: controlllers.satOnTime.value,
              offController: controlllers.satOffTime.value,
              borderColor: widget.borderColor,
              borderRadius: widget.borderRadius,
              borderWidth: widget.borderWidth,
              dayStyle: widget.dayStyle,
              fontColor: widget.fontColor,
              fontFamily: widget.fontFamily,
              fontSize: widget.pickerFontSize,
              fontWeight: widget.pickerFontWeight,
              showBorder: widget.showBorder,
              tileColor: widget.pickerColor,
              onTimeFunction: () => controlllers.changeSatOn(context),
              offTimeFunction: () => controlllers.changeSatOff(context),
              isClosed: controlllers.satClosed.value,
              onCloseChanged: (value) {
                controlllers.changeOnOff(5);
              },
            ),
            RowBuilder(
              title: "Sunday",
              onController: controlllers.sunOnTime.value,
              offController: controlllers.sunOffTime.value,
              borderColor: widget.borderColor,
              borderRadius: widget.borderRadius,
              borderWidth: widget.borderWidth,
              dayStyle: widget.dayStyle,
              fontColor: widget.fontColor,
              fontFamily: widget.fontFamily,
              fontSize: widget.pickerFontSize,
              fontWeight: widget.pickerFontWeight,
              showBorder: widget.showBorder,
              tileColor: widget.pickerColor,
              onTimeFunction: () => controlllers.changeSunOn(context),
              offTimeFunction: () => controlllers.changeSunOff(context),
              isClosed: controlllers.sunClosed.value,
              onCloseChanged: (value) {
                controlllers.changeOnOff(6);
              },
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              height: widget.buttonHeight,
              color: widget.buttonColor,
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              onPressed: () =>
                  widget.onChangeValue(controlllers.generateOutput()),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  widget.borderRadius,
                ),
              ),
              child: Text(
                widget.submitButtonText,
                style: widget.buttonTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RowBuilder extends StatelessWidget {
  const RowBuilder({
    super.key,
    required this.title,
    required this.onController,
    required this.offController,
    required this.dayStyle,
    required this.tileColor,
    required this.borderColor,
    required this.borderRadius,
    required this.borderWidth,
    required this.fontFamily,
    required this.fontColor,
    required this.fontSize,
    required this.fontWeight,
    required this.onTimeFunction,
    required this.offTimeFunction,
    required this.isClosed,
    required this.onCloseChanged,
    required this.showBorder,
  });
  final String title, onController, offController, fontFamily;
  final Color tileColor, borderColor, fontColor;
  final double borderRadius, borderWidth, fontSize;
  final FontWeight fontWeight;
  final TextStyle dayStyle;
  final VoidCallback onTimeFunction, offTimeFunction;
  final bool isClosed, showBorder;
  final ValueChanged onCloseChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 15,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 0,
            child: SizedBox(
              width: 85,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$title : ",
                    style: dayStyle,
                    maxLines: 1,
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.end,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isClosed,
                        fillColor: MaterialStatePropertyAll(borderColor),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            3,
                          ),
                          side: BorderSide(
                            color: borderColor,
                            width: 0.5,
                          ),
                        ),
                        onChanged: (value) {
                          onCloseChanged(value);
                        },
                      ),
                      Text(
                        "Closed",
                        style: dayStyle.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.clip,
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: ListTile(
              onTap: isClosed ? null : onTimeFunction,
              tileColor: tileColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                side: showBorder
                    ? BorderSide(
                        color: isClosed ? Colors.grey : borderColor,
                        width: borderWidth,
                      )
                    : BorderSide.none,
              ),
              title: Text(
                onController,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                  color: isClosed ? Colors.grey : fontColor,
                  fontFamily: fontFamily,
                ),
                maxLines: 1,
                softWrap: true,
                overflow: TextOverflow.clip,
              ),
              trailing: Icon(
                Icons.access_time_rounded,
                color: isClosed ? Colors.grey : borderColor,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: ListTile(
              onTap: isClosed ? null : offTimeFunction,
              tileColor: tileColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                side: showBorder
                    ? BorderSide(
                        color: isClosed ? Colors.grey : borderColor,
                        width: borderWidth,
                      )
                    : BorderSide.none,
              ),
              title: Text(
                offController,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                  color: isClosed ? Colors.grey : fontColor,
                  fontFamily: fontFamily,
                ),
                maxLines: 1,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Icon(
                Icons.access_time_rounded,
                color: isClosed ? Colors.grey : borderColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
