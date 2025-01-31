.class public Lcom/android/settings/NotificationStatusBarSettings;
.super Lcom/android/settings/BaseSettingsPreferenceFragment;
.source "NotificationStatusBarSettings.java"


# instance fields
.field private mBatteryEntries:[Ljava/lang/String;

.field private mBatteryIndicator:Lmiuix/preference/DropDownPreference;

.field private mControlCenterCategory:Landroidx/preference/PreferenceCategory;

.field private mCustomCarrier:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mCutoutMode:Landroidx/preference/Preference;

.field private mCutoutType:Landroidx/preference/CheckBoxPreference;

.field private mHasMobileDataFeature:Z

.field private mNotchForceBlack:Landroidx/preference/CheckBoxPreference;

.field private mNotchStyleMode:Landroidx/preference/Preference;

.field private mNotifManager:Landroidx/preference/PreferenceScreen;

.field private mNotifStyle:Landroidx/preference/PreferenceScreen;

.field private mNotificationStatusBar:Landroidx/preference/PreferenceScreen;

.field private mQuickControlAllDevices:Landroidx/preference/CheckBoxPreference;

.field private mShowNetworkSpeed:Landroidx/preference/CheckBoxPreference;

.field private mShowNotificationEntries:[Ljava/lang/String;

.field private mShowNotificationIconCount:Lmiuix/preference/DropDownPreference;

.field private mSmartDeviceControl:Lmiuix/preference/DropDownPreference;

.field private mSmartDeviceControlEntries:[Ljava/lang/String;

.field private mStatusBarCategory:Landroidx/preference/PreferenceCategory;

.field private mWordlessMode:Landroidx/preference/CheckBoxPreference;


# direct methods
.method static bridge synthetic -$$Nest$msetDripType(Lcom/android/settings/NotificationStatusBarSettings;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/NotificationStatusBarSettings;->setDripType(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBatteryIndicator(Lcom/android/settings/NotificationStatusBarSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/NotificationStatusBarSettings;->updateBatteryIndicator()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateQuickControlAllDevices(Lcom/android/settings/NotificationStatusBarSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/NotificationStatusBarSettings;->updateQuickControlAllDevices()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateShowNotificationIconCount(Lcom/android/settings/NotificationStatusBarSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/NotificationStatusBarSettings;->updateShowNotificationIconCount()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSmartDeviceControl(Lcom/android/settings/NotificationStatusBarSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/NotificationStatusBarSettings;->updateSmartDeviceControl()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/BaseSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private isAppEnable(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 192
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 193
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 196
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v0
.end method

.method private isDripType()Z
    .locals 2

    .line 282
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

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_black"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isForceBlackV2()Z
    .locals 1

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_black_v2"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private setDripType(Z)V
    .locals 1

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "overlay_drip"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setForceBlack(Z)V
    .locals 1

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_black"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method private setUpNotificationSettingsEnable()V
    .locals 2

    const-string v0, "com.miui.notification"

    .line 185
    invoke-direct {p0, v0}, Lcom/android/settings/NotificationStatusBarSettings;->isAppEnable(Ljava/lang/String;)Z

    move-result v0

    .line 186
    iget-object v1, p0, Lcom/android/settings/NotificationStatusBarSettings;->mNotifManager:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 187
    iget-object p0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mNotifStyle:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private setupBatteryIndicator()V
    .locals 6

    const-string v0, "battery_indicator"

    .line 390
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mBatteryIndicator:Lmiuix/preference/DropDownPreference;

    .line 394
    sget-boolean v0, Lcom/android/settings/utils/StatusBarUtils;->IS_NOTCH:Z

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 395
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$array;->notch_battery_indicator_style_summaries:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mBatteryEntries:[Ljava/lang/String;

    .line 396
    array-length v0, v0

    new-array v3, v0, [Ljava/lang/String;

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_0

    .line 398
    aput-object v1, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 400
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->notch_battery_indicator_style_icons:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 401
    iget-object v1, p0, Lcom/android/settings/NotificationStatusBarSettings;->mBatteryIndicator:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v1, v3}, Lmiuix/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 402
    iget-object v1, p0, Lcom/android/settings/NotificationStatusBarSettings;->mBatteryIndicator:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$array;->notch_battery_indicator_style_values:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 404
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$array;->battery_indicator_style_summaries:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mBatteryEntries:[Ljava/lang/String;

    .line 405
    array-length v0, v0

    new-array v3, v0, [Ljava/lang/String;

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_2

    .line 407
    aput-object v1, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 409
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->battery_indicator_style_icons:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 410
    iget-object v1, p0, Lcom/android/settings/NotificationStatusBarSettings;->mBatteryIndicator:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v1, v3}, Lmiuix/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 411
    iget-object v1, p0, Lcom/android/settings/NotificationStatusBarSettings;->mBatteryIndicator:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$array;->battery_indicator_style_values:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 414
    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 415
    new-array v3, v1, [I

    move v4, v2

    :goto_3
    if-ge v4, v1, :cond_3

    .line 417
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 419
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 421
    iget-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mBatteryIndicator:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, v3}, Lmiuix/preference/DropDownPreference;->setEntryIcons([I)V

    .line 422
    iget-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mBatteryIndicator:Lmiuix/preference/DropDownPreference;

    new-instance v1, Lcom/android/settings/NotificationStatusBarSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/NotificationStatusBarSettings$4;-><init>(Lcom/android/settings/NotificationStatusBarSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupControlCenter()V
    .locals 2

    .line 466
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->isForceUseControlPanel(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/utils/StatusBarUtils;->noControlCenter()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "control_center_style"

    .line 467
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 468
    iget-object v1, p0, Lcom/android/settings/NotificationStatusBarSettings;->mControlCenterCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 469
    invoke-static {}, Lcom/android/settings/utils/StatusBarUtils;->noControlCenter()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/utils/StatusBarUtils;->isUserOwner()Z

    move-result v0

    if-nez v0, :cond_2

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mNotificationStatusBar:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mControlCenterCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    return-void
.end method

.method private setupCustomCarrier()V
    .locals 3

    const-string v0, "custom_carrier"

    .line 348
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mCustomCarrier:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 349
    sget-boolean v1, Lcom/android/settings/utils/StatusBarUtils;->IS_MX_TELCEL:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/settings/utils/StatusBarUtils;->IS_LM_CR:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/NotificationStatusBarSettings;->mHasMobileDataFeature:Z

    if-nez v1, :cond_1

    .line 355
    iget-object v1, p0, Lcom/android/settings/NotificationStatusBarSettings;->mStatusBarCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 356
    iput-object v2, p0, Lcom/android/settings/NotificationStatusBarSettings;->mCustomCarrier:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    return-void

    :cond_1
    const/4 p0, 0x1

    .line 359
    invoke-virtual {v0, p0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    return-void

    .line 350
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings/NotificationStatusBarSettings;->mStatusBarCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 351
    iput-object v2, p0, Lcom/android/settings/NotificationStatusBarSettings;->mCustomCarrier:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    return-void
.end method

.method private setupNotch()V
    .locals 3

    .line 215
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "notch_style_mode"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mNotchStyleMode:Landroidx/preference/Preference;

    .line 216
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "notch_force_black"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mNotchForceBlack:Landroidx/preference/CheckBoxPreference;

    .line 217
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "cutout_type"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mCutoutType:Landroidx/preference/CheckBoxPreference;

    .line 218
    new-instance v1, Lcom/android/settings/NotificationStatusBarSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/NotificationStatusBarSettings$1;-><init>(Lcom/android/settings/NotificationStatusBarSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 225
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "cutout_mode"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mCutoutMode:Landroidx/preference/Preference;

    .line 227
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/Utils;->supportNotchStyleMode(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mNotchStyleMode:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 228
    iget-object v2, p0, Lcom/android/settings/NotificationStatusBarSettings;->mStatusBarCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 229
    iput-object v1, p0, Lcom/android/settings/NotificationStatusBarSettings;->mNotchStyleMode:Landroidx/preference/Preference;

    .line 231
    :cond_0
    invoke-static {}, Lcom/android/settings/utils/Utils;->supportNotchForceBlack()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mNotchForceBlack:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 232
    iget-object v2, p0, Lcom/android/settings/NotificationStatusBarSettings;->mStatusBarCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 233
    iput-object v1, p0, Lcom/android/settings/NotificationStatusBarSettings;->mNotchForceBlack:Landroidx/preference/CheckBoxPreference;

    .line 235
    :cond_1
    invoke-static {}, Lcom/android/settings/utils/Utils;->supportOverlayRoundedCorner()Z

    move-result v0

    if-nez v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mStatusBarCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/NotificationStatusBarSettings;->mCutoutType:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 237
    iput-object v1, p0, Lcom/android/settings/NotificationStatusBarSettings;->mCutoutType:Landroidx/preference/CheckBoxPreference;

    .line 239
    :cond_2
    invoke-static {}, Lcom/android/settings/utils/Utils;->supportCutoutMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mCutoutMode:Landroidx/preference/Preference;

    if-eqz v0, :cond_3

    .line 240
    iget-object v2, p0, Lcom/android/settings/NotificationStatusBarSettings;->mStatusBarCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 241
    iput-object v1, p0, Lcom/android/settings/NotificationStatusBarSettings;->mCutoutMode:Landroidx/preference/Preference;

    :cond_3
    return-void
.end method

.method private setupQuickControlAllDevices()V
    .locals 2

    .line 545
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "quick_control_all_devices"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mQuickControlAllDevices:Landroidx/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    return-void

    .line 549
    :cond_0
    new-instance v1, Lcom/android/settings/NotificationStatusBarSettings$7;

    invoke-direct {v1, p0}, Lcom/android/settings/NotificationStatusBarSettings$7;-><init>(Lcom/android/settings/NotificationStatusBarSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupShowNetworkSpeed()V
    .locals 2

    const-string/jumbo v0, "show_network_speed"

    .line 333
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mShowNetworkSpeed:Landroidx/preference/CheckBoxPreference;

    .line 334
    new-instance v1, Lcom/android/settings/NotificationStatusBarSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/NotificationStatusBarSettings$3;-><init>(Lcom/android/settings/NotificationStatusBarSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupShowNotificationIconCount()V
    .locals 5

    const-string/jumbo v0, "show_notification_icon_count"

    .line 290
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mShowNotificationIconCount:Lmiuix/preference/DropDownPreference;

    if-nez v0, :cond_0

    return-void

    .line 294
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->isMiuiOptimizationOff(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mStatusBarCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/NotificationStatusBarSettings;->mShowNotificationIconCount:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v0, 0x0

    .line 296
    iput-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mShowNotificationIconCount:Lmiuix/preference/DropDownPreference;

    return-void

    .line 299
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->notification_icon_counts_entries:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mShowNotificationEntries:[Ljava/lang/String;

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 300
    filled-new-array {v1, v2, v0}, [I

    move-result-object v0

    .line 301
    :goto_0
    iget-object v2, p0, Lcom/android/settings/NotificationStatusBarSettings;->mShowNotificationEntries:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 302
    aget-object v3, v2, v1

    aget v4, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mShowNotificationIconCount:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, v2}, Lmiuix/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 305
    iget-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mShowNotificationIconCount:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$array;->notification_icon_counts_values:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 307
    iget-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mShowNotificationIconCount:Lmiuix/preference/DropDownPreference;

    new-instance v1, Lcom/android/settings/NotificationStatusBarSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/NotificationStatusBarSettings$2;-><init>(Lcom/android/settings/NotificationStatusBarSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupSmartDeviceControl()V
    .locals 3

    const-string/jumbo v0, "smart_device_control"

    .line 502
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mSmartDeviceControl:Lmiuix/preference/DropDownPreference;

    if-nez v0, :cond_0

    return-void

    .line 506
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/Utils;->checkDeviceCenterAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 507
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->smart_home_entries:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mSmartDeviceControlEntries:[Ljava/lang/String;

    .line 508
    iget-object v1, p0, Lcom/android/settings/NotificationStatusBarSettings;->mSmartDeviceControl:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 509
    iget-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mSmartDeviceControl:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$array;->smart_home_values:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 511
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->smart_device_control_entries:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mSmartDeviceControlEntries:[Ljava/lang/String;

    .line 512
    iget-object v1, p0, Lcom/android/settings/NotificationStatusBarSettings;->mSmartDeviceControl:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 513
    iget-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mSmartDeviceControl:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$array;->smart_device_control_values:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 515
    :goto_0
    iget-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mSmartDeviceControl:Lmiuix/preference/DropDownPreference;

    new-instance v1, Lcom/android/settings/NotificationStatusBarSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/NotificationStatusBarSettings$6;-><init>(Lcom/android/settings/NotificationStatusBarSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupWordlessMode()V
    .locals 2

    .line 476
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "wordless_mode"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mWordlessMode:Landroidx/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    return-void

    .line 480
    :cond_0
    new-instance v1, Lcom/android/settings/NotificationStatusBarSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/NotificationStatusBarSettings$5;-><init>(Lcom/android/settings/NotificationStatusBarSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private updateBatteryIndicator()V
    .locals 3

    .line 433
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_indicator_style"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 435
    iget-object v1, p0, Lcom/android/settings/NotificationStatusBarSettings;->mBatteryIndicator:Lmiuix/preference/DropDownPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 436
    iget-object v1, p0, Lcom/android/settings/NotificationStatusBarSettings;->mBatteryEntries:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/android/settings/NotificationStatusBarSettings;->mBatteryIndicator:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    .line 440
    iget-object v1, p0, Lcom/android/settings/NotificationStatusBarSettings;->mBatteryIndicator:Lmiuix/preference/DropDownPreference;

    iget-object p0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mBatteryEntries:[Ljava/lang/String;

    aget-object p0, p0, v0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method private updateCustomCarrier()V
    .locals 6

    .line 363
    iget-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mCustomCarrier:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-eqz v0, :cond_5

    .line 364
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->none:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
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

    .line 368
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "status_bar_custom_carrier"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 371
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lmiui/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 372
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4, v0}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 373
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move-object v4, v0

    .line 380
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, -0x1

    if-eq v3, v4, :cond_3

    const-string v4, " | "

    .line 382
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 385
    :cond_4
    iget-object p0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mCustomCarrier:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private updateNotch()V
    .locals 4

    .line 246
    iget-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mNotchStyleMode:Landroidx/preference/Preference;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 247
    invoke-direct {p0}, Lcom/android/settings/NotificationStatusBarSettings;->isForceBlack()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/NotificationStatusBarSettings;->isForceBlackV2()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 248
    :goto_1
    iget-object v2, p0, Lcom/android/settings/NotificationStatusBarSettings;->mCutoutMode:Landroidx/preference/Preference;

    if-eqz v2, :cond_2

    xor-int/lit8 v3, v0, 0x1

    .line 249
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 251
    :cond_2
    iget-object v2, p0, Lcom/android/settings/NotificationStatusBarSettings;->mCutoutType:Landroidx/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    xor-int/2addr v0, v1

    .line 252
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 255
    :cond_3
    iget-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mNotchForceBlack:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    .line 256
    invoke-direct {p0}, Lcom/android/settings/NotificationStatusBarSettings;->isForceBlack()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 257
    iget-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mCutoutMode:Landroidx/preference/Preference;

    if-eqz v0, :cond_4

    .line 258
    invoke-direct {p0}, Lcom/android/settings/NotificationStatusBarSettings;->isForceBlack()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 260
    :cond_4
    iget-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mCutoutType:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    .line 261
    invoke-direct {p0}, Lcom/android/settings/NotificationStatusBarSettings;->isForceBlack()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 264
    :cond_5
    iget-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mCutoutType:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    .line 265
    invoke-direct {p0}, Lcom/android/settings/NotificationStatusBarSettings;->isDripType()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_6
    return-void
.end method

.method private updateQuickControlAllDevices()V
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mQuickControlAllDevices:Landroidx/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    return-void

    .line 562
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/settings/utils/StatusBarUtils;->isUserOwner()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 563
    invoke-static {}, Lcom/android/settings/utils/StatusBarUtils;->noControlCenter()Z

    move-result v0

    if-nez v0, :cond_2

    .line 564
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->useControlCenter(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 565
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->getSmartDeviceControl(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mQuickControlAllDevices:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 570
    iget-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mQuickControlAllDevices:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/utils/StatusBarUtils;->isQuickControlAllDevicesOn(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    .line 566
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mQuickControlAllDevices:Landroidx/preference/CheckBoxPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private updateShowNetworkSpeed()V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mShowNetworkSpeed:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Landroid/app/MiuiStatusBarManager;->isShowNetworkSpeed(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private updateShowNotificationIconCount()V
    .locals 3

    .line 319
    iget-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mShowNotificationIconCount:Lmiuix/preference/DropDownPreference;

    if-nez v0, :cond_0

    return-void

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "status_bar_show_notification_icon"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 324
    iget-object v1, p0, Lcom/android/settings/NotificationStatusBarSettings;->mShowNotificationIconCount:Lmiuix/preference/DropDownPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 325
    iget-object v1, p0, Lcom/android/settings/NotificationStatusBarSettings;->mShowNotificationEntries:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    goto :goto_0

    .line 328
    :cond_1
    iget-object p0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mShowNotificationIconCount:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p0, v0}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method private updateSmartDeviceControl()V
    .locals 3

    .line 527
    iget-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mSmartDeviceControl:Lmiuix/preference/DropDownPreference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mSmartDeviceControlEntries:[Ljava/lang/String;

    if-eqz v0, :cond_5

    array-length v0, v0

    if-gtz v0, :cond_0

    goto :goto_2

    .line 530
    :cond_0
    invoke-static {}, Lcom/android/settings/utils/StatusBarUtils;->isUserOwner()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/settings/utils/StatusBarUtils;->noControlCenter()Z

    move-result v0

    if-nez v0, :cond_4

    .line 531
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->useControlCenter(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 535
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->getSmartDeviceControl(Landroid/content/Context;)I

    move-result v0

    .line 536
    iget-object v1, p0, Lcom/android/settings/NotificationStatusBarSettings;->mSmartDeviceControl:Lmiuix/preference/DropDownPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 537
    iget-object v1, p0, Lcom/android/settings/NotificationStatusBarSettings;->mSmartDeviceControlEntries:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    goto :goto_0

    .line 540
    :cond_2
    iget-object v1, p0, Lcom/android/settings/NotificationStatusBarSettings;->mSmartDeviceControl:Lmiuix/preference/DropDownPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 541
    iget-object p0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mSmartDeviceControl:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p0, v0}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    :cond_3
    :goto_0
    return-void

    .line 532
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mSmartDeviceControl:Lmiuix/preference/DropDownPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method private updateWordlessMode()V
    .locals 2

    .line 490
    iget-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mWordlessMode:Landroidx/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    return-void

    .line 493
    :cond_0
    invoke-static {}, Lcom/android/settings/utils/StatusBarUtils;->isUserOwner()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/settings/utils/StatusBarUtils;->noControlCenter()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->useControlCenter(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mWordlessMode:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 498
    iget-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mWordlessMode:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/utils/StatusBarUtils;->isWordlessMode(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    .line 494
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mWordlessMode:Landroidx/preference/CheckBoxPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPageIndex()I
    .locals 0

    .line 0
    const/16 p0, 0x8

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 133
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    sget p1, Lcom/android/settings/R$xml;->notification_status_bar_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 135
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->notification_status_bar:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    const-string/jumbo p1, "notification_status_bar_settings"

    .line 137
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/android/settings/NotificationStatusBarSettings;->mNotificationStatusBar:Landroidx/preference/PreferenceScreen;

    const-string/jumbo p1, "notification_managing"

    .line 140
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/android/settings/NotificationStatusBarSettings;->mNotifManager:Landroidx/preference/PreferenceScreen;

    const-string/jumbo p1, "notification_style_settings"

    .line 141
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/android/settings/NotificationStatusBarSettings;->mNotifStyle:Landroidx/preference/PreferenceScreen;

    .line 142
    invoke-direct {p0}, Lcom/android/settings/NotificationStatusBarSettings;->setUpNotificationSettingsEnable()V

    const-string/jumbo p1, "phone"

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 146
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/NotificationStatusBarSettings;->mHasMobileDataFeature:Z

    .line 147
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "settings_status_bar"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/NotificationStatusBarSettings;->mStatusBarCategory:Landroidx/preference/PreferenceCategory;

    .line 148
    invoke-direct {p0}, Lcom/android/settings/NotificationStatusBarSettings;->setupNotch()V

    .line 149
    invoke-direct {p0}, Lcom/android/settings/NotificationStatusBarSettings;->setupShowNotificationIconCount()V

    .line 150
    invoke-direct {p0}, Lcom/android/settings/NotificationStatusBarSettings;->setupShowNetworkSpeed()V

    .line 151
    invoke-direct {p0}, Lcom/android/settings/NotificationStatusBarSettings;->setupCustomCarrier()V

    .line 152
    invoke-direct {p0}, Lcom/android/settings/NotificationStatusBarSettings;->setupBatteryIndicator()V

    .line 155
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "control_center"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/NotificationStatusBarSettings;->mControlCenterCategory:Landroidx/preference/PreferenceCategory;

    .line 156
    invoke-direct {p0}, Lcom/android/settings/NotificationStatusBarSettings;->setupControlCenter()V

    .line 157
    invoke-direct {p0}, Lcom/android/settings/NotificationStatusBarSettings;->setupWordlessMode()V

    .line 158
    invoke-direct {p0}, Lcom/android/settings/NotificationStatusBarSettings;->setupSmartDeviceControl()V

    .line 159
    invoke-direct {p0}, Lcom/android/settings/NotificationStatusBarSettings;->setupQuickControlAllDevices()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 177
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 7

    .line 446
    iget-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mCustomCarrier:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-ne p2, v0, :cond_0

    .line 447
    sget v6, Lcom/android/settings/R$string;->custom_carrier_title:I

    const-string v3, "com.android.settings.CarrierNameSettings"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p0

    .line 448
    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mNotchForceBlack:Landroidx/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 450
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/NotificationStatusBarSettings;->setForceBlack(Z)V

    .line 451
    iget-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mCutoutMode:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    .line 452
    invoke-direct {p0}, Lcom/android/settings/NotificationStatusBarSettings;->isForceBlack()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/android/settings/NotificationStatusBarSettings;->mCutoutType:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 455
    invoke-direct {p0}, Lcom/android/settings/NotificationStatusBarSettings;->isForceBlack()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 458
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 164
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 165
    invoke-direct {p0}, Lcom/android/settings/NotificationStatusBarSettings;->updateNotch()V

    .line 166
    invoke-direct {p0}, Lcom/android/settings/NotificationStatusBarSettings;->updateShowNotificationIconCount()V

    .line 167
    invoke-direct {p0}, Lcom/android/settings/NotificationStatusBarSettings;->updateShowNetworkSpeed()V

    .line 168
    invoke-direct {p0}, Lcom/android/settings/NotificationStatusBarSettings;->updateCustomCarrier()V

    .line 169
    invoke-direct {p0}, Lcom/android/settings/NotificationStatusBarSettings;->updateBatteryIndicator()V

    .line 170
    invoke-direct {p0}, Lcom/android/settings/NotificationStatusBarSettings;->updateWordlessMode()V

    .line 171
    invoke-direct {p0}, Lcom/android/settings/NotificationStatusBarSettings;->updateSmartDeviceControl()V

    .line 172
    invoke-direct {p0}, Lcom/android/settings/NotificationStatusBarSettings;->updateQuickControlAllDevices()V

    return-void
.end method
