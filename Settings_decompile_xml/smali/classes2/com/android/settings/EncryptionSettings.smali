.class public Lcom/android/settings/EncryptionSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "EncryptionSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/EncryptionSettings$ConfigureEncryptionDialog;,
        Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I


# instance fields
.field private mDialog:Lcom/android/settings/EncryptionSettings$ConfigureEncryptionDialog;

.field private mDialogShow:Z

.field private mEncryptionEnabled:Landroidx/preference/CheckBoxPreference;

.field private mFilter:Landroid/content/IntentFilter;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mProgressDialog:Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEncryptionEnabled(Lcom/android/settings/EncryptionSettings;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/EncryptionSettings;->mEncryptionEnabled:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressDialog(Lcom/android/settings/EncryptionSettings;)Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/EncryptionSettings;->mProgressDialog:Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDialogShow(Lcom/android/settings/EncryptionSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/EncryptionSettings;->mDialogShow:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mlaunchConfirmationFragment(Lcom/android/settings/EncryptionSettings;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/EncryptionSettings;->launchConfirmationFragment(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEncryptionEnabled(Lcom/android/settings/EncryptionSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/EncryptionSettings;->updateEncryptionEnabled()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 47
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/EncryptionSettings;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 54
    new-instance v0, Lcom/android/settings/EncryptionSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/EncryptionSettings$1;-><init>(Lcom/android/settings/EncryptionSettings;)V

    iput-object v0, p0, Lcom/android/settings/EncryptionSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private closeSecurityEncryption()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 166
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/EncryptionSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "clearEncryptionPassword"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Lcom/android/internal/widget/LockPatternUtils;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "EncryptionSettings"

    const-string v4, "clearEncryptionPassword error: "

    .line 168
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    :goto_0
    iget-object v2, p0, Lcom/android/settings/EncryptionSettings;->mEncryptionEnabled:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 174
    new-instance v2, Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;

    sget v3, Lcom/android/settings/R$string;->security_encryption_progress_dialog_close:I

    invoke-direct {v2, p0, v3, v0}, Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;-><init>(Lcom/android/settings/EncryptionSettings;ILcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog-IA;)V

    iput-object v2, p0, Lcom/android/settings/EncryptionSettings;->mProgressDialog:Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;

    .line 175
    invoke-virtual {v2}, Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;->show()V

    .line 176
    invoke-direct {p0, v1}, Lcom/android/settings/EncryptionSettings;->setSecurityEncryptionEnabled(Z)V

    return-void
.end method

.method private isSecurityEncryptionEnabled()Z
    .locals 2

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "is_security_encryption_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private launchConfirmationFragment(I)V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/android/settings/EncryptionSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v1, 0x10000

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x30000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x40000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x50000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .line 223
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 224
    invoke-virtual {v0, p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->lockpassword_confirm_your_lock_password_header:I

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 226
    invoke-virtual {p0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    goto :goto_0

    .line 210
    :cond_1
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    .line 211
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 212
    invoke-virtual {v0, p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->lockpassword_confirm_your_pattern_header:I

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 214
    invoke-virtual {p0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    goto :goto_0

    .line 230
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/EncryptionSettings;->closeSecurityEncryption()V

    :goto_0
    return-void
.end method

.method private openSecurityEncryption()V
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/android/settings/EncryptionSettings;->mEncryptionEnabled:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 155
    new-instance v0, Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;

    sget v2, Lcom/android/settings/R$string;->security_encryption_progress_dialog_open:I

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;-><init>(Lcom/android/settings/EncryptionSettings;ILcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog-IA;)V

    iput-object v0, p0, Lcom/android/settings/EncryptionSettings;->mProgressDialog:Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;

    .line 156
    invoke-virtual {v0}, Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;->show()V

    .line 157
    invoke-direct {p0, v1}, Lcom/android/settings/EncryptionSettings;->setSecurityEncryptionEnabled(Z)V

    return-void
.end method

.method private setSecurityEncryptionEnabled(Z)V
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "is_security_encryption_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private updateEncryptionEnabled()V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/android/settings/EncryptionSettings;->mEncryptionEnabled:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 304
    invoke-direct {p0}, Lcom/android/settings/EncryptionSettings;->isSecurityEncryptionEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 149
    const-class p0, Lcom/android/settings/EncryptionSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 p3, 0x1

    const/4 v0, -0x1

    if-eq p1, p3, :cond_1

    const/16 p3, 0x65

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_2

    .line 199
    invoke-direct {p0}, Lcom/android/settings/EncryptionSettings;->closeSecurityEncryption()V

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_2

    .line 194
    invoke-direct {p0}, Lcom/android/settings/EncryptionSettings;->openSecurityEncryption()V

    .line 203
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/EncryptionSettings;->updateEncryptionEnabled()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.xiaomi.mihomemanager"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->security_encryption_rejected_via_home_manager:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 77
    :cond_0
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/EncryptionSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 80
    sget p1, Lcom/android/settings/R$xml;->encryption_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 83
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "security_encryption_enable"

    .line 84
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/EncryptionSettings;->mEncryptionEnabled:Landroidx/preference/CheckBoxPreference;

    .line 85
    invoke-direct {p0}, Lcom/android/settings/EncryptionSettings;->isSecurityEncryptionEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 86
    iget-object p1, p0, Lcom/android/settings/EncryptionSettings;->mEncryptionEnabled:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 89
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/EncryptionSettings;->mFilter:Landroid/content/IntentFilter;

    const-string p0, "com.miui.EncryptionPassword"

    .line 90
    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 141
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 142
    iget-object p0, p0, Lcom/android/settings/EncryptionSettings;->mProgressDialog:Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;

    if-eqz p0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/EncryptionSettings$WaitForEncryptionProgressDialog;->tryToDismiss()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 135
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/EncryptionSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const-string/jumbo v0, "security_encryption_enable"

    .line 96
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/android/settings/EncryptionSettings;->mEncryptionEnabled:Landroidx/preference/CheckBoxPreference;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 101
    new-instance p1, Lcom/android/settings/EncryptionSettings$ConfigureEncryptionDialog;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/EncryptionSettings$ConfigureEncryptionDialog;-><init>(Lcom/android/settings/EncryptionSettings;Lcom/android/settings/EncryptionSettings$ConfigureEncryptionDialog-IA;)V

    iput-object p1, p0, Lcom/android/settings/EncryptionSettings;->mDialog:Lcom/android/settings/EncryptionSettings$ConfigureEncryptionDialog;

    .line 102
    invoke-virtual {p1}, Lcom/android/settings/EncryptionSettings$ConfigureEncryptionDialog;->show()V

    :cond_0
    return v0
.end method

.method public onResume()V
    .locals 3

    .line 118
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 120
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "saved_bundle"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const-string/jumbo v2, "show_dialog"

    .line 122
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/EncryptionSettings;->mDialogShow:Z

    if-eqz v0, :cond_1

    .line 125
    new-instance v0, Lcom/android/settings/EncryptionSettings$ConfigureEncryptionDialog;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/EncryptionSettings$ConfigureEncryptionDialog;-><init>(Lcom/android/settings/EncryptionSettings;Lcom/android/settings/EncryptionSettings$ConfigureEncryptionDialog-IA;)V

    iput-object v0, p0, Lcom/android/settings/EncryptionSettings;->mDialog:Lcom/android/settings/EncryptionSettings$ConfigureEncryptionDialog;

    .line 126
    invoke-virtual {v0}, Lcom/android/settings/EncryptionSettings$ConfigureEncryptionDialog;->show()V

    .line 130
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/EncryptionSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/settings/EncryptionSettings;->mFilter:Landroid/content/IntentFilter;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p0, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 110
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "show_dialog"

    .line 111
    iget-boolean v1, p0, Lcom/android/settings/EncryptionSettings;->mDialogShow:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v0, "saved_bundle"

    .line 113
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
