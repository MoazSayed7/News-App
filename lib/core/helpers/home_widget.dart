import 'dart:io';

import 'package:home_widget/home_widget.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  static Future<void> saveImagesForWidget(List<String> imageUrls) async {
    final appGroupDir = await getApplicationDocumentsDirectory();
    final List<String> savedPaths = [];

    for (int i = 0; i < imageUrls.length; i++) {
      final imageUrl = imageUrls[i];
      final filePath = '${appGroupDir.path}/shared_image_$i.jpg';

      final response = await http.get(Uri.parse(imageUrl));
      if (response.statusCode == 200) {
        final file = File(filePath);
        await file.writeAsBytes(response.bodyBytes);
        savedPaths.add(filePath);
      } else {
        throw Exception('Failed to download image at index $i');
      }
    }

    final userDefaults = await SharedPreferences.getInstance();
    await userDefaults.setStringList(dataKey, savedPaths);
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
