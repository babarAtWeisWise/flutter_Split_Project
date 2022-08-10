import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_split_project/Extensions/CustomTextStyle.dart';

import '../Hepler/colors.dart';

class CustomDropDown extends StatefulWidget {
  final List? itemList;
  final Function(String)? onSelectedValue;
  final double height;

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();

  CustomDropDown({
    this.itemList,
    this.onSelectedValue,
    this.height = 40
  });
}

class _CustomDropDownState extends State<CustomDropDown> {
  var selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        elevation: 3.0,
        borderRadius: BorderRadius.circular(8.0),
        shadowColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: widget.height.h,
            color: Colors.transparent,
            child: Center(
              child: DropdownButton<String>(

                // iconEnabledColor: Colors.blue,
                isExpanded: true,
                underline: Container(
                  height: 1.0,
                  decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.transparent, width: 0.0))),
                ),
                elevation: 4,
                value: selected ?? widget.itemList![0],
                items: widget.itemList!.map((value) {
                  return new DropdownMenuItem<String>(
                    value: value,
                    child: Container(
                      child: Text(
                        value,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.medium.copyWith(fontSize: 14.sp, color: kPrimaryColor),
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (newVal) {
                  setState(() {
                    selected = newVal;
                    widget.onSelectedValue!(newVal!);
                  });
                },
              )),
            ),
          ),
        ),

    );

  }
}
