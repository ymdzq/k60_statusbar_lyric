.class public Lcom/android/settings/colorgameled/ColorGameLedBatteryController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ColorGameLedBatteryController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/colorgameled/IVisibleListener;


# instance fields
.field private colorLightManager:Landroid/app/ColorLightManager;

.field mPreference:Landroidx/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v0, Landroid/app/ColorLightManager;

    invoke-direct {v0, p1}, Landroid/app/ColorLightManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/colorgameled/ColorGameLedBatteryController;->colorLightManager:Landroid/app/ColorLightManager;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "color_led_battery"

    .line 40
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/colorgameled/ColorGameLedBatteryController;->mPreference:Landroidx/preference/SwitchPreference;

    .line 41
    iget-object v0, p0, Lcom/android/settings/colorgameled/ColorGameLedBatteryController;->colorLightManager:Landroid/app/ColorLightManager;

    invoke-virtual {v0}, Landroid/app/ColorLightManager;->isBatteryLightEnable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 42
    iget-object p1, p0, Lcom/android/settings/colorgameled/ColorGameLedBatteryController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/colorgameled/ColorGameLedBatteryController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public ensureVisible(Z)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/settings/colorgameled/ColorGameLedBatteryController;->mPreference:Landroidx/preference/SwitchPreference;

    if-eqz p0, :cond_0

    .line 68
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "color_led_battery"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    const-string/jumbo p0, "support_led_colorful"

    const/4 v0, 0x0

    .line 28
    invoke-static {p0, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "color_led_battery"

    .line 58
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    iget-object p0, p0, Lcom/android/settings/colorgameled/ColorGameLedBatteryController;->colorLightManager:Landroid/app/ColorLightManager;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/ColorLightManager;->enableBatteryLight(Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 50
    instance-of v0, p1, Landroidx/preference/SwitchPreference;

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object p0, p0, Lcom/android/settings/colorgameled/ColorGameLedBatteryController;->colorLightManager:Landroid/app/ColorLightManager;

    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/ColorLightManager;->enableBatteryLight(Z)V

    return-void
.end method
