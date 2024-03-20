.class public Lcom/android/settings/notification/MiuiSilentSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiSilentSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/MiuiSilentSettingsFragment$SettingsObserver;
    }
.end annotation


# instance fields
.field private mAdvancedSettings:Landroidx/preference/PreferenceCategory;

.field private mAdvancedSettings2:Landroidx/preference/PreferenceCategory;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMuteMusic:Landroidx/preference/CheckBoxPreference;

.field private mMuteVoiceAssist:Landroidx/preference/CheckBoxPreference;

.field private mNetWorkAlarmPreference:Landroidx/preference/CheckBoxPreference;

.field private mNetWorkAlarmSummaryPreference:Lcom/android/settings/notification/SilentModeNetWorkAlarmSummaryPreference;

.field private mNormal:Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;

.field private mPopup:Landroidx/preference/CheckBoxPreference;

.field private mRadioButtonClickListner:Landroidx/preference/Preference$OnPreferenceClickListener;

.field private mRepeat:Landroidx/preference/CheckBoxPreference;

.field private mRoot:Landroidx/preference/PreferenceScreen;

.field private final mSettingsObserver:Lcom/android/settings/notification/MiuiSilentSettingsFragment$SettingsObserver;

.field private mSilentModeSettings:Lcom/android/settingslib/miuisettings/preference/RadioButtonPreferenceCategory;

.field private mStandard:Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;

.field private mTimedMute:Lcom/android/settings/dndmode/LabelPreference;

.field private mTotal:Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;

