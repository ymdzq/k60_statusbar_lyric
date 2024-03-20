.class public Lcom/android/settings/shoulderkey/SoundEffectSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SoundEffectSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;


# instance fields
.field private mShoulderKeySoundEffectOptions:Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;

.field private mShoulderKeySoundSwitch:Landroidx/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateState()V
    .locals 4

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "shoulderkey_sound_switch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 43
    iget-object v1, p0, Lcom/android/settings/shoulderkey/SoundEffectSettings;->mShoulderKeySoundSwitch:Landroidx/preference/CheckBoxPreference;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-nez v0, :cond_1

    .line 46
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/shoulderkey/SoundEffectSettings;->mShoulderKeySoundEffectOptions:Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/shoulderkey/SoundEffectSettings;->mShoulderKeySoundEffectOptions:Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "shoulderkey_sound_type"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    iget-object p0, p0, Lcom/android/settings/shoulderkey/SoundEffectSettings;->mShoulderKeySoundEffectOptions:Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;->setCheckBoxCheckedType(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lmiuix/visual/check/VisualCheckGroup;I)V
    .locals 0

    .line 58
    sget p1, Lcom/android/settings/R$id;->sound_classic:I

    if-ne p2, p1, :cond_0

    const-string p1, "classic"

    goto :goto_0

    .line 60
    :cond_0
    sget p1, Lcom/android/settings/R$id;->sound_bullet:I

    if-ne p2, p1, :cond_1

    const-string p1, "bullet"

    goto :goto_0

    .line 62
    :cond_1
    sget p1, Lcom/android/settings/R$id;->sound_current:I

    if-ne p2, p1, :cond_2

    const-string p1, "current"

    goto :goto_0

    .line 64
    :cond_2
    sget p1, Lcom/android/settings/R$id;->sound_wind:I

    if-ne p2, p1, :cond_3

    const-string/jumbo p1, "wind"

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p2, "shoulderkey_sound_type"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p0, 0x0

    .line 69
    invoke-static {p1, p0}, Lcom/android/settings/shoulderkey/SoundPoolUtil;->play(Ljava/lang/String;Z)V

    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/shoulderkey/SoundPoolUtil;->init(Landroid/content/Context;)V

    .line 32
    sget p1, Lcom/android/settings/R$xml;->shoulderkey_sound:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo p1, "shoulder_key_sound_switch"

    .line 33
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/shoulderkey/SoundEffectSettings;->mShoulderKeySoundSwitch:Landroidx/preference/CheckBoxPreference;

    .line 34
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo p1, "shoulder_key_sound_effect"

    .line 35
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;

    iput-object p1, p0, Lcom/android/settings/shoulderkey/SoundEffectSettings;->mShoulderKeySoundEffectOptions:Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;

    .line 36
    invoke-virtual {p1, p0}, Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;->setOnCheckedChangeListener(Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;)V

    .line 37
    invoke-direct {p0}, Lcom/android/settings/shoulderkey/SoundEffectSettings;->updateState()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 86
    invoke-static {}, Lcom/android/settings/shoulderkey/SoundPoolUtil;->release()V

    .line 87
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const-string/jumbo v0, "shoulder_key_sound_switch"

    .line 75
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "shoulderkey_sound_switch"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 79
    invoke-direct {p0}, Lcom/android/settings/shoulderkey/SoundEffectSettings;->updateState()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
