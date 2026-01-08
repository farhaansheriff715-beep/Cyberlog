package com.example.flutter_projects_internship

import android.os.Build
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {

    private val CHANNEL = "device_info_channel"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            CHANNEL
        ).setMethodCallHandler { call, result ->

            when (call.method) {

                "getDeviceInfo" -> {
                    val info = mapOf(
                        "model" to Build.MODEL,
                        "androidVersion" to Build.VERSION.RELEASE
                    )
                    result.success(info)
                }

                else -> result.notImplemented()
            }
        }
    }
}
