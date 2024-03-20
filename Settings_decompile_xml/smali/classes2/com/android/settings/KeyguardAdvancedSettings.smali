.class public Lcom/android/settings/KeyguardAdvancedSettings;
.super Lcom/android/settings/KeyguardSettingsPreferenceFragment;
.source "KeyguardAdvancedSettings.java"


# instance fields
.field private mBluetoothUnlock:Landroidx/preference/Preference;

.field private mHasPassword:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSmartCoverPref:Landroidx/preference/Preference;

.field private mSupportHallSensor:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static isEllipticProximity(Landroid/content/Context;)Z
    .locals 1

    const-string/jumbo p0, "ro.vendor.audio.us.proximity"

    const/4 v0, 0x0

    .line 144
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 77
    const-class p0, Lcom/android/settings/KeyguardAdvancedSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 44
    :cond_0
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/KeyguardAdvancedSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 45
    sget p1, Lcom/android/settings/R$xml;->keyguard_advanced_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo p1, "smartcover_sensitive_small_win_sensor"

    .line 46
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/KeyguardAdvancedSettings;->mSmartCoverPref:Landroidx/preference/Preference;

    const-string p1, "bluetooth_unlock"

    .line 47
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/KeyguardAdvancedSettings;->mBluetoothUnlock:Landroidx/preference/Preference;

    .line 48
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/KeyguardAdvancedSettings;->mBluetoothUnlock:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 82
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 8

    .line 55
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lock_screen_signature"

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v0, ":miui:starting_window_label"

    const-string v1, ""

    .line 58
    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "com.android.settings.OwnerInfoSettings"

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p0

    .line 59
    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    :cond_0
    const-string v1, "bluetooth_unlock"

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v4, "com.android.settings.MiuiSecurityBluetoothSettingsFragment"

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 61
    sget v7, Lcom/android/settings/R$string;->bluetooth_unlock_title:I

    move-object v2, p0

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "smartcover_lock_or_unlock_screen"

    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    move-object v0, p2

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    .line 65
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->setSmartCoverMode(Z)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "smartcover_sensitive_small_win_sensor"

    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v3, "com.android.settings.MiuiSmartCoverSettingsFragment"

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 67
    sget v6, Lcom/android/settings/R$string;->smartcover_sensitive_title:I

    move-object v1, p0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 71
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 4

    .line 87
    invoke-super {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onResume()V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/KeyguardAdvancedSettings;->setOwnerInfoDisabledIfNeed()V

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$Secure;->hasCommonPassword(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/KeyguardAdvancedSettings;->mHasPassword:Z

    const-string/jumbo v0, "support_hall_sensor"

    const/4 v1, 0x0

    .line 90
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/KeyguardAdvancedSettings;->mSupportHallSensor:Z

    .line 91
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/KeyguardAdvancedSettings;->mSupportHallSensor:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_3

    const-string/jumbo v2, "support_multiple_small_win_cover"

    .line 96
    invoke-static {v2, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/android/settings/KeyguardAdvancedSettings;->mSmartCoverPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const-string/jumbo v0, "persist.sys.smartcover_mode"

    .line 100
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 103
    :cond_2
    invoke-static {v1}, Landroid/provider/MiuiSettings$System;->setSmartCoverMode(Z)V

    goto :goto_0

    .line 106
    :cond_3
    iget-object v1, p0, Lcom/android/settings/KeyguardAdvancedSettings;->mSmartCoverPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 109
    :goto_0
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 110
    iget-object v1, p0, Lcom/android/settings/KeyguardAdvancedSettings;->mBluetoothUnlock:Landroidx/preference/Preference;

    iget-boolean v2, p0, Lcom/android/settings/KeyguardAdvancedSettings;->mHasPassword:Z

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 111
    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->getBluetoothUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 112
    iget-object v0, p0, Lcom/android/settings/KeyguardAdvancedSettings;->mBluetoothUnlock:Landroidx/preference/Preference;

    sget v1, Lcom/android/settings/R$string;->bluetooth_unlock_turned_on:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 114
    :cond_4
    iget-object v0, p0, Lcom/android/settings/KeyguardAdvancedSettings;->mBluetoothUnlock:Landroidx/preference/Preference;

    sget v1, Lcom/android/settings/R$string;->bluetooth_unlock_turned_off:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 117
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.sensor.proximity"

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/KeyguardAdvancedSettings;->isEllipticProximity(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 120
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_screen_on_proximity_sensor"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11050066

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 124
    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v0}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_6
    :goto_2
    return-void
.end method

.method public setOwnerInfoDisabledIfNeed()V
    .locals 2

    const-string v0, "lock_screen_signature"

    .line 149
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/KeyguardRestrictedPreference;

    if-eqz v0, :cond_1

    .line 151
    iget-object v1, p0, Lcom/android/settings/KeyguardAdvancedSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/compat/RestrictedLockUtilsCompat;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    .line 153
    invoke-virtual {v0, p0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 156
    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 157
    iget-object p0, p0, Lcom/android/settings/KeyguardAdvancedSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method
