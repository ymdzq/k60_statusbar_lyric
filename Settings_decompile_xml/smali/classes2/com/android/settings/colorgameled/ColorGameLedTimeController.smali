.class public Lcom/android/settings/colorgameled/ColorGameLedTimeController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ColorGameLedTimeController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/colorgameled/IVisibleListener;


# instance fields
.field private colorLightManager:Landroid/app/ColorLightManager;

.field mFragment:Lcom/android/settings/colorgameled/ColorGameLedSettings;

.field mPreference:Lcom/android/settings/widget/CustomCheckBoxPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/colorgameled/ColorGameLedSettings;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Landroid/app/ColorLightManager;

    invoke-direct {v0, p1}, Landroid/app/ColorLightManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/colorgameled/ColorGameLedTimeController;->colorLightManager:Landroid/app/ColorLightManager;

    .line 23
    iput-object p2, p0, Lcom/android/settings/colorgameled/ColorGameLedTimeController;->mFragment:Lcom/android/settings/colorgameled/ColorGameLedSettings;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 28
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "color_led_time_switch"

    .line 29
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/CustomCheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/colorgameled/ColorGameLedTimeController;->mPreference:Lcom/android/settings/widget/CustomCheckBoxPreference;

    .line 30
    iget-object v0, p0, Lcom/android/settings/colorgameled/ColorGameLedTimeController;->colorLightManager:Landroid/app/ColorLightManager;

    invoke-virtual {v0}, Landroid/app/ColorLightManager;->isLightTimeEnable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 31
    iget-object p1, p0, Lcom/android/settings/colorgameled/ColorGameLedTimeController;->mPreference:Lcom/android/settings/widget/CustomCheckBoxPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/colorgameled/ColorGameLedTimeController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public ensureVisible(Z)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/settings/colorgameled/ColorGameLedTimeController;->mPreference:Lcom/android/settings/widget/CustomCheckBoxPreference;

    if-eqz p0, :cond_0

    .line 68
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "color_led_time_switch"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    const-string/jumbo p0, "support_led_colorful"

    const/4 v0, 0x0

    .line 36
    invoke-static {p0, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "color_led_time_switch"

    .line 56
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/android/settings/colorgameled/ColorGameLedTimeController;->colorLightManager:Landroid/app/ColorLightManager;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/ColorLightManager;->enableTimeLight(Z)V

    .line 58
    iget-object p0, p0, Lcom/android/settings/colorgameled/ColorGameLedTimeController;->mFragment:Lcom/android/settings/colorgameled/ColorGameLedSettings;

    invoke-virtual {p0}, Lcom/android/settings/colorgameled/ColorGameLedSettings;->refreshTimePrefVisible()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 43
    instance-of v0, p1, Lcom/android/settings/widget/CustomCheckBoxPreference;

    if-nez v0, :cond_0

    return-void

    .line 46
    :cond_0
    iget-object p0, p0, Lcom/android/settings/colorgameled/ColorGameLedTimeController;->colorLightManager:Landroid/app/ColorLightManager;

    check-cast p1, Lcom/android/settings/widget/CustomCheckBoxPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/ColorLightManager;->enableTimeLight(Z)V

    return-void
.end method
