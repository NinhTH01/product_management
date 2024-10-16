package com.example.native_dialog

import android.content.Context
import android.graphics.Color
import android.view.Gravity
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.ImageView
import android.widget.LinearLayout
import android.widget.TextView
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.platform.PlatformView

class CustomNativeView(context: Context, id: Int, creationParams: Map<String?, Any?>?, private val methodChannel: MethodChannel) : PlatformView {
    private val layout: LinearLayout = LinearLayout(context)
    private val descriptionView: TextView = TextView(context)
    private val button: Button = Button(context)

    override fun getView(): View {
        return layout
    }

    override fun dispose() {}

    init {
        layout.orientation = LinearLayout.VERTICAL
        layout.gravity = Gravity.CENTER

        val name = creationParams?.get("name") as String? ?: "0.0"
        descriptionView.text = "Sản phẩm ${name} được thêm thành công!"
        descriptionView.textSize = 16f
        descriptionView.gravity = Gravity.CENTER
        descriptionView.setPadding(descriptionView.paddingLeft, 20, descriptionView.paddingRight, descriptionView.paddingBottom)
        layout.addView(descriptionView)

        button.text = "Close"
        button.background = context.getDrawable(R.drawable.outlined_button)
        button.setTextColor(Color.BLUE)
        button.setOnClickListener {
            methodChannel.invokeMethod("buttonTapped", null)
        }
        layout.addView(button)
    }
}