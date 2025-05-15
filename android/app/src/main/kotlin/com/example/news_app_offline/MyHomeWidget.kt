package com.example.news_app_offline

import HomeWidgetGlanceWidgetReceiver

class MyHomeWidget : HomeWidgetGlanceWidgetReceiver<MyGlanceHomeWidget>() {
    override val glanceAppWidget = MyGlanceHomeWidget()
}