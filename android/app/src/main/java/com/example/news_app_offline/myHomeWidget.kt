package com.example.news_app_offline

import android.appwidget.AppWidgetManager
import android.appwidget.AppWidgetProvider
import android.content.Context
import android.graphics.BitmapFactory
import android.widget.RemoteViews
import es.antonborri.home_widget.HomeWidgetPlugin
import java.util.Timer
import kotlin.concurrent.schedule
import android.content.Intent

class myHomeWidget : AppWidgetProvider() {
    companion object {
        private const val ACTION_UPDATE_IMAGE = "com.example.news_app_offline.ACTION_UPDATE_IMAGE"
        private const val EXTRA_WIDGET_ID = "extra_widget_id"
        private const val EXTRA_IMAGE_INDEX = "extra_image_index"
        private var timer: Timer? = null
    }

    override fun onUpdate(
        context: Context,
        appWidgetManager: AppWidgetManager,
        appWidgetIds: IntArray
    ) {
        // Stop any existing timer
        timer?.cancel()
        timer = Timer()

        for (appWidgetId in appWidgetIds) {
            // Start with the first image
            updateWidgetImage(context, appWidgetManager, appWidgetId, 0)

            // Schedule image updates every 5 seconds
            timer?.schedule(5000, 5000) {
                val intent = Intent(context, myHomeWidget::class.java).apply {
                    action = ACTION_UPDATE_IMAGE
                    putExtra(EXTRA_WIDGET_ID, appWidgetId)
                    putExtra(EXTRA_IMAGE_INDEX, getNextImageIndex(context, appWidgetId))
                }
                context.sendBroadcast(intent)
            }
        }
    }

    override fun onReceive(context: Context, intent: Intent) {
        super.onReceive(context, intent)
        if (intent.action == ACTION_UPDATE_IMAGE) {
            val appWidgetId = intent.getIntExtra(EXTRA_WIDGET_ID, -1)
            val imageIndex = intent.getIntExtra(EXTRA_IMAGE_INDEX, 0)
            if (appWidgetId != -1) {
                val appWidgetManager = AppWidgetManager.getInstance(context)
                updateWidgetImage(context, appWidgetManager, appWidgetId, imageIndex)
            }
        }
    }

    private fun updateWidgetImage(
        context: Context,
        appWidgetManager: AppWidgetManager,
        appWidgetId: Int,
        imageIndex: Int
    ) {
        val widgetData = HomeWidgetPlugin.getData(context)
        val views = RemoteViews(context.packageName, R.layout.my_home_widget)
        val imagesPaths = widgetData.getString("newsData", null) ?: ""
        val stringList = if (imagesPaths.isNotEmpty()) imagesPaths.split("||") else listOf()

        if (stringList.isNotEmpty()) {
            val currentIndex = imageIndex % stringList.size // Cycle through images
            val file = java.io.File(stringList[currentIndex])
            android.util.Log.d("myHomeWidget", "File exists: ${file.exists()} for index: $currentIndex")
            if (file.exists()) {
                try {
                    val bitmap = BitmapFactory.decodeFile(stringList[currentIndex])
                    if (bitmap != null) {
                        views.setImageViewBitmap(R.id.widget_image, bitmap)
                    }
                } catch (e: Exception) {
                    android.util.Log.e("myHomeWidget", "Error loading image: ${e.message}")
                }
            }
            // Store the current index for the next update
            widgetData.edit().putInt("image_index_$appWidgetId", currentIndex).apply()
        }

        // Update widget
        appWidgetManager.updateAppWidget(appWidgetId, views)
    }

    private fun getNextImageIndex(context: Context, appWidgetId: Int): Int {
        val widgetData = HomeWidgetPlugin.getData(context)
        val currentIndex = widgetData.getInt("image_index_$appWidgetId", 0)
        val imagesPaths = widgetData.getString("newsData", null) ?: ""
        val stringList = if (imagesPaths.isNotEmpty()) imagesPaths.split("||") else listOf()
        return if (stringList.isNotEmpty()) (currentIndex + 1) % stringList.size else 0
    }

    override fun onEnabled(context: Context) {
        // Handle when the first widget is created
    }

    override fun onDisabled(context: Context) {
        // Stop the timer when the last widget is disabled
        timer?.cancel()
        timer = null
    }
}

internal fun updateAppWidget(
    context: Context,
    appWidgetManager: AppWidgetManager,
    appWidgetId: Int
) {
    val widgetText = context.getString(R.string.appwidget_text)
    val views = RemoteViews(context.packageName, R.layout.my_home_widget)
    appWidgetManager.updateAppWidget(appWidgetId, views)
}