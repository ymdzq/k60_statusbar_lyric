.class public abstract Lcom/android/settings/notification/SilentModeRuleBaseSettings;
.super Lcom/android/settings/notification/SilentModeSettingsBase;
.source "SilentModeRuleBaseSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/SilentModeRuleBaseSettings$RuleInfo;
    }
.end annotation


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mBootDof:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

.field protected mBootRepeatSummary:Ljava/lang/String;

.field protected mEditTitle:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

.field protected mEndTime:I

.field protected mEndTimePS:Lcom/android/settings/dndmode/LabelPreference;

.field protected mHint:Ljava/lang/String;

.field protected mIntentMode:I

.field protected mMode:I

.field private mOnTimeSetListener:Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;

.field protected mQuietWristband:Landroidx/preference/CheckBoxPreference;

.field protected mQuietWristbandCategor:Landroidx/preference/PreferenceCategory;

.field protected mRepeatTime:Lcom/android/settings/dndmode/RepeatPreference;

.field protected mRoot:Landroidx/preference/PreferenceScreen;

.field protected mRuleId:Ljava/lang/String;

.field protected mSilentMode:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

.field protected mStartTime:I

.field protected mStartTimePS:Lcom/android/settings/dndmode/LabelPreference;

.field protected mTimeFlag:Z


