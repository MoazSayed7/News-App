package com.example.news_app_offline

import HomeWidgetGlanceWidgetReceiver

class myHomeWidget : HomeWidgetGlanceWidgetReceiver<MyGlanceHomeWidget>() {
    override val glanceAppWidget = MyGlanceHomeWidget()
}
