.class public Lcom/android/settings/development/LowFlickerBacklightController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "LowFlickerBacklightController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "low_flicker_backlight"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 3

    .line 28
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/utils/SettingsFeatures;->isSupportDifferentLightViceScreen(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    const-string/jumbo p0, "support_dc_backlight_sec"

    .line 29
    invoke-static {p0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_1

    const-string/jumbo p0, "support_low_flicker_backlight_sec"

    .line 30
    invoke-static {p0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v0

    goto :goto_1

    :cond_2
    const-string/jumbo p0, "support_dc_backlight"

    .line 32
    invoke-static {p0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_1

    const-string/jumbo p0, "support_low_flicker_backlight"

    .line 33
    invoke-static {p0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :goto_1
    const-string v2, "hide_flicker_backlight"

    .line 36
    invoke-static {v2, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 46
    instance-of v0, p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-eqz v0, :cond_4

    .line 47
    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 49
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSupportDifferentLightViceScreen(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "support_dc_backlight_sec"

    .line 50
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    sget v0, Lcom/android/settings/R$string;->dc_light_title:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/R$string;->low_dc_light_title:I

    .line 50
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_2

    :cond_1
    const-string/jumbo v0, "support_dc_backlight"

    .line 53
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    sget v0, Lcom/android/settings/R$string;->dc_light_title:I

    goto :goto_1

    :cond_2
    sget v0, Lcom/android/settings/R$string;->low_dc_light_title:I

    .line 53
    :goto_1
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    :goto_2
    const/4 v0, 0x1

    .line 56
    invoke-virtual {p1, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 57
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "dc_back_light"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_3

    .line 58
    sget p0, Lcom/android/settings/R$string;->screen_paper_mode_turn_on:I

    goto :goto_3

    :cond_3
    sget p0, Lcom/android/settings/R$string;->screen_paper_mode_turn_off:I

    .line 57
    :goto_3
    invoke-virtual {p1, p0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(I)V

    :cond_4
    return-void
.end method
