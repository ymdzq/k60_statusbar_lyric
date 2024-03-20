.class public Lcom/android/settings/FaceUnlockStateController;
.super Lcom/android/settings/BaseCardViewController;
.source "FaceUnlockStateController.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mHasClickFaceUnlock:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/CardInfo;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/BaseCardViewController;-><init>(Landroid/content/Context;Lcom/android/settings/CardInfo;)V

    .line 47
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p2, p0, Lcom/android/settings/BaseCardViewController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/FaceUnlockStateController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 48
    iput-object p3, p0, Lcom/android/settings/FaceUnlockStateController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 49
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/FaceUnlockStateController;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private addFaceData(Z)V
    .locals 3

    .line 129
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/FaceUnlockStateController;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/settings/faceunlock/MiuiFaceDataInput;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "input_facedata_need_skip_password"

    .line 130
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, ":android:show_fragment_title"

    .line 131
    sget v1, Lcom/android/settings/R$string;->empty_title:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "face_request_code"

    const/16 v1, 0x65

    .line 132
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    iget-object p0, p0, Lcom/android/settings/FaceUnlockStateController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private getFaceDataSize()I
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/settings/BaseCardViewController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->getEnrolledFaceList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 99
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method private handleClick()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/android/settings/BaseCardViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isSltOpen(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 104
    iget-object p0, p0, Lcom/android/settings/BaseCardViewController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->face_unlock_when_slt_on_toast:I

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    return-void

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/FaceUnlockStateController;->getFaceDataSize()I

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    invoke-direct {p0}, Lcom/android/settings/FaceUnlockStateController;->keyguardPasswordExisted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/BaseCardViewController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/MiuiConfirmCommonPassword;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, ":android:show_fragment_title"

    .line 111
    sget v2, Lcom/android/settings/R$string;->empty_title:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    iget-object p0, p0, Lcom/android/settings/FaceUnlockStateController;->mFragment:Landroidx/fragment/app/Fragment;

    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 114
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/FaceUnlockStateController;->toFaceManageFragment()V

    goto :goto_0

    .line 117
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/settings/FaceUnlockStateController;->addFaceData(Z)V

    :goto_0
    return-void
.end method

.method private keyguardPasswordExisted()Z
    .locals 1

    .line 93
    iget-object p0, p0, Lcom/android/settings/FaceUnlockStateController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

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

.method private toFaceManageFragment()V
    .locals 4

    .line 123
    iget-object p0, p0, Lcom/android/settings/FaceUnlockStateController;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x0

    sget v1, Lcom/android/settings/R$string;->face_unlock:I

    const-string v2, "com.android.settings.faceunlock.MiuiFaceDataManage$FaceManageFragment"

    const/4 v3, -0x1

    invoke-static {p0, v2, v3, v0, v1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    return-void
.end method


# virtual methods
.method public handleActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 p3, 0x3ea

    const/4 v0, -0x1

    if-ne p1, p3, :cond_0

    if-ne p2, v0, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/android/settings/FaceUnlockStateController;->toFaceManageFragment()V

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    if-ne p2, v0, :cond_1

    .line 88
    invoke-direct {p0, p3}, Lcom/android/settings/FaceUnlockStateController;->addFaceData(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isAvailable()Z
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/BaseCardViewController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->isSupportFaceUnlock(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 55
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

    .line 63
    invoke-direct {p0}, Lcom/android/settings/FaceUnlockStateController;->handleClick()V

    return-void
.end method

.method public onResume()V
    .locals 6

    .line 68
    invoke-super {p0}, Lcom/android/settings/BaseCardViewController;->onResume()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/android/settings/FaceUnlockStateController;->mHasClickFaceUnlock:Z

    .line 70
    iget-object v1, p0, Lcom/android/settings/BaseCardViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 71
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string v3, "face_unlcok_apply_for_lock"

    const/4 v4, 0x1

    .line 70
    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v4, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v0

    .line 72
    :goto_0
    iget-object v2, p0, Lcom/android/settings/BaseCardViewController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->hasEnrolledFaces(Landroid/content/Context;)Z

    move-result v2

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "face unlock enable: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " hasEnrolledFaces: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "miui_face"

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/settings/BaseCardViewController;->mCard:Lcom/android/settings/CardInfo;

    invoke-virtual {v0, v4}, Lcom/android/settings/CardInfo;->setChecked(Z)V

    .line 76
    iget-object p0, p0, Lcom/android/settings/BaseCardViewController;->mCard:Lcom/android/settings/CardInfo;

    sget v0, Lcom/android/settings/R$string;->on:I

    invoke-virtual {p0, v0}, Lcom/android/settings/CardInfo;->setValueResId(I)V

    goto :goto_1

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/android/settings/BaseCardViewController;->mCard:Lcom/android/settings/CardInfo;

    invoke-virtual {v1, v0}, Lcom/android/settings/CardInfo;->setChecked(Z)V

    .line 79
    iget-object p0, p0, Lcom/android/settings/BaseCardViewController;->mCard:Lcom/android/settings/CardInfo;

    sget v0, Lcom/android/settings/R$string;->off:I

    invoke-virtual {p0, v0}, Lcom/android/settings/CardInfo;->setValueResId(I)V

    :goto_1
    return-void
.end method
