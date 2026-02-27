## Flutter specific ProGuard rules

# Keep Flutter engine classes
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.** { *; }
-keep class io.flutter.util.** { *; }
-keep class io.flutter.view.** { *; }
-keep class io.flutter.** { *; }
-keep class io.flutter.plugins.** { *; }

# Keep Google Fonts (network font loading)
-keep class com.google.android.gms.** { *; }

# audioplayers
-keep class xyz.luan.audioplayers.** { *; }

# SharedPreferences
-keep class androidx.datastore.** { *; }

# General Android
-keepattributes *Annotation*
-keepattributes SourceFile,LineNumberTable
-keep public class * extends java.lang.Exception

# Prevent R8 from removing classes referenced via reflection
-dontwarn io.flutter.embedding.**
