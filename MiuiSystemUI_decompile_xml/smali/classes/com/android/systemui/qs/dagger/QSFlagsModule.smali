.class public interface abstract Lcom/android/systemui/qs/dagger/QSFlagsModule;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static isPMLiteEnabled(Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/util/settings/GlobalSettings;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/flags/Flags;->POWER_MENU_LITE:Lcom/android/systemui/flags/ReleasedFlag;

    .line 2
    check-cast p0, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 6
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    const-string/jumbo p0, "sysui_pm_lite"

    .line 12
    const/4 v0, 0x1

    .line 15
    invoke-interface {p1, p0, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(Ljava/lang/String;I)I

    .line 16
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
    .line 24
.end method

.method public static isReduceBrightColorsAvailable(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/hardware/display/ColorDisplayManager;->isReduceBrightColorsAvailable(Landroid/content/Context;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method
