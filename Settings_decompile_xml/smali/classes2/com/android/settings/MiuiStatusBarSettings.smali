.class public Lcom/android/settings/MiuiStatusBarSettings;
.super Lcom/android/settings/BaseSettingsPreferenceFragment;
.source "MiuiStatusBarSettings.java"


# instance fields
.field private mBatteryEntries:[Ljava/lang/String;

.field private mBatteryIndicator:Lmiuix/preference/DropDownPreference;

.field private mCustomCarrier:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mExpandableUnderKeyguard:Landroidx/preference/CheckBoxPreference;

.field private mExpandableUnderLockscreen:Landroidx/preference/CheckBoxPreference;

.field private mHasMobileDataFeature:Z

.field private mManageNotification:Landroidx/preference/PreferenceScreen;

.field private mNotificationFold:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mNotificationShadeShortcut:Landroidx/preference/ListPreference;

.field private mNotificationStyle:Landroidx/preference/ListPreference;

.field private mShowCarrierUnderKeyguard:Landroidx/preference/CheckBoxPreference;

.field private mShowNetworkSpeed:Landroidx/preference/CheckBoxPreference;

.field private mShowNotificationIcon:Landroidx/preference/CheckBoxPreference;

.field private mSmartHomePreferenceManager:Lcom/android/settings/smarthome/SmartHomePreferenceManager;

.field private mToggleCollapseAfterClicked:Landroidx/preference/CheckBoxPreference;

.field private mUseControlPanel:Landroidx/preference/CheckBoxPreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmExpandableUnderLockscreen(Lcom/android/settings/MiuiStatusBarSettings;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mExpandableUnderLockscreen:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSmartHomePreferenceManager(Lcom/android/settings/MiuiStatusBarSettings;)Lcom/android/settings/smarthome/SmartHomePreferenceManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mSmartHomePreferenceManager:Lcom/android/settings/smarthome/SmartHomePreferenceManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateBatteryIndicator(Lcom/android/settings/MiuiStatusBarSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiStatusBarSettings;->updateBatteryIndicator()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateNotificationStyle(Lcom/android/settings/MiuiStatusBarSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiStatusBarSettings;->updateNotificationStyle()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/BaseSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private setupBatteryIndicator()V
    .locals 6

    const-string v0, "battery_indicator"

    .line 321
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mBatteryIndicator:Lmiuix/preference/DropDownPreference;

    .line 325
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->battery_indicator_style_entries:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mBatteryEntries:[Ljava/lang/String;

    .line 326
    sget-boolean v0, Lcom/android/settings/utils/StatusBarUtils;->IS_NOTCH:Z

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/Utils;->isHole(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 327
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/Utils;->isDrip(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/Utils;->isNarrowNotch(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$array;->wide_notch_battery_indicator_style_entries:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mBatteryEntries:[Ljava/lang/String;

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$array;->notch_battery_indicator_style_entries:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mBatteryEntries:[Ljava/lang/String;

    .line 332
    :goto_0
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mBatteryEntries:[Ljava/lang/String;

    array-length v0, v0

    new-array v3, v0, [Ljava/lang/String;

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_1

    .line 334
    aput-object v1, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 336
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->notch_battery_indicator_style_icons:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lcom/android/settings/MiuiStatusBarSettings;->mBatteryIndicator:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v1, v3}, Lmiuix/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 338
    iget-object v1, p0, Lcom/android/settings/MiuiStatusBarSettings;->mBatteryIndicator:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$array;->notch_battery_indicator_style_values:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mBatteryEntries:[Ljava/lang/String;

    array-length v0, v0

    new-array v3, v0, [Ljava/lang/String;

    move v4, v2

    :goto_2
    if-ge v4, v0, :cond_3

    .line 343
    aput-object v1, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 345
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->battery_indicator_style_icons:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/android/settings/MiuiStatusBarSettings;->mBatteryIndicator:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v1, v3}, Lmiuix/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 347
    iget-object v1, p0, Lcom/android/settings/MiuiStatusBarSettings;->mBatteryIndicator:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$array;->battery_indicator_style_values:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 351
    :goto_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 352
    new-array v3, v1, [I

    move v4, v2

    :goto_4
    if-ge v4, v1, :cond_4

    .line 354
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 356
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 357
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mBatteryIndicator:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, v3}, Lmiuix/preference/DropDownPreference;->setEntryIcons([I)V

    .line 359
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mBatteryIndicator:Lmiuix/preference/DropDownPreference;

    new-instance v1, Lcom/android/settings/MiuiStatusBarSettings$7;

    invoke-direct {v1, p0}, Lcom/android/settings/MiuiStatusBarSettings$7;-><init>(Lcom/android/settings/MiuiStatusBarSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupCustomCarrier()V
    .locals 4

    const-string v0, "custom_carrier"

    .line 288
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mCustomCarrier:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 289
    sget-boolean v1, Lcom/android/settings/utils/StatusBarUtils;->IS_MX_TELCEL:Z

    const/4 v2, 0x0

    const-string/jumbo v3, "settings_status_bar"

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/settings/utils/StatusBarUtils;->IS_LM_CR:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/MiuiStatusBarSettings;->mHasMobileDataFeature:Z

    if-nez v1, :cond_1

    .line 295
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/MiuiStatusBarSettings;->mCustomCarrier:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 296
    iput-object v2, p0, Lcom/android/settings/MiuiStatusBarSettings;->mCustomCarrier:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    return-void

    :cond_1
    const/4 p0, 0x1

    .line 299
    invoke-virtual {v0, p0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    return-void

    .line 290
    :cond_2
    :goto_0
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/MiuiStatusBarSettings;->mCustomCarrier:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 291
    iput-object v2, p0, Lcom/android/settings/MiuiStatusBarSettings;->mCustomCarrier:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    return-void
.end method

.method private setupExpandableUnderKeyguard()V
    .locals 2

    const-string v0, "expandable_under_keyguard"

    .line 401
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mExpandableUnderKeyguard:Landroidx/preference/CheckBoxPreference;

    .line 402
    new-instance v1, Lcom/android/settings/MiuiStatusBarSettings$9;

    invoke-direct {v1, p0}, Lcom/android/settings/MiuiStatusBarSettings$9;-><init>(Lcom/android/settings/MiuiStatusBarSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupExpandableUnderLockscreen()V
    .locals 2

    const-string v0, "expandable_under_lock_screen"

    .line 269
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mExpandableUnderLockscreen:Landroidx/preference/CheckBoxPreference;

    .line 270
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/utils/StatusBarUtils;->isUseControlPanel(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 271
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mExpandableUnderLockscreen:Landroidx/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/settings/MiuiStatusBarSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/MiuiStatusBarSettings$6;-><init>(Lcom/android/settings/MiuiStatusBarSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupManageNotification()V
    .locals 2

    const-string/jumbo v0, "manage_notification"

    .line 164
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mManageNotification:Landroidx/preference/PreferenceScreen;

    .line 165
    new-instance v1, Lcom/android/settings/MiuiStatusBarSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/MiuiStatusBarSettings$1;-><init>(Lcom/android/settings/MiuiStatusBarSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private setupNotificationFold()V
    .locals 2

    const-string/jumbo v0, "notification_fold"

    .line 147
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mNotificationFold:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 148
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiStatusBarSettings;->mNotificationFold:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mNotificationFold:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    return-void

    :cond_0
    const/4 p0, 0x1

    .line 153
    invoke-virtual {v0, p0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    return-void
.end method

.method private setupNotificationShadeShortcut()V
    .locals 2

    const-string/jumbo v0, "notification_shade_shortcut"

    .line 416
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mNotificationShadeShortcut:Landroidx/preference/ListPreference;

    const-string/jumbo v0, "settings_status_bar"

    .line 417
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/MiuiStatusBarSettings;->mNotificationShadeShortcut:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v0, 0x0

    .line 418
    iput-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mNotificationShadeShortcut:Landroidx/preference/ListPreference;

    return-void
.end method

.method private setupNotificationStyle()V
    .locals 2

    const-string/jumbo v0, "notification_style"

    .line 422
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mNotificationStyle:Landroidx/preference/ListPreference;

    .line 423
    new-instance v1, Lcom/android/settings/MiuiStatusBarSettings$10;

    invoke-direct {v1, p0}, Lcom/android/settings/MiuiStatusBarSettings$10;-><init>(Lcom/android/settings/MiuiStatusBarSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupShowCarrierUnderKeyguard()V
    .locals 4

    const-string/jumbo v0, "show_carrier_under_keyguard"

    .line 220
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mShowCarrierUnderKeyguard:Landroidx/preference/CheckBoxPreference;

    .line 221
    sget-boolean v1, Lcom/android/settings/utils/StatusBarUtils;->IS_MX_TELCEL:Z

    const/4 v2, 0x0

    const-string/jumbo v3, "settings_status_bar"

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/settings/utils/StatusBarUtils;->IS_LM_CR:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/MiuiStatusBarSettings;->mHasMobileDataFeature:Z

    if-nez v1, :cond_1

    .line 227
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/MiuiStatusBarSettings;->mShowCarrierUnderKeyguard:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 228
    iput-object v2, p0, Lcom/android/settings/MiuiStatusBarSettings;->mShowCarrierUnderKeyguard:Landroidx/preference/CheckBoxPreference;

    return-void

    .line 231
    :cond_1
    new-instance v1, Lcom/android/settings/MiuiStatusBarSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/MiuiStatusBarSettings$4;-><init>(Lcom/android/settings/MiuiStatusBarSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    .line 222
    :cond_2
    :goto_0
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/MiuiStatusBarSettings;->mShowCarrierUnderKeyguard:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 223
    iput-object v2, p0, Lcom/android/settings/MiuiStatusBarSettings;->mShowCarrierUnderKeyguard:Landroidx/preference/CheckBoxPreference;

    return-void
.end method

.method private setupShowNetworkSpeed()V
    .locals 2

    const-string/jumbo v0, "show_network_speed"

    .line 205
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mShowNetworkSpeed:Landroidx/preference/CheckBoxPreference;

    .line 206
    new-instance v1, Lcom/android/settings/MiuiStatusBarSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/MiuiStatusBarSettings$3;-><init>(Lcom/android/settings/MiuiStatusBarSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupShowNotificationIcon()V
    .locals 2

    const-string/jumbo v0, "show_notification_icon"

    .line 183
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mShowNotificationIcon:Landroidx/preference/CheckBoxPreference;

    .line 184
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->isMiuiOptimizationOff(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "settings_status_bar"

    .line 185
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/MiuiStatusBarSettings;->mShowNotificationIcon:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mShowNotificationIcon:Landroidx/preference/CheckBoxPreference;

    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mShowNotificationIcon:Landroidx/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/settings/MiuiStatusBarSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/MiuiStatusBarSettings$2;-><init>(Lcom/android/settings/MiuiStatusBarSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupToggleCollapseAfterClicked()V
    .locals 2

    const-string/jumbo v0, "toggle_collapse_after_clicked"

    .line 386
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mToggleCollapseAfterClicked:Landroidx/preference/CheckBoxPreference;

    .line 387
    new-instance v1, Lcom/android/settings/MiuiStatusBarSettings$8;

    invoke-direct {v1, p0}, Lcom/android/settings/MiuiStatusBarSettings$8;-><init>(Lcom/android/settings/MiuiStatusBarSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupUseControlPanel()V
    .locals 2

    const-string/jumbo v0, "use_control_panel"

    .line 256
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mUseControlPanel:Landroidx/preference/CheckBoxPreference;

    .line 257
    new-instance v1, Lcom/android/settings/MiuiStatusBarSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/MiuiStatusBarSettings$5;-><init>(Lcom/android/settings/MiuiStatusBarSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private updateBatteryIndicator()V
    .locals 3

    .line 371
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_indicator_style"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 376
    iget-object v1, p0, Lcom/android/settings/MiuiStatusBarSettings;->mBatteryIndicator:Lmiuix/preference/DropDownPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 377
    iget-object v1, p0, Lcom/android/settings/MiuiStatusBarSettings;->mBatteryEntries:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 380
    :cond_0
    iget-object v1, p0, Lcom/android/settings/MiuiStatusBarSettings;->mBatteryIndicator:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    .line 381
    iget-object v1, p0, Lcom/android/settings/MiuiStatusBarSettings;->mBatteryIndicator:Lmiuix/preference/DropDownPreference;

    iget-object p0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mBatteryEntries:[Ljava/lang/String;

    aget-object p0, p0, v0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method private updateCustomCarrier()V
    .locals 6

    .line 303
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mCustomCarrier:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-eqz v0, :cond_4

    .line 304
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->none:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
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
    if-ge v3, v2, :cond_3

    .line 308
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "status_bar_custom_carrier"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 309
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lmiui/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4, v0}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_1
    move-object v4, v0

    .line 311
    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, -0x1

    if-eq v3, v4, :cond_2

    const-string v4, " | "

    .line 313
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 316
    :cond_3
    iget-object p0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mCustomCarrier:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private updateExpandableUnderKeyguard()V
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mExpandableUnderKeyguard:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Landroid/app/MiuiStatusBarManager;->isExpandableUnderKeyguard(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private updateExpandableUnderLockscreen()V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mExpandableUnderLockscreen:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/utils/StatusBarUtils;->isUseControlPanel(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 283
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mExpandableUnderLockscreen:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/utils/StatusBarUtils;->isExpandableUnderLockscreen(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private updateNotificationFold()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mNotificationFold:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->isUserFold(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/R$string;->on:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/R$string;->off:I

    .line 159
    :goto_0
    iget-object p0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mNotificationFold:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(I)V

    :cond_1
    return-void
.end method

.method private updateNotificationStyle()V
    .locals 2

    .line 434
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->getNotificationStyle(Landroid/content/Context;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 435
    iget-object v1, p0, Lcom/android/settings/MiuiStatusBarSettings;->mNotificationStyle:Landroidx/preference/ListPreference;

    invoke-virtual {v1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/android/settings/MiuiStatusBarSettings;->mNotificationStyle:Landroidx/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    .line 437
    iget-object p0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mNotificationStyle:Landroidx/preference/ListPreference;

    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateShowCarrierUnderKeyguard()V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mShowCarrierUnderKeyguard:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 244
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

    .line 243
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method private updateShowNetworkSpeed()V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mShowNetworkSpeed:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Landroid/app/MiuiStatusBarManager;->isShowNetworkSpeed(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private updateShowNotificationIcon()V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mShowNotificationIcon:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Landroid/app/MiuiStatusBarManager;->isShowNotificationIcon(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private updateToggleCollapseAfterClicked()V
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mToggleCollapseAfterClicked:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Landroid/app/MiuiStatusBarManager;->isCollapseAfterClicked(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private updateUseControlPanel()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mUseControlPanel:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/utils/StatusBarUtils;->isUseControlPanel(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 93
    const-class p0, Lcom/android/settings/MiuiStatusBarSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    sget p1, Lcom/android/settings/R$xml;->status_bar_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo p1, "phone"

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 104
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/MiuiStatusBarSettings;->mHasMobileDataFeature:Z

    .line 106
    invoke-direct {p0}, Lcom/android/settings/MiuiStatusBarSettings;->setupNotificationFold()V

    .line 107
    invoke-direct {p0}, Lcom/android/settings/MiuiStatusBarSettings;->setupManageNotification()V

    .line 108
    invoke-direct {p0}, Lcom/android/settings/MiuiStatusBarSettings;->setupShowNotificationIcon()V

    .line 109
    invoke-direct {p0}, Lcom/android/settings/MiuiStatusBarSettings;->setupShowNetworkSpeed()V

    .line 110
    invoke-direct {p0}, Lcom/android/settings/MiuiStatusBarSettings;->setupShowCarrierUnderKeyguard()V

    .line 111
    invoke-direct {p0}, Lcom/android/settings/MiuiStatusBarSettings;->setupExpandableUnderLockscreen()V

    .line 112
    invoke-direct {p0}, Lcom/android/settings/MiuiStatusBarSettings;->setupUseControlPanel()V

    .line 113
    invoke-direct {p0}, Lcom/android/settings/MiuiStatusBarSettings;->setupCustomCarrier()V

    .line 114
    invoke-direct {p0}, Lcom/android/settings/MiuiStatusBarSettings;->setupBatteryIndicator()V

    .line 115
    invoke-direct {p0}, Lcom/android/settings/MiuiStatusBarSettings;->setupToggleCollapseAfterClicked()V

    .line 116
    invoke-direct {p0}, Lcom/android/settings/MiuiStatusBarSettings;->setupExpandableUnderKeyguard()V

    .line 117
    invoke-direct {p0}, Lcom/android/settings/MiuiStatusBarSettings;->setupNotificationShadeShortcut()V

    .line 118
    invoke-direct {p0}, Lcom/android/settings/MiuiStatusBarSettings;->setupNotificationStyle()V

    .line 119
    new-instance p1, Lcom/android/settings/smarthome/SmartHomePreferenceManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/settings/smarthome/SmartHomePreferenceManager;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Lcom/android/settings/MiuiStatusBarSettings;->mSmartHomePreferenceManager:Lcom/android/settings/smarthome/SmartHomePreferenceManager;

    const-string/jumbo v0, "smart_home"

    .line 120
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lmiuix/preference/DropDownPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->onCreate(Lmiuix/preference/DropDownPreference;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 142
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 143
    iget-object p0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mSmartHomePreferenceManager:Lcom/android/settings/smarthome/SmartHomePreferenceManager;

    invoke-virtual {p0}, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 7

    .line 443
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mNotificationFold:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "com.miui.notification.management.fragment.FoldSettingsFragment"

    .line 444
    invoke-virtual {p0, p0, v2, v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mCustomCarrier:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-ne p2, v0, :cond_1

    .line 446
    sget v6, Lcom/android/settings/R$string;->custom_carrier_title:I

    const-string v3, "com.android.settings.CarrierNameSettings"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p0

    .line 447
    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 449
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 125
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 126
    invoke-direct {p0}, Lcom/android/settings/MiuiStatusBarSettings;->updateNotificationFold()V

    .line 127
    invoke-direct {p0}, Lcom/android/settings/MiuiStatusBarSettings;->updateShowNotificationIcon()V

    .line 128
    invoke-direct {p0}, Lcom/android/settings/MiuiStatusBarSettings;->updateShowNetworkSpeed()V

    .line 129
    invoke-direct {p0}, Lcom/android/settings/MiuiStatusBarSettings;->updateShowCarrierUnderKeyguard()V

    .line 130
    invoke-direct {p0}, Lcom/android/settings/MiuiStatusBarSettings;->updateUseControlPanel()V

    .line 131
    invoke-direct {p0}, Lcom/android/settings/MiuiStatusBarSettings;->updateExpandableUnderLockscreen()V

    .line 132
    invoke-direct {p0}, Lcom/android/settings/MiuiStatusBarSettings;->updateCustomCarrier()V

    .line 133
    invoke-direct {p0}, Lcom/android/settings/MiuiStatusBarSettings;->updateBatteryIndicator()V

    .line 134
    invoke-direct {p0}, Lcom/android/settings/MiuiStatusBarSettings;->updateToggleCollapseAfterClicked()V

    .line 135
    invoke-direct {p0}, Lcom/android/settings/MiuiStatusBarSettings;->updateExpandableUnderKeyguard()V

    .line 136
    invoke-direct {p0}, Lcom/android/settings/MiuiStatusBarSettings;->updateNotificationStyle()V

    .line 137
    iget-object p0, p0, Lcom/android/settings/MiuiStatusBarSettings;->mSmartHomePreferenceManager:Lcom/android/settings/smarthome/SmartHomePreferenceManager;

    invoke-virtual {p0}, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->onResume()V

    return-void
.end method
