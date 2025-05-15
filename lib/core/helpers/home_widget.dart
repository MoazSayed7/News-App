import 'dart:io';

import 'package:home_widget/home_widget.dart';

class HomeWidgetHelper {
  static const String appGroupID = 'group.NewsApp';
  static const String widgetName = 'myHomeWidget';
  static const String dataKey = 'newsData';
  static Future<void> init() async {
    try {
      if (Platform.isIOS) {
        await HomeWidget.setAppGroupId(appGroupID);
      }
    } catch (e) {
      print('Error initializing HomeWidget: $e');
    }
  }
  
  // Save the data to the widget
  static Future saveToHomeWidget(List<String> imagesPaths) async {
    try {
      final String joinedStringImagesPaths = imagesPaths.join(
        '||',
      ); // Use a delimiter
      if (Platform.isIOS) {
        await HomeWidget.saveWidgetData(dataKey, imagesPaths);
      } else {
        await HomeWidget.saveWidgetData(dataKey, joinedStringImagesPaths);
      }
      await HomeWidget.updateWidget(
        iOSName: widgetName,
        androidName: widgetName,
      );
    } catch (e) {
      print('Error saving to home widget: $e');
    }
  }
}
