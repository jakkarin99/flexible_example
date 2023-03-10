import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'icon_and_name_column.dart';

void main() {
  runApp(const FlexibleExample());
}

class FlexibleExample extends StatelessWidget {
  const FlexibleExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DevicePreview(
      tools: const [
        DeviceSection(),
      ],
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        builder: DevicePreview.appBuilder,
        locale: DevicePreview.locale(context),
        title: 'Responsive and adaptive UI in Flutter',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text('Flexible'),
          ),
          body: const SafeArea(
            child: IconAndNameColumn(iconData: Icons.web, iconName: 'web'),
          ),
        ),
      ),
    );
  }
}
