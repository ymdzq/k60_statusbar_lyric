.class public Lcom/android/settings/BluetoothUnlockStateController;
.super Lcom/android/settings/BaseCardViewController;
.source "BluetoothUnlockStateController.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFragment:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/CardInfo;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/settings/BaseCardViewController;-><init>(Landroid/content/Context;Lcom/android/settings/CardInfo;)V

    .line 19
    iput-object p1, p0, Lcom/android/settings/BluetoothUnlockStateController;->mContext:Landroid/content/Context;

    .line 20
    iput-object p3, p0, Lcom/android/settings/BluetoothUnlockStateController;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private updateBluetoothState()V
    .locals 6

    .line 45
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/BluetoothUnlockStateController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 46
    iget-object v1, p0, Lcom/android/settings/BluetoothUnlockStateController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$Secure;->hasCommonPassword(Landroid/content/Context;)Z

    move-result v1

    .line 47
    iget-object v2, p0, Lcom/android/settings/BluetoothUnlockStateController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/MiuiSecuritySettings;->isMiShowMode(Landroid/content/Context;)Z

    move-result v2

    .line 48
    iget-object v3, p0, Lcom/android/settings/BaseCardViewController;->mCard:Lcom/android/settings/CardInfo;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v5

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/settings/CardInfo;->setDisable(Z)V

    .line 49
    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->getBluetoothUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/android/settings/BaseCardViewController;->mCard:Lcom/android/settings/CardInfo;

    invoke-virtual {v0, v5}, Lcom/android/settings/CardInfo;->setChecked(Z)V

    .line 51
    iget-object p0, p0, Lcom/android/settings/BaseCardViewController;->mCard:Lcom/android/settings/CardInfo;

    sget v0, Lcom/android/settings/R$string;->on:I

    invoke-virtual {p0, v0}, Lcom/android/settings/CardInfo;->setValueResId(I)V

    goto :goto_2

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/android/settings/BaseCardViewController;->mCard:Lcom/android/settings/CardInfo;

    invoke-virtual {v0, v4}, Lcom/android/settings/CardInfo;->setChecked(Z)V

    .line 54
    iget-object p0, p0, Lcom/android/settings/BaseCardViewController;->mCard:Lcom/android/settings/CardInfo;

    sget v0, Lcom/android/settings/R$string;->off:I

    invoke-virtual {p0, v0}, Lcom/android/settings/CardInfo;->setValueResId(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 0

    .line 25
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
    .locals 3

    .line 39
    iget-object p0, p0, Lcom/android/settings/BluetoothUnlockStateController;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    sget v0, Lcom/android/settings/R$string;->bluetooth_unlock_title:I

    const-string v1, "com.android.settings.MiuiSecurityBluetoothSettingsFragment"

    const/4 v2, -0x1

    invoke-static {p0, v1, v2, p1, v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 33
    invoke-super {p0}, Lcom/android/settings/BaseCardViewController;->onResume()V

    .line 34
    invoke-direct {p0}, Lcom/android/settings/BluetoothUnlockStateController;->updateBluetoothState()V

    return-void
.end method
