.class public Lcom/android/settings/NotchStatusBarSettings;
.super Lcom/android/settings/BaseSettingsPreferenceFragment;
.source "NotchStatusBarSettings.java"


# instance fields
.field private mBatteryEntries:[Ljava/lang/String;

.field private mBatteryIndicator:Lmiuix/preference/DropDownPreference;

.field private mCustomCarrier:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mCutoutMode:Landroidx/preference/Preference;

.field private mCutoutType:Landroidx/preference/CheckBoxPreference;

.field private mHasMobileDataFeature:Z

.field private mNotchCategory:Landroidx/preference/PreferenceCategory;

.field private mNotchForceBlack:Landroidx/preference/CheckBoxPreference;

.field private mNotchStyleMode:Landroidx/preference/Preference;

.field private mNotificationShadeShortcut:Landroidx/preference/ListPreference;

.field private mShowCarrierUnderKeyguard:Landroidx/preference/CheckBoxPreference;

.field private mShowNetworkSpeed:Landroidx/preference/CheckBoxPreference;

.field private mShowNotificationIcon:Landroidx/preference/CheckBoxPreference;


# direct methods
.method static bridge synthetic -$$Nest$msetDripType(Lcom/android/settings/NotchStatusBarSettings;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/NotchStatusBarSettings;->setDripType(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBatteryIndicator(Lcom/android/settings/NotchStatusBarSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/NotchStatusBarSettings;->updateBatteryIndicator()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/android/settings/BaseSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private isDripType()Z
    .locals 2

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "overlay_drip"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isForceBlack()Z
    .locals 1

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_black"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isForceBlackV2()Z
    .locals 1

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_black_v2"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private setDripType(Z)V
    .locals 1

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "overlay_drip"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setForceBlack(Z)V
    .locals 1

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_black"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method private setupBatteryIndicator()V
    .locals 6

    const-string v0, "battery_indicator"

    .line 293
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mBatteryIndicator:Lmiuix/preference/DropDownPreference;

    .line 297
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->battery_indicator_style_entries:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mBatteryEntries:[Ljava/lang/String;

    .line 298
    sget-boolean v1, Lcom/android/settings/utils/StatusBarUtils;->IS_NOTCH:Z

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 299
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->notch_battery_indicator_style_entries:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mBatteryEntries:[Ljava/lang/String;

    .line 300
    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    .line 302
    aput-object v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$array;->notch_battery_indicator_style_icons:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 305
    iget-object v2, p0, Lcom/android/settings/NotchStatusBarSettings;->mBatteryIndicator:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v2, v1}, Lmiuix/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 306
    iget-object v1, p0, Lcom/android/settings/NotchStatusBarSettings;->mBatteryIndicator:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/settings/R$array;->notch_battery_indicator_style_values:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 309
    :cond_1
    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_2

    .line 311
    aput-object v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 313
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$array;->battery_indicator_style_icons:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 314
    iget-object v2, p0, Lcom/android/settings/NotchStatusBarSettings;->mBatteryIndicator:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v2, v1}, Lmiuix/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 315
    iget-object v1, p0, Lcom/android/settings/NotchStatusBarSettings;->mBatteryIndicator:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/settings/R$array;->battery_indicator_style_values:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 319
    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 320
    new-array v2, v1, [I

    move v4, v3

    :goto_3
    if-ge v4, v1, :cond_3

    .line 322
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 324
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 325
    iget-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mBatteryIndicator:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, v2}, Lmiuix/preference/DropDownPreference;->setEntryIcons([I)V

    .line 327
    iget-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mBatteryIndicator:Lmiuix/preference/DropDownPreference;

    new-instance v1, Lcom/android/settings/NotchStatusBarSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/NotchStatusBarSettings$5;-><init>(Lcom/android/settings/NotchStatusBarSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupCustomCarrier()V
    .locals 4

    const-string v0, "custom_carrier"

    .line 251
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mCustomCarrier:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 252
    sget-boolean v1, Lcom/android/settings/utils/StatusBarUtils;->IS_MX_TELCEL:Z

    const/4 v2, 0x0

    const-string/jumbo v3, "settings_status_bar"

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/settings/utils/StatusBarUtils;->IS_LM_CR:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/NotchStatusBarSettings;->mHasMobileDataFeature:Z

    if-nez v1, :cond_1

    .line 258
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/NotchStatusBarSettings;->mCustomCarrier:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 259
    iput-object v2, p0, Lcom/android/settings/NotchStatusBarSettings;->mCustomCarrier:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    return-void

    :cond_1
    const/4 p0, 0x1

    .line 262
    invoke-virtual {v0, p0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    return-void

    .line 253
    :cond_2
    :goto_0
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/NotchStatusBarSettings;->mCustomCarrier:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 254
    iput-object v2, p0, Lcom/android/settings/NotchStatusBarSettings;->mCustomCarrier:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    return-void
.end method

.method private setupNotch()V
    .locals 3

    .line 105
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "settings_notch"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mNotchCategory:Landroidx/preference/PreferenceCategory;

    .line 106
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "notch_style_mode"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mNotchStyleMode:Landroidx/preference/Preference;

    .line 107
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "notch_force_black"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mNotchForceBlack:Landroidx/preference/CheckBoxPreference;

    .line 108
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "cutout_type"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mCutoutType:Landroidx/preference/CheckBoxPreference;

    .line 109
    new-instance v1, Lcom/android/settings/NotchStatusBarSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/NotchStatusBarSettings$1;-><init>(Lcom/android/settings/NotchStatusBarSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 117
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "cutout_mode"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mCutoutMode:Landroidx/preference/Preference;

    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/Utils;->supportNotchStyleMode(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mNotchStyleMode:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 119
    iget-object v2, p0, Lcom/android/settings/NotchStatusBarSettings;->mNotchCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 120
    iput-object v1, p0, Lcom/android/settings/NotchStatusBarSettings;->mNotchStyleMode:Landroidx/preference/Preference;

    .line 122
    :cond_0
    invoke-static {}, Lcom/android/settings/utils/Utils;->supportNotchForceBlack()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mNotchForceBlack:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 123
    iget-object v2, p0, Lcom/android/settings/NotchStatusBarSettings;->mNotchCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 124
    iput-object v1, p0, Lcom/android/settings/NotchStatusBarSettings;->mNotchForceBlack:Landroidx/preference/CheckBoxPreference;

    .line 126
    :cond_1
    invoke-static {}, Lcom/android/settings/utils/Utils;->supportOverlayRoundedCorner()Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mNotchCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/NotchStatusBarSettings;->mCutoutType:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 128
    iput-object v1, p0, Lcom/android/settings/NotchStatusBarSettings;->mCutoutType:Landroidx/preference/CheckBoxPreference;

    .line 130
    :cond_2
    invoke-static {}, Lcom/android/settings/utils/Utils;->supportCutoutMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mCutoutMode:Landroidx/preference/Preference;

    if-eqz v0, :cond_3

    .line 131
    iget-object v2, p0, Lcom/android/settings/NotchStatusBarSettings;->mNotchCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 132
    iput-object v1, p0, Lcom/android/settings/NotchStatusBarSettings;->mCutoutMode:Landroidx/preference/Preference;

    .line 134
    :cond_3
    sget-boolean v0, Lcom/android/settings/utils/StatusBarUtils;->IS_NOTCH:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "odin"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 135
    :cond_4
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/NotchStatusBarSettings;->mNotchCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_5
    return-void
.end method

.method private setupNotificationShadeShortcut()V
    .locals 2

    const-string/jumbo v0, "notification_shade_shortcut"

    .line 353
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mNotificationShadeShortcut:Landroidx/preference/ListPreference;

    const-string/jumbo v0, "settings_status_bar"

    .line 354
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/NotchStatusBarSettings;->mNotificationShadeShortcut:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v0, 0x0

    .line 355
    iput-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mNotificationShadeShortcut:Landroidx/preference/ListPreference;

    return-void
.end method

.method private setupShowCarrierUnderKeyguard()V
    .locals 4

    const-string/jumbo v0, "show_carrier_under_keyguard"

    .line 221
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mShowCarrierUnderKeyguard:Landroidx/preference/CheckBoxPreference;

    .line 222
    sget-boolean v1, Lcom/android/settings/utils/StatusBarUtils;->IS_MX_TELCEL:Z

    const/4 v2, 0x0

    const-string/jumbo v3, "settings_status_bar"

    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/NotchStatusBarSettings;->mShowCarrierUnderKeyguard:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 224
    iput-object v2, p0, Lcom/android/settings/NotchStatusBarSettings;->mShowCarrierUnderKeyguard:Landroidx/preference/CheckBoxPreference;

    return-void

    .line 227
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/NotchStatusBarSettings;->mHasMobileDataFeature:Z

    if-nez v1, :cond_1

    .line 228
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/NotchStatusBarSettings;->mShowCarrierUnderKeyguard:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 229
    iput-object v2, p0, Lcom/android/settings/NotchStatusBarSettings;->mShowCarrierUnderKeyguard:Landroidx/preference/CheckBoxPreference;

    return-void

    .line 232
    :cond_1
    new-instance v1, Lcom/android/settings/NotchStatusBarSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/NotchStatusBarSettings$4;-><init>(Lcom/android/settings/NotchStatusBarSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupShowNetworkSpeed()V
    .locals 2

    const-string/jumbo v0, "show_network_speed"

    .line 206
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mShowNetworkSpeed:Landroidx/preference/CheckBoxPreference;

    .line 207
    new-instance v1, Lcom/android/settings/NotchStatusBarSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/NotchStatusBarSettings$3;-><init>(Lcom/android/settings/NotchStatusBarSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupShowNotificationIcon()V
    .locals 2

    const-string/jumbo v0, "show_notification_icon"

    .line 184
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mShowNotificationIcon:Landroidx/preference/CheckBoxPreference;

    .line 185
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->isMiuiOptimizationOff(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "settings_status_bar"

    .line 186
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/NotchStatusBarSettings;->mShowNotificationIcon:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mShowNotificationIcon:Landroidx/preference/CheckBoxPreference;

    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mShowNotificationIcon:Landroidx/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/settings/NotchStatusBarSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/NotchStatusBarSettings$2;-><init>(Lcom/android/settings/NotchStatusBarSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private updateBatteryIndicator()V
    .locals 3

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_indicator_style"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 343
    iget-object v1, p0, Lcom/android/settings/NotchStatusBarSettings;->mBatteryIndicator:Lmiuix/preference/DropDownPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 344
    iget-object v1, p0, Lcom/android/settings/NotchStatusBarSettings;->mBatteryEntries:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/android/settings/NotchStatusBarSettings;->mBatteryIndicator:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    .line 348
    iget-object v1, p0, Lcom/android/settings/NotchStatusBarSettings;->mBatteryIndicator:Lmiuix/preference/DropDownPreference;

    iget-object p0, p0, Lcom/android/settings/NotchStatusBarSettings;->mBatteryEntries:[Ljava/lang/String;

    aget-object p0, p0, v0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method private updateCustomCarrier()V
    .locals 6

    .line 266
    iget-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mCustomCarrier:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-eqz v0, :cond_5

    .line 267
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->none:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    sget-boolean v2, Lcom/android/settings/utils/StatusBarUtils;->IS_CUST_SINGLE_SIM:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    .line 271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "status_bar_custom_carrier"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 274
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lmiui/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4, v0}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 276
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move-object v4, v0

    .line 283
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, -0x1

    if-eq v3, v4, :cond_3

    const-string v4, " | "

    .line 285
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 288
    :cond_4
    iget-object p0, p0, Lcom/android/settings/NotchStatusBarSettings;->mCustomCarrier:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private updateNotch()V
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mNotchStyleMode:Landroidx/preference/Preference;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 141
    invoke-direct {p0}, Lcom/android/settings/NotchStatusBarSettings;->isForceBlack()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/NotchStatusBarSettings;->isForceBlackV2()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 142
    :goto_1
    iget-object v2, p0, Lcom/android/settings/NotchStatusBarSettings;->mCutoutMode:Landroidx/preference/Preference;

    if-eqz v2, :cond_2

    xor-int/lit8 v3, v0, 0x1

    .line 143
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 145
    :cond_2
    iget-object v2, p0, Lcom/android/settings/NotchStatusBarSettings;->mCutoutType:Landroidx/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    xor-int/2addr v0, v1

    .line 146
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mNotchForceBlack:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    .line 150
    invoke-direct {p0}, Lcom/android/settings/NotchStatusBarSettings;->isForceBlack()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mCutoutMode:Landroidx/preference/Preference;

    if-eqz v0, :cond_4

    .line 152
    invoke-direct {p0}, Lcom/android/settings/NotchStatusBarSettings;->isForceBlack()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 154
    :cond_4
    iget-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mCutoutType:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    .line 155
    invoke-direct {p0}, Lcom/android/settings/NotchStatusBarSettings;->isForceBlack()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 158
    :cond_5
    iget-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mCutoutType:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    .line 159
    invoke-direct {p0}, Lcom/android/settings/NotchStatusBarSettings;->isDripType()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_6
    return-void
.end method

.method private updateShowCarrierUnderKeyguard()V
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mShowCarrierUnderKeyguard:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "status_bar_show_carrier_under_keyguard"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 244
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method private updateShowNetworkSpeed()V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mShowNetworkSpeed:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Landroid/app/MiuiStatusBarManager;->isShowNetworkSpeed(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private updateShowNotificationIcon()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mShowNotificationIcon:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Landroid/app/MiuiStatusBarManager;->isShowNotificationIcon(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 69
    const-class p0, Lcom/android/settings/MiuiStatusBarSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    sget p1, Lcom/android/settings/R$xml;->notch_status_bar_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 78
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->status_bar_settings_status_bar:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    const-string/jumbo p1, "phone"

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 82
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/NotchStatusBarSettings;->mHasMobileDataFeature:Z

    .line 84
    invoke-direct {p0}, Lcom/android/settings/NotchStatusBarSettings;->setupNotch()V

    .line 85
    invoke-direct {p0}, Lcom/android/settings/NotchStatusBarSettings;->setupShowNotificationIcon()V

    .line 86
    invoke-direct {p0}, Lcom/android/settings/NotchStatusBarSettings;->setupShowNetworkSpeed()V

    .line 87
    invoke-direct {p0}, Lcom/android/settings/NotchStatusBarSettings;->setupShowCarrierUnderKeyguard()V

    .line 88
    invoke-direct {p0}, Lcom/android/settings/NotchStatusBarSettings;->setupCustomCarrier()V

    .line 89
    invoke-direct {p0}, Lcom/android/settings/NotchStatusBarSettings;->setupBatteryIndicator()V

    .line 90
    invoke-direct {p0}, Lcom/android/settings/NotchStatusBarSettings;->setupNotificationShadeShortcut()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 7

    .line 360
    iget-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mCustomCarrier:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-ne p2, v0, :cond_0

    .line 361
    sget v6, Lcom/android/settings/R$string;->custom_carrier_title:I

    const-string v3, "com.android.settings.CarrierNameSettings"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p0

    .line 362
    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mNotchForceBlack:Landroidx/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 364
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/NotchStatusBarSettings;->setForceBlack(Z)V

    .line 365
    iget-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mCutoutMode:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    .line 366
    invoke-direct {p0}, Lcom/android/settings/NotchStatusBarSettings;->isForceBlack()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/android/settings/NotchStatusBarSettings;->mCutoutType:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 369
    invoke-direct {p0}, Lcom/android/settings/NotchStatusBarSettings;->isForceBlack()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 372
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 95
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 96
    invoke-direct {p0}, Lcom/android/settings/NotchStatusBarSettings;->updateNotch()V

    .line 97
    invoke-direct {p0}, Lcom/android/settings/NotchStatusBarSettings;->updateShowNotificationIcon()V

    .line 98
    invoke-direct {p0}, Lcom/android/settings/NotchStatusBarSettings;->updateShowNetworkSpeed()V

    .line 99
    invoke-direct {p0}, Lcom/android/settings/NotchStatusBarSettings;->updateShowCarrierUnderKeyguard()V

    .line 100
    invoke-direct {p0}, Lcom/android/settings/NotchStatusBarSettings;->updateCustomCarrier()V

    .line 101
    invoke-direct {p0}, Lcom/android/settings/NotchStatusBarSettings;->updateBatteryIndicator()V

    return-void
.end method
