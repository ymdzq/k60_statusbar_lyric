.class public Lcom/android/settings/sound/OtherSoundSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OtherSoundSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mMultiMusicPref:Landroidx/preference/CheckBoxPreference;

.field private mMutileSoundPreference:Landroidx/preference/CheckBoxPreference;

.field private mNtfSingleSettingPref:Landroidx/preference/CheckBoxPreference;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private setNtfSingleChecked(Z)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/settings/sound/OtherSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const-string v0, "audio"

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/sound/OtherSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v0, "notification_single_control=true"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "notification_single_control=false"

    .line 116
    :goto_0
    iget-object v1, p0, Lcom/android/settings/sound/OtherSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 120
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->notification_volume_sync_ring:I

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "OtherSoundSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x2e

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 81
    sget p0, Lcom/android/settings/R$xml;->other_sound_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 40
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo p1, "setting_Sound_more"

    .line 41
    invoke-static {p1}, Lcom/android/settings/report/InternationalCompat;->trackReportEvent(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sound/OtherSoundSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "more_volume_settings_category"

    .line 44
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 46
    invoke-static {p1}, Lcom/android/settings/utils/SettingsFeatures;->showNtfVolumeSingleControl(Landroid/content/Context;)Z

    move-result v1

    const-string/jumbo v2, "ntf_single_setting"

    if-eqz v1, :cond_0

    .line 47
    invoke-static {p1}, Lcom/android/settings/utils/SettingsFeatures;->isHideRingtoneCall(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/sound/OtherSoundSettings;->mNtfSingleSettingPref:Landroidx/preference/CheckBoxPreference;

    .line 49
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 50
    iget-object v1, p0, Lcom/android/settings/sound/OtherSoundSettings;->mNtfSingleSettingPref:Landroidx/preference/CheckBoxPreference;

    invoke-static {p1}, Lcom/android/settings/utils/SettingsFeatures;->getNtfSingleState(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {v1, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 54
    :goto_0
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 55
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    const-string/jumbo p1, "sound_assist_key"

    .line 58
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/sound/OtherSoundSettings;->mMutileSoundPreference:Landroidx/preference/CheckBoxPreference;

    .line 59
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 60
    iget-object v0, p0, Lcom/android/settings/sound/OtherSoundSettings;->mMutileSoundPreference:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/sound/OtherSoundSettings;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v2

    :goto_1
    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string/jumbo p1, "multi_music_coexistence"

    .line 63
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/sound/OtherSoundSettings;->mMultiMusicPref:Landroidx/preference/CheckBoxPreference;

    .line 64
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 65
    iget-object p1, p0, Lcom/android/settings/sound/OtherSoundSettings;->mMultiMusicPref:Landroidx/preference/CheckBoxPreference;

    iget-object p0, p0, Lcom/android/settings/sound/OtherSoundSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "key_ignore_music_focus_req"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_3

    move v2, v1

    :cond_3
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 86
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    const-string v1, "OtherSoundSettings"

    if-eqz v0, :cond_0

    const-string p0, "isComputingLayout"

    .line 87
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 90
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 91
    iget-object v2, p0, Lcom/android/settings/sound/OtherSoundSettings;->mNtfSingleSettingPref:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_1

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mNtfSingleSettingPref change, objValue : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/sound/OtherSoundSettings;->setNtfSingleChecked(Z)V

    goto :goto_1

    .line 94
    :cond_1
    iget-object p2, p0, Lcom/android/settings/sound/OtherSoundSettings;->mMutileSoundPreference:Landroidx/preference/CheckBoxPreference;

    if-ne p1, p2, :cond_2

    .line 95
    iget-object p0, p0, Lcom/android/settings/sound/OtherSoundSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo p1, "sound_assist_key"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "allow multi sound assist: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 97
    :cond_2
    iget-object p2, p0, Lcom/android/settings/sound/OtherSoundSettings;->mMultiMusicPref:Landroidx/preference/CheckBoxPreference;

    if-ne p1, p2, :cond_5

    .line 98
    iget-object p1, p0, Lcom/android/settings/sound/OtherSoundSettings;->mResolver:Landroid/content/ContentResolver;

    const-string p2, "key_ignore_music_focus_req"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 99
    iget-object p1, p0, Lcom/android/settings/sound/OtherSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    if-nez p1, :cond_3

    const-string p1, "audio"

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/sound/OtherSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    :cond_3
    if-eqz v0, :cond_4

    const-string p1, "enable"

    goto :goto_0

    :cond_4
    const-string p1, "disable"

    .line 103
    :goto_0
    iget-object p0, p0, Lcom/android/settings/sound/OtherSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p2, p1}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ignore music focus request: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " param : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    const/4 p0, 0x1

    return p0
.end method
