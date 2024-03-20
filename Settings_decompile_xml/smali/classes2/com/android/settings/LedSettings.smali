.class public Lcom/android/settings/LedSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LedSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final DEFAULT_BATTERY_LED_ON:I

.field private static final FRONT_FINGERPRINT_SENSOR:Z

.field private static final SUPPORT_LED_COLOR:Z

.field private static final SUPPORT_LED_FREQ:Z


# instance fields
.field private mBatteryLight:Landroidx/preference/CheckBoxPreference;

.field private mBreathingLightColor:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

.field private mBreathingLightFreq:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

.field private mButtonLight:Landroidx/preference/CheckBoxPreference;

.field private mButtonLightTimout:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

.field private mCallBreathingLightColor:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

.field private mCallBreathingLightFreq:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

.field private mMmsBreathingLightColor:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

.field private mMmsBreathingLightFreq:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

.field private mNotificationPulse:Landroidx/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "support_led_color"

    const/4 v1, 0x1

    .line 30
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/LedSettings;->SUPPORT_LED_COLOR:Z

    const-string/jumbo v0, "support_led_freq"

    const/4 v2, 0x0

    .line 31
    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/LedSettings;->SUPPORT_LED_FREQ:Z

    const-string v0, "front_fingerprint_sensor"

    .line 32
    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/LedSettings;->FRONT_FINGERPRINT_SENSOR:Z

    const-string v0, "default_battery_led_on"

    .line 34
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput v0, Lcom/android/settings/LedSettings;->DEFAULT_BATTERY_LED_ON:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getButtonLightTimeoutEntries()[Ljava/lang/String;
    .locals 10

    .line 183
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$plurals;->string_int_second:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 184
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 185
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 186
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 187
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 188
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->string_always:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 189
    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLedFreqEntries()[Ljava/lang/String;
    .locals 13

    .line 170
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$plurals;->string_int_second:I

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 171
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 172
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 173
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 174
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 176
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 177
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object v8, v9

    .line 178
    filled-new-array/range {v4 .. v12}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private removeUnusePreferences()V
    .locals 3

    .line 304
    sget-boolean v0, Lcom/android/settings/LedSettings;->SUPPORT_LED_COLOR:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 305
    iget-object v0, p0, Lcom/android/settings/LedSettings;->mBreathingLightColor:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/LedSettings;->mBreathingLightColor:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 307
    iput-object v1, p0, Lcom/android/settings/LedSettings;->mBreathingLightColor:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightColor:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightColor:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 311
    iput-object v1, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightColor:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightColor:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-eqz v0, :cond_2

    .line 314
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightColor:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 315
    iput-object v1, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightColor:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 319
    :cond_2
    sget-boolean v0, Lcom/android/settings/LedSettings;->SUPPORT_LED_FREQ:Z

    if-nez v0, :cond_5

    .line 320
    iget-object v0, p0, Lcom/android/settings/LedSettings;->mBreathingLightFreq:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-eqz v0, :cond_3

    .line 321
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/LedSettings;->mBreathingLightFreq:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 322
    iput-object v1, p0, Lcom/android/settings/LedSettings;->mBreathingLightFreq:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 324
    :cond_3
    iget-object v0, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightFreq:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-eqz v0, :cond_4

    .line 325
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightFreq:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 326
    iput-object v1, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightFreq:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 328
    :cond_4
    iget-object v0, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightFreq:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-eqz v0, :cond_5

    .line 329
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightFreq:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 330
    iput-object v1, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightFreq:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 334
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 335
    iget-object v0, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightColor:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-eqz v0, :cond_6

    .line 336
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightColor:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 337
    iput-object v1, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightColor:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 339
    :cond_6
    iget-object v0, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightFreq:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-eqz v0, :cond_7

    .line 340
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightFreq:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 341
    iput-object v1, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightFreq:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 343
    :cond_7
    iget-object v0, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightColor:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-eqz v0, :cond_8

    .line 344
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightColor:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 345
    iput-object v1, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightColor:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 347
    :cond_8
    iget-object v0, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightFreq:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-eqz v0, :cond_9

    .line 348
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightFreq:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 349
    iput-object v1, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightFreq:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    :cond_9
    return-void
.end method

.method private setEntries(Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;[Ljava/lang/String;)V
    .locals 0

    .line 194
    invoke-virtual {p1, p2}, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setSummary(Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;IZ)I
    .locals 4

    .line 199
    invoke-virtual {p1}, Lmiuix/preference/DropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p0

    array-length v0, p0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    if-eqz p3, :cond_0

    .line 203
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    .line 205
    :cond_0
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_1
    if-ne p2, v3, :cond_1

    .line 208
    invoke-virtual {p1}, Lmiuix/preference/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p0

    .line 209
    aget-object p0, p0, v1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return v1
.end method

.method private setValue(Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;IZ)V
    .locals 0

    .line 163
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/LedSettings;->setSummary(Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;IZ)I

    move-result p0

    const/4 p2, -0x1

    if-le p0, p2, :cond_0

    .line 165
    invoke-virtual {p1, p0}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 51
    const-class p0, Lcom/android/settings/LedSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    sget p1, Lcom/android/settings/R$xml;->led_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->led_settings:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    const-string/jumbo p1, "pref_button_light"

    .line 60
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/LedSettings;->mButtonLight:Landroidx/preference/CheckBoxPreference;

    const-string p1, "button_light_timeout"

    .line 61
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iput-object p1, p0, Lcom/android/settings/LedSettings;->mButtonLightTimout:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    const-string/jumbo p1, "support_button_light"

    const/4 v0, 0x0

    .line 63
    invoke-static {p1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 64
    iget-object p1, p0, Lcom/android/settings/LedSettings;->mButtonLight:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/LedSettings;->mButtonLight:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 66
    iput-object v1, p0, Lcom/android/settings/LedSettings;->mButtonLight:Landroidx/preference/CheckBoxPreference;

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/android/settings/LedSettings;->mButtonLightTimout:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-eqz p1, :cond_3

    .line 69
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/LedSettings;->mButtonLightTimout:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 70
    iput-object v1, p0, Lcom/android/settings/LedSettings;->mButtonLightTimout:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    goto :goto_0

    .line 73
    :cond_1
    iget-object p1, p0, Lcom/android/settings/LedSettings;->mButtonLight:Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_2

    .line 74
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 76
    :cond_2
    iget-object p1, p0, Lcom/android/settings/LedSettings;->mButtonLightTimout:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-eqz p1, :cond_3

    .line 77
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 81
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/settings/LedSettings;->mButtonLightTimout:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-eqz p1, :cond_4

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "screen_buttons_timeout"

    const/16 v2, 0x1388

    .line 82
    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 86
    iget-object v1, p0, Lcom/android/settings/LedSettings;->mButtonLightTimout:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/android/settings/LedSettings;->mButtonLightTimout:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p1}, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 88
    iget-object p1, p0, Lcom/android/settings/LedSettings;->mButtonLightTimout:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-direct {p0}, Lcom/android/settings/LedSettings;->getButtonLightTimeoutEntries()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/settings/LedSettings;->setEntries(Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;[Ljava/lang/String;)V

    .line 91
    :cond_4
    iget-object p1, p0, Lcom/android/settings/LedSettings;->mButtonLight:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x1

    if-eqz p1, :cond_7

    .line 92
    sget-boolean p1, Lcom/android/settings/LedSettings;->FRONT_FINGERPRINT_SENSOR:Z

    if-eqz p1, :cond_5

    const-string p1, ""

    goto :goto_1

    .line 93
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/android/settings/R$string;->pref_button_light_summary_sub:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 94
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->pref_button_light_summary:I

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 96
    iget-object v2, p0, Lcom/android/settings/LedSettings;->mButtonLight:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    iget-object p1, p0, Lcom/android/settings/LedSettings;->mButtonLight:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_buttons_turn_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_6

    move v2, v1

    goto :goto_2

    :cond_6
    move v2, v0

    :goto_2
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_7
    const-string/jumbo p1, "notification_pulse"

    .line 101
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/LedSettings;->mNotificationPulse:Landroidx/preference/CheckBoxPreference;

    .line 102
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "breathing_light_color"

    .line 104
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iput-object v2, p0, Lcom/android/settings/LedSettings;->mBreathingLightColor:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 105
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "breathing_light_freq"

    .line 106
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iput-object v3, p0, Lcom/android/settings/LedSettings;->mBreathingLightFreq:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 107
    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v3, "call_breathing_light_color"

    .line 109
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iput-object v4, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightColor:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 110
    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v4, "call_breathing_light_freq"

    .line 111
    invoke-virtual {p0, v4}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iput-object v5, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightFreq:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 112
    invoke-virtual {v5, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v5, "mms_breathing_light_color"

    .line 114
    invoke-virtual {p0, v5}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iput-object v6, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightColor:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 115
    invoke-virtual {v6, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v6, "mms_breathing_light_freq"

    .line 116
    invoke-virtual {p0, v6}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iput-object v7, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightFreq:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 117
    invoke-virtual {v7, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x11060002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, p1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 128
    iget-object v7, p0, Lcom/android/settings/LedSettings;->mBreathingLightColor:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-direct {p0, v7, p1, v1}, Lcom/android/settings/LedSettings;->setValue(Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;IZ)V

    .line 129
    iget-object p1, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightColor:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-direct {p0, p1, v3, v1}, Lcom/android/settings/LedSettings;->setValue(Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;IZ)V

    .line 130
    iget-object p1, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightColor:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-direct {p0, p1, v5, v1}, Lcom/android/settings/LedSettings;->setValue(Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;IZ)V

    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x110b0013

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v6, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 141
    iget-object v4, p0, Lcom/android/settings/LedSettings;->mBreathingLightFreq:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-direct {p0, v4, v2, v0}, Lcom/android/settings/LedSettings;->setValue(Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;IZ)V

    .line 142
    iget-object v2, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightFreq:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-direct {p0, v2, v3, v0}, Lcom/android/settings/LedSettings;->setValue(Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;IZ)V

    .line 143
    iget-object v2, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightFreq:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-direct {p0, v2, p1, v0}, Lcom/android/settings/LedSettings;->setValue(Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;IZ)V

    .line 146
    iget-object p1, p0, Lcom/android/settings/LedSettings;->mNotificationPulse:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "notification_light_pulse"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_8

    move v2, v1

    goto :goto_3

    :cond_8
    move v2, v0

    :goto_3
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string p1, "battery_light"

    .line 149
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/LedSettings;->mBatteryLight:Landroidx/preference/CheckBoxPreference;

    .line 150
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 151
    iget-object p1, p0, Lcom/android/settings/LedSettings;->mBatteryLight:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "battery_light_turn_on"

    sget v4, Lcom/android/settings/LedSettings;->DEFAULT_BATTERY_LED_ON:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_9

    move v0, v1

    :cond_9
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 154
    iget-object p1, p0, Lcom/android/settings/LedSettings;->mBreathingLightFreq:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-direct {p0}, Lcom/android/settings/LedSettings;->getLedFreqEntries()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/LedSettings;->setEntries(Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;[Ljava/lang/String;)V

    .line 155
    iget-object p1, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightFreq:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-direct {p0}, Lcom/android/settings/LedSettings;->getLedFreqEntries()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/LedSettings;->setEntries(Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;[Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightFreq:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-direct {p0}, Lcom/android/settings/LedSettings;->getLedFreqEntries()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/LedSettings;->setEntries(Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;[Ljava/lang/String;)V

    .line 158
    invoke-direct {p0}, Lcom/android/settings/LedSettings;->removeUnusePreferences()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    .line 217
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "breathing_light_color"

    .line 220
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "could not persist breathing light color settings"

    const/4 v4, 0x1

    const-string v5, "LedSettings"

    if-eqz v2, :cond_0

    .line 221
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 224
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 227
    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    move v7, v4

    goto/16 :goto_3

    :cond_0
    const-string v1, "breathing_light_freq"

    .line 229
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, "could not persist breathing light frequency settings"

    const/4 v7, 0x0

    if-eqz v2, :cond_1

    .line 230
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 232
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v0

    .line 235
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :cond_1
    const-string v1, "call_breathing_light_color"

    .line 237
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 238
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 241
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .line 244
    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    const-string v1, "call_breathing_light_freq"

    .line 246
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 247
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 249
    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception v0

    .line 252
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :cond_3
    const-string/jumbo v1, "mms_breathing_light_color"

    .line 254
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 255
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 258
    :try_start_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    .line 261
    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "mms_breathing_light_freq"

    .line 263
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 264
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 266
    :try_start_5
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_3

    :catch_5
    move-exception v0

    .line 269
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :cond_5
    const-string/jumbo v1, "notification_pulse"

    .line 271
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 272
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "notification_light_pulse"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_6
    const-string v1, "battery_light"

    .line 275
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 276
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_light_turn_on"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 280
    sget v0, Lcom/android/settings/LedSettings;->DEFAULT_BATTERY_LED_ON:I

    if-nez v0, :cond_a

    if-eqz p2, :cond_7

    const-string p2, "1"

    goto :goto_1

    :cond_7
    const-string p2, "0"

    :goto_1
    const-string/jumbo v0, "persist.vendor.sys.led"

    .line 281
    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string/jumbo v1, "pref_button_light"

    .line 283
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 284
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_buttons_turn_on"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_9
    const-string v1, "button_light_timeout"

    .line 287
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 288
    check-cast p2, Ljava/lang/String;

    .line 289
    iget-object p1, p0, Lcom/android/settings/LedSettings;->mButtonLightTimout:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p1, p2}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 290
    iget-object p1, p0, Lcom/android/settings/LedSettings;->mButtonLightTimout:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p1}, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 294
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string/jumbo p2, "screen_buttons_timeout"

    .line 291
    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v4

    :cond_a
    :goto_2
    const/4 p2, -0x1

    .line 297
    :goto_3
    instance-of v0, p1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-eqz v0, :cond_b

    .line 298
    check-cast p1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-direct {p0, p1, p2, v7}, Lcom/android/settings/LedSettings;->setSummary(Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;IZ)I

    :cond_b
    return v4
.end method
