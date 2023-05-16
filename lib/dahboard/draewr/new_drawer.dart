import 'package:flutter/material.dart';

class MyDropdown extends StatefulWidget {
  @override
  _MyDropdownState createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {
   String? _selectedOption;

  List<String> _options = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:Column(
        children: [
          DropdownButtonFormField<String>(
            value: _selectedOption,
            onChanged: (value) {
              setState(() {
                _selectedOption = value!;
              });
            },
            decoration: InputDecoration(
              labelText: 'Select an option',
              border: OutlineInputBorder(),
            ),
            items: _options.map((option) {
              return DropdownMenuItem(
                value: option,
                child: Text(option),
              );
            }).toList(),


          ),
          DropdownButtonFormField<String>(
            value: _selectedOption,
            onChanged: (value) {
              setState(() {
                _selectedOption = value!;
              });
            },
            decoration: InputDecoration(

              labelText: 'Select an option',
              border: OutlineInputBorder(),
            ),
            items: _options.map((option) {
              return DropdownMenuItem(

                value: option,
                child: Text(option),
              );
            }).toList(),


          ) ,
        ],
      ) ,

    );



  }
}
