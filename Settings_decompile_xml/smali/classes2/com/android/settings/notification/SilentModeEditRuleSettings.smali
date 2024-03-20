.class public Lcom/android/settings/notification/SilentModeEditRuleSettings;
.super Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;
.source "SilentModeEditRuleSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;-><init>()V

    return-void
.end method

.method private refreshRuleOrFinish()Z
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeSettingsBase;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mRuleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 42
    invoke-direct {p0, v0}, Lcom/android/settings/notification/SilentModeEditRuleSettings;->setRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 50
    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 51
    :goto_0
    iput-object p1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method public commitRule()Z
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p0}, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->getRuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mStartTime:I

    div-int/lit8 v2, v1, 0x3c

    iput v2, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 27
    rem-int/lit8 v1, v1, 0x3c

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 28
    iget v1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mEndTime:I

    div-int/lit8 v2, v1, 0x3c

    iput v2, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 29
    rem-int/lit8 v1, v1, 0x3c

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    .line 30
    iget-object v1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mRepeatDaysPref:Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;

    invoke-virtual {v1}, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->getDaysOfWeek()Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->getBooleanArray()[Z

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/notification/SilentModeUtils;->getDaysArray([Z)[I

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 31
    iget-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    .line 33
    iget-object v2, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 34
    iget-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v2, 0x1

    iput v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    const/4 v2, 0x0

    .line 35
    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 36
    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 37
    iget-object v1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mRuleId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->createAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->setZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    move-result p0

    return p0
.end method

.method protected onCreateInternal()V
    .locals 3

    .line 13
    invoke-direct {p0}, Lcom/android/settings/notification/SilentModeEditRuleSettings;->refreshRuleOrFinish()Z

    .line 14
    iget-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    mul-int/lit8 v1, v1, 0x3c

    iget v2, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mStartTime:I

    .line 15
    iget v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    mul-int/lit8 v1, v1, 0x3c

    iget v2, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mEndTime:I

    .line 16
    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-static {v0}, Lcom/android/settings/notification/SilentModeUtils;->parseDays([I)I

    move-result v0

    .line 17
    new-instance v1, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    invoke-direct {v1, v0}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mBootDof:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    .line 18
    iget-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mBootRepeatSummary:Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    iput v1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mMode:I

    .line 20
    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mHint:Ljava/lang/String;

    return-void
.end method
