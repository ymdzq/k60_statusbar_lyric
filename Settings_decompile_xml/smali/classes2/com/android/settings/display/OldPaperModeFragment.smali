.class public Lcom/android/settings/display/OldPaperModeFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OldPaperModeFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final PAPER_MODE_MAX_LEVEL:F

.field private static final PAPER_MODE_MIN_LEVEL:F

.field private static final PER_LEVEL:F

.field private static mEndTime:I

.field private static mStartTime:I

.field private static sDeviceInformation:Ljava/lang/String;

.field private static sIsLcd:Ljava/lang/Boolean;

.field private static sIsSupportedHdr:Ljava/lang/Boolean;


# instance fields
.field dialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private isSupportHDRMode:Z

.field private mAutoTwilightPref:Lcom/android/settings/display/PaperModePreference;

.field private mContext:Landroid/content/Context;

.field private mCustomizedTimePref:Lcom/android/settings/display/PaperModePreference;

.field mLocationGetDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mOnTimeSetListener:Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;

.field private mPaperHintPref:Lcom/android/settings/widget/TipPreference;

.field private mPaperModeAdjustLevelGroup:Landroidx/preference/PreferenceGroup;

.field private mPaperModeCustomizeTimeGroup:Landroidx/preference/PreferenceGroup;

.field private mPaperModeEnableObserver:Landroid/database/ContentObserver;

.field private mPaperModeScheduleObserver:Landroid/database/ContentObserver;

.field private mPaperModeTimeGroup:Landroidx/preference/PreferenceGroup;

.field private mPaperModeTimeRadioGroup:Landroidx/preference/PreferenceGroup;

.field private mTimeFlag:Z

.field private mTimePickerDialog:Lmiuix/appcompat/app/TimePickerDialog;

.field private mTimeZoneOffset:I

.field private paperModeAdjustLevel:Lcom/android/settings/widget/MiuiSeekBarPreference;

.field private paperModeEnable:Landroidx/preference/CheckBoxPreference;

.field private paperModeEndTime:Lcom/android/settings/dndmode/LabelPreference;

.field private paperModeStartTime:Lcom/android/settings/dndmode/LabelPreference;

