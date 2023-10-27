import 'package:flutter/material.dart';

class DropDownMenu extends StatefulWidget {
  final List<String> items;
  final String? selectedValue;

  const DropDownMenu({
    Key? key,
    required this.items,
    required this.selectedValue,
  }) : super(key: key);

  @override
  _DropDownMenuState createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  late String? selectedValue = widget.selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedValue,
      icon: const Icon(Icons.keyboard_arrow_down_outlined),
      borderRadius: BorderRadius.circular(10.0),
      onChanged: (String? newValue) {
        setState(() {
          selectedValue = newValue; // Actualiza el valor seleccionado
        });
      },
      items: widget.items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
