.class public Lcom/android/settings/location/MiuiLocationSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "MiuiLocationSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;


# instance fields
.field private mAGpsParas:Landroidx/preference/Preference;

.field private mActive:Z

.field private mAgpsEnabled:Z

.field private mAgpsRoaming:Landroidx/preference/CheckBoxPreference;

.field private mAssistedGps:Landroidx/preference/CheckBoxPreference;

.field private mBatterySaving:Lcom/android/settingslib/widget/RadioButtonPreference;

.field private mCurrentMode:I

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mHasGpsFeature:Z

.field private mHighAccuracy:Lcom/android/settingslib/widget/RadioButtonPreference;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationMode:Landroidx/preference/Preference;

.field private mManagedProfile:Landroid/os/UserHandle;

.field private mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mManagedProfileSwitchClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

.field private mModeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mSensorsOnly:Lcom/android/settingslib/widget/RadioButtonPreference;

.field private mSharedSP:Landroid/content/SharedPreferences;

.field private mSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mUm:Landroid/os/UserManager;

.field private mValidListener:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmAgpsRoaming(Lcom/android/settings/location/MiuiLocationSettings;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mAgpsRoaming:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocationManager(Lcom/android/settings/location/MiuiLocationSettings;)Landroid/location/LocationManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mLocationManager:Landroid/location/LocationManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmManagedProfile(Lcom/android/settings/location/MiuiLocationSettings;)Landroid/os/UserHandle;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmManagedProfileSwitch(Lcom/android/settings/location/MiuiLocationSettings;)Lcom/android/settingslib/RestrictedSwitchPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUm(Lcom/android/settings/location/MiuiLocationSettings;)Landroid/os/UserManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mUm:Landroid/os/UserManager;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mActive:Z

    .line 620
    new-instance v0, Lcom/android/settings/location/MiuiLocationSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/location/MiuiLocationSettings$5;-><init>(Lcom/android/settings/location/MiuiLocationSettings;)V

    iput-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mManagedProfileSwitchClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method private addLocationServices(Landroid/content/Context;Landroidx/preference/PreferenceScreen;Z)V
    .locals 0

    .line 0
    return-void
.end method

.method private changeManagedProfileLocationAccessStatus(Z)V
    .locals 3

    .line 584
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 587
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 588
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    .line 589
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/location/MiuiLocationSettings;->getShareLocationEnforcedAdmin(I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 591
    invoke-direct {p0}, Lcom/android/settings/location/MiuiLocationSettings;->isManagedProfileRestrictedByBase()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 593
    iget-object p1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 594
    iget-object p0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 597
    :cond_1
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 599
    sget v0, Lcom/android/settings/R$string;->switch_off_text:I

    if-nez p1, :cond_2

    .line 601
    iget-object p1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 603
    :cond_2
    iget-object p1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    xor-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz v1, :cond_3

    goto :goto_0

    .line 605
    :cond_3
    sget p1, Lcom/android/settings/R$string;->switch_on_text:I

    move v0, p1

    .line 606
    :goto_0
    iget-object p1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mManagedProfileSwitchClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 609
    :goto_1
    iget-object p0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_2
    return-void
.end method

.method private createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;
    .locals 6

    .line 206
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 210
    :cond_0
    sget v0, Lcom/android/settings/R$xml;->miui_location_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 211
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 213
    const-class v1, Lcom/android/settings/location/RecentLocationAccessPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 215
    invoke-virtual {v1, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 216
    invoke-virtual {v1}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 217
    invoke-virtual {v1}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    .line 220
    :cond_1
    invoke-virtual {v1}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    .line 219
    invoke-virtual {v1, v2}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 224
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/location/MiuiLocationSettings;->setupManagedProfileCategory(Landroidx/preference/PreferenceScreen;)V

    const-string v1, "location_toggle"

    .line 225
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 226
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "location_mode"

    .line 228
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mLocationMode:Landroidx/preference/Preference;

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.location.gps"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mHasGpsFeature:Z

    if-nez v1, :cond_3

    .line 232
    iget-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mLocationMode:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v1, 0x0

    .line 233
    iput-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mLocationMode:Landroidx/preference/Preference;

    goto :goto_1

    :cond_3
    const-string v1, "high_accuracy"

    .line 235
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/widget/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mHighAccuracy:Lcom/android/settingslib/widget/RadioButtonPreference;

    const-string v1, "battery_saving"

    .line 236
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/widget/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mBatterySaving:Lcom/android/settingslib/widget/RadioButtonPreference;

    const-string/jumbo v1, "sensors_only"

    .line 237
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/widget/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mSensorsOnly:Lcom/android/settingslib/widget/RadioButtonPreference;

    .line 238
    iget-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mHighAccuracy:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/settingslib/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;)V

    .line 239
    iget-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mBatterySaving:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/settingslib/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;)V

    .line 240
    iget-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mSensorsOnly:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/settingslib/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;)V

    .line 243
    :goto_1
    invoke-static {}, Lcom/android/settings/AgpsSettings;->isAgpsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mAgpsEnabled:Z

    const-string v1, "assisted_gps"

    .line 244
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mAssistedGps:Landroidx/preference/CheckBoxPreference;

    const-string v1, "agps_roaming"

    .line 245
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mAgpsRoaming:Landroidx/preference/CheckBoxPreference;

    .line 246
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v3}, Lcom/android/settings/MiuiUtils;->getAgpsRoaming(Landroid/location/LocationManager;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    move v2, v4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string v1, "assisted_gps_params"

    .line 247
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mAGpsParas:Landroidx/preference/Preference;

    .line 248
    iget-boolean v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mAgpsEnabled:Z

    if-nez v1, :cond_5

    .line 249
    iget-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mAssistedGps:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 250
    iget-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mAGpsParas:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 251
    iget-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mAgpsRoaming:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    :cond_5
    const-string/jumbo v1, "support_agps_paras"

    .line 252
    invoke-static {v1, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 253
    iget-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mAgpsRoaming:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    :cond_6
    const-string/jumbo v1, "support_agps_roaming"

    .line 254
    invoke-static {v1, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 255
    iget-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mAGpsParas:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 258
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mAssistedGps:Landroidx/preference/CheckBoxPreference;

    if-eqz v1, :cond_9

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "assisted_gps_enabled"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_8

    move v2, v4

    goto :goto_4

    :cond_8
    move v2, v3

    :goto_4
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 267
    :cond_9
    iget-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/android/settings/location/MiuiLocationSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v5, "no_share_location"

    .line 268
    invoke-virtual {v2, v5, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v3, v4

    .line 271
    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0, v1, v0, v3}, Lcom/android/settings/location/MiuiLocationSettings;->addLocationServices(Landroid/content/Context;Landroidx/preference/PreferenceScreen;Z)V

    .line 272
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/location/MiuiLocationSettings;->refreshLocationMode()V

    return-object v0
.end method

.method private isManagedProfileRestrictedByBase()Z
    .locals 2

    .line 614
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 617
    :cond_0
    iget-object p0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v1, "no_share_location"

    invoke-virtual {p0, v1, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method private isRestricted()Z
    .locals 1

    .line 390
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    const-string/jumbo v0, "no_share_location"

    .line 391
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private setupManagedProfileCategory(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 571
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mUm:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    const/4 v1, 0x0

    const-string/jumbo v2, "managed_profile_location_switch"

    if-nez v0, :cond_0

    .line 574
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 575
    iput-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    goto :goto_0

    .line 578
    :cond_0
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 579
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :goto_0
    return-void
.end method

.method private updateRadioButtons(Lcom/android/settingslib/widget/RadioButtonPreference;)V
    .locals 4

    .line 546
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mHighAccuracy:Lcom/android/settingslib/widget/RadioButtonPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 550
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 551
    iget-object p1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mBatterySaving:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 552
    iget-object p0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mSensorsOnly:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    .line 554
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 555
    iget-object p1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mBatterySaving:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 556
    iget-object p0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mSensorsOnly:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 557
    :cond_2
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->mBatterySaving:Lcom/android/settingslib/widget/RadioButtonPreference;

    if-ne p1, v3, :cond_3

    .line 558
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 559
    iget-object p1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mBatterySaving:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 560
    iget-object p0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mSensorsOnly:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 561
    :cond_3
    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->mSensorsOnly:Lcom/android/settingslib/widget/RadioButtonPreference;

    if-ne p1, v3, :cond_4

    .line 562
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 563
    iget-object p1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mBatterySaving:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 564
    iget-object p0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mSensorsOnly:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 199
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "MiuiLocationSettings"

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 189
    sget p0, Lcom/android/settings/R$xml;->miui_location_settings:I

    return p0
.end method

.method getShareLocationEnforcedAdmin(I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 2

    .line 635
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "no_share_location"

    .line 634
    invoke-static {v0, v1, p1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-nez v0, :cond_0

    .line 639
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string/jumbo v0, "no_config_location"

    .line 638
    invoke-static {p0, v0, p1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 158
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 159
    new-instance p1, Lcom/android/settings/location/MiuiLocationSettings$1;

    invoke-direct {p1, p0}, Lcom/android/settings/location/MiuiLocationSettings$1;-><init>(Lcom/android/settings/location/MiuiLocationSettings;)V

    iput-object p1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mModeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 168
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mLocationManager:Landroid/location/LocationManager;

    .line 169
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "location_last_mode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mSharedSP:Landroid/content/SharedPreferences;

    .line 170
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo p1, "user"

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mUm:Landroid/os/UserManager;

    .line 172
    invoke-static {p1}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    return-void
.end method

.method public onModeChanged(IZ)V
    .locals 6

    .line 486
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/location/MiuiLocationSettings;->getShareLocationEnforcedAdmin(I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 487
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "no_share_location"

    .line 488
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 487
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 491
    iget-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 495
    :goto_1
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    if-eq v4, v0, :cond_3

    .line 497
    iget-boolean v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mValidListener:Z

    if-eqz v0, :cond_2

    .line 498
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 500
    :cond_2
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 501
    iget-boolean v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mValidListener:Z

    if-eqz v0, :cond_3

    .line 502
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 506
    :cond_3
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mLocationMode:Landroidx/preference/Preference;

    if-nez v0, :cond_4

    return-void

    :cond_4
    if-eqz p1, :cond_8

    if-eq p1, v3, :cond_7

    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    const/4 v1, 0x3

    if-eq p1, v1, :cond_5

    goto :goto_2

    .line 524
    :cond_5
    sget v1, Lcom/android/settings/R$string;->location_mode_high_accuracy_title:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 525
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mHighAccuracy:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/location/MiuiLocationSettings;->updateRadioButtons(Lcom/android/settingslib/widget/RadioButtonPreference;)V

    goto :goto_2

    .line 520
    :cond_6
    sget v1, Lcom/android/settings/R$string;->location_mode_battery_saving_title:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 521
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mBatterySaving:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/location/MiuiLocationSettings;->updateRadioButtons(Lcom/android/settingslib/widget/RadioButtonPreference;)V

    goto :goto_2

    .line 516
    :cond_7
    sget v1, Lcom/android/settings/R$string;->location_mode_sensors_only_title:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 517
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mSensorsOnly:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/location/MiuiLocationSettings;->updateRadioButtons(Lcom/android/settingslib/widget/RadioButtonPreference;)V

    goto :goto_2

    .line 512
    :cond_8
    sget v5, Lcom/android/settings/R$string;->location_mode_location_off_title:I

    invoke-virtual {v0, v5}, Landroidx/preference/Preference;->setSummary(I)V

    .line 513
    invoke-direct {p0, v1}, Lcom/android/settings/location/MiuiLocationSettings;->updateRadioButtons(Lcom/android/settingslib/widget/RadioButtonPreference;)V

    :goto_2
    if-eqz p1, :cond_9

    .line 532
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 533
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 536
    :cond_9
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mLocationMode:Landroidx/preference/Preference;

    if-eqz v4, :cond_a

    if-nez p2, :cond_a

    move v1, v3

    goto :goto_3

    :cond_a
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz p1, :cond_b

    if-nez p2, :cond_b

    move v2, v3

    .line 539
    :cond_b
    iget-object p1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mHighAccuracy:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 540
    iget-object p1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mBatterySaving:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 541
    iget-object p1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mSensorsOnly:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 542
    invoke-direct {p0, v2}, Lcom/android/settings/location/MiuiLocationSettings;->changeManagedProfileLocationAccessStatus(Z)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 379
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mModeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiuiLocationSettings"

    const-string v2, "Error"

    .line 381
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    :goto_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const/4 v0, 0x0

    .line 384
    iput-boolean v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mActive:Z

    .line 385
    iput-boolean v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mValidListener:Z

    .line 386
    iget-object p0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 350
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "location_toggle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 353
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 354
    iget-object p1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mSharedSP:Landroid/content/SharedPreferences;

    .line 355
    iget-boolean p2, p0, Lcom/android/settings/location/MiuiLocationSettings;->mHasGpsFeature:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x3

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    :goto_0
    const-string v1, "last_mode"

    .line 354
    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/location/MiuiLocationSettings;->setLocationMode(I)V

    goto :goto_1

    .line 358
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/location/MiuiLocationSettings;->setLocationMode(I)V

    :goto_1
    return v0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 5

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings;->mAssistedGps:Landroidx/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_3

    .line 282
    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "assisted_gps_supl_host"

    .line 283
    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "assisted_gps_supl_port"

    if-eqz p2, :cond_0

    .line 284
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    :cond_0
    const/4 p2, 0x0

    .line 287
    :try_start_0
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 288
    new-instance v3, Ljava/io/File;

    const-string v4, "/etc/gps.conf"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 290
    :try_start_1
    invoke-virtual {v2, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v3, "SUPL_HOST"

    .line 292
    invoke-virtual {v2, v3, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 291
    invoke-static {v0, p1, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "SUPL_PORT"

    .line 294
    invoke-virtual {v2, p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 293
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object p2, v4

    goto :goto_1

    :catch_0
    move-exception p1

    move-object p2, v4

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_0
    :try_start_3
    const-string v1, "LocationSettings"

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not open GPS configuration file /etc/gps.conf, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p2, :cond_2

    .line 301
    :try_start_4
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :goto_1
    if-eqz p2, :cond_1

    :try_start_5
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 305
    :catch_2
    :cond_1
    throw p0

    .line 309
    :catch_3
    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mAssistedGps:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    const-string p1, "assisted_gps_enabled"

    .line 308
    invoke-static {v0, p1, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 310
    :cond_3
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mAgpsRoaming:Landroidx/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_5

    .line 311
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 312
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance p2, Lcom/android/settings/location/MiuiLocationSettings$3;

    invoke-direct {p2, p0}, Lcom/android/settings/location/MiuiLocationSettings$3;-><init>(Lcom/android/settings/location/MiuiLocationSettings;)V

    const/high16 v0, 0x1040000    # @android:string/cancel

    .line 313
    invoke-virtual {p1, v0, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/settings/location/MiuiLocationSettings$2;

    invoke-direct {p2, p0}, Lcom/android/settings/location/MiuiLocationSettings$2;-><init>(Lcom/android/settings/location/MiuiLocationSettings;)V

    const v0, 0x104000a    # @android:string/ok

    .line 322
    invoke-virtual {p1, v0, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->agps_roaming_dia_title:I

    .line 331
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->agps_roaming_dia:I

    .line 332
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 333
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    .line 334
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_3

    .line 336
    :cond_4
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mLocationManager:Landroid/location/LocationManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/MiuiUtils;->setAgpsRoaming(Landroid/location/LocationManager;I)V

    :goto_3
    const/4 p0, 0x1

    return p0

    .line 339
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onRadioButtonClicked(Lcom/android/settingslib/widget/RadioButtonPreference;)V
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mHighAccuracy:Lcom/android/settingslib/widget/RadioButtonPreference;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mBatterySaving:Lcom/android/settingslib/widget/RadioButtonPreference;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mSensorsOnly:Lcom/android/settingslib/widget/RadioButtonPreference;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 373
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/location/MiuiLocationSettings;->setLocationMode(I)V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 177
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mActive:Z

    .line 179
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.location.MODE_CHANGED"

    .line 180
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->mModeChangeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 182
    iput-boolean v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mValidListener:Z

    .line 183
    invoke-direct {p0}, Lcom/android/settings/location/MiuiLocationSettings;->createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method public refreshLocationMode()V
    .locals 3

    .line 417
    iget-boolean v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mActive:Z

    if-eqz v0, :cond_1

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 420
    iput v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mCurrentMode:I

    const/4 v1, 0x4

    const-string v2, "MiuiLocationSettings"

    .line 421
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Location mode has been changed"

    .line 422
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/location/MiuiLocationSettings;->isRestricted()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/location/MiuiLocationSettings;->onModeChanged(IZ)V

    :cond_1
    return-void
.end method

.method public setLocationMode(I)V
    .locals 4

    .line 395
    invoke-direct {p0}, Lcom/android/settings/location/MiuiLocationSettings;->isRestricted()Z

    move-result v0

    const-string v1, "location_mode"

    if-eqz v0, :cond_2

    const/4 p1, 0x4

    const-string v0, "MiuiLocationSettings"

    .line 398
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Restricted user, not setting location mode"

    .line 399
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 403
    iget-boolean v0, p0, Lcom/android/settings/location/MiuiLocationSettings;->mActive:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 404
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/location/MiuiLocationSettings;->onModeChanged(IZ)V

    :cond_1
    return-void

    .line 408
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.location.MODE_CHANGING"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "CURRENT_MODE"

    .line 409
    iget v3, p0, Lcom/android/settings/location/MiuiLocationSettings;->mCurrentMode:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "NEW_MODE"

    .line 410
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 411
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 413
    invoke-virtual {p0}, Lcom/android/settings/location/MiuiLocationSettings;->refreshLocationMode()V

    return-void
.end method