.field private paperModeTimeEnable:Landroidx/preference/CheckBoxPreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/display/OldPaperModeFragment;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeFlag(Lcom/android/settings/display/OldPaperModeFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mTimeFlag:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpaperModeEnable(Lcom/android/settings/display/OldPaperModeFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/OldPaperModeFragment;->paperModeEnable:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpaperModeEndTime(Lcom/android/settings/display/OldPaperModeFragment;)Lcom/android/settings/dndmode/LabelPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/OldPaperModeFragment;->paperModeEndTime:Lcom/android/settings/dndmode/LabelPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpaperModeStartTime(Lcom/android/settings/display/OldPaperModeFragment;)Lcom/android/settings/dndmode/LabelPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/OldPaperModeFragment;->paperModeStartTime:Lcom/android/settings/dndmode/LabelPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mformatChoosenTime(Lcom/android/settings/display/OldPaperModeFragment;II)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/OldPaperModeFragment;->formatChoosenTime(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPaperModeSchedulerType(Lcom/android/settings/display/OldPaperModeFragment;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/display/OldPaperModeFragment;->getPaperModeSchedulerType()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateHintPref(Lcom/android/settings/display/OldPaperModeFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/display/OldPaperModeFragment;->updateHintPref()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePaperAdjustLevelGroup(Lcom/android/settings/display/OldPaperModeFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/display/OldPaperModeFragment;->updatePaperAdjustLevelGroup(Ljava/lang/Boolean;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmEndTime()I
    .locals 1

    .line 0
    sget v0, Lcom/android/settings/display/OldPaperModeFragment;->mEndTime:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmStartTime()I
    .locals 1

    .line 0
    sget v0, Lcom/android/settings/display/OldPaperModeFragment;->mStartTime:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputmEndTime(I)V
    .locals 0

    .line 0
    sput p0, Lcom/android/settings/display/OldPaperModeFragment;->mEndTime:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmStartTime(I)V
    .locals 0

    .line 0
    sput p0, Lcom/android/settings/display/OldPaperModeFragment;->mStartTime:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 92
    sget v0, Landroid/provider/MiuiSettings$ScreenEffect;->PAPER_MODE_MAX_LEVEL:I

    int-to-float v0, v0

    sput v0, Lcom/android/settings/display/OldPaperModeFragment;->PAPER_MODE_MAX_LEVEL:F

    const-string/jumbo v1, "paper_mode_min_level"

    const/high16 v2, 0x3f800000    # 1.0f

    .line 97
    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sput v1, Lcom/android/settings/display/OldPaperModeFragment;->PAPER_MODE_MIN_LEVEL:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 98
    sput v0, Lcom/android/settings/display/OldPaperModeFragment;->PER_LEVEL:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mTimeFlag:Z

    .line 130
    new-instance v0, Lcom/android/settings/display/OldPaperModeFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/OldPaperModeFragment$1;-><init>(Lcom/android/settings/display/OldPaperModeFragment;)V

    iput-object v0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mOnTimeSetListener:Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;

    .line 148
    new-instance v0, Lcom/android/settings/display/OldPaperModeFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/display/OldPaperModeFragment$2;-><init>(Lcom/android/settings/display/OldPaperModeFragment;)V

    iput-object v0, p0, Lcom/android/settings/display/OldPaperModeFragment;->dialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private formatChoosenTime(II)Ljava/lang/String;
    .locals 2

    .line 471
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 472
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 473
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 474
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1, p1}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPaperModeLevel()I
    .locals 2

    .line 445
    iget-object p0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_paper_mode_level"

    sget v1, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_PAPER_MODE_LEVEL:I

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getPaperModeSchedulerType()I
    .locals 2

    .line 404
    iget-object p0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "paper_mode_scheduler_type"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static isLcd()Z
    .locals 2

    .line 367
    sget-object v0, Lcom/android/settings/display/OldPaperModeFragment;->sIsLcd:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const-string/jumbo v0, "ro.vendor.display.type"

    .line 368
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "oled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.display.type"

    .line 369
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 368
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/OldPaperModeFragment;->sIsLcd:Ljava/lang/Boolean;

    .line 371
    :cond_1
    sget-object v0, Lcom/android/settings/display/OldPaperModeFragment;->sIsLcd:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isPaperModeEnable(Landroid/content/Context;)Z
    .locals 2

    .line 416
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_paper_mode_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isPaperModeTimeEnable(Landroid/content/Context;)Z
    .locals 2

    .line 422
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_paper_mode_time_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private isSupportedHdrDevice()Z
    .locals 7

    const-string v0, "IOException"

    const-string v1, "OldPaperModeFragment"

    .line 478
    sget-object v2, Lcom/android/settings/display/OldPaperModeFragment;->sIsSupportedHdr:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    .line 479
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v2, Lcom/android/settings/display/OldPaperModeFragment;->sIsSupportedHdr:Ljava/lang/Boolean;

    const/4 v2, 0x0

    .line 482
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/devices/soc0/soc_id"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/display/OldPaperModeFragment;->sDeviceInformation:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 485
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "321"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/android/settings/display/OldPaperModeFragment;->sIsSupportedHdr:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 492
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

    .line 488
    :goto_0
    :try_start_3
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_2

    .line 492
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    .line 495
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_1

    .line 492
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception v2

    .line 495
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 497
    :cond_1
    :goto_2
    throw p0

    .line 499
    :cond_2
    :goto_3
    sget-object v0, Lcom/android/settings/display/OldPaperModeFragment;->sIsSupportedHdr:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean p0, p0, Lcom/android/settings/display/OldPaperModeFragment;->isSupportHDRMode:Z

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

.method private setPaperModeEnable(Z)V
    .locals 1

    .line 428
    iget-object p0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_paper_mode_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method private setPaperModeLevel(I)V
    .locals 1

    .line 438
    invoke-direct {p0}, Lcom/android/settings/display/OldPaperModeFragment;->getPaperModeLevel()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 439
    iget-object p0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_paper_mode_level"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private setPaperModeSchedulerType(I)V
    .locals 1

    .line 400
    iget-object p0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "paper_mode_scheduler_type"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setPaperModeTimeEnable(Z)V
    .locals 1

    .line 433
    iget-object p0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_paper_mode_time_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method private updateHintPref()V
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mPaperModeAdjustLevelGroup:Landroidx/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mPaperHintPref:Lcom/android/settings/widget/TipPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 376
    invoke-direct {p0}, Lcom/android/settings/display/OldPaperModeFragment;->updateSideEffectPref()V

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/display/OldPaperModeFragment;->updateHDRTipPref()V

    return-void
.end method

.method private updatePaperAdjustLevelGroup(Ljava/lang/Boolean;)V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mPaperModeAdjustLevelGroup:Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_0

    return-void

    .line 293
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 294
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mPaperModeAdjustLevelGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "paper_mode_adjust_level_group"

    .line 296
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 297
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mPaperModeAdjustLevelGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private updatePaperModeTimeGroup(Ljava/lang/Boolean;)V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mPaperModeTimeGroup:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mPaperModeTimeRadioGroup:Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 307
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mPaperModeTimeGroup:Landroidx/preference/PreferenceGroup;

    iget-object p0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mPaperModeTimeRadioGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 309
    :cond_1
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mPaperModeTimeGroup:Landroidx/preference/PreferenceGroup;

    const-string/jumbo v0, "paper_mode_time_radio_group"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 310
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mPaperModeTimeGroup:Landroidx/preference/PreferenceGroup;

    iget-object p0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mPaperModeTimeRadioGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private updateSideEffectPref()V
    .locals 2

    .line 381
    invoke-static {}, Lcom/android/settings/display/OldPaperModeFragment;->isLcd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/android/settings/display/OldPaperModeFragment;->paperModeAdjustLevel:Lcom/android/settings/widget/MiuiSeekBarPreference;

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

    .line 384
    iget-object v0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mPaperHintPref:Lcom/android/settings/widget/TipPreference;

    sget v1, Lcom/android/settings/R$string;->paper_mode_side_effect_hint:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/Preference;->setTitle(I)V

    .line 385
    iget-object v0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mPaperModeAdjustLevelGroup:Landroidx/preference/PreferenceGroup;

    iget-object p0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mPaperHintPref:Lcom/android/settings/widget/TipPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 163
    const-class p0, Lcom/android/settings/display/OldPaperModeFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initCallingLock()V
    .locals 3

    .line 355
    iget-object v0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mLocationGetDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    .line 356
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->paper_mode_get_location_dlg_title:I

    .line 357
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->paper_mode_get_location_dlg_msg:I

    .line 358
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->paper_mode_get_location_dlg_positive_btn_text:I

    iget-object v2, p0, Lcom/android/settings/display/OldPaperModeFragment;->dialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 359
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->paper_mode_get_location_dlg_negative_btn_text:I

    iget-object v2, p0, Lcom/android/settings/display/OldPaperModeFragment;->dialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 361
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 363
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mLocationGetDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 168
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 169
    sget p1, Lcom/android/settings/R$xml;->old_paper_mode_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 170
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mContext:Landroid/content/Context;

    .line 171
    invoke-static {}, Lcom/android/settings/MiuiUtils;->isSupportHDRMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->isSupportHDRMode:Z

    const-string/jumbo p1, "paper_mode_enable"

    .line 172
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->paperModeEnable:Landroidx/preference/CheckBoxPreference;

    .line 174
    iget-object v0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/display/OldPaperModeFragment;->isPaperModeEnable(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 175
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->paperModeEnable:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo p1, "paper_mode_time_radio_group"

    .line 177
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mPaperModeTimeRadioGroup:Landroidx/preference/PreferenceGroup;

    const-string/jumbo p1, "paper_mode_time_group"

    .line 178
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mPaperModeTimeGroup:Landroidx/preference/PreferenceGroup;

    const-string/jumbo p1, "paper_mode_customize_time_group"

    .line 179
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mPaperModeCustomizeTimeGroup:Landroidx/preference/PreferenceGroup;

    const-string/jumbo p1, "paper_mode_adjust_level_group"

    .line 180
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mPaperModeAdjustLevelGroup:Landroidx/preference/PreferenceGroup;

    const-string/jumbo p1, "paper_mode_time_enable"

    .line 182
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->paperModeTimeEnable:Landroidx/preference/CheckBoxPreference;

    .line 184
    iget-object v0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/display/OldPaperModeFragment;->isPaperModeTimeEnable(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 185
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->paperModeTimeEnable:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo p1, "paper_mode_auto_twilight"

    .line 187
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/display/PaperModePreference;

    iput-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mAutoTwilightPref:Lcom/android/settings/display/PaperModePreference;

    .line 189
    invoke-direct {p0}, Lcom/android/settings/display/OldPaperModeFragment;->getPaperModeSchedulerType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 190
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mAutoTwilightPref:Lcom/android/settings/display/PaperModePreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo p1, "paper_mode_customize_time"

    .line 191
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/display/PaperModePreference;

    iput-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mCustomizedTimePref:Lcom/android/settings/display/PaperModePreference;

    .line 193
    invoke-direct {p0}, Lcom/android/settings/display/OldPaperModeFragment;->getPaperModeSchedulerType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 194
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mCustomizedTimePref:Lcom/android/settings/display/PaperModePreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 196
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 197
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mTimeZoneOffset:I

    .line 198
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/display/PaperModeTimeModeUtil;->getPaperModeStartTime(Landroid/content/Context;)I

    move-result p1

    sput p1, Lcom/android/settings/display/OldPaperModeFragment;->mStartTime:I

    .line 199
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/display/PaperModeTimeModeUtil;->getPaperModeEndTime(Landroid/content/Context;)I

    move-result p1

    sput p1, Lcom/android/settings/display/OldPaperModeFragment;->mEndTime:I

    const-string/jumbo p1, "paper_mode_start_time"

    .line 200
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/dndmode/LabelPreference;

    iput-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->paperModeStartTime:Lcom/android/settings/dndmode/LabelPreference;

    const-string/jumbo p1, "paper_mode_end_time"

    .line 201
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/dndmode/LabelPreference;

    iput-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->paperModeEndTime:Lcom/android/settings/dndmode/LabelPreference;

    .line 202
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->paperModeStartTime:Lcom/android/settings/dndmode/LabelPreference;

    sget v0, Lcom/android/settings/display/OldPaperModeFragment;->mStartTime:I

    div-int/lit8 v3, v0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    invoke-direct {p0, v3, v0}, Lcom/android/settings/display/OldPaperModeFragment;->formatChoosenTime(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 203
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->paperModeEndTime:Lcom/android/settings/dndmode/LabelPreference;

    sget v0, Lcom/android/settings/display/OldPaperModeFragment;->mEndTime:I

    div-int/lit8 v3, v0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    invoke-direct {p0, v3, v0}, Lcom/android/settings/display/OldPaperModeFragment;->formatChoosenTime(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 204
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->paperModeStartTime:Lcom/android/settings/dndmode/LabelPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 205
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->paperModeEndTime:Lcom/android/settings/dndmode/LabelPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo p1, "paper_mode_adjust_level"

    .line 207
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/MiuiSeekBarPreference;

    iput-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->paperModeAdjustLevel:Lcom/android/settings/widget/MiuiSeekBarPreference;

    const/16 v0, 0x3e8

    .line 209
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    .line 210
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->paperModeAdjustLevel:Lcom/android/settings/widget/MiuiSeekBarPreference;

    invoke-direct {p0}, Lcom/android/settings/display/OldPaperModeFragment;->getPaperModeLevel()I

    move-result v0

    int-to-float v0, v0

    sget v3, Lcom/android/settings/display/OldPaperModeFragment;->PAPER_MODE_MIN_LEVEL:F

    sub-float/2addr v0, v3

    sget v3, Lcom/android/settings/display/OldPaperModeFragment;->PER_LEVEL:F

    div-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 212
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->paperModeAdjustLevel:Lcom/android/settings/widget/MiuiSeekBarPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo p1, "paper_mode_hdr_hint"

    .line 213
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/TipPreference;

    iput-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mPaperHintPref:Lcom/android/settings/widget/TipPreference;

    .line 214
    invoke-direct {p0}, Lcom/android/settings/display/OldPaperModeFragment;->updateHintPref()V

    .line 215
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->paperModeAdjustLevel:Lcom/android/settings/widget/MiuiSeekBarPreference;

    invoke-virtual {p1, v2}, Lcom/android/settings/widget/SeekBarPreference;->setContinuousUpdates(Z)V

    .line 216
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->paperModeAdjustLevel:Lcom/android/settings/widget/MiuiSeekBarPreference;

    new-instance v0, Lcom/android/settings/display/OldPaperModeFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/display/OldPaperModeFragment$3;-><init>(Lcom/android/settings/display/OldPaperModeFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setStopTrackingTouchListener(Lcom/android/settings/widget/SeekBarPreference$StopTrackingTouchListener;)V

    .line 222
    new-instance p1, Lmiuix/appcompat/app/TimePickerDialog;

    iget-object v3, p0, Lcom/android/settings/display/OldPaperModeFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/display/OldPaperModeFragment;->mOnTimeSetListener:Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;

    sget v0, Lcom/android/settings/display/OldPaperModeFragment;->mStartTime:I

    div-int/lit8 v5, v0, 0x3c

    rem-int/lit8 v6, v0, 0x3c

    .line 223
    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v7

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lmiuix/appcompat/app/TimePickerDialog;-><init>(Landroid/content/Context;Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mTimePickerDialog:Lmiuix/appcompat/app/TimePickerDialog;

    .line 226
    new-instance p1, Lcom/android/settings/display/OldPaperModeFragment$4;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/android/settings/display/OldPaperModeFragment$4;-><init>(Lcom/android/settings/display/OldPaperModeFragment;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mPaperModeEnableObserver:Landroid/database/ContentObserver;

    .line 235
    new-instance p1, Lcom/android/settings/display/OldPaperModeFragment$5;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/android/settings/display/OldPaperModeFragment$5;-><init>(Lcom/android/settings/display/OldPaperModeFragment;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mPaperModeScheduleObserver:Landroid/database/ContentObserver;

    .line 248
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "paper_mode_scheduler_type"

    .line 249
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/display/OldPaperModeFragment;->mPaperModeScheduleObserver:Landroid/database/ContentObserver;

    .line 248
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 252
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "screen_paper_mode_enabled"

    .line 253
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mPaperModeEnableObserver:Landroid/database/ContentObserver;

    .line 252
    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 460
    iget-object v1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mPaperModeEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 461
    iget-object v1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mPaperModeScheduleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 462
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 259
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "paper_mode_enable"

    .line 260
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "setting_Display_PE"

    .line 261
    invoke-static {p1, p2}, Lcom/android/settings/report/InternationalCompat;->trackReportSwitchStatus(Ljava/lang/String;Ljava/lang/Object;)V

    .line 262
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->paperModeEnable:Landroidx/preference/CheckBoxPreference;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 263
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/display/OldPaperModeFragment;->setPaperModeEnable(Z)V

    .line 264
    invoke-direct {p0, p2}, Lcom/android/settings/display/OldPaperModeFragment;->updatePaperAdjustLevelGroup(Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_0
    const-string/jumbo v0, "paper_mode_time_enable"

    .line 265
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo p1, "setting_Display_PET"

    .line 266
    invoke-static {p1, p2}, Lcom/android/settings/report/InternationalCompat;->trackReportSwitchStatus(Ljava/lang/String;Ljava/lang/Object;)V

    .line 267
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/display/OldPaperModeFragment;->setPaperModeTimeEnable(Z)V

    .line 268
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->paperModeTimeEnable:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 269
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    invoke-direct {p0}, Lcom/android/settings/display/OldPaperModeFragment;->getPaperModeSchedulerType()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 269
    :goto_0
    invoke-static {p1, v0}, Lcom/android/settings/display/PaperModeTimeModeUtil;->startPaperModeAutoTime(Landroid/content/Context;I)V

    .line 271
    invoke-direct {p0, p2}, Lcom/android/settings/display/OldPaperModeFragment;->updatePaperModeTimeGroup(Ljava/lang/Boolean;)V

    const-string p0, "ScreenEffect_PapermodeTimeControl"

    .line 272
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->trackSwitchEvent(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "paper_mode_adjust_level"

    .line 274
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 275
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    .line 276
    sget p2, Lcom/android/settings/display/OldPaperModeFragment;->PER_LEVEL:F

    mul-float/2addr p1, p2

    sget p2, Lcom/android/settings/display/OldPaperModeFragment;->PAPER_MODE_MIN_LEVEL:F

    add-float/2addr p1, p2

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/android/settings/display/OldPaperModeFragment;->setPaperModeLevel(I)V

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 318
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "paper_mode_auto_twilight"

    .line 319
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 320
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mContext:Landroid/content/Context;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    .line 321
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "location_mode"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/display/OldPaperModeFragment;->initCallingLock()V

    .line 325
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mLocationGetDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 327
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings/display/OldPaperModeFragment;->setPaperModeSchedulerType(I)V

    .line 328
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mAutoTwilightPref:Lcom/android/settings/display/PaperModePreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 329
    iget-object p0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mCustomizedTimePref:Lcom/android/settings/display/PaperModePreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    :cond_1
    const-string/jumbo v0, "paper_mode_customize_time"

    .line 330
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    .line 331
    invoke-direct {p0, p1}, Lcom/android/settings/display/OldPaperModeFragment;->setPaperModeSchedulerType(I)V

    .line 332
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mAutoTwilightPref:Lcom/android/settings/display/PaperModePreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 333
    iget-object p0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mCustomizedTimePref:Lcom/android/settings/display/PaperModePreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    :cond_2
    const-string/jumbo v0, "paper_mode_start_time"

    .line 334
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 335
    iput-boolean v2, p0, Lcom/android/settings/display/OldPaperModeFragment;->mTimeFlag:Z

    .line 336
    sget p1, Lcom/android/settings/display/OldPaperModeFragment;->mStartTime:I

    if-lez p1, :cond_3

    .line 337
    iget-object v0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mTimePickerDialog:Lmiuix/appcompat/app/TimePickerDialog;

    div-int/lit8 v1, p1, 0x3c

    rem-int/lit8 p1, p1, 0x3c

    invoke-virtual {v0, v1, p1}, Lmiuix/appcompat/app/TimePickerDialog;->updateTime(II)V

    goto :goto_0

    .line 339
    :cond_3
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mTimePickerDialog:Lmiuix/appcompat/app/TimePickerDialog;

    invoke-virtual {p1, v2, v2}, Lmiuix/appcompat/app/TimePickerDialog;->updateTime(II)V

    .line 341
    :goto_0
    iget-object p0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mTimePickerDialog:Lmiuix/appcompat/app/TimePickerDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_2

    :cond_4
    const-string/jumbo v0, "paper_mode_end_time"

    .line 342
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 343
    iput-boolean v1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mTimeFlag:Z

    .line 344
    sget p1, Lcom/android/settings/display/OldPaperModeFragment;->mEndTime:I

    if-lez p1, :cond_5

    .line 345
    iget-object v0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mTimePickerDialog:Lmiuix/appcompat/app/TimePickerDialog;

    div-int/lit8 v1, p1, 0x3c

    rem-int/lit8 p1, p1, 0x3c

    invoke-virtual {v0, v1, p1}, Lmiuix/appcompat/app/TimePickerDialog;->updateTime(II)V

    goto :goto_1

    .line 347
    :cond_5
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mTimePickerDialog:Lmiuix/appcompat/app/TimePickerDialog;

    invoke-virtual {p1, v2, v2}, Lmiuix/appcompat/app/TimePickerDialog;->updateTime(II)V

    .line 349
    :goto_1
    iget-object p0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mTimePickerDialog:Lmiuix/appcompat/app/TimePickerDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_6
    :goto_2
    return v2
.end method

.method public onResume()V
    .locals 0

    .line 467
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method

.method public onStopLocated()V
    .locals 3

    .line 410
    iget-object v0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mContext:Landroid/content/Context;

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    const v1, 0xabe9

    .line 411
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 412
    iget-object v0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/display/PaperModeSunTimeService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 283
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 285
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/display/OldPaperModeFragment;->isPaperModeTimeEnable(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/display/OldPaperModeFragment;->updatePaperModeTimeGroup(Ljava/lang/Boolean;)V

    .line 286
    iget-object p1, p0, Lcom/android/settings/display/OldPaperModeFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/display/OldPaperModeFragment;->isPaperModeEnable(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/display/OldPaperModeFragment;->updatePaperAdjustLevelGroup(Ljava/lang/Boolean;)V

    return-void
.end method

.method public updateHDRTipPref()V
    .locals 3

    .line 391
    iget-object v0, p0, Lcom/android/settings/display/OldPaperModeFragment;->paperModeAdjustLevel:Lcom/android/settings/widget/MiuiSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/SeekBarPreference;->getProgress()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/android/settings/display/OldPaperModeFragment;->PER_LEVEL:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    cmpl-float v0, v0, v1

    const-string v1, "OldPaperModeFragment"

    if-ltz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/display/OldPaperModeFragment;->isSupportedHdrDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mPaperHintPref:Lcom/android/settings/widget/TipPreference;

    sget v2, Lcom/android/settings/R$string;->screen_paper_mode_hdr_toast_new:I

    invoke-virtual {v0, v2}, Lcom/android/settingslib/miuisettings/preference/Preference;->setTitle(I)V

    .line 393
    iget-object v0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mPaperModeAdjustLevelGroup:Landroidx/preference/PreferenceGroup;

    iget-object p0, p0, Lcom/android/settings/display/OldPaperModeFragment;->mPaperHintPref:Lcom/android/settings/widget/TipPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    const-string/jumbo p0, "updateHDRTipPref: true"

    .line 394
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 396
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateHDRTipPref: false "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/settings/display/OldPaperModeFragment;->isSupportedHdrDevice()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
