import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class CustomeTextField extends StatelessWidget {
  const CustomeTextField({
    Key? key,
    this.title,
    required this.hint,
    this.controller,
    this.widget,
    this.backgroudColor,
  }) : super(key: key);
  final String? title;
  final String hint;
  final Color? backgroudColor;
  final TextEditingController? controller;
  final Widget? widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null && title != "") ...[
            Text(
              title!,
              style: const TextStyle(
                color: Color.fromARGB(255, 115, 11, 67),
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
          ],
          SizedBox(
            height: 52,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: backgroudColor ?? Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.grey[400]!, width: 1),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          // spreadRadius: 2,
                          // blurRadius: 5,
                          offset: const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                    child: TextFormField(
                      autofocus: false,
                      cursorColor: Get.isDarkMode ? Colors.grey[100] : Colors.grey[700],
                      controller: controller,
                      decoration: InputDecoration(
                        hintText: hint,
                        hintStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                        contentPadding: const EdgeInsets.only(
                          bottom: 0,
                          left: 10,
                          right: 0,
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                if (widget != null) widget!,
              ],
            ),
          )
        ],
      ),
    );
  }
}
