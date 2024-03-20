.class public Lcom/android/settings/colorled/ColorLedController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ColorLedController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private colorLightManager:Landroid/app/ColorLightManager;

.field private mFragment:Lcom/android/settings/colorled/ColorLedSettings;

.field private mPreference:Landroidx/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/colorled/ColorLedSettings;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Landroid/app/ColorLightManager;

    invoke-direct {v0, p1}, Landroid/app/ColorLightManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/colorled/ColorLedController;->colorLightManager:Landroid/app/ColorLightManager;

    .line 26
    iput-object p2, p0, Lcom/android/settings/colorled/ColorLedController;->mFragment:Lcom/android/settings/colorled/ColorLedSettings;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 31
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "color_led_switch"

    .line 32
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/colorled/ColorLedController;->mPreference:Landroidx/preference/SwitchPreference;

    .line 33
    iget-object v0, p0, Lcom/android/settings/colorled/ColorLedController;->colorLightManager:Landroid/app/ColorLightManager;

    invoke-virtual {v0}, Landroid/app/ColorLightManager;->isLightEnable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 34
    iget-object p1, p0, Lcom/android/settings/colorled/ColorLedController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/colorled/ColorLedController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "color_led_switch"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    const-string/jumbo p0, "support_led_colorful"

    const/4 v0, 0x0

    .line 39
    invoke-static {p0, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "color_led_switch"

    .line 62
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 63
    iget-object p1, p0, Lcom/android/settings/colorled/ColorLedController;->colorLightManager:Landroid/app/ColorLightManager;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/ColorLightManager;->enableLight(Z)V

    .line 64
    iget-object p0, p0, Lcom/android/settings/colorled/ColorLedController;->mFragment:Lcom/android/settings/colorled/ColorLedSettings;

    if-eqz p0, :cond_0

    .line 65
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/colorled/ColorLedSettings;->ensureVisibleOtherPreference(Z)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 46
    instance-of v0, p1, Landroidx/preference/SwitchPreference;

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/settings/colorled/ColorLedController;->colorLightManager:Landroid/app/ColorLightManager;

    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/ColorLightManager;->enableLight(Z)V

    .line 50
    iget-object p1, p0, Lcom/android/settings/colorled/ColorLedController;->mFragment:Lcom/android/settings/colorled/ColorLedSettings;

    if-eqz p1, :cond_1

    .line 51
    iget-object p0, p0, Lcom/android/settings/colorled/ColorLedController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/colorled/ColorLedSettings;->ensureVisibleOtherPreference(Z)V

    :cond_1
    return-void
.end method
