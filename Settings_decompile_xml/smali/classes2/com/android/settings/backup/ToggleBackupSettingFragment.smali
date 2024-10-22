.class public Lcom/android/settings/backup/ToggleBackupSettingFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ToggleBackupSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mConfirmDialog:Landroid/app/Dialog;

.field private mSummaryPreference:Landroidx/preference/Preference;

.field protected mToggleSwitch:Lcom/android/settings/widget/TogglePreference;

.field private mWaitingForConfirmationDialog:Z


# direct methods
.method static bridge synthetic -$$Nest$msetBackupEnabled(Lcom/android/settings/backup/ToggleBackupSettingFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->setBackupEnabled(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowEraseBackupDialog(Lcom/android/settings/backup/ToggleBackupSettingFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->showEraseBackupDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mWaitingForConfirmationDialog:Z

    return-void
.end method

.method private setBackupEnabled(Z)V
    .locals 1

    .line 244
    iget-object p0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz p0, :cond_0

    .line 246
    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ToggleBackupSettingFragment"

    const-string v0, "Error communicating with BackupManager"

    .line 248
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private showEraseBackupDialog()V
    .locals 3

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_full_data_backup_aware"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->fullbackup_erase_dialog_message:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->backup_erase_dialog_message:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    .line 222
    iput-boolean v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mWaitingForConfirmationDialog:Z

    .line 225
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->backup_erase_dialog_title:I

    .line 226
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a    # @android:string/ok

    .line 227
    invoke-virtual {v0, v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000    # @android:string/cancel

    .line 228
    invoke-virtual {v0, v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 229
    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mConfirmDialog:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x51

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 131
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 153
    iget-object p1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mToggleSwitch:Lcom/android/settings/widget/TogglePreference;

    new-instance v0, Lcom/android/settings/backup/ToggleBackupSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment$2;-><init>(Lcom/android/settings/backup/ToggleBackupSettingFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_0

    .line 184
    iput-boolean v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mWaitingForConfirmationDialog:Z

    .line 185
    invoke-direct {p0, v0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->setBackupEnabled(Z)V

    .line 187
    iget-object p0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mToggleSwitch:Lcom/android/settings/widget/TogglePreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/TogglePreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    if-ne p2, p1, :cond_1

    .line 191
    iput-boolean v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mWaitingForConfirmationDialog:Z

    const/4 p1, 0x1

    .line 192
    invoke-direct {p0, p1}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->setBackupEnabled(Z)V

    .line 194
    iget-object p0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mToggleSwitch:Lcom/android/settings/widget/TogglePreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/TogglePreference;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "backup"

    .line 62
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 61
    invoke-static {p1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 64
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 64
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 69
    new-instance v0, Lcom/android/settings/backup/ToggleBackupSettingFragment$1;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/backup/ToggleBackupSettingFragment$1;-><init>(Lcom/android/settings/backup/ToggleBackupSettingFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSummaryPreference:Landroidx/preference/Preference;

    const/4 v1, 0x0

    .line 77
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSummaryPreference:Landroidx/preference/Preference;

    sget v1, Lcom/android/settings/R$layout;->text_description_preference:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 79
    iget-object p0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSummaryPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 122
    invoke-super {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->onDestroyView()V

    .line 124
    iget-object p0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mToggleSwitch:Lcom/android/settings/widget/TogglePreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/TogglePreference;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/TogglePreference$OnBeforeCheckedChangeListener;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 201
    iget-boolean p1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mWaitingForConfirmationDialog:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 203
    invoke-direct {p0, p1}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->setBackupEnabled(Z)V

    .line 205
    iget-object p0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mToggleSwitch:Lcom/android/settings/widget/TogglePreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/TogglePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mConfirmDialog:Landroid/app/Dialog;

    .line 177
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 84
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 90
    new-instance p1, Lcom/android/settings/widget/TogglePreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settings/widget/TogglePreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mToggleSwitch:Lcom/android/settings/widget/TogglePreference;

    .line 91
    sget p2, Lcom/android/settings/R$string;->google_backup_enable:I

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 92
    iget-object p1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mToggleSwitch:Lcom/android/settings/widget/TogglePreference;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 93
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mToggleSwitch:Lcom/android/settings/widget/TogglePreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "user_full_data_backup_aware"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSummaryPreference:Landroidx/preference/Preference;

    sget p2, Lcom/android/settings/R$string;->fullbackup_data_summary:I

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mSummaryPreference:Landroidx/preference/Preference;

    sget p2, Lcom/android/settings/R$string;->backup_data_summary:I

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 106
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_1

    .line 107
    :cond_1
    invoke-interface {p1}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result p1

    .line 110
    :goto_1
    iget-object p2, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mToggleSwitch:Lcom/android/settings/widget/TogglePreference;

    invoke-virtual {p2, p1}, Lcom/android/settings/widget/TogglePreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 115
    :catch_0
    iget-object p1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->mToggleSwitch:Lcom/android/settings/widget/TogglePreference;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/TogglePreference;->setChecked(Z)V

    .line 117
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->backup_data_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method
