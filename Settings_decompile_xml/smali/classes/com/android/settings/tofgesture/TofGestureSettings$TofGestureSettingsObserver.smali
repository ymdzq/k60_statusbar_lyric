.class Lcom/android/settings/tofgesture/TofGestureSettings$TofGestureSettingsObserver;
.super Landroid/database/ContentObserver;
.source "TofGestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/tofgesture/TofGestureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TofGestureSettingsObserver"
.end annotation


# instance fields
.field private final TOF_GESTURE_ENABLE_SETTINGS_URI:Landroid/net/Uri;

.field private final TOF_GESTURE_SOUND_SETTINGS_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/tofgesture/TofGestureSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/tofgesture/TofGestureSettings;Landroid/os/Handler;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/android/settings/tofgesture/TofGestureSettings$TofGestureSettingsObserver;->this$0:Lcom/android/settings/tofgesture/TofGestureSettings;

    .line 238
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "miui_tof_gesture"

    .line 233
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/tofgesture/TofGestureSettings$TofGestureSettingsObserver;->TOF_GESTURE_ENABLE_SETTINGS_URI:Landroid/net/Uri;

    const-string/jumbo p1, "miui_tof_gesture_cue_tone"

    .line 235
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/tofgesture/TofGestureSettings$TofGestureSettingsObserver;->TOF_GESTURE_SOUND_SETTINGS_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 243
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/tofgesture/TofGestureSettings$TofGestureSettingsObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 248
    iget-object p1, p0, Lcom/android/settings/tofgesture/TofGestureSettings$TofGestureSettingsObserver;->TOF_GESTURE_ENABLE_SETTINGS_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 249
    iget-object p0, p0, Lcom/android/settings/tofgesture/TofGestureSettings$TofGestureSettingsObserver;->this$0:Lcom/android/settings/tofgesture/TofGestureSettings;

    invoke-static {p0}, Lcom/android/settings/tofgesture/TofGestureSettings;->-$$Nest$misTofGestureEnabled(Lcom/android/settings/tofgesture/TofGestureSettings;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/tofgesture/TofGestureSettings;->-$$Nest$mhandleTofGestureStateChanged(Lcom/android/settings/tofgesture/TofGestureSettings;Z)V

    goto :goto_0

    .line 250
    :cond_0
    iget-object p1, p0, Lcom/android/settings/tofgesture/TofGestureSettings$TofGestureSettingsObserver;->TOF_GESTURE_SOUND_SETTINGS_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 251
    iget-object p1, p0, Lcom/android/settings/tofgesture/TofGestureSettings$TofGestureSettingsObserver;->this$0:Lcom/android/settings/tofgesture/TofGestureSettings;

    invoke-static {p1}, Lcom/android/settings/tofgesture/TofGestureSettings;->-$$Nest$fgetmTofGestureCueToneEnabled(Lcom/android/settings/tofgesture/TofGestureSettings;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/tofgesture/TofGestureSettings$TofGestureSettingsObserver;->this$0:Lcom/android/settings/tofgesture/TofGestureSettings;

    invoke-static {p0}, Lcom/android/settings/tofgesture/TofGestureSettings;->-$$Nest$misTofGestureCueToneEnabled(Lcom/android/settings/tofgesture/TofGestureSettings;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startObserving()V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/android/settings/tofgesture/TofGestureSettings$TofGestureSettingsObserver;->this$0:Lcom/android/settings/tofgesture/TofGestureSettings;

    invoke-static {v0}, Lcom/android/settings/tofgesture/TofGestureSettings;->-$$Nest$fgetmContext(Lcom/android/settings/tofgesture/TofGestureSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lcom/android/settings/tofgesture/TofGestureSettings$TofGestureSettingsObserver;->TOF_GESTURE_ENABLE_SETTINGS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 258
    iget-object v1, p0, Lcom/android/settings/tofgesture/TofGestureSettings$TofGestureSettingsObserver;->TOF_GESTURE_SOUND_SETTINGS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public stopObserving()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/android/settings/tofgesture/TofGestureSettings$TofGestureSettingsObserver;->this$0:Lcom/android/settings/tofgesture/TofGestureSettings;

    invoke-static {v0}, Lcom/android/settings/tofgesture/TofGestureSettings;->-$$Nest$fgetmContext(Lcom/android/settings/tofgesture/TofGestureSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 263
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
