.class public Lcom/android/settings/development/SimulateColorSpacePreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "SimulateColorSpacePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final SETTING_VALUE_OFF:I = 0x0

.field static final SETTING_VALUE_ON:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private updateSimulateColorSpace()V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_daltonizer_enabled"

    const/4 v2, 0x0

    .line 76
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    const-string v2, "accessibility_display_daltonizer"

    .line 81
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    .line 87
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 89
    sget v0, Lcom/android/settings/R$string;->daltonizer_type_overridden:I

    sget v2, Lcom/android/settings/R$string;->accessibility_display_daltonizer_preference_title:I

    .line 90
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 89
    invoke-virtual {p0, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string p0, "%s"

    .line 92
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 96
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 95
    invoke-virtual {v1, p0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private usingDevelopmentColorSpace()Z
    .locals 5

    .line 132
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_daltonizer_enabled"

    const/4 v2, 0x0

    .line 133
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    const-string v1, "accessibility_display_daltonizer"

    const/4 v4, -0x1

    .line 137
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p0, v0}, Lmiuix/preference/DropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_1

    return v3

    :cond_1
    return v2
.end method

.method private writeSimulateColorSpace(Ljava/lang/Object;)V
    .locals 5

    .line 101
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0xf

    const/4 v1, 0x0

    const-string v2, "accessibility_display_daltonizer_enabled"

    if-gez p1, :cond_0

    .line 104
    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 108
    sget-boolean p0, Lmiui/os/DeviceFeature;->SCREEN_EFFECT_CONFLICT:Z

    if-eqz p0, :cond_2

    .line 109
    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object p0

    .line 110
    invoke-virtual {p0, v0, v1}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(II)V

    goto :goto_0

    .line 115
    :cond_0
    sget-boolean v3, Lmiui/os/DeviceFeature;->SCREEN_EFFECT_CONFLICT:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 117
    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object v1

    .line 118
    invoke-virtual {v1, v0, v4}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(II)V

    .line 121
    :cond_1
    invoke-static {p0, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "accessibility_display_daltonizer"

    .line 123
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "simulate_color_space"

    return-object p0
.end method

.method public onDeveloperOptionsDisabled()V
    .locals 1

    .line 68
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsDisabled()V

    .line 69
    invoke-direct {p0}, Lcom/android/settings/development/SimulateColorSpacePreferenceController;->usingDevelopmentColorSpace()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/development/SimulateColorSpacePreferenceController;->writeSimulateColorSpace(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 57
    invoke-direct {p0, p2}, Lcom/android/settings/development/SimulateColorSpacePreferenceController;->writeSimulateColorSpace(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/android/settings/development/SimulateColorSpacePreferenceController;->updateSimulateColorSpace()V

    return-void
.end method
