.class public Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "ModifyAndInstructionPrivacyPassword.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModifyAndInstructionPrivacyPasswordFragment"
.end annotation


# instance fields
.field private mAccountCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mActivity:Lmiuix/appcompat/app/AppCompatActivity;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBindAccount:Landroidx/preference/CheckBoxPreference;

.field private mConfirmUseFingerprint:Landroidx/preference/CheckBoxPreference;

.field private mFingerDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mFingerprintDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mFingerprintDialogTitle:Landroid/widget/TextView;

.field private mFingerprintErrorCount:I

.field private mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

.field private mFingerprintIdentifyCallback:Lcom/android/settings/FingerprintIdentifyCallback;

.field private mIsVerifyFingerprintFailed:Z

.field private mPasswordSettingCategory:Landroidx/preference/PreferenceCategory;

.field private mPasswordToggle:Landroidx/preference/CheckBoxPreference;

.field private mPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

.field private mVisiblePattern:Landroidx/preference/CheckBoxPreference;

.field private modifyPrivacyPassword:Landroidx/preference/Preference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)Lmiuix/appcompat/app/AppCompatActivity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAlertDialog(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)Landroid/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBindAccount(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mBindAccount:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfirmUseFingerprint(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mConfirmUseFingerprint:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFingerprintDialogTitle(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mFingerprintDialogTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFingerprintErrorCount(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mFingerprintErrorCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFingerprintHelper(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)Lcom/android/settings/FingerprintHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPasswordToggle(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mPasswordToggle:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrivacyPasswordManager(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmFingerprintErrorCount(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mFingerprintErrorCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsVerifyFingerprintFailed(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mIsVerifyFingerprintFailed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$msetFingerprintRevive(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->setFingerprintRevive()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetVibrator(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->setVibrator()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    .line 242
    new-instance v0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$4;-><init>(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mAccountCallback:Landroid/accounts/AccountManagerCallback;

    .line 433
    new-instance v0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$8;

    invoke-direct {v0, p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$8;-><init>(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mFingerDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 442
    new-instance v0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$9;

    invoke-direct {v0, p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$9;-><init>(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mFingerprintDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 460
    new-instance v0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;

    invoke-direct {v0, p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;-><init>(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mFingerprintIdentifyCallback:Lcom/android/settings/FingerprintIdentifyCallback;

    return-void
.end method

.method private addPreferenceItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0, p1}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->excludPreferenceItem(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 173
    :cond_0
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 174
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 177
    iget-object p0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private identifyFingerprint()V
    .locals 2

    .line 507
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    iget-object p0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mFingerprintIdentifyCallback:Lcom/android/settings/FingerprintIdentifyCallback;

    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->getFingerprintIds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/FingerprintHelper;->identify(Lcom/android/settings/FingerprintIdentifyCallback;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ModifyAndInstructionPrivacyPassword"

    const-string v1, "finger identify error"

    .line 509
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private isToggled(Landroidx/preference/Preference;)Z
    .locals 0

    .line 239
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    return p0
.end method

.method private setBindAccountStat()V
    .locals 3

    .line 347
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->isLoginXiaomiAccount(Landroid/content/Context;)Z

    move-result v0

    .line 348
    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->getBindXiaoMiAccount()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->getLoginedAccountMd5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 351
    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->bindXiaoMiAccount(Ljava/lang/String;)V

    .line 353
    :cond_1
    iget-object p0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mBindAccount:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private setFingerprintRevive()V
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->getWrongFingerAttempts(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->setWrongFingerAttempts(Landroid/content/Context;I)V

    .line 552
    invoke-static {}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->isFingerprintHardWareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    iget-object p0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->invokeResetTimeout(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private setVibrator()V
    .locals 2

    .line 454
    iget-object p0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    .line 455
    invoke-virtual {p0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xc8

    .line 456
    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    return-void
.end method

.method private showClosePasswordDialog()V
    .locals 3

    .line 211
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->privacy_close_dlg_title:I

    .line 212
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->privacy_close_dlg_msg:I

    .line 213
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->privacy_dlg_button_cancel:I

    new-instance v2, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$3;

    invoke-direct {v2, p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$3;-><init>(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)V

    .line 214
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->privacy_close_dlg_button_ok:I

    new-instance v2, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$2;

    invoke-direct {v2, p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$2;-><init>(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)V

    .line 221
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$1;-><init>(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)V

    .line 228
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 235
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private updatePreferenceCategories()V
    .locals 8

    .line 148
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->privacy_password_function_specfication_keys:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$array;->privacy_password_function_specfication_names:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 150
    iget-object v2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 151
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_4

    const-string/jumbo v5, "privacy_mms"

    .line 152
    aget-object v6, v0, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lmiui/os/Build;->getUserMode()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    :cond_0
    const-string/jumbo v5, "privacy_file"

    aget-object v6, v0, v4

    .line 153
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 157
    :cond_1
    invoke-static {}, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->getModifyandInstructionsInfo()Ljava/util/Map;

    move-result-object v5

    aget-object v6, v0, v4

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 158
    invoke-static {}, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->getSpcificationInfos()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;

    .line 159
    new-instance v6, Landroid/content/Intent;

    iget-object v7, v5, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;->intentAction:Ljava/lang/String;

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    iget-object v5, v5, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;->startPackage:Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    invoke-virtual {v2, v6, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 162
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 165
    :cond_2
    aget-object v5, v0, v4

    aget-object v6, v1, v4

    invoke-direct {p0, v5, v6}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->addPreferenceItem(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method protected createBindXiaomiAccountDialog()V
    .locals 4

    .line 363
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 364
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->confirm_bind_xiaomi_account_dialog_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 365
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->bind_xiaomi_account_dialog_summery:I

    iget-object v3, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v3}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->loginedXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 366
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->privacy_dlg_button_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$7;

    invoke-direct {v2, p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$7;-><init>(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 376
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->bind_xiaomi_account_confirm:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$6;

    invoke-direct {v2, p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$6;-><init>(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mAccountDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 387
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected createConfirmFingerprintDialog()V
    .locals 4

    .line 516
    invoke-static {}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->isFodFingerprint()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 518
    new-instance v0, Lcom/android/settings/privacypassword/FullScreenDialog;

    iget-object v2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    iget-object v3, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    invoke-direct {v0, v2, v3}, Lcom/android/settings/privacypassword/FullScreenDialog;-><init>(Landroid/content/Context;Lcom/android/settings/FingerprintHelper;)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mAlertDialog:Landroid/app/AlertDialog;

    .line 519
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    sget v2, Lcom/android/settings/R$anim;->fod_finger_appear:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 520
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/settings/R$layout;->applock_fod_fingerprint_window:I

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 521
    sget v2, Lcom/android/settings/R$id;->confirm_fingerprint_view_msg:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mFingerprintDialogTitle:Landroid/widget/TextView;

    goto :goto_1

    .line 523
    :cond_0
    new-instance v0, Lcom/android/settings/privacypassword/FullScreenDialog;

    iget-object v2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v2, v1}, Lcom/android/settings/privacypassword/FullScreenDialog;-><init>(Landroid/content/Context;Lcom/android/settings/FingerprintHelper;)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mAlertDialog:Landroid/app/AlertDialog;

    .line 524
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    sget v2, Lcom/android/settings/R$anim;->fod_finger_appear:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 525
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/settings/R$layout;->finger_alertdialog_layout:I

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 526
    sget v2, Lcom/android/settings/R$id;->back_finger_print:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 527
    sget v3, Lcom/android/settings/R$id;->confirm_fingerprint_view_msg:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mFingerprintDialogTitle:Landroid/widget/TextView;

    .line 528
    invoke-static {}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->isSideFingerprint()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 529
    sget v3, Lcom/android/settings/R$drawable;->core_scan_gesture_broadside:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 531
    :cond_1
    sget v3, Lcom/android/settings/R$drawable;->back_finger_print:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 533
    :goto_0
    iget-object v2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mFingerprintDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 535
    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 536
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 537
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;)V

    .line 538
    sget v0, Lcom/android/settings/R$id;->cancel_finger_authenticate:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 539
    new-instance v1, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$11;

    invoke-direct {v1, p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$11;-><init>(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 545
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->setup_password_back:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 546
    invoke-direct {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->identifyFingerprint()V

    return-void
.end method

.method public finishFromActivity()V
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->isLoginXiaomiAccount(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 561
    iget-object p0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->bindXiaoMiAccount(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected forgetPrivacyPasswordSettings()V
    .locals 4

    .line 262
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->isLoginXiaomiAccount(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mAccountCallback:Landroid/accounts/AccountManagerCallback;

    invoke-static {v0, v1, p0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->loginAccount(Landroid/app/Activity;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;)V

    goto :goto_1

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->getBindXiaoMiAccount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->bindXiaoMiAccount(Ljava/lang/String;)V

    .line 267
    iget-object p0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mBindAccount:Landroidx/preference/CheckBoxPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->isTabletSpitModel(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$5;

    invoke-direct {v1, p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$5;-><init>(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 278
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->createBindXiaomiAccountDialog()V

    .line 280
    :goto_0
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mBindAccount:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->forget_privacy_password_summary:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 298
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const p3, 0x46dc2

    const/4 v0, -0x1

    if-eq p1, p3, :cond_6

    const p3, 0x46dcb

    const/4 v1, 0x0

    if-eq p1, p3, :cond_4

    const/4 p3, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    if-ne p2, v0, :cond_1

    .line 329
    iget-object p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->bindXiaoMiAccount(Ljava/lang/String;)V

    .line 330
    iget-object p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    invoke-virtual {p1}, Lcom/android/settings/FingerprintHelper;->isHardwareDetected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 331
    iget-object p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {p1, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->setFingerprintEnable(Z)V

    .line 333
    :cond_0
    iget-object p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {p1, p3}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->setVisibilePattern(Z)V

    .line 334
    iget-object p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    iget-object p2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1, p2, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->setPasswordEnable(Landroid/app/Activity;Z)V

    .line 335
    iget-object p0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_0

    .line 337
    :cond_1
    iget-object p0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mPasswordToggle:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, p3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :pswitch_1
    if-ne p2, v0, :cond_2

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->setUseFingerprintConfirmPassword()V

    goto :goto_0

    .line 323
    :cond_2
    iget-object p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mConfirmUseFingerprint:Landroidx/preference/CheckBoxPreference;

    iget-object p2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {p2}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->isFingerprintEnable()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 324
    iget-object p0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->isFingerprintEnable()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->setFingerprintEnable(Z)V

    goto :goto_0

    :pswitch_2
    if-ne p2, v0, :cond_3

    move v1, p3

    .line 316
    :cond_3
    iget-object p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mConfirmUseFingerprint:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 317
    iget-object p0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {p0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->setFingerprintEnable(Z)V

    goto :goto_0

    :cond_4
    if-ne p2, v0, :cond_5

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->forgetPrivacyPasswordSettings()V

    goto :goto_0

    .line 311
    :cond_5
    iget-object p0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mBindAccount:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_6
    if-ne p2, v0, :cond_7

    .line 302
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    const-class p3, Lcom/android/settings/privacypassword/SetPrivacyPasswordChooseAccessControl;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo p2, "privacy_password_extra_data"

    const-string p3, "ModifyPassword"

    .line 303
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x7165

    .line 304
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_7
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7162
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .line 111
    sget p1, Lcom/android/settings/R$xml;->modify_instruction_privacy_password:I

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/AppCompatActivity;

    iput-object p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 113
    invoke-static {p1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    const-string/jumbo p1, "modify_privacy_password"

    .line 114
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->modifyPrivacyPassword:Landroidx/preference/Preference;

    .line 115
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "forget_privacy_password_setting"

    .line 116
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mBindAccount:Landroidx/preference/CheckBoxPreference;

    const-string/jumbo p1, "privacy_password_spcific"

    .line 117
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceCategory;

    iput-object p2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 118
    iget-object p2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mBindAccount:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo p2, "privacy_password_visible_pattern"

    .line 119
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/CheckBoxPreference;

    iput-object p2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mVisiblePattern:Landroidx/preference/CheckBoxPreference;

    .line 120
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->isVisibilePattern()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 121
    iget-object p2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mVisiblePattern:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 123
    new-instance p2, Lcom/android/settings/FingerprintHelper;

    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {p2, v0}, Lcom/android/settings/FingerprintHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    const-string/jumbo p2, "password_settings_category"

    .line 124
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceCategory;

    iput-object p2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mPasswordSettingCategory:Landroidx/preference/PreferenceCategory;

    const-string/jumbo p2, "use_finger_cofirm_password"

    .line 125
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/CheckBoxPreference;

    iput-object p2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mConfirmUseFingerprint:Landroidx/preference/CheckBoxPreference;

    .line 126
    iget-object p2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    invoke-virtual {p2}, Lcom/android/settings/FingerprintHelper;->isHardwareDetected()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 127
    iget-object p2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    invoke-virtual {p2}, Lcom/android/settings/FingerprintHelper;->getFingerprintIds()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 128
    invoke-static {p2}, Lcom/android/settings/privacypassword/TransparentHelper;->isScreenLockOpen(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {p2}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->isFingerprintEnable()Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 129
    :goto_0
    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mConfirmUseFingerprint:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 130
    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mConfirmUseFingerprint:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v1, p2}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->setFingerprintEnable(Z)V

    goto :goto_1

    .line 133
    :cond_1
    iget-object p2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mPasswordSettingCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mConfirmUseFingerprint:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_1
    const-string/jumbo p2, "privacy_password_toggle"

    .line 136
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/CheckBoxPreference;

    iput-object p2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mPasswordToggle:Landroidx/preference/CheckBoxPreference;

    .line 137
    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 138
    iget-object p2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mPasswordToggle:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 139
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v1, "enter_from_settings"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_2

    .line 140
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 142
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->updatePreferenceCategories()V

    .line 144
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->setFingerprintRevive()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mAccountDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 396
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 398
    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 196
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 197
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "privacy_password_visible_pattern"

    .line 198
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object p0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {p0, p2}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->setVisibilePattern(Z)V

    goto :goto_0

    :cond_0
    const-string p2, "forget_privacy_password_setting"

    .line 200
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const p1, 0x46dcb

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->startConfirmPassword(I)V

    goto :goto_0

    :cond_1
    const-string/jumbo p2, "use_finger_cofirm_password"

    .line 202
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/16 p1, 0x7163

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->startConfirmPassword(I)V

    goto :goto_0

    :cond_2
    const-string/jumbo p2, "privacy_password_toggle"

    .line 204
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 205
    invoke-direct {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->showClosePasswordDialog()V

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 182
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-static {}, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->getModifyandInstructionsInfo()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 185
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    const-class v2, Lcom/android/settings/privacypassword/FunctionSpecification;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "privacy_password_function_specification"

    .line 186
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "modify_privacy_password"

    .line 188
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x46dc2

    .line 189
    invoke-virtual {p0, p1}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->startConfirmPassword(I)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onRestartFromActivity()V
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mVisiblePattern:Landroidx/preference/CheckBoxPreference;

    iget-object p0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->isVisibilePattern()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->havePattern()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 290
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->setBindAccountStat()V

    .line 291
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->isFingerprintEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 292
    :goto_0
    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mConfirmUseFingerprint:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 293
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 358
    invoke-direct {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->setBindAccountStat()V

    .line 359
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStart()V

    return-void
.end method

.method protected setUseFingerprintConfirmPassword()V
    .locals 5

    .line 408
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mConfirmUseFingerprint:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->isToggled(Landroidx/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 410
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lcom/android/settings/privacypassword/TransparentHelper;->isScreenLockOpen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->getFingerprintIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->createConfirmFingerprintDialog()V

    goto :goto_0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lcom/android/settings/privacypassword/TransparentHelper;->isScreenLockOpen(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x7162

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->getFingerprintIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 413
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_1

    .line 415
    iget-object v2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v2, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->putIntentExtra(Landroid/content/Context;Landroid/content/Intent;)V

    .line 417
    :cond_1
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 420
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 421
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.NewFingerprintInternalActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 422
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_3

    .line 423
    iget-object v2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v2, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->putIntentExtra(Landroid/content/Context;Landroid/content/Intent;)V

    .line 425
    :cond_3
    invoke-static {v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->setCancelSettingsSplit(Landroid/content/Intent;)V

    .line 426
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 429
    :cond_4
    iget-object p0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->setFingerprintEnable(Z)V

    :goto_0
    return-void
.end method

.method protected startConfirmPassword(I)V
    .locals 3

    .line 402
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    const-class v2, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "enter_from_settings"

    const/4 v2, 0x1

    .line 403
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 404
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
