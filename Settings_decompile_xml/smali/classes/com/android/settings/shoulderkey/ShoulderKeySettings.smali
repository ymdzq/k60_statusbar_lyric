.class public Lcom/android/settings/shoulderkey/ShoulderKeySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ShoulderKeySettings.java"


# instance fields
.field private mShoudlerKeyGameLightEffec:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mShoudlerKeyShortcut:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mShoulderKeyFeatures:Landroidx/preference/PreferenceCategory;

.field private mShoulderKeySoundEffect:Lcom/android/settingslib/miuisettings/preference/ValuePreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateState()V
    .locals 4

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "shoulderkey_sound_switch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 75
    iget-object v1, p0, Lcom/android/settings/shoulderkey/ShoulderKeySettings;->mShoulderKeySoundEffect:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    sget v0, Lcom/android/settings/R$string;->shoulder_key_switch_status_open:I

    goto :goto_0

    .line 76
    :cond_0
    sget v0, Lcom/android/settings/R$string;->shoulder_key_switch_status_close:I

    .line 75
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(I)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "shoulderkey_game_light_switch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/android/settings/shoulderkey/ShoulderKeySettings;->mShoudlerKeyGameLightEffec:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-ne v0, v3, :cond_1

    sget v0, Lcom/android/settings/R$string;->shoulder_key_switch_status_open:I

    goto :goto_1

    .line 80
    :cond_1
    sget v0, Lcom/android/settings/R$string;->shoulder_key_switch_status_close:I

    .line 79
    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(I)V

    .line 81
    sget-boolean v0, Lcom/android/settings/utils/SettingsFeatures;->IS_SUPPORT_SHOULDER_KEY_MORE:Z

    if-nez v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/android/settings/shoulderkey/ShoulderKeySettings;->mShoulderKeyFeatures:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/shoulderkey/ShoulderKeySettings;->mShoudlerKeyShortcut:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 43
    const-class p0, Lcom/android/settings/shoulderkey/ShoulderKeySettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget p1, Lcom/android/settings/R$xml;->shoulderkey_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 51
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "shoulder_key_features"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/shoulderkey/ShoulderKeySettings;->mShoulderKeyFeatures:Landroidx/preference/PreferenceCategory;

    const-string/jumbo v0, "shoulder_key_sound_effect"

    .line 52
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p1, p0, Lcom/android/settings/shoulderkey/ShoulderKeySettings;->mShoulderKeySoundEffect:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 53
    iget-object p1, p0, Lcom/android/settings/shoulderkey/ShoulderKeySettings;->mShoulderKeyFeatures:Landroidx/preference/PreferenceCategory;

    const-string/jumbo v0, "shoulder_key_game_light_effect"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p1, p0, Lcom/android/settings/shoulderkey/ShoulderKeySettings;->mShoudlerKeyGameLightEffec:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 54
    iget-object p1, p0, Lcom/android/settings/shoulderkey/ShoulderKeySettings;->mShoulderKeyFeatures:Landroidx/preference/PreferenceCategory;

    const-string/jumbo v0, "shoulder_key_shortcut"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p1, p0, Lcom/android/settings/shoulderkey/ShoulderKeySettings;->mShoudlerKeyShortcut:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 0

    .line 88
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 68
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 69
    invoke-direct {p0}, Lcom/android/settings/shoulderkey/ShoulderKeySettings;->updateState()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 59
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 60
    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 62
    sget v0, Lcom/android/settings/R$string;->shoulder_key_settings_title:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method
