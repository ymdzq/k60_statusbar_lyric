.class public Lcom/android/settings/display/ScreenFpsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ScreenFpsPreferenceController.java"


# static fields
.field private static final FPS_SWITCH_DEFAULT:Z

.field private static final SCREEN_DEFAULT_FPS:I


# instance fields
.field private mDisplayFeatureManager:Lmiui/hardware/display/DisplayFeatureManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "support_smart_fps"

    const/4 v1, 0x0

    .line 28
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "smart_fps_value"

    goto :goto_0

    :cond_0
    const-string v0, "defaultFps"

    .line 29
    :goto_0
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/display/ScreenFpsPreferenceController;->SCREEN_DEFAULT_FPS:I

    const-string/jumbo v0, "ro.vendor.fps.switch.default"

    .line 30
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/display/ScreenFpsPreferenceController;->FPS_SWITCH_DEFAULT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ScreenFpsPreferenceController;->mDisplayFeatureManager:Lmiui/hardware/display/DisplayFeatureManager;

    return-void
.end method

.method private getRightValue(I)Ljava/lang/String;
    .locals 3

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenFpsPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "support_smart_fps"

    const/4 v1, 0x0

    .line 62
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "is_smart_fps"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 64
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->nature_color:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 67
    :cond_1
    invoke-static {}, Lcom/android/settings/display/ScreenFpsPreferenceController;->getSupportMaxFpsIntValue()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "fpsList"

    .line 68
    invoke-static {v0}, Lmiui/util/FeatureParser;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 69
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 70
    array-length v2, v0

    if-lez v2, :cond_2

    array-length v2, v0

    sub-int/2addr v2, v1

    aget v0, v0, v2

    if-ne p1, v0, :cond_2

    .line 71
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->max_fps_right_value:I

    invoke-static {}, Lcom/android/settings/display/ScreenFpsPreferenceController;->getSupportMaxFpsIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 75
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->screen_fps_unit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 60
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->screen_fps_unit:I

    sget v0, Lcom/android/settings/display/ScreenFpsPreferenceController;->SCREEN_DEFAULT_FPS:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getScreenDpiMode()I
    .locals 2

    .line 83
    sget-boolean v0, Lcom/android/settings/display/ScreenFpsPreferenceController;->FPS_SWITCH_DEFAULT:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "user_refresh_rate"

    sget v1, Lcom/android/settings/display/ScreenFpsPreferenceController;->SCREEN_DEFAULT_FPS:I

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 92
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 93
    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    const-string p0, "cetus"

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 94
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 96
    sget p0, Lcom/android/settings/display/ScreenFpsPreferenceController;->SCREEN_DEFAULT_FPS:I

    return p0

    :cond_2
    const-string/jumbo p0, "persist.vendor.dfps.level"

    .line 98
    sget v0, Lcom/android/settings/display/ScreenFpsPreferenceController;->SCREEN_DEFAULT_FPS:I

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getSupportMaxFpsIntValue()I
    .locals 2

    const-string/jumbo v0, "support_max_fps"

    const/4 v1, 0x0

    .line 79
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "screen_fps"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 39
    invoke-static {}, Lcom/android/settings/MiuiUtils;->isSupportScreenFps()Z

    move-result p0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenFpsPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 54
    invoke-direct {p0}, Lcom/android/settings/display/ScreenFpsPreferenceController;->getScreenDpiMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/ScreenFpsPreferenceController;->getRightValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 55
    invoke-virtual {p1, p0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    return-void
.end method
