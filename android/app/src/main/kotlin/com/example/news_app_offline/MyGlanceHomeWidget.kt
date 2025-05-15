package com.example.news_app_offline

import HomeWidgetGlanceState
import HomeWidgetGlanceStateDefinition
import android.content.Context
import android.graphics.BitmapFactory
import android.os.Handler
import android.os.Looper
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color
import androidx.glance.GlanceId
import androidx.glance.GlanceModifier
import androidx.glance.Image
import androidx.glance.ImageProvider
import androidx.glance.appwidget.GlanceAppWidget
import androidx.glance.appwidget.provideContent
import androidx.glance.background
import androidx.glance.currentState
import androidx.glance.layout.Box
import androidx.glance.layout.ContentScale
import androidx.glance.layout.fillMaxSize
import androidx.glance.state.GlanceStateDefinition
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch

class MyGlanceHomeWidget : GlanceAppWidget() {
    private var currentImageIndex = 0
    private val handler = Handler(Looper.getMainLooper())
    private val updateIntervalMs = 5000L // 5 seconds
    private val coroutineScope = CoroutineScope(Dispatchers.Main)

    override val stateDefinition: GlanceStateDefinition<*>?
        get() = HomeWidgetGlanceStateDefinition()

    override suspend fun provideGlance(context: Context, id: GlanceId) {
        startImageRotation(context, id)
        provideContent {
            GlanceContent(context, currentState())
        }
    }

    private fun startImageRotation(context: Context, glanceId: GlanceId) {
        handler.postDelayed(object : Runnable {
            override fun run() {
                updateWidget(context, glanceId)
                handler.postDelayed(this, updateIntervalMs)
            }
        }, updateIntervalMs)
    }

    private fun updateWidget(context: Context, glanceId: GlanceId) {
        coroutineScope.launch {
            update(context, glanceId)
        }
    }

    @Composable
    private fun GlanceContent(context: Context, currentState: HomeWidgetGlanceState) {
        val prefs = currentState.preferences
        val newsData = prefs.getString("newsData", "") ?: ""
        val imagesPaths = newsData.split("||").filter { it.isNotBlank() }
        if (imagesPaths.isNotEmpty()) {
            currentImageIndex = (currentImageIndex + 1) % imagesPaths.size
            val currentImagePath = imagesPaths[currentImageIndex]

            Box(modifier = GlanceModifier.fillMaxSize().background(Color.Transparent)) {
                currentImagePath.let {
                    val bitmap = BitmapFactory.decodeFile(it)
                    Image(
                        ImageProvider(bitmap),
                        contentDescription = "image",
                        modifier = GlanceModifier.fillMaxSize(),
                        contentScale = ContentScale.Crop
                    )
                }
            }
        }
    }
}
