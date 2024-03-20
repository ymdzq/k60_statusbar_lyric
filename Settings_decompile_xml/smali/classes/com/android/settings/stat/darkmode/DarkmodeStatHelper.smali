.class public Lcom/android/settings/stat/darkmode/DarkmodeStatHelper;
.super Ljava/lang/Object;
.source "DarkmodeStatHelper.java"


# direct methods
.method public static traceDarkModeEvent(Landroid/content/Context;)V
    .locals 6

    .line 46
    invoke-static {p0}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isDarkModeEnable(Landroid/content/Context;)Z

    move-result v0

    .line 47
    invoke-static {p0}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isDarkModeTimeEnable(Landroid/content/Context;)Z

    move-result p0

    .line 51
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x1

    .line 52
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "version"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    .line 53
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v5, "status"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "dark_mode_status"

    .line 54
    invoke-static {v3, v1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 58
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 59
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "dark_mode_switch"

    .line 61
    invoke-static {v0, v3}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "darkModeScheduleStatus"

    .line 64
    invoke-static {v0, p0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackSwitchEvent(Ljava/lang/String;Z)V

    .line 66
    invoke-static {}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isSmartDarkEnable()Z

    move-result v1

    const-string v2, "forceDarkStatus"

    .line 65
    invoke-static {v2, v1}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackSwitchEvent(Ljava/lang/String;Z)V

    .line 67
    invoke-static {v0, p0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->trackSwitchEvent(Ljava/lang/String;Z)V

    .line 69
    invoke-static {}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isSmartDarkEnable()Z

    move-result p0

    .line 68
    invoke-static {v2, p0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->trackSwitchEvent(Ljava/lang/String;Z)V

    return-void
.end method
