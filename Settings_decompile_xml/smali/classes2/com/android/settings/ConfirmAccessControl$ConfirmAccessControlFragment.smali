.class public Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;
.super Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;
.source "ConfirmAccessControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ConfirmAccessControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmAccessControlFragment"
.end annotation


# static fields
.field private static sDeadline:J


# instance fields
.field private mCallerToken:Landroid/os/IBinder;

.field private mCheckAccess:Z

.field private mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

.field private mConfirmPurpose:I

.field private mEmergencyCall:Landroid/widget/Button;

.field private mIntent:Landroid/content/Intent;

.field private mPackageName:Ljava/lang/String;

.field private mSecurityManager:Lmiui/security/SecurityManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mEmergencyCall:Landroid/widget/Button;

    return-void
.end method

.method private handleConfirmPurpose()V
    .locals 4

    .line 129
    iget v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mConfirmPurpose:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 130
    iget-object p0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {p0, v1}, Landroid/security/ChooseLockSettingsHelper;->setACLockEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 132
    iget-object p0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {p0, v2}, Landroid/security/ChooseLockSettingsHelper;->setPasswordForPrivacyModeEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 134
    iget-object p0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {p0, v1}, Landroid/security/ChooseLockSettingsHelper;->setPasswordForPrivacyModeEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 136
    iget-object p0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {p0, v1}, Landroid/security/ChooseLockSettingsHelper;->setPrivacyModeEnabled(Z)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method protected accessLockPattern(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 267
    invoke-direct {p0}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->handleConfirmPurpose()V

    .line 268
    iget-object v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mSecurityManager:Lmiui/security/SecurityManager;

    iget-object v1, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/security/SecurityManager;->addAccessControlPass(Ljava/lang/String;)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 274
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->accessLockPattern(Ljava/util/List;)V

    return-void
.end method

.method protected checkPattern(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .line 279
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0, p1}, Landroid/security/MiuiLockPatternUtils;->checkMiuiLockPattern(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 107
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 109
    sget p2, Lcom/android/settings/R$id;->emergencyCall:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mEmergencyCall:Landroid/widget/Button;

    .line 110
    new-instance p3, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment$1;

    invoke-direct {p3, p0}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment$1;-><init>(Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p2, "com.android.contacts"

    .line 119
    iget-object p3, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mEmergencyCall:Landroid/widget/Button;

    invoke-virtual {p2}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 120
    iget-object p0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mEmergencyCall:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 122
    :cond_0
    iget-object p0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mEmergencyCall:Landroid/widget/Button;

    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-object p1
.end method

.method protected getDisableKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "access_control_lock_enabled"

    return-object p0
.end method

.method protected getInStealthMode()Z
    .locals 2

    .line 262
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 261
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "ac_visiblepattern"

    const/4 v1, 0x0

    .line 262
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected getLockoutAttepmpDeadline(J)J
    .locals 4

    .line 226
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    .line 227
    sget-wide v0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->sDeadline:J

    cmp-long p2, v0, p0

    if-ltz p2, :cond_0

    const-wide/16 v2, 0x7530

    add-long/2addr p0, v2

    cmp-long p0, v0, p0

    if-lez p0, :cond_1

    :cond_0
    const-wide/16 p0, 0x0

    .line 228
    sput-wide p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->sDeadline:J

    .line 230
    :cond_1
    sget-wide p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->sDeadline:J

    return-wide p0
.end method

.method protected handleAttemptLockout(J)V
    .locals 0

    .line 241
    invoke-super {p0, p1, p2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V

    .line 242
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    const-string p2, "com.xiaomi"

    invoke-virtual {p1, p2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 243
    array-length p1, p1

    if-lez p1, :cond_0

    .line 244
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mForgetPattern:Landroid/widget/Button;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 246
    :cond_0
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mForgetPattern:Landroid/widget/Button;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    new-instance p1, Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string/jumbo v0, "security"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/security/SecurityManager;

    iput-object p1, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mSecurityManager:Lmiui/security/SecurityManager;

    return-void
.end method

.method protected onCreateNoSaveState()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->savedMiuiLockPatternExists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mSecurityManager:Lmiui/security/SecurityManager;

    iget-object v1, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/security/SecurityManager;->addAccessControlPass(Ljava/lang/String;)V

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->handleConfirmPurpose()V

    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method protected parseIntent(Landroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mIntent:Landroid/content/Intent;

    .line 158
    iput-object v0, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mCallerToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    .line 159
    iput-boolean v1, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mCheckAccess:Z

    if-eqz p1, :cond_8

    .line 162
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->parseIntent(Landroid/content/Intent;)V

    const-string v2, "android.intent.action.CREATE_SHORTCUT"

    .line 163
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mPackageName:Ljava/lang/String;

    .line 164
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mPackageName:Ljava/lang/String;

    :cond_0
    const-string v2, "confirm_purpose"

    .line 165
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mConfirmPurpose:I

    const-string v2, "android.intent.extra.INTENT"

    .line 166
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mIntent:Landroid/content/Intent;

    const-string v2, "android.app.extra.PROTECTED_APP_TOKEN"

    .line 167
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mCallerToken:Landroid/os/IBinder;

    const-string/jumbo v2, "miui.intent.action.CHECK_ACCESS_CONTROL"

    .line 168
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    const-string v2, "android.app.action.CHECK_ACCESS_CONTROL_PAD"

    .line 169
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v3

    :goto_1
    iput-boolean p1, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mCheckAccess:Z

    .line 171
    iget-object p1, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 173
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 176
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v0, :cond_3

    .line 181
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/android/settings/R$string;->access_control_need_password:I

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/settings/R$string;->access_control_need_to_unlock:I

    .line 184
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    :cond_3
    move p1, v3

    goto :goto_2

    .line 188
    :cond_4
    iget p1, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mConfirmPurpose:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 189
    sget p1, Lcom/android/settings/R$string;->privacy_mode_dialog_title:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/android/settings/R$string;->access_control_need_password:I

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/settings/R$string;->access_control_need_to_unlock:I

    .line 191
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    :cond_5
    move p1, v1

    .line 193
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ConfirmAccessControl;

    invoke-static {v0, p1}, Lcom/android/settings/ConfirmAccessControl;->-$$Nest$fputmNoBack(Lcom/android/settings/ConfirmAccessControl;Z)V

    .line 199
    :try_start_1
    iget-object p1, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->mIntent:Landroid/content/Intent;

    if-eqz p1, :cond_6

    const-string v0, "StartActivityWhenLocked"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p1, :cond_6

    move v1, v3

    goto :goto_3

    :catch_1
    move-exception p1

    .line 201
    sget-object v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->TAG:Ljava/lang/String;

    const-string v2, "Fail to read StartActivityWhenLocked from intent"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 p1, 0x80000

    if-eqz v1, :cond_7

    .line 206
    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_4

    .line 208
    :cond_7
    invoke-virtual {p0, p1}, Landroid/view/Window;->clearFlags(I)V

    :cond_8
    :goto_4
    return-void
.end method

.method protected setLockoutAttepmpDeadline(J)V
    .locals 0

    .line 235
    sput-wide p1, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->sDeadline:J

    .line 236
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Landroid/security/MiuiLockPatternUtils;->clearLockoutAttemptDeadline()V

    return-void
.end method

.method protected updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V
    .locals 1

    .line 284
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 285
    sget-object v0, Lcom/android/settings/ConfirmAccessControl$1;->$SwitchMap$com$android$settings$ConfirmLockPattern$Stage:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mForgetPattern:Landroid/widget/Button;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 287
    :cond_1
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mForgetPattern:Landroid/widget/Button;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method