.field private mVipList:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/notification/MiuiSilentSettingsFragment;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/notification/MiuiSilentSettingsFragment;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSilentModeSettings(Lcom/android/settings/notification/MiuiSilentSettingsFragment;)Lcom/android/settingslib/miuisettings/preference/RadioButtonPreferenceCategory;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mSilentModeSettings:Lcom/android/settingslib/miuisettings/preference/RadioButtonPreferenceCategory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateControl(Lcom/android/settings/notification/MiuiSilentSettingsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->updateControl()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 74
    new-instance v0, Lcom/android/settings/notification/MiuiSilentSettingsFragment$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/MiuiSilentSettingsFragment$SettingsObserver;-><init>(Lcom/android/settings/notification/MiuiSilentSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mSettingsObserver:Lcom/android/settings/notification/MiuiSilentSettingsFragment$SettingsObserver;

    .line 299
    new-instance v0, Lcom/android/settings/notification/MiuiSilentSettingsFragment$9;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/MiuiSilentSettingsFragment$9;-><init>(Lcom/android/settings/notification/MiuiSilentSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mRadioButtonClickListner:Landroidx/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/MiuiSilentSettingsFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/MiuiSilentSettingsFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/MiuiSilentSettingsFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private isAutomationRuleEnabled(Landroid/service/notification/ZenModeConfig;)Z
    .locals 0

    .line 461
    iget-object p0, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 462
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 463
    iget-boolean p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static turnMillSecondsToHour(J)Ljava/lang/String;
    .locals 5

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v1, 0x36ee80

    .line 328
    div-long v3, p0, v1

    long-to-int v3, v3

    .line 329
    rem-long/2addr p0, v1

    long-to-int p0, p0

    const p1, 0xea60

    .line 330
    div-int/2addr p0, p1

    const-string p1, "0"

    const/16 v1, 0xa

    if-ge v3, v1, :cond_0

    .line 332
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge p0, v1, :cond_1

    .line 336
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateControl()V
    .locals 5

    .line 344
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    .line 346
    iget-object v1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mSilentModeSettings:Lcom/android/settingslib/miuisettings/preference/RadioButtonPreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mStandard:Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lmiuix/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroidx/preference/Preference;)V

    .line 349
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mRoot:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mAdvancedSettings:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 350
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mAdvancedSettings:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mRepeat:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 351
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mAdvancedSettings:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mPopup:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 352
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mAdvancedSettings:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mMuteMusic:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 353
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mAdvancedSettings:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mMuteVoiceAssist:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 354
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mAdvancedSettings:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mVipList:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 355
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mAdvancedSettings:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mNetWorkAlarmPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 356
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mRoot:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mNetWorkAlarmSummaryPreference:Lcom/android/settings/notification/SilentModeNetWorkAlarmSummaryPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_1

    :cond_0
    if-ne v0, v2, :cond_2

    .line 358
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mSilentModeSettings:Lcom/android/settingslib/miuisettings/preference/RadioButtonPreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mTotal:Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lmiuix/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroidx/preference/Preference;)V

    .line 359
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mRoot:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mAdvancedSettings:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 360
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSupportCustomZenPriorityPkg()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mRoot:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mNetWorkAlarmSummaryPreference:Lcom/android/settings/notification/SilentModeNetWorkAlarmSummaryPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 362
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mAdvancedSettings:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mNetWorkAlarmPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mRoot:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mNetWorkAlarmSummaryPreference:Lcom/android/settings/notification/SilentModeNetWorkAlarmSummaryPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 365
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mAdvancedSettings:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mNetWorkAlarmPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 367
    :goto_0
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mAdvancedSettings:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mVipList:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 368
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mAdvancedSettings:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mPopup:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 369
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mAdvancedSettings:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mMuteMusic:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 370
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mAdvancedSettings:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mMuteVoiceAssist:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 371
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mAdvancedSettings:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mRepeat:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 372
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_3

    .line 373
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mAdvancedSettings:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mVipList:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 374
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mAdvancedSettings:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mRepeat:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 377
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mSilentModeSettings:Lcom/android/settingslib/miuisettings/preference/RadioButtonPreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mNormal:Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lmiuix/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroidx/preference/Preference;)V

    .line 378
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mRoot:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mAdvancedSettings:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 379
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mRoot:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mNetWorkAlarmSummaryPreference:Lcom/android/settings/notification/SilentModeNetWorkAlarmSummaryPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 382
    :cond_3
    :goto_1
    invoke-static {}, Landroid/media/AudioServiceInjector;->getVoiceAssistNum()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v0, :cond_5

    .line 383
    :cond_4
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mAdvancedSettings:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mMuteVoiceAssist:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 387
    :cond_5
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 388
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_7

    .line 389
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->vip_mode_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v3, v1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v3, :cond_6

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    goto :goto_2

    :cond_6
    array-length v1, v0

    sub-int/2addr v1, v2

    .line 391
    :goto_2
    iget-object v3, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mVipList:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mVipList:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 395
    :cond_7
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-direct {p0, v0}, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->isAutomationRuleEnabled(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 396
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mTimedMute:Lcom/android/settings/dndmode/LabelPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$string;->mode_enable:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto :goto_3

    .line 398
    :cond_8
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mTimedMute:Lcom/android/settings/dndmode/LabelPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$string;->mode_disable:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 401
    :goto_3
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->always:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 402
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 404
    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v0, :cond_9

    .line 405
    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_9

    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v0, v3

    .line 408
    invoke-static {v0, v1}, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->turnMillSecondsToHour(J)Ljava/lang/String;

    .line 409
    iget-object p0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_9
    return-void
.end method

.method public static updateSilentMode(Landroid/content/Context;Z)V
    .locals 3

    .line 278
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    .line 285
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    const-string/jumbo v2, "miui_unmute_by_settings"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "MiuiSilentSettingsFragment"

    const-string v0, "[updateSilentMode]Set flag indicate update by settings....."

    .line 287
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    .line 291
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 292
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    iget-object p1, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 296
    :goto_0
    invoke-static {p0, v1, p1}, Landroid/provider/MiuiSettings$SilenceMode;->setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 473
    const-class p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 100
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    sget p1, Lcom/android/settings/R$xml;->silent_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mContext:Landroid/content/Context;

    .line 103
    new-instance p1, Lcom/android/settings/notification/MiuiSilentSettingsFragment$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/notification/MiuiSilentSettingsFragment$1;-><init>(Lcom/android/settings/notification/MiuiSilentSettingsFragment;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mHandler:Landroid/os/Handler;

    const-string/jumbo p1, "silent_mode_settings"

    .line 112
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mRoot:Landroidx/preference/PreferenceScreen;

    .line 113
    iget-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mSettingsObserver:Lcom/android/settings/notification/MiuiSilentSettingsFragment$SettingsObserver;

    invoke-virtual {p1}, Lcom/android/settings/notification/MiuiSilentSettingsFragment$SettingsObserver;->register()V

    const-string p1, "key_silent_mode_settings"

    .line 116
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mSilentModeSettings:Lcom/android/settingslib/miuisettings/preference/RadioButtonPreferenceCategory;

    const-string v0, "key_normal"

    .line 118
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mNormal:Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;

    .line 119
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mRadioButtonClickListner:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 121
    iget-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mSilentModeSettings:Lcom/android/settingslib/miuisettings/preference/RadioButtonPreferenceCategory;

    const-string v0, "key_standard"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mStandard:Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;

    .line 122
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mRadioButtonClickListner:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 124
    iget-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mSilentModeSettings:Lcom/android/settingslib/miuisettings/preference/RadioButtonPreferenceCategory;

    const-string v0, "key_total"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mTotal:Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;

    const-string/jumbo p1, "vibrator"

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    .line 126
    invoke-virtual {p1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->total_info:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->total_info_no_vibrator:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mTotal:Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 130
    iget-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mTotal:Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;

    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mRadioButtonClickListner:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "key_advanced_settings"

    .line 133
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mAdvancedSettings:Landroidx/preference/PreferenceCategory;

    const-string v0, "key_vip_list"

    .line 136
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iput-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mVipList:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 137
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_1

    .line 138
    new-instance v0, Lcom/android/settings/notification/MiuiSilentSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/MiuiSilentSettingsFragment$2;-><init>(Lcom/android/settings/notification/MiuiSilentSettingsFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mAdvancedSettings:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_1
    const-string p1, "key_repeat"

    .line 159
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mRepeat:Landroidx/preference/CheckBoxPreference;

    .line 160
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->repeat_call_info:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 161
    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez p1, :cond_2

    .line 162
    iget-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mRepeat:Landroidx/preference/CheckBoxPreference;

    new-instance v0, Lcom/android/settings/notification/MiuiSilentSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/MiuiSilentSettingsFragment$3;-><init>(Lcom/android/settings/notification/MiuiSilentSettingsFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 169
    iget-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mRepeat:Landroidx/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->isRepeatedCallActionEnable(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 171
    :cond_2
    iget-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mAdvancedSettings:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mRepeat:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_2
    const-string p1, "key_popup_window"

    .line 175
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mPopup:Landroidx/preference/CheckBoxPreference;

    .line 176
    new-instance v0, Lcom/android/settings/notification/MiuiSilentSettingsFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/MiuiSilentSettingsFragment$4;-><init>(Lcom/android/settings/notification/MiuiSilentSettingsFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 188
    iget-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mPopup:Landroidx/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mContext:Landroid/content/Context;

    .line 189
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_notification"

    const/4 v2, 0x1

    const/4 v3, -0x3

    .line 188
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-ne v2, v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string p1, "key_mute_music"

    .line 194
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mMuteMusic:Landroidx/preference/CheckBoxPreference;

    .line 195
    new-instance v0, Lcom/android/settings/notification/MiuiSilentSettingsFragment$5;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/MiuiSilentSettingsFragment$5;-><init>(Lcom/android/settings/notification/MiuiSilentSettingsFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 208
    iget-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mMuteMusic:Landroidx/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mContext:Landroid/content/Context;

    .line 209
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "mute_music_at_silent"

    .line 208
    invoke-static {v0, v4, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v2, v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string p1, "key_mute_voiceassist"

    .line 214
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mMuteVoiceAssist:Landroidx/preference/CheckBoxPreference;

    .line 215
    new-instance v0, Lcom/android/settings/notification/MiuiSilentSettingsFragment$6;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/MiuiSilentSettingsFragment$6;-><init>(Lcom/android/settings/notification/MiuiSilentSettingsFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 228
    iget-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mMuteVoiceAssist:Landroidx/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mContext:Landroid/content/Context;

    .line 229
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "mute_voiceassit_at_silent"

    .line 228
    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v2, v0, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string p1, "key_advanced_settings2"

    .line 234
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mAdvancedSettings2:Landroidx/preference/PreferenceCategory;

    const-string v0, "key_timing_mute"

    .line 235
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/dndmode/LabelPreference;

    iput-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mTimedMute:Lcom/android/settings/dndmode/LabelPreference;

    .line 236
    new-instance v0, Lcom/android/settings/notification/MiuiSilentSettingsFragment$7;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/MiuiSilentSettingsFragment$7;-><init>(Lcom/android/settings/notification/MiuiSilentSettingsFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "key_network_alarm_summary"

    .line 247
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/SilentModeNetWorkAlarmSummaryPreference;

    iput-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mNetWorkAlarmSummaryPreference:Lcom/android/settings/notification/SilentModeNetWorkAlarmSummaryPreference;

    const-string p1, "key_network_alarm"

    .line 248
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mNetWorkAlarmPreference:Landroidx/preference/CheckBoxPreference;

    .line 249
    new-instance v0, Lcom/android/settings/notification/MiuiSilentSettingsFragment$8;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/MiuiSilentSettingsFragment$8;-><init>(Lcom/android/settings/notification/MiuiSilentSettingsFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 263
    iget-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mNetWorkAlarmPreference:Landroidx/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mContext:Landroid/content/Context;

    .line 264
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "allow_network_call_ring"

    .line 263
    invoke-static {v0, v4, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v2, v0, :cond_6

    goto :goto_6

    :cond_6
    move v2, v1

    :goto_6
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 268
    iget-object p1, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mRoot:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mSilentModeSettings:Lcom/android/settingslib/miuisettings/preference/RadioButtonPreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 269
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->updateControl()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 432
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 433
    iget-object v0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 434
    iget-object p0, p0, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->mSettingsObserver:Lcom/android/settings/notification/MiuiSilentSettingsFragment$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/settings/notification/MiuiSilentSettingsFragment$SettingsObserver;->unregister()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 426
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 427
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->updateControl()V

    return-void
.end method