# direct methods
.method static bridge synthetic -$$Nest$mtimeTostring(Lcom/android/settings/notification/SilentModeRuleBaseSettings;I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->timeTostring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/android/settings/notification/SilentModeSettingsBase;-><init>()V

    .line 69
    new-instance v0, Lcom/android/settings/notification/SilentModeRuleBaseSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/SilentModeRuleBaseSettings$1;-><init>(Lcom/android/settings/notification/SilentModeRuleBaseSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mOnTimeSetListener:Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;

    return-void
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

    .line 260
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeSettingsBase;->mContext:Landroid/content/Context;

    .line 261
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object p0

    .line 262
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private minutes(I)Ljava/lang/String;
    .locals 1

    const/16 p0, 0xa

    if-ge p1, p0, :cond_0

    .line 158
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private restoreSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "start_time"

    .line 135
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mStartTime:I

    const-string v0, "end_time"

    .line 136
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mEndTime:I

    .line 137
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mBootDof:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    new-instance v1, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    const-string v2, "flag_bootdof"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->set(Lcom/android/settings/dndmode/Alarm$DaysOfWeek;)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mBootDof:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    iget-object v1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mBootRepeatSummary:Ljava/lang/String;

    const-string/jumbo v0, "silent_mode"

    .line 139
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mMode:I

    const-string v0, "key_edittitle"

    .line 140
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mHint:Ljava/lang/String;

    return-void
.end method

.method private timeTostring(I)Ljava/lang/String;
    .locals 2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v1, p1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit8 p1, p1, 0x3c

    invoke-direct {p0, p1}, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->minutes(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected maybeRefreshRules(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->getZenModeRules()Ljava/util/Set;

    move-result-object p1

    .line 252
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

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->onZenModeConfigChanged()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/notification/SilentModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 88
    sget v0, Lcom/android/settings/R$xml;->new_dndm_time_settings:I

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mActivity:Landroid/app/Activity;

    .line 91
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mIntentMode:I

    .line 92
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "rule_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mRuleId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p1, "ZenModeSettings"

    const-string/jumbo v0, "rule id is null"

    .line 94
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-string/jumbo v0, "time_setting_root"

    .line 99
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mRoot:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v0, "start_time"

    .line 100
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dndmode/LabelPreference;

    iput-object v0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mStartTimePS:Lcom/android/settings/dndmode/LabelPreference;

    const-string v0, "end_time"

    .line 101
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dndmode/LabelPreference;

    iput-object v0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mEndTimePS:Lcom/android/settings/dndmode/LabelPreference;

    const-string/jumbo v0, "repeat"

    .line 102
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dndmode/RepeatPreference;

    iput-object v0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mRepeatTime:Lcom/android/settings/dndmode/RepeatPreference;

    const-string/jumbo v0, "silent_mode"

    .line 103
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mSilentMode:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    const-string v0, "key_edittitle"

    .line 104
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mEditTitle:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    const-string v0, "key_quiet_wristband_category"

    .line 105
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mQuietWristbandCategor:Landroidx/preference/PreferenceCategory;

    const-string v0, "key_quiet_wristband"

    .line 106
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mQuietWristband:Landroidx/preference/CheckBoxPreference;

    const/4 v0, 0x1

    .line 108
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->onCreateInternal()V

    if-eqz p1, :cond_1

    .line 111
    invoke-direct {p0, p1}, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->restoreSaveInstanceState(Landroid/os/Bundle;)V

    .line 114
    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mEditTitle:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iget-object v0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mHint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mEditTitle:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iget-object v0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mHint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 116
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mEditTitle:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 118
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mStartTimePS:Lcom/android/settings/dndmode/LabelPreference;

    iget v0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mStartTime:I

    invoke-direct {p0, v0}, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->timeTostring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mStartTimePS:Lcom/android/settings/dndmode/LabelPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 120
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mEndTimePS:Lcom/android/settings/dndmode/LabelPreference;

    iget v0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mEndTime:I

    invoke-direct {p0, v0}, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->timeTostring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mEndTimePS:Lcom/android/settings/dndmode/LabelPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 123
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mRepeatTime:Lcom/android/settings/dndmode/RepeatPreference;

    iget-object v0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mBootRepeatSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/settings/dndmode/RepeatPreference;->setLabel(Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mRepeatTime:Lcom/android/settings/dndmode/RepeatPreference;

    iget-object v0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mBootDof:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    invoke-virtual {p1, v0}, Lcom/android/settings/dndmode/RepeatPreference;->setDaysOfWeek(Lcom/android/settings/dndmode/Alarm$DaysOfWeek;)V

    .line 126
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mSilentMode:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 127
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mSilentMode:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mSilentMode:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p1}, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 131
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mRoot:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mQuietWristbandCategor:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method protected abstract onCreateInternal()V
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mSilentMode:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 166
    check-cast p2, Ljava/lang/String;

    .line 167
    invoke-virtual {v0, p2}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 168
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mSilentMode:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p1}, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 169
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mSilentMode:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getOrder()I

    move-result p1

    iput p1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mMode:I

    return v1

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mEditTitle:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    if-ne p1, v0, :cond_1

    .line 173
    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 174
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_1

    .line 175
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mEditTitle:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 176
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mEditTitle:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 177
    iput-object p2, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mHint:Ljava/lang/String;

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 7

    .line 186
    new-instance v6, Lmiuix/appcompat/app/TimePickerDialog;

    iget-object v1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mOnTimeSetListener:Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;

    iget v0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mStartTime:I

    div-int/lit8 v3, v0, 0x3c

    rem-int/lit8 v4, v0, 0x3c

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/app/TimePickerDialog;-><init>(Landroid/content/Context;Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mStartTimePS:Lcom/android/settings/dndmode/LabelPreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 191
    iput-boolean v1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mTimeFlag:Z

    .line 192
    iget p0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mStartTime:I

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mEndTimePS:Lcom/android/settings/dndmode/LabelPreference;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    .line 194
    iput-boolean p1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mTimeFlag:Z

    .line 195
    iget p0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mEndTime:I

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    if-lez p0, :cond_2

    goto :goto_1

    :cond_2
    move p0, v1

    .line 198
    :goto_1
    div-int/lit8 p1, p0, 0x3c

    rem-int/lit8 p0, p0, 0x3c

    invoke-virtual {v6, p1, p0}, Lmiuix/appcompat/app/TimePickerDialog;->updateTime(II)V

    .line 199
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "start_time"

    .line 145
    iget v1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mStartTime:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "end_time"

    .line 146
    iget v1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mEndTime:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mRepeatTime:Lcom/android/settings/dndmode/RepeatPreference;

    invoke-virtual {v0}, Lcom/android/settings/dndmode/RepeatPreference;->getDaysOfWeek()Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->getCoded()I

    move-result v0

    const-string v1, "flag_bootdof"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "silent_mode"

    .line 148
    iget v1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "key_edittitle"

    .line 149
    iget-object v1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings;->mHint:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
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
