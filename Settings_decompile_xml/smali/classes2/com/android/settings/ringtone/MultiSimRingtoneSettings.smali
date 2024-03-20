.class public Lcom/android/settings/ringtone/MultiSimRingtoneSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MultiSimRingtoneSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mRingtone0:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

.field private mRingtone1:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

.field private mRingtone2:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

.field private mRingtoneCategory:Landroidx/preference/PreferenceCategory;

.field private mRingtoneType:I

.field private mSimInfoChangeListener:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSlot1ExtraType:I

.field private mSlot2ExtraType:I

.field private mSlotSetting:Landroidx/preference/CheckBoxPreference;


# direct methods
.method static bridge synthetic -$$Nest$mupdateUI(Lcom/android/settings/ringtone/MultiSimRingtoneSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->updateUI()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mSlotSetting:Landroidx/preference/CheckBoxPreference;

    .line 39
    iput-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtoneCategory:Landroidx/preference/PreferenceCategory;

    .line 40
    iput-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtone0:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    .line 41
    iput-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtone1:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    .line 42
    iput-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtone2:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtoneType:I

    .line 45
    iput v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mSlot1ExtraType:I

    .line 46
    iput v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mSlot2ExtraType:I

    .line 48
    new-instance v0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ringtone/MultiSimRingtoneSettings$1;-><init>(Lcom/android/settings/ringtone/MultiSimRingtoneSettings;)V

    iput-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mSimInfoChangeListener:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-void
.end method

.method private setupUI()V
    .locals 3

    const-string/jumbo v0, "ringtone_slot_setting"

    .line 79
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mSlotSetting:Landroidx/preference/CheckBoxPreference;

    .line 80
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mSlotSetting:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtoneType:I

    invoke-static {v1, v2}, Lmiui/util/SimRingtoneUtils;->isDefaultSoundUniform(Landroid/content/Context;I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string/jumbo v0, "ringtone_category"

    .line 83
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtoneCategory:Landroidx/preference/PreferenceCategory;

    const-string/jumbo v0, "ringtone_0"

    .line 84
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    iput-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtone0:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    .line 85
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "ringtone_1"

    .line 86
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    iput-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtone1:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    .line 87
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "ringtone_2"

    .line 88
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    iput-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtone2:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    .line 89
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private updateUI()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mSlotSetting:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtoneCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtone0:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 148
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtoneCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtone1:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 149
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtoneCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtone2:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 150
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtone1:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    iget v1, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mSlot1ExtraType:I

    invoke-virtual {v0, v1}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->updateUI(I)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtone2:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    iget p0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mSlot2ExtraType:I

    invoke-virtual {v0, p0}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->updateUI(I)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtoneCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtone0:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 154
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtoneCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtone1:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 155
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtoneCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtone2:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 156
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtone0:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    iget p0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtoneType:I

    invoke-virtual {v0, p0}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->updateUI(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 58
    const-class p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "android.intent.extra.ringtone.TYPE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtoneType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/16 v2, 0x8

    if-eq p1, v2, :cond_0

    const/16 v2, 0x10

    if-eq p1, v2, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 71
    :cond_0
    invoke-static {p1, v1}, Lmiui/util/SimRingtoneUtils;->getExtraRingtoneTypeBySlot(II)I

    move-result p1

    iput p1, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mSlot1ExtraType:I

    .line 72
    iget p1, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtoneType:I

    invoke-static {p1, v0}, Lmiui/util/SimRingtoneUtils;->getExtraRingtoneTypeBySlot(II)I

    move-result p1

    iput p1, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mSlot2ExtraType:I

    .line 73
    sget p1, Lcom/android/settings/R$xml;->multi_sim_ringtone_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 74
    invoke-direct {p0}, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->setupUI()V

    .line 75
    invoke-direct {p0}, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->updateUI()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 102
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 103
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mSimInfoChangeListener:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, p0}, Lmiui/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 108
    iget-object p2, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mSlotSetting:Landroidx/preference/CheckBoxPreference;

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 109
    invoke-virtual {p2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-virtual {p2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget p2, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtoneType:I

    iget-object v1, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mSlotSetting:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-static {p1, p2, v1}, Lmiui/util/SimRingtoneUtils;->setDefaultSoundUniform(Landroid/content/Context;IZ)V

    .line 111
    invoke-direct {p0}, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->updateUI()V

    :cond_0
    return v0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtone0:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 119
    invoke-virtual {v0}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->getRingtonePickerIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtone1:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    if-ne p1, v0, :cond_1

    .line 121
    invoke-virtual {v0}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->getRingtonePickerIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtone2:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    if-ne p1, v0, :cond_2

    .line 123
    invoke-virtual {v0}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->getRingtonePickerIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    :goto_0
    return v1
.end method

.method public onResume()V
    .locals 3

    .line 94
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 95
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mSlotSetting:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mRingtoneType:I

    invoke-static {v1, v2}, Lmiui/util/SimRingtoneUtils;->isDefaultSoundUniform(Landroid/content/Context;I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 96
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->mSimInfoChangeListener:Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Lmiui/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 97
    invoke-direct {p0}, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->updateUI()V

    return-void
.end method
