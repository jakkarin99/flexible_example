import 'package:flutter/material.dart';

class IconAndNameColumn extends StatelessWidget {
  final IconData iconData;
  final String iconName;

  const IconAndNameColumn(
      {Key? key, required this.iconData, required this.iconName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.green[700],
                child: const SizedBox(
                  width: 120.0,
                  child: Icon(
                    Icons.web,
                    size: 80.0,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.green[200],
                child: Text(iconName),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Flexible(
              child: Container(
                color: Colors.green[700],
                child: const SizedBox(
                  width: 120.0,
                  child: Icon(
                    Icons.web,
                    size: 80.0,
                  ),
                ),
              ),
            ),
            Flexible(
              child: Container(
                color: Colors.green[200],
                child: Text(iconName),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
