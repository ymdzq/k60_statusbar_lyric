.class public Lcom/android/settings/FingerprintUnlockStateController;
.super Lcom/android/settings/BaseCardViewController;
.source "FingerprintUnlockStateController.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/CardInfo;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings/BaseCardViewController;-><init>(Landroid/content/Context;Lcom/android/settings/CardInfo;)V

    .line 41
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p2, p0, Lcom/android/settings/BaseCardViewController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/FingerprintUnlockStateController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 42
    new-instance p1, Lcom/android/settings/FingerprintHelper;

    iget-object p2, p0, Lcom/android/settings/BaseCardViewController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/settings/FingerprintHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/FingerprintUnlockStateController;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    .line 43
    iput-object p3, p0, Lcom/android/settings/FingerprintUnlockStateController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 44
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/FingerprintUnlockStateController;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private addFingerprint(I)V
    .locals 3

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    .line 123
    iget-object p1, p0, Lcom/android/settings/BaseCardViewController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->max_fingerprint_number_reached:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/FingerprintUnlockStateController;->showInformationDialog(Ljava/lang/String;)V

    return-void

    .line 126
    :cond_0
    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isPad()Z

    move-result p1

    if-nez p1, :cond_3

    sget-boolean p1, Lcom/android/settings/utils/TabletUtils;->IS_TABLET:Z

    if-nez p1, :cond_1

    goto :goto_1

    .line 133
    :cond_1
    invoke-static {}, Lcom/android/settings/utils/MiuiGxzwUtils;->isGxzwSensor()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 134
    const-class p1, Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 136
    :cond_2
    const-class p1, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 138
    :goto_0
    iget-object p0, p0, Lcom/android/settings/FingerprintUnlockStateController;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x0

    sget v1, Lcom/android/settings/R$string;->add_fingerprint_text:I

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_2

    .line 127
    :cond_3
    :goto_1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/FingerprintUnlockStateController;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/android/settings/NewFingerprintInternalActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, ":android:show_fragment_title"

    .line 128
    sget v1, Lcom/android/settings/R$string;->empty_title:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    invoke-static {p1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->setCancelSettingsSplit(Landroid/content/Intent;)V

    .line 130
    iget-object p0, p0, Lcom/android/settings/FingerprintUnlockStateController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return-void
.end method

.method private getFingerprintSize()I
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/settings/FingerprintUnlockStateController;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    invoke-virtual {p0}, Lcom/android/settings/FingerprintHelper;->getFingerprintIds()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 88
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method private handleClick()V
    .locals 4

    .line 92
    invoke-direct {p0}, Lcom/android/settings/FingerprintUnlockStateController;->getFingerprintSize()I

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    invoke-direct {p0}, Lcom/android/settings/FingerprintUnlockStateController;->keyguardPasswordExisted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/BaseCardViewController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/MiuiConfirmCommonPassword;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    sget v1, Lcom/android/settings/R$string;->empty_title:I

    const-string v2, ":android:show_fragment_title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "confirm_password_request_code"

    const/16 v3, 0x3e9

    .line 97
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    sget-boolean v2, Lcom/android/settings/utils/TabletUtils;->IS_TABLET:Z

    if-eqz v2, :cond_0

    .line 99
    iget-object p0, p0, Lcom/android/settings/FingerprintUnlockStateController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 100
    invoke-static {}, Lcom/android/settings/MiuiConfirmCommonPassword;->getExtraFragmentName()Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 99
    invoke-static {p0, v2, v3, v0, v1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 103
    :cond_0
    iget-object p0, p0, Lcom/android/settings/FingerprintUnlockStateController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v0, v3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 106
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/FingerprintUnlockStateController;->toFingerprintManageFragment()V

    goto :goto_0

    .line 110
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings/FingerprintUnlockStateController;->addFingerprint(I)V

    :goto_0
    return-void
.end method

.method private keyguardPasswordExisted()Z
    .locals 1

    .line 82
    iget-object p0, p0, Lcom/android/settings/FingerprintUnlockStateController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

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

.method private showInformationDialog(Ljava/lang/String;)V
    .locals 1

    .line 143
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/android/settings/FingerprintUnlockStateController;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x1010355    # @android:attr/alertDialogIcon

    .line 144
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 145
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->information_dialog_button_text:I

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 147
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private toFingerprintManageFragment()V
    .locals 4

    .line 115
    iget-object p0, p0, Lcom/android/settings/FingerprintUnlockStateController;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x0

    sget v1, Lcom/android/settings/R$string;->privacy_password_use_finger_dialog_title:I

    const-string v2, "com.android.settings.FingerprintManageSetting$FingerprintManageFragment"

    const/4 v3, -0x1

    invoke-static {p0, v2, v3, v0, v1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    return-void
.end method


# virtual methods
.method public handleActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p3, 0x3e9

    if-ne p1, p3, :cond_1

    .line 75
    sget-boolean p1, Lcom/android/settings/utils/TabletUtils;->IS_TABLET:Z

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 77
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/FingerprintUnlockStateController;->toFingerprintManageFragment()V

    :cond_1
    return-void
.end method

.method public isAvailable()Z
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/FingerprintUnlockStateController;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    invoke-virtual {p0}, Lcom/android/settings/FingerprintHelper;->isHardwareDetected()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 50
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/settings/FingerprintUnlockStateController;->handleClick()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 63
    invoke-super {p0}, Lcom/android/settings/BaseCardViewController;->onResume()V

    .line 64
    iget-object v0, p0, Lcom/android/settings/BaseCardViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string/jumbo v2, "miui_keyguard"

    const/4 v3, 0x2

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 65
    invoke-direct {p0}, Lcom/android/settings/FingerprintUnlockStateController;->getFingerprintSize()I

    move-result v0

    if-lez v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/android/settings/BaseCardViewController;->mCard:Lcom/android/settings/CardInfo;

    invoke-virtual {v0, v1}, Lcom/android/settings/CardInfo;->setChecked(Z)V

    .line 67
    iget-object p0, p0, Lcom/android/settings/BaseCardViewController;->mCard:Lcom/android/settings/CardInfo;

    sget v0, Lcom/android/settings/R$string;->on:I

    invoke-virtual {p0, v0}, Lcom/android/settings/CardInfo;->setValueResId(I)V

    goto :goto_1

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/android/settings/BaseCardViewController;->mCard:Lcom/android/settings/CardInfo;

    invoke-virtual {v0, v2}, Lcom/android/settings/CardInfo;->setChecked(Z)V

    .line 70
    iget-object p0, p0, Lcom/android/settings/BaseCardViewController;->mCard:Lcom/android/settings/CardInfo;

    sget v0, Lcom/android/settings/R$string;->off:I

    invoke-virtual {p0, v0}, Lcom/android/settings/CardInfo;->setValueResId(I)V

    :goto_1
    return-void
.end method
