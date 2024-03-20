.class public Lcom/android/settingslib/util/OneTrackInterfaceUtils;
.super Ljava/lang/Object;
.source "OneTrackInterfaceUtils.java"


# static fields
.field private static final ENABLED:Z

.field private static final mConfig:Lcom/xiaomi/onetrack/Configuration;

.field private static sContext:Landroid/content/Context;

.field private static sIsProvisioned:Z

.field private static sOneTrack:Lcom/xiaomi/onetrack/OneTrack;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->ENABLED:Z

    const/4 v0, 0x0

    .line 24
    sput-boolean v0, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->sIsProvisioned:Z

    .line 26
    new-instance v0, Lcom/xiaomi/onetrack/Configuration$Builder;

    invoke-direct {v0}, Lcom/xiaomi/onetrack/Configuration$Builder;-><init>()V

    const-string v2, "31000000174"

    invoke-virtual {v0, v2}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    const-string/jumbo v2, "xiaomi"

    .line 27
    invoke-virtual {v0, v2}, Lcom/xiaomi/onetrack/Configuration$Builder;->setChannel(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    .line 28
    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->setExceptionCatcherEnable(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 29
    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->setMode(Lcom/xiaomi/onetrack/OneTrack$Mode;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration$Builder;->build()Lcom/xiaomi/onetrack/Configuration;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->mConfig:Lcom/xiaomi/onetrack/Configuration;

    return-void
.end method

.method public static final init(Landroid/content/Context;)V
    .locals 2

    .line 33
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->sContext:Landroid/content/Context;

    .line 34
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->mConfig:Lcom/xiaomi/onetrack/Configuration;

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/OneTrack;->createInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)Lcom/xiaomi/onetrack/OneTrack;

    move-result-object p0

    sput-object p0, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->sOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    const/4 p0, 0x0

    .line 38
    invoke-static {p0}, Lcom/xiaomi/onetrack/OneTrack;->setDebugMode(Z)V

    .line 39
    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->setUseSystemNetTrafficOnly()V

    .line 40
    sget-object p0, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->sContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->isProvisioned()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/OneTrack;->setAccessNetworkEnable(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "OneTrackInterfaceUtils"

    const-string v1, "init onetrack error"

    .line 42
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static isMonkeyRunning()Z
    .locals 1

    .line 69
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    return v0
.end method

.method private static isProvisioned()Z
    .locals 3

    .line 58
    sget-object v0, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->sIsProvisioned:Z

    if-nez v1, :cond_1

    .line 59
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    sput-boolean v2, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->sIsProvisioned:Z

    if-eqz v2, :cond_1

    .line 62
    sget-object v0, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->sContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/OneTrack;->setAccessNetworkEnable(Landroid/content/Context;Z)V

    .line 65
    :cond_1
    sget-boolean v0, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->sIsProvisioned:Z

    return v0
.end method

.method public static track(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 47
    sget-boolean v0, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->ENABLED:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    invoke-static {}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->isProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 53
    :cond_1
    sget-object v0, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->sOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    if-eqz v0, :cond_2

    .line 54
    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/onetrack/OneTrack;->track(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static final trackMasterClearClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 134
    sget-boolean v0, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->ENABLED:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 140
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "page_name"

    .line 141
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "item_title"

    .line 142
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "model"

    .line 143
    sget-object p1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "preference_click"

    .line 144
    invoke-static {p0, v0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static final trackMiBlueLink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 148
    sget-boolean v0, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->ENABLED:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "itemName"

    .line 152
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "profileName"

    .line 153
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "mi_blue_link"

    .line 154
    invoke-static {p0, v0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final trackPreferenceClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 104
    sget-boolean v0, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->ENABLED:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "page_name"

    .line 111
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "item_title"

    .line 112
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "preference_click"

    .line 113
    invoke-static {p0, v0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static final trackPreferenceValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 121
    sget-boolean v0, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->ENABLED:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 127
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "preference"

    .line 128
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "value"

    .line 129
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "preference_value_change"

    .line 130
    invoke-static {p0, v0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static final trackSwitchEvent(Ljava/lang/String;Z)V
    .locals 3

    .line 77
    sget-boolean v0, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->ENABLED:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 80
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 83
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_2

    const-string v1, "on"

    goto :goto_0

    :cond_2
    const-string v1, "off"

    :goto_0
    const-string/jumbo v2, "status"

    .line 85
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "class"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "preference_value_change"

    .line 87
    invoke-static {p0, v0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static final trackSwitchSummary(Ljava/util/List;I)V
    .locals 2

    .line 91
    sget-boolean v0, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->ENABLED:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 97
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "packagelist"

    .line 98
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "totalnum"

    .line 99
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "seitch_summary"

    .line 100
    invoke-static {p0, v0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_0
    return-void
.end method
