.class public Lcom/android/settings/display/PaperModeFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PaperModeFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final PAPER_MODE_MAX_LEVEL:I

.field private static final PAPER_MODE_MIN_LEVEL:F

.field private static final PER_LEVEL:F

.field private static mEndTime:I

.field private static mStartTime:I


# instance fields
.field private classicPreference:Lcom/android/settings/display/PaperRadioButtonPreference;

.field dialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private isSupportHDRMode:Z

.field private mAutoAdjustPreference:Landroidx/preference/CheckBoxPreference;

.field private mAutoTwilightPref:Lcom/android/settings/display/PaperModePreference;

.field private mContext:Landroid/content/Context;

.field private mCustomizedTimePref:Lcom/android/settings/display/PaperModePreference;

.field private mHandler:Landroid/os/Handler;

.field mLocationGetDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mOnTimeSetListener:Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;

.field private mPaperEffectGroup:Landroidx/preference/PreferenceGroup;

.field private mPaperModeCustomizeTimeGroup:Landroidx/preference/PreferenceGroup;

.field private mPaperModeEnableObserver:Landroid/database/ContentObserver;

.field private mPaperModeScheduleObserver:Landroid/database/ContentObserver;

.field private mPaperModeTimeGroup:Landroidx/preference/PreferenceGroup;

.field private mPaperModeTimeRadioGroup:Landroidx/preference/PreferenceGroup;

.field private mTimeFlag:Z

.field private mTimePickerDialog:Lmiuix/appcompat/app/TimePickerDialog;

.field private mTimeZoneOffset:I

.field private paperModeEnable:Landroidx/preference/CheckBoxPreference;

.field private paperModeEndTime:Lcom/android/settings/dndmode/LabelPreference;

.field private paperModeStartTime:Lcom/android/settings/dndmode/LabelPreference;

.field private paperModeTimeEnable:Landroidx/preference/CheckBoxPreference;

.field private paperPreference:Lcom/android/settings/display/PaperRadioButtonPreference;


