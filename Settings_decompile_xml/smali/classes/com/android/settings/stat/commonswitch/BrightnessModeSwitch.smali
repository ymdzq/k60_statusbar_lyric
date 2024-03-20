.class public Lcom/android/settings/stat/commonswitch/BrightnessModeSwitch;
.super Lcom/android/settings/stat/commonswitch/SwitchStat;
.source "BrightnessModeSwitch.java"


# instance fields
.field private mSunlightModeAvailable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/android/settings/stat/commonswitch/SwitchStat;-><init>()V

    return-void
.end method

.method private isAutomaticBrightnessModeEnable(Landroid/content/Context;)Z
    .locals 2

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, -0x2

    const-string/jumbo v0, "screen_brightness_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isSunlightModeSettingsEnable(Landroid/content/Context;)Z
    .locals 2

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, -0x2

    const-string/jumbo v0, "sunlight_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private smoothAdjustLightAvailable()Z
    .locals 1

    const-string/jumbo p0, "support_backlight_bit_switch"

    const/4 v0, 0x0

    .line 69
    invoke-static {p0, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private sunlightModeAvailiable(Landroid/content/Context;)Z
    .locals 1

    const-string p1, "config_sunlight_mode_available"

    const/4 v0, 0x1

    .line 64
    invoke-static {p1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/stat/commonswitch/BrightnessModeSwitch;->mSunlightModeAvailable:Z

    return p1
.end method


# virtual methods
.method getInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/stat/commonswitch/SwitchStat$Info;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    new-instance v1, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;

    const-string/jumbo v2, "screen_brightness_mode"

    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/stat/commonswitch/BrightnessModeSwitch;->isAutomaticBrightnessModeEnable(Landroid/content/Context;)Z

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;-><init>(Lcom/android/settings/stat/commonswitch/SwitchStat;Ljava/lang/String;Z)V

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/stat/commonswitch/BrightnessModeSwitch;->sunlightModeAvailiable(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 37
    new-instance v1, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;

    invoke-direct {p0, p1}, Lcom/android/settings/stat/commonswitch/BrightnessModeSwitch;->isSunlightModeSettingsEnable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/stat/commonswitch/BrightnessModeSwitch;->isAutomaticBrightnessModeEnable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    const-string/jumbo v3, "sunlight_mode"

    invoke-direct {v1, p0, v3, p1}, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;-><init>(Lcom/android/settings/stat/commonswitch/SwitchStat;Ljava/lang/String;Z)V

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/stat/commonswitch/BrightnessModeSwitch;->smoothAdjustLightAvailable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 41
    new-instance p1, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;

    const-string/jumbo v1, "persist.vendor.light.bit.switch"

    .line 42
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v2, "smooth_adjust_light_mode"

    invoke-direct {p1, p0, v2, v1}, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;-><init>(Lcom/android/settings/stat/commonswitch/SwitchStat;Ljava/lang/String;Z)V

    .line 41
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method
