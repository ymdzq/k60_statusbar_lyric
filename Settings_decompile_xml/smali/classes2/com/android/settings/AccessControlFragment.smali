.class public Lcom/android/settings/AccessControlFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessControlFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAcPrivacylEnabled:Landroidx/preference/CheckBoxPreference;

.field private mAcessControlEnabled:Landroidx/preference/CheckBoxPreference;

.field private mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

.field private mIsPad:Z

.field private mPrivacyEnabled:Landroidx/preference/CheckBoxPreference;

.field private final mPrivacyModeObserver:Landroid/database/ContentObserver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mVisiblePatternEnabled:Landroidx/preference/CheckBoxPreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmChooseLockSettingsHelper(Lcom/android/settings/AccessControlFragment;)Landroid/security/ChooseLockSettingsHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/AccessControlFragment;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetVisibilePattern(Lcom/android/settings/AccessControlFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/AccessControlFragment;->setVisibilePattern(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePrivacyMode(Lcom/android/settings/AccessControlFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/AccessControlFragment;->updatePrivacyMode()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 44
    new-instance v0, Lcom/android/settings/AccessControlFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AccessControlFragment$1;-><init>(Lcom/android/settings/AccessControlFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AccessControlFragment;->mPrivacyModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private initAcPrivacy(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    const-string/jumbo v0, "privacy_mode_enable"

    .line 98
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/AccessControlFragment;->mPrivacyEnabled:Landroidx/preference/CheckBoxPreference;

    .line 99
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AccessControlFragment;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "privacy_mode_enabled"

    .line 102
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/settings/AccessControlFragment;->mPrivacyModeObserver:Landroid/database/ContentObserver;

    .line 101
    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private isVisibilePattern()Z
    .locals 1

    .line 224
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "ac_visiblepattern"

    invoke-static {p0, v0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private setVisibilePattern(Z)V
    .locals 1

    .line 220
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "ac_visiblepattern"

    invoke-static {p0, v0, p1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void
.end method

.method private updateAcPrivacylEnabledPreference()V
    .locals 4

    .line 207
    iget-object v0, p0, Lcom/android/settings/AccessControlFragment;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->isPasswordForPrivacyModeEnabled()Z

    move-result v0

    .line 208
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/android/settings/ConfirmAccessControl;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "confirm_purpose"

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 210
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 213
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateAcessControlEnabledPreference()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/android/settings/AccessControlFragment;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->isACLockEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/android/settings/ChooseAccessControl;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x64

    .line 197
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 199
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/android/settings/ConfirmAccessControl;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "confirm_purpose"

    const/4 v2, 0x1

    .line 200
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private updatePrivacyEnabledPreference(Landroidx/preference/Preference;)V
    .locals 2

    .line 156
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    .line 157
    iget-object v0, p0, Lcom/android/settings/AccessControlFragment;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->isPrivacyModeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 160
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 161
    sget v1, Lcom/android/settings/R$string;->privacy_mode_dialog_title:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 162
    sget v1, Lcom/android/settings/R$string;->privacy_mode_dialog_message:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 163
    new-instance v1, Lcom/android/settings/AccessControlFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/AccessControlFragment$3;-><init>(Lcom/android/settings/AccessControlFragment;Landroidx/preference/CheckBoxPreference;)V

    const p1, 0x104000a    # @android:string/ok

    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 170
    new-instance p1, Lcom/android/settings/AccessControlFragment$4;

    invoke-direct {p1, p0}, Lcom/android/settings/AccessControlFragment$4;-><init>(Lcom/android/settings/AccessControlFragment;)V

    const/high16 p0, 0x1040000    # @android:string/cancel

    invoke-virtual {v0, p0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 177
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    .line 178
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/android/settings/AccessControlFragment;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {p1}, Landroid/security/ChooseLockSettingsHelper;->isACLockEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/AccessControlFragment;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    .line 181
    invoke-virtual {p1}, Landroid/security/ChooseLockSettingsHelper;->isPasswordForPrivacyModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 182
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.app.action.CONFIRM_ACCESS_CONTROL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "confirm_purpose"

    const/4 v1, 0x4

    .line 183
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    .line 185
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x20000000

    .line 186
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 189
    :cond_1
    iget-object p0, p0, Lcom/android/settings/AccessControlFragment;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {p0, v1}, Landroid/security/ChooseLockSettingsHelper;->setPrivacyModeEnabled(Z)V

    :goto_0
    return-void
.end method

.method private updatePrivacyMode()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/settings/AccessControlFragment;->mPrivacyEnabled:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/AccessControlFragment;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroid/security/ChooseLockSettingsHelper;->isPrivacyModeEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 53
    const-class p0, Lcom/android/settings/AccessControlFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "is_pad"

    const/4 v0, 0x0

    .line 59
    invoke-static {p1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/AccessControlFragment;->mIsPad:Z

    .line 60
    new-instance p1, Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/settings/AccessControlFragment;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    .line 61
    sget p1, Lcom/android/settings/R$xml;->access_control:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 62
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "ac_enable"

    .line 64
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/AccessControlFragment;->mAcessControlEnabled:Landroidx/preference/CheckBoxPreference;

    .line 65
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "ac_visiblepattern"

    .line 66
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/AccessControlFragment;->mVisiblePatternEnabled:Landroidx/preference/CheckBoxPreference;

    .line 67
    new-instance v2, Lcom/android/settings/AccessControlFragment$2;

    invoke-direct {v2, p0}, Lcom/android/settings/AccessControlFragment$2;-><init>(Lcom/android/settings/AccessControlFragment;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "ac_privacy_mode"

    .line 75
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/AccessControlFragment;->mAcPrivacylEnabled:Landroidx/preference/CheckBoxPreference;

    .line 76
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settings/AccessControlFragment;->initAcPrivacy(Landroidx/preference/PreferenceScreen;)V

    const-string v1, "ac_privacy_mode_category"

    .line 80
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 85
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/AccessControlFragment;->mIsPad:Z

    if-eqz v1, :cond_1

    const-string p0, "ac_enable_phone"

    .line 86
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    .line 87
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    const-string v1, "ac_set_apps"

    .line 89
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 90
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 91
    iget-object p0, p0, Lcom/android/settings/AccessControlFragment;->mAcessControlEnabled:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 92
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 93
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 126
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 127
    iget-object v0, p0, Lcom/android/settings/AccessControlFragment;->mResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/settings/AccessControlFragment;->mPrivacyModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 132
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "privacy_mode_enable"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 133
    invoke-direct {p0, p1}, Lcom/android/settings/AccessControlFragment;->updatePrivacyEnabledPreference(Landroidx/preference/Preference;)V

    return v0

    :cond_0
    const-string p2, "ac_enable"

    .line 135
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 136
    invoke-direct {p0}, Lcom/android/settings/AccessControlFragment;->updateAcessControlEnabledPreference()V

    return v0

    :cond_1
    const-string p2, "ac_privacy_mode"

    .line 138
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 139
    invoke-direct {p0}, Lcom/android/settings/AccessControlFragment;->updateAcPrivacylEnabledPreference()V

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 3

    .line 147
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ac_enable_phone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.securitycenter.action.TRANSITION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "enter_way"

    const-string v2, "00005"

    .line 149
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 152
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 113
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 114
    invoke-direct {p0}, Lcom/android/settings/AccessControlFragment;->updatePrivacyMode()V

    .line 115
    iget-object v0, p0, Lcom/android/settings/AccessControlFragment;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->isACLockEnabled()Z

    move-result v0

    .line 116
    iget-object v1, p0, Lcom/android/settings/AccessControlFragment;->mAcPrivacylEnabled:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 117
    iget-boolean v1, p0, Lcom/android/settings/AccessControlFragment;->mIsPad:Z

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/settings/AccessControlFragment;->mAcessControlEnabled:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AccessControlFragment;->mAcPrivacylEnabled:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/AccessControlFragment;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Landroid/security/ChooseLockSettingsHelper;->isPasswordForPrivacyModeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/AccessControlFragment;->mVisiblePatternEnabled:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/AccessControlFragment;->isVisibilePattern()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
