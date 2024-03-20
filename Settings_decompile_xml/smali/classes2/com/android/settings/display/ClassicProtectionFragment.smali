.class public Lcom/android/settings/display/ClassicProtectionFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ClassicProtectionFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final PER_LEVEL:F

.field private static final TEXTURE_MAX_LEVEL:F

.field private static final TEXTURE_MIN_LEVEL:F

.field private static sIsLcd:Ljava/lang/Boolean;


# instance fields
.field private final DEVICE_INFORMATION_FILE:Ljava/lang/String;

.field private isSupportHDRMode:Z

.field private mPaperHintPref:Lcom/android/settings/widget/PaperModeTipPreference;

.field private mPaperModeEnableObserver:Landroid/database/ContentObserver;

.field private mPaperModeLevel:I

.field private sDeviceInformation:Ljava/lang/String;

.field private sIsSupportedHdr:Ljava/lang/Boolean;

.field private tempPreference:Lcom/android/settings/display/TemperatureSeekBarPreference;


# direct methods
.method static bridge synthetic -$$Nest$mrefreshPreferenceState(Lcom/android/settings/display/ClassicProtectionFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/display/ClassicProtectionFragment;->refreshPreferenceState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateHintPref(Lcom/android/settings/display/ClassicProtectionFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/display/ClassicProtectionFragment;->updateHintPref()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 35
    sget v0, Landroid/provider/MiuiSettings$ScreenEffect;->PAPER_MODE_MAX_LEVEL:I

    int-to-float v0, v0

    sput v0, Lcom/android/settings/display/ClassicProtectionFragment;->TEXTURE_MAX_LEVEL:F

    const-string/jumbo v1, "paper_mode_min_level"

    const/high16 v2, 0x3f800000    # 1.0f

    .line 36
    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sput v1, Lcom/android/settings/display/ClassicProtectionFragment;->TEXTURE_MIN_LEVEL:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 38
    sput v0, Lcom/android/settings/display/ClassicProtectionFragment;->PER_LEVEL:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 43
    new-instance v0, Lcom/android/settings/display/ClassicProtectionFragment$1;

    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/display/ClassicProtectionFragment$1;-><init>(Lcom/android/settings/display/ClassicProtectionFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/display/ClassicProtectionFragment;->mPaperModeEnableObserver:Landroid/database/ContentObserver;

    const-string v0, "/sys/devices/soc0/soc_id"

    .line 57
    iput-object v0, p0, Lcom/android/settings/display/ClassicProtectionFragment;->DEVICE_INFORMATION_FILE:Ljava/lang/String;

    return-void
.end method

.method private getPaperModeLevel()I
    .locals 2

    .line 130
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_paper_mode_level"

    sget v1, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_PAPER_MODE_LEVEL:I

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static isLcd()Z
    .locals 2

    .line 185
    sget-object v0, Lcom/android/settings/display/ClassicProtectionFragment;->sIsLcd:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const-string/jumbo v0, "ro.vendor.display.type"

    .line 186
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "oled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.display.type"

    .line 187
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 186
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/ClassicProtectionFragment;->sIsLcd:Ljava/lang/Boolean;

    .line 189
    :cond_1
    sget-object v0, Lcom/android/settings/display/ClassicProtectionFragment;->sIsLcd:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private isSupportedHdrDevice()Z
    .locals 7

    const-string v0, "IOException"

    const-string v1, "ClassicProtectionFragment"

    .line 193
    iget-object v2, p0, Lcom/android/settings/display/ClassicProtectionFragment;->sIsSupportedHdr:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    .line 194
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/android/settings/display/ClassicProtectionFragment;->sIsSupportedHdr:Ljava/lang/Boolean;

    const/4 v2, 0x0

    .line 197
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/devices/soc0/soc_id"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/display/ClassicProtectionFragment;->sDeviceInformation:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 200
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "321"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/display/ClassicProtectionFragment;->sIsSupportedHdr:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 207
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    .line 203
    :goto_0
    :try_start_3
    invoke-static {v1, v0, v2}, Lmiuix/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_2

    .line 207
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    .line 210
    invoke-static {v1, v0, v2}, Lmiuix/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_1

    .line 207
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception v2

    .line 210
    invoke-static {v1, v0, v2}, Lmiuix/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    :cond_1
    :goto_2
    throw p0

    .line 214
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/android/settings/display/ClassicProtectionFragment;->sIsSupportedHdr:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean p0, p0, Lcom/android/settings/display/ClassicProtectionFragment;->isSupportHDRMode:Z

    if-eqz p0, :cond_3

    goto :goto_4

    :cond_3
    const/4 p0, 0x0

    goto :goto_5

    :cond_4
    :goto_4
    const/4 p0, 0x1

    :goto_5
    return p0
.end method

.method private refreshPreferenceState()V
    .locals 1

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object p0, p0, Lcom/android/settings/display/ClassicProtectionFragment;->tempPreference:Lcom/android/settings/display/TemperatureSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/display/PaperModeFragment;->isPaperModeEnable(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    return-void
.end method

.method private setPaperModeLevel(I)V
    .locals 1

    .line 152
    invoke-direct {p0}, Lcom/android/settings/display/ClassicProtectionFragment;->getPaperModeLevel()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_paper_mode_level"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private updateHintPref()V
    .locals 2

    .line 159
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/ClassicProtectionFragment;->mPaperHintPref:Lcom/android/settings/widget/PaperModeTipPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 160
    invoke-direct {p0}, Lcom/android/settings/display/ClassicProtectionFragment;->updateSideEffectPref()V

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/display/ClassicProtectionFragment;->updateHDRTipPref()V

    return-void
.end method

.method private updatePreference()V
    .locals 4

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_auto_adjust"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 89
    invoke-static {}, Lcom/android/settings/MiuiUtils;->supportSmartEyeCare()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne v0, v2, :cond_0

    .line 90
    iget-object v1, p0, Lcom/android/settings/display/ClassicProtectionFragment;->tempPreference:Lcom/android/settings/display/TemperatureSeekBarPreference;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 92
    :cond_0
    invoke-static {}, Lcom/android/settings/MiuiUtils;->supportSmartEyeCare()Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne v0, v2, :cond_1

    .line 93
    iget-object p0, p0, Lcom/android/settings/display/ClassicProtectionFragment;->mPaperHintPref:Lcom/android/settings/widget/PaperModeTipPreference;

    sget v0, Lcom/android/settings/R$string;->hint_unadjustable_text:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/miuisettings/preference/Preference;->setTitle(I)V

    :cond_1
    return-void
.end method

.method private updateSideEffectPref()V
    .locals 2

    .line 165
    invoke-static {}, Lcom/android/settings/display/ClassicProtectionFragment;->isLcd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/settings/display/ClassicProtectionFragment;->tempPreference:Lcom/android/settings/display/TemperatureSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/SeekBarPreference;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const v1, 0x3f333333    # 0.7f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/android/settings/display/ClassicProtectionFragment;->mPaperHintPref:Lcom/android/settings/widget/PaperModeTipPreference;

    sget v1, Lcom/android/settings/R$string;->paper_mode_side_effect_hint:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/Preference;->setTitle(I)V

    .line 169
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/display/ClassicProtectionFragment;->mPaperHintPref:Lcom/android/settings/widget/PaperModeTipPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    sget p1, Lcom/android/settings/R$xml;->classic_protection_mode:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 65
    invoke-static {}, Lcom/android/settings/MiuiUtils;->isSupportHDRMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/display/ClassicProtectionFragment;->isSupportHDRMode:Z

    const-string p1, "adjust_temperature"

    .line 66
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/display/TemperatureSeekBarPreference;

    iput-object p1, p0, Lcom/android/settings/display/ClassicProtectionFragment;->tempPreference:Lcom/android/settings/display/TemperatureSeekBarPreference;

    const/16 v0, 0x3e8

    .line 67
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    .line 68
    iget-object p1, p0, Lcom/android/settings/display/ClassicProtectionFragment;->tempPreference:Lcom/android/settings/display/TemperatureSeekBarPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setContinuousUpdates(Z)V

    .line 69
    iget-object p1, p0, Lcom/android/settings/display/ClassicProtectionFragment;->tempPreference:Lcom/android/settings/display/TemperatureSeekBarPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 70
    iget-object p1, p0, Lcom/android/settings/display/ClassicProtectionFragment;->tempPreference:Lcom/android/settings/display/TemperatureSeekBarPreference;

    new-instance v0, Lcom/android/settings/display/ClassicProtectionFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/display/ClassicProtectionFragment$2;-><init>(Lcom/android/settings/display/ClassicProtectionFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setStopTrackingTouchListener(Lcom/android/settings/widget/SeekBarPreference$StopTrackingTouchListener;)V

    const-string/jumbo p1, "paper_mode_hdr_hint"

    .line 76
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/PaperModeTipPreference;

    iput-object p1, p0, Lcom/android/settings/display/ClassicProtectionFragment;->mPaperHintPref:Lcom/android/settings/widget/PaperModeTipPreference;

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 137
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "adjust_temperature"

    .line 138
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 139
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    .line 140
    sget p2, Lcom/android/settings/display/ClassicProtectionFragment;->PER_LEVEL:F

    mul-float/2addr p1, p2

    sget p2, Lcom/android/settings/display/ClassicProtectionFragment;->TEXTURE_MIN_LEVEL:F

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/settings/display/ClassicProtectionFragment;->mPaperModeLevel:I

    .line 141
    invoke-direct {p0, p1}, Lcom/android/settings/display/ClassicProtectionFragment;->setPaperModeLevel(I)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 3

    .line 120
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 121
    invoke-direct {p0}, Lcom/android/settings/display/ClassicProtectionFragment;->getPaperModeLevel()I

    move-result v0

    .line 122
    iget v1, p0, Lcom/android/settings/display/ClassicProtectionFragment;->mPaperModeLevel:I

    if-eqz v1, :cond_0

    if-eq v1, v0, :cond_1

    .line 123
    :cond_0
    iput v0, p0, Lcom/android/settings/display/ClassicProtectionFragment;->mPaperModeLevel:I

    .line 124
    iget-object v1, p0, Lcom/android/settings/display/ClassicProtectionFragment;->tempPreference:Lcom/android/settings/display/TemperatureSeekBarPreference;

    int-to-float v0, v0

    sget v2, Lcom/android/settings/display/ClassicProtectionFragment;->TEXTURE_MIN_LEVEL:F

    sub-float/2addr v0, v2

    sget v2, Lcom/android/settings/display/ClassicProtectionFragment;->PER_LEVEL:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 126
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/display/ClassicProtectionFragment;->updateHintPref()V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 105
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 106
    invoke-direct {p0}, Lcom/android/settings/display/ClassicProtectionFragment;->refreshPreferenceState()V

    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_paper_mode_enabled"

    .line 108
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/settings/display/ClassicProtectionFragment;->mPaperModeEnableObserver:Landroid/database/ContentObserver;

    .line 107
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 114
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/display/ClassicProtectionFragment;->mPaperModeEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 81
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 82
    invoke-direct {p0}, Lcom/android/settings/display/ClassicProtectionFragment;->updatePreference()V

    return-void
.end method

.method public updateHDRTipPref()V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/android/settings/display/ClassicProtectionFragment;->tempPreference:Lcom/android/settings/display/TemperatureSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/SeekBarPreference;->getProgress()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/android/settings/display/ClassicProtectionFragment;->PER_LEVEL:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    cmpl-float v0, v0, v1

    const-string v1, "ClassicProtectionFragment"

    if-ltz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/display/ClassicProtectionFragment;->isSupportedHdrDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/settings/display/ClassicProtectionFragment;->mPaperHintPref:Lcom/android/settings/widget/PaperModeTipPreference;

    sget v2, Lcom/android/settings/R$string;->screen_paper_mode_hdr_toast_new:I

    invoke-virtual {v0, v2}, Lcom/android/settingslib/miuisettings/preference/Preference;->setTitle(I)V

    .line 177
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/display/ClassicProtectionFragment;->mPaperHintPref:Lcom/android/settings/widget/PaperModeTipPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    const-string/jumbo p0, "updateHDRTipPref: true"

    .line 178
    invoke-static {v1, p0}, Lmiuix/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateHDRTipPref: false "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/settings/display/ClassicProtectionFragment;->isSupportedHdrDevice()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lmiuix/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
