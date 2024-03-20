.class public Lcom/android/settings/dndmode/DoNotDisturbModeFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DoNotDisturbModeFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAutoButton:Landroidx/preference/CheckBoxPreference;

.field private mAutoSettingGroup:Landroidx/preference/PreferenceGroup;

.field private mAutoTimeSetting:Landroidx/preference/PreferenceScreen;

.field private mDoNotDisturbMode:Landroidx/preference/CheckBoxPreference;

.field private final mQuietModeObserver:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

.field private mRepeatedCallButton:Landroidx/preference/CheckBoxPreference;

.field private mVipCallSetting:Landroidx/preference/PreferenceScreen;


# direct methods
.method static bridge synthetic -$$Nest$monQuietModeChanged(Lcom/android/settings/dndmode/DoNotDisturbModeFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->onQuietModeChanged()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 44
    new-instance v0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dndmode/DoNotDisturbModeFragment$1;-><init>(Lcom/android/settings/dndmode/DoNotDisturbModeFragment;)V

    iput-object v0, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mQuietModeObserver:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    return-void
.end method

.method private getCustomVipListCount()I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 144
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    const-string p0, "count(*)"

    aput-object p0, v4, v0

    const-string/jumbo v5, "type=\'3\'"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 146
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 147
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return p0

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 150
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 153
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return v0

    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 155
    :cond_2
    throw p0
.end method

.method private onQuietModeChanged()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mDoNotDisturbMode:Landroidx/preference/CheckBoxPreference;

    iget-object p0, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private setTimeSummary()V
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mActivity:Landroid/app/Activity;

    .line 161
    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->getStartTimeForQuietMode(Landroid/content/Context;)I

    move-result v1

    .line 160
    invoke-static {v0, v1}, Lcom/android/settings/dndmode/DoNotDisturbModeUtils;->formatTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mActivity:Landroid/app/Activity;

    .line 163
    invoke-static {v1}, Landroid/provider/MiuiSettings$AntiSpam;->getEndTimeForQuietMode(Landroid/content/Context;)I

    move-result v2

    .line 162
    invoke-static {v1, v2}, Lcom/android/settings/dndmode/DoNotDisturbModeUtils;->formatTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 164
    iget-object v2, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mAutoTimeSetting:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/android/settings/R$string;->dndm_auto_time_setting_summary:I

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    sget p1, Lcom/android/settings/R$xml;->dndm_fragment:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const/4 p1, 0x1

    .line 58
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mActivity:Landroid/app/Activity;

    const-string p1, "key_do_not_disturb_mode"

    .line 61
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mDoNotDisturbMode:Landroidx/preference/CheckBoxPreference;

    .line 62
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "key_auto_setting_group"

    .line 63
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mAutoSettingGroup:Landroidx/preference/PreferenceGroup;

    const-string p1, "key_auto_button"

    .line 64
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mAutoButton:Landroidx/preference/CheckBoxPreference;

    .line 65
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "key_auto_time_setting"

    .line 66
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mAutoTimeSetting:Landroidx/preference/PreferenceScreen;

    const-string p1, "key_vip_call_setting"

    .line 67
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mVipCallSetting:Landroidx/preference/PreferenceScreen;

    .line 68
    iget-object p1, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mAutoButton:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "key_repeated_call_button"

    .line 69
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mRepeatedCallButton:Landroidx/preference/CheckBoxPreference;

    .line 70
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 71
    iget-object p1, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mQuietModeObserver:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    invoke-static {p1, p0}, Lmiui/provider/ExtraTelephony;->registerQuietModeEnableListener(Landroid/content/Context;Lmiui/provider/ExtraTelephony$QuietModeEnableListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mQuietModeObserver:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    invoke-static {v0, v1}, Lmiui/provider/ExtraTelephony;->unRegisterQuietModeEnableListener(Landroid/content/Context;Lmiui/provider/ExtraTelephony$QuietModeEnableListener;)V

    .line 171
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 116
    check-cast p2, Ljava/lang/Boolean;

    .line 117
    iget-object v0, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mDoNotDisturbMode:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_0

    .line 118
    iget-object p0, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Landroid/provider/MiuiSettings$AntiSpam;->setQuietMode(Landroid/content/Context;Z)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mAutoButton:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_2

    .line 121
    iget-object p1, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p1, v0}, Landroid/provider/MiuiSettings$AntiSpam;->setAutoTimerOfQuietMode(Landroid/content/Context;Z)V

    .line 122
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 123
    iget-object p1, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mAutoSettingGroup:Landroidx/preference/PreferenceGroup;

    iget-object p2, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mAutoTimeSetting:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 124
    iget-object p1, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/settings/dndmode/DoNotDisturbModeUtils;->startAutoTime(Landroid/content/Context;)V

    .line 125
    invoke-direct {p0}, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->setTimeSummary()V

    goto :goto_0

    .line 127
    :cond_1
    iget-object p1, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mAutoSettingGroup:Landroidx/preference/PreferenceGroup;

    iget-object p0, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mAutoTimeSetting:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mRepeatedCallButton:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_4

    .line 131
    iget-object p1, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p1, v0}, Landroid/provider/MiuiSettings$AntiSpam;->setRepeatedCallActionEnable(Landroid/content/Context;Z)V

    .line 132
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 133
    iget-object p0, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mRepeatedCallButton:Landroidx/preference/CheckBoxPreference;

    sget p1, Lcom/android/settings/R$string;->dndm_repeated_call_summary_3min:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 135
    :cond_3
    iget-object p0, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mRepeatedCallButton:Landroidx/preference/CheckBoxPreference;

    sget p1, Lcom/android/settings/R$string;->dndm_repeated_call_summary_none:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 4

    .line 81
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 82
    iget-object v0, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mDoNotDisturbMode:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->isVipCallActionEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mVipCallSetting:Landroidx/preference/PreferenceScreen;

    sget v1, Lcom/android/settings/R$string;->dndm_vip_call_summary_none:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->getVipListForQuietMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 89
    iget-object v0, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mVipCallSetting:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->dndm_vip_call_summary_custom:I

    .line 90
    invoke-direct {p0}, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->getCustomVipListCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 89
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mVipCallSetting:Landroidx/preference/PreferenceScreen;

    sget v1, Lcom/android/settings/R$string;->dndm_vip_call_summary_contact:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 96
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->isAutoTimerOfQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mAutoButton:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mAutoSettingGroup:Landroidx/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mAutoTimeSetting:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 99
    invoke-direct {p0}, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->setTimeSummary()V

    goto :goto_1

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mAutoButton:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mAutoSettingGroup:Landroidx/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mAutoTimeSetting:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 105
    :goto_1
    iget-object v0, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->isRepeatedCallActionEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 106
    iget-object v0, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mRepeatedCallButton:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 107
    iget-object p0, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mRepeatedCallButton:Landroidx/preference/CheckBoxPreference;

    sget v0, Lcom/android/settings/R$string;->dndm_repeated_call_summary_none:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 109
    :cond_4
    iget-object v0, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mRepeatedCallButton:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 110
    iget-object p0, p0, Lcom/android/settings/dndmode/DoNotDisturbModeFragment;->mRepeatedCallButton:Landroidx/preference/CheckBoxPreference;

    sget v0, Lcom/android/settings/R$string;->dndm_repeated_call_summary_3min:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_2
    return-void
.end method
