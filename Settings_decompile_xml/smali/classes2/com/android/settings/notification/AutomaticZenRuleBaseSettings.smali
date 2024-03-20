.class public abstract Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;
.super Lcom/android/settings/notification/SilentModeSettingsBase;
.source "AutomaticZenRuleBaseSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/AutomaticZenRuleBaseSettings$RuleInfo;
    }
.end annotation


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mBootDof:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

.field protected mBootRepeatSummary:Ljava/lang/String;

.field protected mEditTitle:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

.field protected mEndTime:I

.field protected mHint:Ljava/lang/String;

.field protected mIntentMode:I

.field protected mMode:I

.field private mOnTimeSetListener:Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;

.field protected mRepeatDaysPref:Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;

.field protected mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

.field protected mRuleId:Ljava/lang/String;

.field protected mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

.field protected mStartTime:I

.field protected mTimeFlag:Z

.field protected mTimeTurnOffPref:Lcom/android/settings/soundsettings/LabelPreferenceWithBg;

.field protected mTimeTurnOnPref:Lcom/android/settings/soundsettings/LabelPreferenceWithBg;


# direct methods
.method static bridge synthetic -$$Nest$mformatChooseTime(Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;II)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->formatChooseTime(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/android/settings/notification/SilentModeSettingsBase;-><init>()V

    .line 70
    new-instance v0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings$1;-><init>(Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mOnTimeSetListener:Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method private formatChooseTime(II)Ljava/lang/String;
    .locals 2

    .line 165
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 166
    invoke-virtual {v0, v1, p1}, Landroid/icu/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 167
    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->set(II)V

    .line 168
    iget-object p0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1, p1}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getZenModeRules()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;>;"
        }
    .end annotation

    .line 252
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeSettingsBase;->mContext:Landroid/content/Context;

    .line 253
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object p0

    .line 254
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private restoreSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "start_time"

    .line 137
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mStartTime:I

    const-string v0, "end_time"

    .line 138
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mEndTime:I

    .line 139
    iget-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mBootDof:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    new-instance v1, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    const-string v2, "flag_bootdof"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->set(Lcom/android/settings/dndmode/Alarm$DaysOfWeek;)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mBootDof:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    iget-object v1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mBootRepeatSummary:Ljava/lang/String;

    const-string/jumbo v0, "silent_mode"

    .line 141
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mMode:I

    const-string v0, "key_edittitle"

    .line 142
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mHint:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected addZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;
    .locals 2

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object p1

    .line 225
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeSettingsBase;->mContext:Landroid/content/Context;

    .line 226
    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 227
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->maybeRefreshRules(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected createAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;
    .locals 6

    .line 218
    new-instance p0, Landroid/app/AutomaticZenRule;

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 219
    invoke-static {v0}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result v4

    iget-boolean v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/net/Uri;IZ)V

    return-object p0
.end method