# direct methods
.method public static synthetic $r8$lambda$3QsxAYWcq_UhkQgrfQjOajEVeT8(Lcom/android/settings/display/PaperModeFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/display/PaperModeFragment;->lambda$showTimePickerDelay$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/display/PaperModeFragment;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeFlag(Lcom/android/settings/display/PaperModeFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/display/PaperModeFragment;->mTimeFlag:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpaperModeEnable(Lcom/android/settings/display/PaperModeFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/PaperModeFragment;->paperModeEnable:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpaperModeEndTime(Lcom/android/settings/display/PaperModeFragment;)Lcom/android/settings/dndmode/LabelPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/PaperModeFragment;->paperModeEndTime:Lcom/android/settings/dndmode/LabelPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpaperModeStartTime(Lcom/android/settings/display/PaperModeFragment;)Lcom/android/settings/dndmode/LabelPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/PaperModeFragment;->paperModeStartTime:Lcom/android/settings/dndmode/LabelPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckTimeSet(Lcom/android/settings/display/PaperModeFragment;IZ)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/PaperModeFragment;->checkTimeSet(IZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mformatChoosenTime(Lcom/android/settings/display/PaperModeFragment;II)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/PaperModeFragment;->formatChoosenTime(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPaperModeSchedulerType(Lcom/android/settings/display/PaperModeFragment;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/display/PaperModeFragment;->getPaperModeSchedulerType()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetTwilightTime(Lcom/android/settings/display/PaperModeFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/display/PaperModeFragment;->getTwilightTime()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePaperEffectGroup(Lcom/android/settings/display/PaperModeFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/display/PaperModeFragment;->updatePaperEffectGroup(Ljava/lang/Boolean;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmEndTime()I
    .locals 1

    .line 0
    sget v0, Lcom/android/settings/display/PaperModeFragment;->mEndTime:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmStartTime()I
    .locals 1

    .line 0
    sget v0, Lcom/android/settings/display/PaperModeFragment;->mStartTime:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputmEndTime(I)V
    .locals 0

    .line 0
    sput p0, Lcom/android/settings/display/PaperModeFragment;->mEndTime:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmStartTime(I)V
    .locals 0

    .line 0
    sput p0, Lcom/android/settings/display/PaperModeFragment;->mStartTime:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 99
    sget v0, Landroid/provider/MiuiSettings$ScreenEffect;->PAPER_MODE_MAX_LEVEL:I

    sput v0, Lcom/android/settings/display/PaperModeFragment;->PAPER_MODE_MAX_LEVEL:I

    const-string/jumbo v1, "paper_mode_min_level"

    const/high16 v2, 0x3f800000    # 1.0f

    .line 104
    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sput v1, Lcom/android/settings/display/PaperModeFragment;->PAPER_MODE_MIN_LEVEL:F

    int-to-float v0, v0

    sub-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 105
    sput v0, Lcom/android/settings/display/PaperModeFragment;->PER_LEVEL:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/android/settings/display/PaperModeFragment;->mTimeFlag:Z

    .line 140
    new-instance v0, Lcom/android/settings/display/PaperModeFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/PaperModeFragment$1;-><init>(Lcom/android/settings/display/PaperModeFragment;)V

    iput-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->mOnTimeSetListener:Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;

    .line 160
    new-instance v0, Lcom/android/settings/display/PaperModeFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/display/PaperModeFragment$2;-><init>(Lcom/android/settings/display/PaperModeFragment;)V

    iput-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->dialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public static autoAdjustState(Landroid/content/Context;)Z
    .locals 2

    .line 464
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_auto_adjust"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private checkTimeSet(IZ)Z
    .locals 2

    if-eqz p2, :cond_0

    .line 179
    sget v0, Lcom/android/settings/display/PaperModeFragment;->mEndTime:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/display/PaperModeFragment;->mStartTime:I

    :goto_0
    if-ne v0, p1, :cond_2

    .line 180
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    .line 181
    sget v0, Lcom/android/settings/R$string;->screen_dark_mode_select_time_error_summary:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    if-eqz p2, :cond_1

    .line 182
    sget p1, Lcom/android/settings/display/PaperModeFragment;->mStartTime:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/android/settings/display/PaperModeFragment;->mEndTime:I

    :goto_1
    invoke-direct {p0, p1}, Lcom/android/settings/display/PaperModeFragment;->showTimePickerDelay(I)V

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private closeNightDisplayIfNeed(Z)V
    .locals 3

    if-eqz p1, :cond_0

    return-void

    .line 478
    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "night_display_auto_mode"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 479
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 481
    :cond_1
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "night_display_activated"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_2

    .line 482
    iget-object p0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    return-void
.end method

.method private formatChoosenTime(II)Ljava/lang/String;
    .locals 2

    .line 572
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 573
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 574
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 575
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

    .line 499
    iget-object p0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

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

    .line 440
    iget-object p0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "paper_mode_scheduler_type"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getTwilightTime()V
    .locals 3

    .line 293
    invoke-direct {p0}, Lcom/android/settings/display/PaperModeFragment;->getPaperModeSchedulerType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "PaperModeFragment"

    const-string v1, "getTwilightTime: start"

    .line 294
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    const v1, 0xabe9

    invoke-static {v0, v1}, Lcom/android/settings/JobDispatcher;->scheduleJob(Landroid/content/Context;I)V

    .line 296
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/display/PaperModeSunTimeService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeFragment;->onStopLocated()V

    :goto_0
    return-void
.end method

.method private initPreferenceState()V
    .locals 5

    .line 557
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->paperModeEnable:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/display/PaperModeFragment;->isPaperModeEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 558
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->paperModeTimeEnable:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/display/PaperModeFragment;->isPaperModeTimeEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 559
    invoke-static {}, Lcom/android/settings/MiuiUtils;->supportSmartEyeCare()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->mAutoAdjustPreference:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/display/PaperModeFragment;->autoAdjustState(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->mAutoTwilightPref:Lcom/android/settings/display/PaperModePreference;

    invoke-direct {p0}, Lcom/android/settings/display/PaperModeFragment;->getPaperModeSchedulerType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 563
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->mCustomizedTimePref:Lcom/android/settings/display/PaperModePreference;

    invoke-direct {p0}, Lcom/android/settings/display/PaperModeFragment;->getPaperModeSchedulerType()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 564
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/display/PaperModeTimeModeUtil;->getPaperModeStartTime(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/android/settings/display/PaperModeFragment;->mStartTime:I

    .line 565
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/display/PaperModeTimeModeUtil;->getPaperModeEndTime(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/android/settings/display/PaperModeFragment;->mEndTime:I

    .line 566
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->paperModeStartTime:Lcom/android/settings/dndmode/LabelPreference;

    sget v1, Lcom/android/settings/display/PaperModeFragment;->mStartTime:I

    div-int/lit8 v2, v1, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    invoke-direct {p0, v2, v1}, Lcom/android/settings/display/PaperModeFragment;->formatChoosenTime(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->paperModeEndTime:Lcom/android/settings/dndmode/LabelPreference;

    sget v1, Lcom/android/settings/display/PaperModeFragment;->mEndTime:I

    div-int/lit8 v2, v1, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    invoke-direct {p0, v2, v1}, Lcom/android/settings/display/PaperModeFragment;->formatChoosenTime(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/display/PaperModeFragment;->isPaperModeEnable(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/PaperModeFragment;->updatePaperEffectGroup(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static isPaperModeEnable(Landroid/content/Context;)Z
    .locals 2

    .line 452
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

    .line 458
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_paper_mode_time_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$showTimePickerDelay$0()V
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/android/settings/display/PaperModeFragment;->mTimePickerDialog:Lmiuix/appcompat/app/TimePickerDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private setAutoAdjustLevel(Z)V
    .locals 2

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAutoAdjustLevel enable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PaperModeFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object p0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_auto_adjust"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method private setPaperModeEnable(Z)V
    .locals 2

    .line 470
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_paper_mode_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 472
    invoke-direct {p0, p1}, Lcom/android/settings/display/PaperModeFragment;->closeNightDisplayIfNeed(Z)V

    return-void
.end method

.method private setPaperModeLevel(I)V
    .locals 1

    .line 492
    invoke-direct {p0}, Lcom/android/settings/display/PaperModeFragment;->getPaperModeLevel()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 493
    iget-object p0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_paper_mode_level"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private setPaperModeSchedulerType(I)V
    .locals 1

    .line 436
    iget-object p0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "paper_mode_scheduler_type"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setPaperModeTimeEnable(Z)V
    .locals 1

    .line 487
    iget-object p0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_paper_mode_time_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method private showTimePickerDelay(I)V
    .locals 9

    .line 189
    new-instance v6, Lmiuix/appcompat/app/TimePickerDialog;

    iget-object v1, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/display/PaperModeFragment;->mOnTimeSetListener:Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;

    div-int/lit8 v7, p1, 0x3c

    rem-int/lit8 v8, p1, 0x3c

    .line 190
    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v0, v6

    move v3, v7

    move v4, v8

    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/app/TimePickerDialog;-><init>(Landroid/content/Context;Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v6, p0, Lcom/android/settings/display/PaperModeFragment;->mTimePickerDialog:Lmiuix/appcompat/app/TimePickerDialog;

    if-lez p1, :cond_0

    .line 192
    invoke-virtual {v6, v7, v8}, Lmiuix/appcompat/app/TimePickerDialog;->updateTime(II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 194
    invoke-virtual {v6, p1, p1}, Lmiuix/appcompat/app/TimePickerDialog;->updateTime(II)V

    .line 196
    :goto_0
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 197
    new-instance v0, Lcom/android/settings/display/PaperModeFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/display/PaperModeFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/PaperModeFragment;)V

    const-wide/16 v1, 0x96

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private updatePaperEffectGroup(Ljava/lang/Boolean;)V
    .locals 4

    .line 512
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->mPaperEffectGroup:Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_0

    return-void

    .line 515
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 516
    invoke-static {}, Lcom/android/settings/MiuiUtils;->supportSmartEyeCare()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 517
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mAutoAdjustPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 519
    :cond_1
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/MiuiUtils;->isSupportRhythmicMode(Landroid/content/Context;)Z

    move-result p1

    const-string/jumbo v2, "screen_mode_type"

    if-nez p1, :cond_4

    .line 520
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 522
    iget-object v2, p0, Lcom/android/settings/display/PaperModeFragment;->classicPreference:Lcom/android/settings/display/PaperRadioButtonPreference;

    if-nez p1, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 523
    iget-object p0, p0, Lcom/android/settings/display/PaperModeFragment;->paperPreference:Lcom/android/settings/display/PaperRadioButtonPreference;

    if-ne p1, v1, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 526
    :cond_4
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v3, 0x2

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 528
    iget-object v2, p0, Lcom/android/settings/display/PaperModeFragment;->classicPreference:Lcom/android/settings/display/PaperRadioButtonPreference;

    if-ne p1, v3, :cond_5

    move v3, v1

    goto :goto_1

    :cond_5
    move v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 529
    iget-object p0, p0, Lcom/android/settings/display/PaperModeFragment;->paperPreference:Lcom/android/settings/display/PaperRadioButtonPreference;

    const/4 v2, 0x3

    if-ne p1, v2, :cond_6

    move v0, v1

    :cond_6
    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 532
    :cond_7
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mAutoAdjustPreference:Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/android/settings/MiuiUtils;->supportSmartEyeCare()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 533
    iget-object p0, p0, Lcom/android/settings/display/PaperModeFragment;->mAutoAdjustPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_8
    :goto_2
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 175
    const-class p0, Lcom/android/settings/display/PaperModeFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initCallingLock()V
    .locals 3

    .line 415
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->mLocationGetDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    .line 416
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->paper_mode_get_location_dlg_title:I

    .line 417
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->paper_mode_get_location_dlg_msg:I

    .line 418
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->paper_mode_get_location_dlg_positive_btn_text:I

    iget-object v2, p0, Lcom/android/settings/display/PaperModeFragment;->dialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 419
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->paper_mode_get_location_dlg_negative_btn_text:I

    iget-object v2, p0, Lcom/android/settings/display/PaperModeFragment;->dialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 421
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 423
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->mLocationGetDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 203
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 204
    sget p1, Lcom/android/settings/R$xml;->paper_mode_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 205
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    .line 206
    invoke-static {}, Lcom/android/settings/MiuiUtils;->isSupportHDRMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/display/PaperModeFragment;->isSupportHDRMode:Z

    const-string/jumbo p1, "paper_mode_enable"

    .line 207
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->paperModeEnable:Landroidx/preference/CheckBoxPreference;

    .line 209
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo p1, "paper_mode_time_radio_group"

    .line 211
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mPaperModeTimeRadioGroup:Landroidx/preference/PreferenceGroup;

    const-string/jumbo p1, "paper_mode_time_group"

    .line 212
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mPaperModeTimeGroup:Landroidx/preference/PreferenceGroup;

    const-string/jumbo p1, "paper_mode_customize_time_group"

    .line 213
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mPaperModeCustomizeTimeGroup:Landroidx/preference/PreferenceGroup;

    const-string/jumbo p1, "paper_mode_time_enable"

    .line 214
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->paperModeTimeEnable:Landroidx/preference/CheckBoxPreference;

    .line 216
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo p1, "paper_effect"

    .line 218
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mPaperEffectGroup:Landroidx/preference/PreferenceGroup;

    const-string p1, "classic_mode"

    .line 219
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/display/PaperRadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->classicPreference:Lcom/android/settings/display/PaperRadioButtonPreference;

    .line 220
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/MiuiUtils;->isSupportRhythmicMode(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 221
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->classicPreference:Lcom/android/settings/display/PaperRadioButtonPreference;

    invoke-virtual {p1, v0}, Lcom/android/settings/display/PaperRadioButtonPreference;->setShowRightArrow(Z)V

    .line 222
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->classicPreference:Lcom/android/settings/display/PaperRadioButtonPreference;

    sget v1, Lcom/android/settings/R$string;->rhythmic_mode_enable_title:I

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 223
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->classicPreference:Lcom/android/settings/display/PaperRadioButtonPreference;

    sget v1, Lcom/android/settings/R$string;->rhythmic_mode_enable_summary:I

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 225
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 226
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings.display.ClassicProtectionActivity"

    const-string v3, "com.android.settings"

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 227
    iget-object v1, p0, Lcom/android/settings/display/PaperModeFragment;->classicPreference:Lcom/android/settings/display/PaperRadioButtonPreference;

    iget-object v2, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v1, v2, p1}, Lcom/android/settings/display/PaperRadioButtonPreference;->setTargetIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 228
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->classicPreference:Lcom/android/settings/display/PaperRadioButtonPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo p1, "paper_mode"

    .line 230
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/display/PaperRadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->paperPreference:Lcom/android/settings/display/PaperRadioButtonPreference;

    .line 231
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/MiuiUtils;->isSupportRhythmicMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 232
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->paperPreference:Lcom/android/settings/display/PaperRadioButtonPreference;

    sget v1, Lcom/android/settings/R$string;->classic_mode_title:I

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 233
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->paperPreference:Lcom/android/settings/display/PaperRadioButtonPreference;

    sget v1, Lcom/android/settings/R$string;->classic_mode_summary:I

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 235
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 236
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings.display.PaperProtectionActivity"

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 237
    iget-object v1, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/MiuiUtils;->isSupportRhythmicMode(Landroid/content/Context;)Z

    move-result v1

    const-string v2, ":settings:show_fragment_title_resid"

    if-eqz v1, :cond_2

    .line 238
    sget v1, Lcom/android/settings/R$string;->classic_mode_title:I

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 240
    :cond_2
    sget v1, Lcom/android/settings/R$string;->paper_mode_title:I

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 242
    :goto_0
    iget-object v1, p0, Lcom/android/settings/display/PaperModeFragment;->paperPreference:Lcom/android/settings/display/PaperRadioButtonPreference;

    iget-object v2, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v1, v2, p1}, Lcom/android/settings/display/PaperRadioButtonPreference;->setTargetIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 243
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->paperPreference:Lcom/android/settings/display/PaperRadioButtonPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "auto_adjust_effect"

    .line 245
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mAutoAdjustPreference:Landroidx/preference/CheckBoxPreference;

    .line 246
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo p1, "paper_mode_auto_twilight"

    .line 248
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/display/PaperModePreference;

    iput-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mAutoTwilightPref:Lcom/android/settings/display/PaperModePreference;

    .line 250
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo p1, "paper_mode_customize_time"

    .line 251
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/display/PaperModePreference;

    iput-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mCustomizedTimePref:Lcom/android/settings/display/PaperModePreference;

    .line 253
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 255
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 256
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/PaperModeFragment;->mTimeZoneOffset:I

    .line 257
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mHandler:Landroid/os/Handler;

    const-string/jumbo p1, "paper_mode_start_time"

    .line 258
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/dndmode/LabelPreference;

    iput-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->paperModeStartTime:Lcom/android/settings/dndmode/LabelPreference;

    const-string/jumbo p1, "paper_mode_end_time"

    .line 259
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/dndmode/LabelPreference;

    iput-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->paperModeEndTime:Lcom/android/settings/dndmode/LabelPreference;

    .line 260
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->paperModeStartTime:Lcom/android/settings/dndmode/LabelPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 261
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->paperModeEndTime:Lcom/android/settings/dndmode/LabelPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 263
    new-instance p1, Lmiuix/appcompat/app/TimePickerDialog;

    iget-object v2, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/display/PaperModeFragment;->mOnTimeSetListener:Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;

    sget v1, Lcom/android/settings/display/PaperModeFragment;->mStartTime:I

    div-int/lit8 v4, v1, 0x3c

    rem-int/lit8 v5, v1, 0x3c

    .line 264
    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lmiuix/appcompat/app/TimePickerDialog;-><init>(Landroid/content/Context;Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mTimePickerDialog:Lmiuix/appcompat/app/TimePickerDialog;

    .line 266
    new-instance p1, Lcom/android/settings/display/PaperModeFragment$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v1}, Lcom/android/settings/display/PaperModeFragment$3;-><init>(Lcom/android/settings/display/PaperModeFragment;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mPaperModeEnableObserver:Landroid/database/ContentObserver;

    .line 275
    new-instance p1, Lcom/android/settings/display/PaperModeFragment$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v1}, Lcom/android/settings/display/PaperModeFragment$4;-><init>(Lcom/android/settings/display/PaperModeFragment;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mPaperModeScheduleObserver:Landroid/database/ContentObserver;

    .line 283
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "paper_mode_scheduler_type"

    .line 284
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/display/PaperModeFragment;->mPaperModeScheduleObserver:Landroid/database/ContentObserver;

    .line 283
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 287
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "screen_paper_mode_enabled"

    .line 288
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/display/PaperModeFragment;->mPaperModeEnableObserver:Landroid/database/ContentObserver;

    .line 287
    invoke-virtual {p1, v1, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 544
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 545
    iget-object v1, p0, Lcom/android/settings/display/PaperModeFragment;->mPaperModeEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 546
    iget-object v1, p0, Lcom/android/settings/display/PaperModeFragment;->mPaperModeScheduleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 547
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 304
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 307
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "paper_mode_enable"

    .line 308
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo p1, "setting_Display_PE"

    .line 309
    invoke-static {p1, p2}, Lcom/android/settings/report/InternationalCompat;->trackReportSwitchStatus(Ljava/lang/String;Ljava/lang/Object;)V

    .line 310
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->paperModeEnable:Landroidx/preference/CheckBoxPreference;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 311
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/display/PaperModeFragment;->setPaperModeEnable(Z)V

    .line 312
    invoke-direct {p0, p2}, Lcom/android/settings/display/PaperModeFragment;->updatePaperEffectGroup(Ljava/lang/Boolean;)V

    .line 313
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {v0, p0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->trackSwitchEvent(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "paper_mode_time_enable"

    .line 314
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo p1, "setting_Display_PET"

    .line 315
    invoke-static {p1, p2}, Lcom/android/settings/report/InternationalCompat;->trackReportSwitchStatus(Ljava/lang/String;Ljava/lang/Object;)V

    .line 316
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/display/PaperModeFragment;->setPaperModeTimeEnable(Z)V

    .line 317
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->paperModeTimeEnable:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 318
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 319
    invoke-direct {p0}, Lcom/android/settings/display/PaperModeFragment;->getTwilightTime()V

    .line 321
    :cond_2
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 322
    invoke-direct {p0}, Lcom/android/settings/display/PaperModeFragment;->getPaperModeSchedulerType()I

    move-result v1

    .line 321
    :cond_3
    invoke-static {p1, v1}, Lcom/android/settings/display/PaperModeTimeModeUtil;->startPaperModeAutoTime(Landroid/content/Context;I)V

    const-string p0, "ScreenEffect_PapermodeTimeControl"

    .line 323
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->trackSwitchEvent(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "paper_mode_adjust_level"

    .line 324
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 325
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    .line 326
    sget p2, Lcom/android/settings/display/PaperModeFragment;->PER_LEVEL:F

    mul-float/2addr p1, p2

    sget p2, Lcom/android/settings/display/PaperModeFragment;->PAPER_MODE_MIN_LEVEL:F

    add-float/2addr p1, p2

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/android/settings/display/PaperModeFragment;->setPaperModeLevel(I)V

    goto :goto_0

    :cond_5
    const-string v0, "auto_adjust_effect"

    .line 327
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 328
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/display/PaperModeFragment;->setAutoAdjustLevel(Z)V

    :cond_6
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 11

    .line 349
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 350
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "paper_mode_auto_twilight"

    .line 351
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 352
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    .line 353
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "location_mode"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeFragment;->initCallingLock()V

    .line 357
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mLocationGetDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 359
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings/display/PaperModeFragment;->setPaperModeSchedulerType(I)V

    .line 360
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mAutoTwilightPref:Lcom/android/settings/display/PaperModePreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 361
    iget-object p0, p0, Lcom/android/settings/display/PaperModeFragment;->mCustomizedTimePref:Lcom/android/settings/display/PaperModePreference;

    invoke-virtual {p0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_3

    :cond_1
    const-string/jumbo v1, "paper_mode_customize_time"

    .line 362
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x2

    if-eqz v1, :cond_2

    .line 363
    invoke-direct {p0, v4}, Lcom/android/settings/display/PaperModeFragment;->setPaperModeSchedulerType(I)V

    .line 364
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mAutoTwilightPref:Lcom/android/settings/display/PaperModePreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 365
    iget-object p0, p0, Lcom/android/settings/display/PaperModeFragment;->mCustomizedTimePref:Lcom/android/settings/display/PaperModePreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_3

    :cond_2
    const-string/jumbo v1, "paper_mode_start_time"

    .line 366
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 367
    iput-boolean v3, p0, Lcom/android/settings/display/PaperModeFragment;->mTimeFlag:Z

    .line 368
    new-instance p1, Lmiuix/appcompat/app/TimePickerDialog;

    iget-object v6, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/display/PaperModeFragment;->mOnTimeSetListener:Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;

    sget v0, Lcom/android/settings/display/PaperModeFragment;->mStartTime:I

    div-int/lit8 v8, v0, 0x3c

    rem-int/lit8 v9, v0, 0x3c

    .line 369
    invoke-static {v6}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v10

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lmiuix/appcompat/app/TimePickerDialog;-><init>(Landroid/content/Context;Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mTimePickerDialog:Lmiuix/appcompat/app/TimePickerDialog;

    .line 370
    sget v0, Lcom/android/settings/display/PaperModeFragment;->mStartTime:I

    if-lez v0, :cond_3

    .line 371
    div-int/lit8 v1, v0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/app/TimePickerDialog;->updateTime(II)V

    goto :goto_0

    .line 373
    :cond_3
    invoke-virtual {p1, v3, v3}, Lmiuix/appcompat/app/TimePickerDialog;->updateTime(II)V

    .line 375
    :goto_0
    iget-object p0, p0, Lcom/android/settings/display/PaperModeFragment;->mTimePickerDialog:Lmiuix/appcompat/app/TimePickerDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_3

    :cond_4
    const-string/jumbo v1, "paper_mode_end_time"

    .line 376
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 377
    iput-boolean v2, p0, Lcom/android/settings/display/PaperModeFragment;->mTimeFlag:Z

    .line 378
    new-instance p1, Lmiuix/appcompat/app/TimePickerDialog;

    iget-object v6, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/display/PaperModeFragment;->mOnTimeSetListener:Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;

    sget v0, Lcom/android/settings/display/PaperModeFragment;->mEndTime:I

    div-int/lit8 v8, v0, 0x3c

    rem-int/lit8 v9, v0, 0x3c

    .line 379
    invoke-static {v6}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v10

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lmiuix/appcompat/app/TimePickerDialog;-><init>(Landroid/content/Context;Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mTimePickerDialog:Lmiuix/appcompat/app/TimePickerDialog;

    .line 380
    sget v0, Lcom/android/settings/display/PaperModeFragment;->mEndTime:I

    if-lez v0, :cond_5

    .line 381
    div-int/lit8 v1, v0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/app/TimePickerDialog;->updateTime(II)V

    goto :goto_1

    .line 383
    :cond_5
    invoke-virtual {p1, v3, v3}, Lmiuix/appcompat/app/TimePickerDialog;->updateTime(II)V

    .line 385
    :goto_1
    iget-object p0, p0, Lcom/android/settings/display/PaperModeFragment;->mTimePickerDialog:Lmiuix/appcompat/app/TimePickerDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_3

    :cond_6
    const-string v1, "classic_mode"

    .line 386
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v5, "screen_mode_type"

    if-eqz v1, :cond_8

    .line 387
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/MiuiUtils;->isSupportRhythmicMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 389
    iget-object p0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 393
    :cond_7
    iget-object p0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_8
    const-string/jumbo v1, "paper_mode"

    .line 396
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 397
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/MiuiUtils;->isSupportRhythmicMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 399
    iget-object p0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 403
    :cond_9
    iget-object p0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x3

    invoke-static {p0, v5, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 406
    :goto_2
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p0, :cond_a

    const-string/jumbo p0, "status"

    .line 407
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "texture_eyecare_status"

    .line 408
    invoke-static {p0, v0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    :cond_a
    :goto_3
    return v2
.end method

.method public onResume()V
    .locals 0

    .line 552
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 553
    invoke-direct {p0}, Lcom/android/settings/display/PaperModeFragment;->initPreferenceState()V

    return-void
.end method

.method public onStopLocated()V
    .locals 3

    .line 446
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    const v1, 0xabe9

    .line 447
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 448
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/display/PaperModeSunTimeService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 335
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 336
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/MiuiUtils;->isSupportRhythmicMode(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 337
    invoke-static {}, Lcom/android/settings/MiuiUtils;->supportPaperEyeCare()Z

    move-result p1

    if-nez p1, :cond_0

    .line 338
    iget-object p1, p0, Lcom/android/settings/display/PaperModeFragment;->paperPreference:Lcom/android/settings/display/PaperRadioButtonPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 341
    :cond_0
    invoke-static {}, Lcom/android/settings/MiuiUtils;->supportSmartEyeCare()Z

    move-result p1

    if-nez p1, :cond_1

    .line 342
    iget-object p0, p0, Lcom/android/settings/display/PaperModeFragment;->mAutoAdjustPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    return-void
.end method
