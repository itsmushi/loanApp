import 'package:flutter/material.dart';
import 'package:loanapp/core/constants.dart';

class CustomDropDown extends StatefulWidget {
  CustomDropDown(this.items, this.selectItemHandler, {Key? key})
      : super(key: key);
  List<String>? items;
  String? dropdownvalue;

  Function(String context) selectItemHandler;
  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  @override
  Widget build(BuildContext context) {
    // widget.dropdownvalue = widget.items?.first;
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        border: Border.all(
          color: Constants.textColor,
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: ButtonTheme(
          alignedDropdown: true,
          child: DropdownButton(
            icon: Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                color: Constants.defaultColor,
              ),
              child: const Icon(
                Icons.arrow_drop_down_outlined,
                color: Colors.white,
                size: 42,
              ),
            ),
            elevation: 4,
            value: widget.dropdownvalue,
            items: widget.items?.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                widget.selectItemHandler(newValue!);
                widget.dropdownvalue = newValue;
              });
            },
            style: Constants.customStyle,
          ),
        ),
      ),
    );
  }
}