.method protected getRuleInfo()Lcom/android/settings/notification/AutomaticZenRuleBaseSettings$RuleInfo;
    .locals 3

    .line 202
    new-instance v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 203
    iget-object v1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mRepeatDaysPref:Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;

    invoke-virtual {v1}, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->getDaysOfWeek()Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->getBooleanArray()[Z

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/notification/SilentModeUtils;->getDaysArray([Z)[I

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 204
    iget v1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mStartTime:I

    div-int/lit8 v2, v1, 0x3c

    iput v2, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 205
    rem-int/lit8 v1, v1, 0x3c

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 206
    iget p0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mEndTime:I

    div-int/lit8 v1, p0, 0x3c

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 207
    rem-int/lit8 p0, p0, 0x3c

    iput p0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    const/4 p0, 0x0

    .line 208
    iput-boolean p0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    .line 209
    new-instance p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings$RuleInfo;

    invoke-direct {p0}, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings$RuleInfo;-><init>()V

    const-string v1, "SilentModeRuleSettings"

    .line 210
    iput-object v1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings$RuleInfo;->settingsAction:Ljava/lang/String;

    .line 211
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings$RuleInfo;->defaultConditionId:Landroid/net/Uri;

    .line 212
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getScheduleConditionProvider()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings$RuleInfo;->serviceComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method protected getRuleName()Ljava/lang/String;
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mEditTitle:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mHint:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method protected maybeRefreshRules(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->getZenModeRules()Ljava/util/Set;

    move-result-object p1

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Refreshed mRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZenModeSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->onZenModeConfigChanged()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/notification/SilentModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 90
    sget v0, Lcom/android/settings/R$xml;->automatic_zen_rule_settings:I

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mActivity:Landroid/app/Activity;

    .line 93
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mIntentMode:I

    .line 94
    iget-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "rule_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mRuleId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p1, "ZenModeSettings"

    const-string/jumbo v0, "rule id is null"

    .line 96
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 101
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->onCreateInternal()V

    const-string v0, "key_edittitle"

    .line 104
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mEditTitle:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    .line 105
    iget-object v1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mHint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mEditTitle:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mHint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mEditTitle:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v0, "time_turn_on"

    .line 108
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/soundsettings/LabelPreferenceWithBg;

    iput-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mTimeTurnOnPref:Lcom/android/settings/soundsettings/LabelPreferenceWithBg;

    .line 109
    iget v1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mStartTime:I

    div-int/lit8 v2, v1, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    invoke-direct {p0, v2, v1}, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->formatChooseTime(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/soundsettings/LabelPreferenceWithBg;->setLabel(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mTimeTurnOnPref:Lcom/android/settings/soundsettings/LabelPreferenceWithBg;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "time_turn_off"

    .line 111
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/soundsettings/LabelPreferenceWithBg;

    iput-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mTimeTurnOffPref:Lcom/android/settings/soundsettings/LabelPreferenceWithBg;

    .line 112
    iget v1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mEndTime:I

    div-int/lit8 v2, v1, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    invoke-direct {p0, v2, v1}, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->formatChooseTime(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/soundsettings/LabelPreferenceWithBg;->setLabel(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mTimeTurnOffPref:Lcom/android/settings/soundsettings/LabelPreferenceWithBg;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "repeat_days"

    .line 114
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;

    iput-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mRepeatDaysPref:Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;

    .line 115
    iget-object v1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mBootDof:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    invoke-virtual {v0, v1}, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->setDaysOfWeek(Lcom/android/settings/dndmode/Alarm$DaysOfWeek;)V

    if-eqz p1, :cond_1

    .line 118
    invoke-direct {p0, p1}, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->restoreSaveInstanceState(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method protected abstract onCreateInternal()V
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mEditTitle:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    if-ne p1, v0, :cond_0

    .line 125
    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 126
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mEditTitle:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 128
    iget-object p1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mEditTitle:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 129
    iput-object p2, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mHint:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 7

    .line 174
    new-instance v6, Lmiuix/appcompat/app/TimePickerDialog;

    iget-object v1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mOnTimeSetListener:Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;

    iget v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mStartTime:I

    div-int/lit8 v3, v0, 0x3c

    rem-int/lit8 v4, v0, 0x3c

    .line 175
    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/app/TimePickerDialog;-><init>(Landroid/content/Context;Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mTimeTurnOnPref:Lcom/android/settings/soundsettings/LabelPreferenceWithBg;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 179
    iput-boolean v1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mTimeFlag:Z

    .line 180
    iget p0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mStartTime:I

    .line 181
    sget p1, Lcom/android/settings/R$string;->time_zen_mode_turn_on:I

    invoke-virtual {v6, p1}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mTimeTurnOffPref:Lcom/android/settings/soundsettings/LabelPreferenceWithBg;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    .line 183
    iput-boolean p1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mTimeFlag:Z

    .line 184
    iget p0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mEndTime:I

    .line 185
    sget p1, Lcom/android/settings/R$string;->paper_mode_end_time_title:I

    invoke-virtual {v6, p1}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    if-lez p0, :cond_2

    goto :goto_1

    :cond_2
    move p0, v1

    .line 188
    :goto_1
    div-int/lit8 p1, p0, 0x3c

    rem-int/lit8 p0, p0, 0x3c

    invoke-virtual {v6, p1, p0}, Lmiuix/appcompat/app/TimePickerDialog;->updateTime(II)V

    .line 189
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "start_time"

    .line 147
    iget v1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mStartTime:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "end_time"

    .line 148
    iget v1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mEndTime:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mRepeatDaysPref:Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;

    invoke-virtual {v0}, Lcom/android/settings/soundsettings/RepeatPreferenceWithBg;->getDaysOfWeek()Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->getCoded()I

    move-result v0

    const-string v1, "flag_bootdof"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "silent_mode"

    .line 150
    iget v1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "key_edittitle"

    .line 151
    iget-object v1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mHint:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onZenModeChanged()V
    .locals 0

    .line 0
    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 0

    .line 0
    return-void
.end method

.method protected setZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeSettingsBase;->mContext:Landroid/content/Context;

    .line 236
    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    move-result p1

    const/4 p2, 0x1

    .line 237
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->maybeRefreshRules(ZZ)V

    return p1
.end method
