import 'package:hive_flutter/hive_flutter.dart';

import '../../features/home/data/models/banner_response_model.dart';
import '../../features/home/data/models/categories_response_model.dart';
import '../../features/home/data/models/news_response_model.dart';

class HiveService {
  static final HiveService _instance = HiveService._internal();

  static const String bannersBoxName = 'banner_box';
  static const String newsBoxName = 'news_box';
  static const String categoriesBoxName = 'categories_box';

  factory HiveService() {
    return _instance;
  }

  HiveService._internal();

  // Close all boxes
  Future<void> closeBoxes() async {
    await Hive.close();
  }

  // Initialize Hive
  Future<void> init() async {
    await Hive.initFlutter();

    // Register adapters
    Hive.registerAdapter(NewsArticleAdapter());
    Hive.registerAdapter(NewsResponseModelAdapter());

    // Register previous adapters
    Hive.registerAdapter(CategoriesResponseModelAdapter());
    Hive.registerAdapter(CategoryAdapter());

    // Register new adapters
    Hive.registerAdapter(BannerResponseModelAdapter());
    Hive.registerAdapter(DataItemAdapter());

    // Open boxes
    await Hive.openBox<BannerResponseModel>(bannersBoxName);
    await Hive.openBox<NewsResponseModel>(newsBoxName);
    await Hive.openBox<CategoriesResponseModel>(categoriesBoxName);
  }

  static Future<void> clearCategories() async {
    final box = Hive.box<CategoriesResponseModel>(categoriesBoxName);
    await box.clear();
  }

  static BannerResponseModel? getBanners() {
    final box = Hive.box<BannerResponseModel>(bannersBoxName);
    return box.get('banners_data');
  }

  static CategoriesResponseModel? getCategories() {
    final box = Hive.box<CategoriesResponseModel>(categoriesBoxName);
    return box.get('categories_data');
  }

  static NewsResponseModel? getNews() {
    final box = Hive.box<NewsResponseModel>(newsBoxName);
    return box.get('news_data');
  }

  // Banner methods
  static Future<void> saveBanners(BannerResponseModel banners) async {
    final box = Hive.box<BannerResponseModel>(bannersBoxName);
    await box.put('banners_data', banners);
  }

  // Categories methods
  static Future<void> saveCategories(CategoriesResponseModel categories) async {
    final box = Hive.box<CategoriesResponseModel>(categoriesBoxName);
    await box.put('categories_data', categories);
  }

  // News methods
  static Future<void> saveNews(NewsResponseModel news) async {
    final box = Hive.box<NewsResponseModel>(newsBoxName);
    await box.put('news_data', news);
  }
}
