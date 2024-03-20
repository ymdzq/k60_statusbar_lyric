.class public Lcom/android/settings/PasswordUnlockStateController;
.super Lcom/android/settings/BaseCardViewController;
.source "PasswordUnlockStateController.java"


# instance fields
.field private mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFingerprintHelper(Lcom/android/settings/PasswordUnlockStateController;)Lcom/android/settings/FingerprintHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/PasswordUnlockStateController;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreateNewPassword(Lcom/android/settings/PasswordUnlockStateController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/PasswordUnlockStateController;->createNewPassword()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/CardInfo;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings/BaseCardViewController;-><init>(Landroid/content/Context;Lcom/android/settings/CardInfo;)V

    .line 39
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p2, p0, Lcom/android/settings/BaseCardViewController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/PasswordUnlockStateController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 40
    new-instance p1, Lcom/android/settings/FingerprintHelper;

    iget-object p2, p0, Lcom/android/settings/BaseCardViewController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/settings/FingerprintHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/PasswordUnlockStateController;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    .line 41
    iput-object p3, p0, Lcom/android/settings/PasswordUnlockStateController;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private createNewPassword()V
    .locals 4

    .line 104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 105
    invoke-direct {p0}, Lcom/android/settings/PasswordUnlockStateController;->keyguardPasswordExisted()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "add_keyguard_password_then_add_fingerprint"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 106
    iget-object v1, p0, Lcom/android/settings/PasswordUnlockStateController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 108
    invoke-direct {p0}, Lcom/android/settings/PasswordUnlockStateController;->keyguardPasswordExisted()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/android/settings/R$string;->change_lock_screen_password_title:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/settings/R$string;->password_entrance_title:I

    :goto_0
    const-string v2, "com.android.settings.MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment"

    const/4 v3, 0x0

    .line 106
    invoke-static {v1, v2, v3, v0, p0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    return-void
.end method

.method private getFingerprintSize()I
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/settings/PasswordUnlockStateController;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    invoke-virtual {p0}, Lcom/android/settings/FingerprintHelper;->getFingerprintIds()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 72
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method private keyguardPasswordExisted()Z
    .locals 1

    .line 66
    iget-object p0, p0, Lcom/android/settings/PasswordUnlockStateController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public handleActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 0
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 46
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/BaseCardViewController;->mContext:Landroid/content/Context;

    .line 47
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Lmiui/securityspace/CrossUserUtils;->isAirSpace(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/android/settings/PasswordUnlockStateController;->keyguardPasswordExisted()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/PasswordUnlockStateController;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    invoke-virtual {p1}, Lcom/android/settings/FingerprintHelper;->isHardwareDetected()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/PasswordUnlockStateController;->getFingerprintSize()I

    move-result p1

    if-lez p1, :cond_0

    .line 78
    new-instance p1, Lcom/android/settings/PasswordUnlockStateController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/PasswordUnlockStateController$1;-><init>(Lcom/android/settings/PasswordUnlockStateController;)V

    .line 89
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/android/settings/BaseCardViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x1010355    # @android:attr/alertDialogIcon

    .line 90
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->delete_or_keep_legacy_passwords_confirm_msg:I

    .line 91
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->delete_legacy_fingerprint:I

    .line 92
    invoke-virtual {p0, v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->keep_legacy_fingerprint:I

    .line 93
    invoke-virtual {p0, v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 94
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/PasswordUnlockStateController;->createNewPassword()V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 52
    invoke-super {p0}, Lcom/android/settings/BaseCardViewController;->onResume()V

    .line 53
    invoke-direct {p0}, Lcom/android/settings/PasswordUnlockStateController;->keyguardPasswordExisted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/settings/BaseCardViewController;->mCard:Lcom/android/settings/CardInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/CardInfo;->setChecked(Z)V

    .line 55
    iget-object p0, p0, Lcom/android/settings/BaseCardViewController;->mCard:Lcom/android/settings/CardInfo;

    sget v0, Lcom/android/settings/R$string;->on:I

    invoke-virtual {p0, v0}, Lcom/android/settings/CardInfo;->setValueResId(I)V

    .line 56
    invoke-static {}, Lcom/android/settings/MiuiSecureFlagUtils;->openSecureFlag()V

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/settings/BaseCardViewController;->mCard:Lcom/android/settings/CardInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/CardInfo;->setChecked(Z)V

    .line 59
    iget-object p0, p0, Lcom/android/settings/BaseCardViewController;->mCard:Lcom/android/settings/CardInfo;

    sget v0, Lcom/android/settings/R$string;->off:I

    invoke-virtual {p0, v0}, Lcom/android/settings/CardInfo;->setValueResId(I)V

    .line 60
    invoke-static {}, Lcom/android/settings/MiuiSecureFlagUtils;->closeSecureFlag()V

    :goto_0
    return-void
.end method
