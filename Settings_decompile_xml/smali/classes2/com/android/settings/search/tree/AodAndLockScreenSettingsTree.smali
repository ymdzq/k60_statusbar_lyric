.class public Lcom/android/settings/search/tree/AodAndLockScreenSettingsTree;
.super Lcom/android/settingslib/search/SettingsTree;
.source "AodAndLockScreenSettingsTree.java"


# static fields
.field private static final AOD_AND_LOCK_SCREEN_SETTINGS_TITLE:Ljava/lang/String; = "aod_and_lock_screen_settings_title"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/search/SettingsTree;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 2

    const-string/jumbo v0, "resource"

    .line 105
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lockscreen_magazine"

    .line 106
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/AodAndLockScreenSettings;->getWallpaperIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, "ambient_display_screen_title"

    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "aod_style_title"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "aod_notification_style"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 119
    :cond_1
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 109
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 111
    invoke-static {}, Lcom/android/settings/utils/AodUtils;->isFoldDevice()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_3

    .line 113
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/AodAndLockScreenSettings;->getAodIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    move-object v0, p0

    :cond_3
    const/high16 p0, 0x10000000

    .line 115
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_4
    return-object v0
.end method

.method protected getStatus()I
    .locals 5

    const-string/jumbo v0, "resource"

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ambient_display_screen_title"

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "aod_style_title"

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const-string v1, "aod_show_mode_title"

    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const-string v1, "eye_gaze_title"

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 40
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/AodAndLockScreenSettings;->isAdaptiveSleepSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    return v2

    :cond_3
    const-string v1, "gaze_lock_screen_title"

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 44
    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isAonAvailable()Z

    move-result v0

    if-nez v0, :cond_11

    return v2

    :cond_4
    const-string/jumbo v1, "pick_up_gesture_wakeup_title"

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 48
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/AodAndLockScreenSettings;->isSupportPickupWakeup(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    return v2

    :cond_5
    const-string/jumbo v1, "wakeup_for_keyguard_notification_title"

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 52
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isSupportAodAnimateDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    return v2

    :cond_6
    const-string v1, "aod_notification_style"

    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    const-string v1, "lockscreen_magazine"

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 58
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/AodAndLockScreenSettings;->isLockScreenMagazineAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    return v2

    :cond_8
    const-string/jumbo v1, "screen_on_proximity_sensor_title"

    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 62
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/AodAndLockScreenSettings;->isSupportAntiMisTouch(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    return v2

    :cond_9
    const-string/jumbo v1, "smartcover_lock_or_unlock_screen_tittle"

    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 67
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bool"

    const-string v3, "android.miui"

    const-string v4, "config_smartCoverEnabled"

    invoke-virtual {v0, v4, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a

    .line 69
    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0

    :cond_a
    move v0, v2

    :goto_0
    if-nez v0, :cond_11

    return v2

    :cond_b
    const-string v1, "lock_screen_after_fold_screen_title"

    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v0, "cetus"

    .line 75
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    return v2

    :cond_c
    const-string v1, "leave_loclscreen_title"

    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 79
    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isTofAvailable()Z

    move-result v0

    if-nez v0, :cond_11

    return v2

    :cond_d
    const-string/jumbo v1, "near_loclscreen_title"

    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 83
    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isTofAvailable()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isAonAvailable()Z

    move-result v0

    if-nez v0, :cond_11

    return v2

    :cond_e
    const-string/jumbo v1, "pref_volume_launch_camera_title"

    .line 86
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string/jumbo v0, "preference_key"

    .line 87
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "volume_down_launch_camera_or_take_photo"

    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 89
    invoke-static {}, Lcom/android/settings/AodAndLockScreenSettings;->supportVariableAperture()Z

    move-result v0

    if-nez v0, :cond_11

    return v2

    :cond_f
    const-string/jumbo v1, "volume_launch_camera"

    .line 92
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 93
    invoke-static {}, Lcom/android/settings/AodAndLockScreenSettings;->supportVariableAperture()Z

    move-result v0

    if-eqz v0, :cond_11

    return v2

    :cond_10
    const-string v1, "lock_screen_signature_title"

    .line 97
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    return v2

    .line 100
    :cond_11
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getStatus()I

    move-result p0

    return p0
.end method

.method public getTitle(Z)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "resource"

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "aod_and_lock_screen_settings_title"

    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/AodUtils;->isAodAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->lock_screen_settings_title:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 128
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
