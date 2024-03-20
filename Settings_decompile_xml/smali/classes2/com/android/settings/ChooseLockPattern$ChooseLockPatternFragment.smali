.class public Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;
.super Lcom/android/settings/KeyguardSettingsPreferenceFragment;
.source "ChooseLockPattern.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPatternFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;,
        Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;,
        Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;
    }
.end annotation


# instance fields
.field private dismissToken:[B

.field private isDismiss:Z

.field private mAddKeyguardpasswordThenAddFaceRecoginition:Z

.field private mAddKeyguardpasswordThenAddFingerprint:Z

.field private final mAnimatePattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field protected mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

.field protected mChooseNewLockPatternListener:Lcom/android/settings/LockPatternView$OnPatternListener;

.field protected mChosenPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mEnableKeyguardPassword:Z

.field private mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

.field private mHandler:Landroid/os/Handler;

.field protected mHeaderText:Landroid/widget/TextView;

.field private mIsSetPasswordForAirSpace:Z

.field private mIsSetPasswordForOwnerUser:Z

.field private mIsSetPasswordForSSUser:Z

.field private mLoadingDialog:Landroid/app/ProgressDialog;

.field protected mLockPatternView:Lcom/android/settings/LockPatternView;

.field protected mNextButton:Landroid/widget/TextView;

.field protected mNextImage:Landroid/widget/ImageView;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field protected mResetButton:Landroid/widget/TextView;

.field private mSecuritySpaceId:I

.field protected mSubHeaderText:Landroid/widget/TextView;

.field protected mUiStage:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field private mUserIdToSetPassword:I

.field private mUserPassword:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetdismissToken(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)[B
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->dismissToken:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisDismiss(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->isDismiss:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmClearPatternRunnable(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFingerprintHelper(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/FingerprintHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingLockCheck(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/os/AsyncTask;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSecuritySpaceId(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mSecuritySpaceId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserIdToSetPassword(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUserIdToSetPassword:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserPassword(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUserPassword:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputdismissToken(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;[B)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->dismissToken:[B

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisDismiss(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->isDismiss:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPendingLockCheck(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;Landroid/os/AsyncTask;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 149
    invoke-direct {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mAddKeyguardpasswordThenAddFingerprint:Z

    .line 153
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mAddKeyguardpasswordThenAddFaceRecoginition:Z

    const/4 v1, 0x0

    .line 175
    iput-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 184
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mHandler:Landroid/os/Handler;

    .line 185
    iput-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    .line 187
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->isDismiss:Z

    .line 188
    iput-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->dismissToken:[B

    .line 194
    invoke-static {v0, v0}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    const/4 v2, 0x1

    .line 195
    invoke-static {v0, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    .line 196
    invoke-static {v2, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v3

    const/4 v4, 0x2

    .line 197
    invoke-static {v4, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    filled-new-array {v1, v0, v3, v2}, [Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    .line 193
    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mAnimatePattern:Ljava/util/List;

    .line 240
    new-instance v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;-><init>(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseNewLockPatternListener:Lcom/android/settings/LockPatternView$OnPatternListener;

    .line 450
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 452
    new-instance v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;-><init>(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 1

    .line 612
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "device_provisioned"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method private onPasswordChecked([B)V
    .locals 3

    .line 1016
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "hw_auth_token"

    .line 1018
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1020
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1021
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    const/4 v0, 0x0

    .line 1022
    invoke-direct {p0, v0, p1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->setFragmentResult(I[B)V

    return-void
.end method

.method private postClearPatternRunnable()V
    .locals 3

    .line 827
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 828
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    iget-object p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setCredentialRequiredToDecrypt(Lcom/android/internal/widget/LockPatternUtils;Z)V
    .locals 0

    .line 846
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 847
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iget p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUserIdToSetPassword:I

    invoke-virtual {p1, p0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    :cond_0
    return-void
.end method

.method private setFragmentResult(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1026
    invoke-direct {p0, p1, v0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->setFragmentResult(I[B)V

    return-void
.end method

.method private setFragmentResult(I[B)V
    .locals 2

    .line 1030
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1031
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_0

    const-string v1, "hw_auth_token"

    .line 1033
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_0
    const-string/jumbo p2, "miui_security_fragment_result"

    .line 1035
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1036
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 1037
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetRequestCode()I

    move-result p0

    invoke-static {p1, p0, v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->onFragmentResult(Landroidx/fragment/app/Fragment;ILandroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method private showDialogToWaitUpdatePassword()V
    .locals 4

    .line 832
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    .line 833
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 834
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->turn_update_keyguard_password_wait_dialog:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 835
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 836
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$4;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$4;-><init>(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 202
    const-class p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getUserList(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    const-string/jumbo p0, "user"

    .line 1074
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 1075
    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected isSetUp()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 208
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x37

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x38

    if-eq p1, v0, :cond_2

    const/16 v0, 0x6b

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p2, v2, :cond_1

    if-eqz p3, :cond_5

    const-string/jumbo p1, "password"

    .line 226
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUserPassword:Ljava/lang/String;

    goto :goto_0

    .line 229
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setResult(I)V

    .line 230
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    if-ne p2, v2, :cond_5

    .line 219
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 220
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_3
    if-eq p2, v2, :cond_4

    .line 212
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setResult(I)V

    .line 213
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 215
    :cond_4
    sget-object p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 654
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mResetButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 655
    iget-object p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object p1, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 656
    iput-object p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 657
    iget-object p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-virtual {p1}, Lcom/android/settings/LockPatternView;->clearPattern()V

    .line 658
    sget-object p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto/16 :goto_0

    .line 659
    :cond_0
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne p1, v0, :cond_1

    .line 661
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 662
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 664
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "left footer button pressed, but stage of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t make sense"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 667
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mNextButton:Landroid/widget/TextView;

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mNextImage:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_a

    .line 669
    :cond_3
    iget-object p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const-string v2, " when button is "

    const-string v3, "expected ui stage "

    if-ne v0, v1, :cond_5

    .line 670
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne p1, v0, :cond_4

    .line 674
    sget-object p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto/16 :goto_0

    .line 671
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 675
    :cond_5
    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_8

    .line 676
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne p1, v0, :cond_7

    .line 680
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->showWaitTurnOffPassword(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 681
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->showDialogToWaitUpdatePassword()V

    goto :goto_0

    .line 684
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->saveChosenPatternAndFinish()V

    goto :goto_0

    .line 677
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 686
    :cond_8
    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_a

    .line 687
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne p1, v0, :cond_9

    .line 691
    iget-object p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-virtual {p1}, Lcom/android/settings/LockPatternView;->clearPattern()V

    .line 692
    iget-object p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    sget-object v0, Lcom/android/settings/LockPatternView$DisplayMode;->Correct:Lcom/android/settings/LockPatternView$DisplayMode;

    invoke-virtual {p1, v0}, Lcom/android/settings/LockPatternView;->setDisplayMode(Lcom/android/settings/LockPatternView$DisplayMode;)V

    .line 693
    sget-object p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 688
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Help screen is only mode with ok button, but stage is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 466
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 467
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "set_keyguard_password"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mEnableKeyguardPassword:Z

    .line 468
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "second_user_id"

    const/16 v2, -0x2710

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mSecuritySpaceId:I

    .line 471
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "add_keyguard_password_then_add_fingerprint"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mAddKeyguardpasswordThenAddFingerprint:Z

    .line 473
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "add_keyguard_password_then_add_face_recoginition"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mAddKeyguardpasswordThenAddFaceRecoginition:Z

    .line 475
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "password"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUserPassword:Ljava/lang/String;

    .line 478
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "user_id_to_set_password"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUserIdToSetPassword:I

    if-ne p1, v2, :cond_0

    .line 481
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->getUserId(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result p1

    .line 482
    :cond_0
    iput p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUserIdToSetPassword:I

    .line 484
    iget v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mSecuritySpaceId:I

    if-eq v0, v2, :cond_1

    if-ne p1, v0, :cond_1

    .line 485
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mIsSetPasswordForSSUser:Z

    :cond_1
    if-nez p1, :cond_2

    .line 489
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mIsSetPasswordForOwnerUser:Z

    .line 492
    :cond_2
    iget-boolean p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mIsSetPasswordForSSUser:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mIsSetPasswordForOwnerUser:Z

    if-nez p1, :cond_3

    .line 493
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUserIdToSetPassword:I

    invoke-static {p1, v0}, Lmiui/securityspace/CrossUserUtils;->isAirSpace(Landroid/content/Context;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mIsSetPasswordForAirSpace:Z

    .line 496
    :cond_3
    new-instance p1, Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    .line 497
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 498
    invoke-static {p1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->instanceofSettingsPreFragment(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 499
    new-instance p1, Lcom/android/settings/MiuiChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/MiuiChooseLockSettingsHelper;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x6b

    .line 500
    iget v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUserIdToSetPassword:I

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->launchConfirmWhenNecessary(Lcom/android/settings/KeyguardSettingsPreferenceFragment;II)V

    .line 503
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x2000

    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method protected onCreateNoSavedState()V
    .locals 1

    .line 628
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 533
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->preSetupViews()V

    .line 536
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->isSetUp()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 537
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 538
    sget v0, Lcom/android/settings/R$layout;->setup_choose_lock_pattern_view:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 540
    :cond_0
    sget v0, Lcom/android/settings/R$layout;->provision_setup_choose_lock_pattern_view:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 543
    :cond_1
    sget p2, Lcom/android/settings/R$layout;->choose_lock_pattern:I

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 545
    :goto_0
    sget p2, Lcom/android/settings/R$id;->headerText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    .line 546
    invoke-virtual {p0, p1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->setupViews(Landroid/view/View;)V

    .line 547
    iget-object p2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseNewLockPatternListener:Lcom/android/settings/LockPatternView$OnPatternListener;

    invoke-virtual {p2, v0}, Lcom/android/settings/LockPatternView;->setOnPatternListener(Lcom/android/settings/LockPatternView$OnPatternListener;)V

    .line 548
    iget-object p2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    .line 549
    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v0

    .line 548
    invoke-virtual {p2, v0}, Lcom/android/settings/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 551
    iget-object p2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mResetButton:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    iget-object p2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mNextButton:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p3, :cond_3

    .line 555
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    if-nez p2, :cond_2

    .line 557
    new-instance p2, Lcom/android/settings/MiuiChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/android/settings/MiuiChooseLockSettingsHelper;-><init>(Landroid/content/Context;)V

    const/16 p3, 0x6b

    .line 558
    iget v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUserIdToSetPassword:I

    invoke-virtual {p2, p0, p3, v0}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->launchConfirmWhenNecessary(Lcom/android/settings/KeyguardSettingsPreferenceFragment;II)V

    .line 561
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->onCreateNoSavedState()V

    goto :goto_1

    :cond_3
    const-string p2, "chosenPattern"

    .line 564
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 566
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/settings/compat/LockPatternUtilsCompat;->stringToPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 568
    :cond_4
    invoke-static {}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->values()[Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object p2

    const-string/jumbo v0, "uiStage"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    aget-object p2, p2, v0

    invoke-virtual {p0, p2}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 569
    iget-object p2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUserPassword:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string/jumbo p2, "userPassword"

    .line 570
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUserPassword:Ljava/lang/String;

    .line 574
    :cond_5
    :goto_1
    iget-boolean p2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mIsSetPasswordForSSUser:Z

    if-eqz p2, :cond_8

    .line 575
    sget-object p2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget p3, Lcom/android/settings/R$string;->lockpattern_recording_intro_header_second_space:I

    iput p3, p2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    .line 576
    iget-object p3, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$color;->security_lock_pattern_head_text:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 577
    iget-object p3, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 578
    iget-object p3, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mSubHeaderText:Landroid/widget/TextView;

    iget p2, p2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(I)V

    .line 579
    iget-object p2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mSubHeaderText:Landroid/widget/TextView;

    const/high16 p3, 0x41500000    # 13.0f

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 580
    iget-object p2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mSubHeaderText:Landroid/widget/TextView;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMinLines(I)V

    .line 581
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$color;->set_second_space_background:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 583
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    instance-of p2, p2, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz p2, :cond_6

    .line 584
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p2}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    :cond_6
    if-eqz v1, :cond_7

    .line 587
    sget p2, Lcom/android/settings/R$string;->lockpassword_choose_for_second_user:I

    invoke-virtual {v1, p2}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 588
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$drawable;->action_bar_second_space:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 589
    invoke-virtual {v1, p2}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 591
    :cond_7
    iget-object p2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    sget p3, Lcom/android/settings/R$drawable;->lock_pattern_code_lock_white:I

    invoke-virtual {p2, p3}, Lcom/android/settings/LockPatternView;->setBitmapBtnTouched(I)V

    .line 593
    iget-object p2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mResetButton:Landroid/widget/TextView;

    sget p3, Lcom/android/settings/R$drawable;->miuix_appcompat_dialog_default_btn_bg_dark:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 594
    iget-object p2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mResetButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p3, Lcom/android/settings/R$color;->miuix_appcompat_button_text_dark:I

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 1081
    invoke-super {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->onDestroyView()V

    .line 1083
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/safetycenter/LockScreenSafetySource;->onLockScreenChange(Landroid/content/Context;)V

    return-void
.end method

.method public onFragmentResult(ILandroid/os/Bundle;)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const-string/jumbo v2, "miui_security_fragment_result"

    .line 1044
    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/16 v3, 0x37

    if-eq p1, v3, :cond_4

    const/16 v3, 0x38

    if-eq p1, v3, :cond_3

    const/16 v1, 0x6b

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    const-string/jumbo p1, "password"

    const-string v0, ""

    .line 1063
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUserPassword:Ljava/lang/String;

    goto :goto_1

    .line 1065
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->setFragmentResult(I)V

    .line 1066
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_6

    .line 1057
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 1058
    invoke-direct {p0, v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->setFragmentResult(I)V

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    .line 1049
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 1050
    invoke-direct {p0, v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->setFragmentResult(I)V

    goto :goto_1

    .line 1052
    :cond_5
    sget-object p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    :cond_6
    :goto_1
    return-void
.end method

.method protected onPasswordSaved([BZ)V
    .locals 1

    .line 934
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 935
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 936
    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLoadingDialog:Landroid/app/ProgressDialog;

    .line 938
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    .line 939
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->saveUpdatepatternTime(Landroid/content/Context;)V

    if-eqz p2, :cond_1

    .line 941
    invoke-virtual {p0, p1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->showDialogToAddFingerprint([B)V

    goto :goto_0

    .line 942
    :cond_1
    iget-boolean p2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mAddKeyguardpasswordThenAddFaceRecoginition:Z

    if-eqz p2, :cond_3

    .line 943
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_2

    const-string v0, "hw_auth_token"

    .line 945
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 947
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 948
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 949
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isShowDialogToAddFace(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    invoke-virtual {p2}, Lcom/android/settings/FingerprintHelper;->isHardwareDetected()Z

    move-result p2

    if-nez p2, :cond_4

    .line 950
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p2, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight:I

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->showDialogToAddFace(Landroid/app/Activity;[BIZ)V

    goto :goto_0

    .line 952
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->returnToKeyguardPasswordSettings([B)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 508
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 509
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 510
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 511
    iput-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 515
    iput-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    if-eqz v0, :cond_2

    .line 519
    invoke-virtual {v0}, Lcom/android/settings/LockPatternView;->clearPattern()V

    .line 521
    :cond_2
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 526
    invoke-super {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 713
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 715
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string/jumbo v1, "uiStage"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 716
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/settings/compat/LockPatternUtilsCompat;->patternToString(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chosenPattern"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUserPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "userPassword"

    .line 720
    iget-object p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 633
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 634
    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->onStartEdit(Landroidx/fragment/app/Fragment;)V

    .line 635
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->isSetUp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 636
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    .line 638
    instance-of v0, p0, Lmiuix/appcompat/app/ActionBar;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 639
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    .line 640
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 648
    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->onFinishEdit(Landroidx/fragment/app/Fragment;)V

    .line 649
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    return-void
.end method

.method protected preSetupViews()V
    .locals 1

    .line 603
    sget-object p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget v0, Lcom/android/settings/R$string;->lockpattern_recording_intro_header:I

    iput v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    return-void
.end method

.method protected returnToKeyguardPasswordSettings([B)V
    .locals 3

    .line 1005
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1006
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 1007
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "has_challenge"

    .line 1006
    invoke-static {v0, v1, v2}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->getBooolExtra(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1008
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->onPasswordChecked([B)V

    return-void

    .line 1011
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->onPasswordChecked([B)V

    :cond_1
    return-void
.end method

.method protected saveChosenPatternAndFinish()V
    .locals 9

    .line 853
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object v7

    .line 854
    iget v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUserIdToSetPassword:I

    invoke-virtual {v7, v0}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen(I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 856
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "is_security_encryption_enabled"

    const/4 v8, 0x0

    invoke-static {v2, v3, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v8

    .line 858
    :goto_0
    invoke-direct {p0, v7, v8}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->setCredentialRequiredToDecrypt(Lcom/android/internal/widget/LockPatternUtils;Z)V

    if-nez v2, :cond_1

    .line 859
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "use_lock_password_to_encrypt_device"

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 861
    :cond_1
    invoke-direct {p0, v7, v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->setCredentialRequiredToDecrypt(Lcom/android/internal/widget/LockPatternUtils;Z)V

    .line 863
    :cond_2
    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mResetButton:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 864
    invoke-virtual {p0, v8}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->setNextEnable(Z)V

    .line 865
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "lockscreen.biometric_weak_fallback"

    .line 866
    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v0, :cond_3

    .line 869
    iget v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUserIdToSetPassword:I

    invoke-virtual {v7, v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 872
    :cond_3
    new-instance v0, Lcom/android/settings/FingerprintHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/FingerprintHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    .line 873
    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mAddKeyguardpasswordThenAddFingerprint:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    .line 875
    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->getFingerprintIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    move v4, v1

    goto :goto_1

    :cond_4
    move v4, v8

    .line 876
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->isSupportFaceUnlock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mAddKeyguardpasswordThenAddFaceRecoginition:Z

    if-eqz v0, :cond_5

    .line 878
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->getEnrolledFacesNumber(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_5

    move v5, v1

    goto :goto_2

    :cond_5
    move v5, v8

    .line 879
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 880
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "has_challenge"

    .line 879
    invoke-static {v0, v1, v2}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->getBooolExtra(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v6

    .line 882
    new-instance v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$5;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$5;-><init>(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;ZZZZLcom/android/internal/widget/LockPatternUtils;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v8, [Ljava/lang/Void;

    .line 929
    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected setNextEnable(Z)V
    .locals 0

    .line 1001
    iget-object p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mNextButton:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method protected setupViews(Landroid/view/View;)V
    .locals 1

    .line 617
    sget v0, Lcom/android/settings/R$id;->subHeaderText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mSubHeaderText:Landroid/widget/TextView;

    .line 618
    sget v0, Lcom/android/settings/R$id;->lockPattern:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/LockPatternView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    .line 619
    sget v0, Lcom/android/settings/R$id;->footerLeftButton:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mResetButton:Landroid/widget/TextView;

    .line 620
    sget v0, Lcom/android/settings/R$id;->footerRightButton:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mNextButton:Landroid/widget/TextView;

    .line 622
    sget v0, Lcom/android/settings/R$id;->topLayout:I

    .line 623
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 624
    iget-object p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-virtual {p1, p0}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    return-void
.end method

.method public showDialogToAddFingerprint([B)V
    .locals 3

    const/4 v0, 0x1

    .line 958
    invoke-static {v0}, Lcom/android/settings/KeyguardSettingsEventTracker;->trackBiometricUnlockExposeDialogEvent(Z)V

    .line 959
    new-instance v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$6;-><init>(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;[B)V

    .line 979
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 980
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->new_password_to_new_fingerprint_dialog_tittle:I

    .line 981
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->new_password_to_new_fingerprint_dialog_msg:I

    .line 982
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->new_password_to_new_fingerprint_dialog_positive_msg:I

    .line 983
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->new_password_to_new_fingerprint_dialog_negative_msg:I

    .line 984
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 985
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 986
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    .line 987
    new-instance v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$7;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$7;-><init>(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 997
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V
    .locals 5

    .line 732
    iput-object p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 736
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v1, 0x4

    if-ne p1, v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mSubHeaderText:Landroid/widget/TextView;

    .line 738
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    .line 740
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 738
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 737
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 741
    :cond_0
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->SameWithOwnerUser:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne p1, v0, :cond_1

    .line 742
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mSubHeaderText:Landroid/widget/TextView;

    sget v2, Lcom/android/settings/R$string;->lockpattern_pattern_same_with_owner:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 743
    :cond_1
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->SameWithSecuritySpaceUser:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne p1, v0, :cond_2

    .line 744
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mSubHeaderText:Landroid/widget/TextView;

    sget v2, Lcom/android/settings/R$string;->lockpattern_pattern_same_with_security_space:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 745
    :cond_2
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->SameWithOtherSpaceUser:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne p1, v0, :cond_3

    .line 746
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mSubHeaderText:Landroid/widget/TextView;

    sget v2, Lcom/android/settings/R$string;->lockpattern_pattern_same_with_others:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 748
    :cond_3
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mSubHeaderText:Landroid/widget/TextView;

    iget v2, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 751
    :goto_0
    iget-object v0, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_5

    .line 752
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->isSetUp()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 753
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mResetButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 755
    :cond_4
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mResetButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 758
    :cond_5
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mResetButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 759
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mResetButton:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iget v2, v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->text:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 760
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mResetButton:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iget-boolean v2, v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->enabled:Z

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 763
    :goto_1
    iget-object v0, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Gone:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v2, :cond_7

    .line 764
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->isSetUp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 765
    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->setNextEnable(Z)V

    goto :goto_2

    .line 767
    :cond_6
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mNextButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 770
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->isSetUp()Z

    move-result v0

    if-nez v0, :cond_8

    .line 771
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mNextButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 774
    :cond_8
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mNextButton:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget v1, v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 775
    iget-object v0, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->enabled:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->setNextEnable(Z)V

    .line 779
    :goto_2
    iget-boolean p1, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    if-eqz p1, :cond_9

    .line 780
    iget-object p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-virtual {p1}, Lcom/android/settings/LockPatternView;->enableInput()V

    goto :goto_3

    .line 782
    :cond_9
    iget-object p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-virtual {p1}, Lcom/android/settings/LockPatternView;->disableInput()V

    .line 787
    :goto_3
    iget-object p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    sget-object v0, Lcom/android/settings/LockPatternView$DisplayMode;->Correct:Lcom/android/settings/LockPatternView$DisplayMode;

    invoke-virtual {p1, v0}, Lcom/android/settings/LockPatternView;->setDisplayMode(Lcom/android/settings/LockPatternView$DisplayMode;)V

    .line 789
    sget-object p1, Lcom/android/settings/ChooseLockPattern$1;->$SwitchMap$com$android$settings$ChooseLockPattern$ChooseLockPatternFragment$Stage:[I

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    goto :goto_4

    .line 815
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    sget-object v0, Lcom/android/settings/LockPatternView$DisplayMode;->Wrong:Lcom/android/settings/LockPatternView$DisplayMode;

    invoke-virtual {p1, v0}, Lcom/android/settings/LockPatternView;->setDisplayMode(Lcom/android/settings/LockPatternView$DisplayMode;)V

    .line 816
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->postClearPatternRunnable()V

    goto :goto_4

    .line 812
    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-virtual {p0}, Lcom/android/settings/LockPatternView;->clearPattern()V

    goto :goto_4

    .line 804
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    new-instance v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$3;-><init>(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 800
    :pswitch_3
    iget-object p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    sget-object v0, Lcom/android/settings/LockPatternView$DisplayMode;->Wrong:Lcom/android/settings/LockPatternView$DisplayMode;

    invoke-virtual {p1, v0}, Lcom/android/settings/LockPatternView;->setDisplayMode(Lcom/android/settings/LockPatternView$DisplayMode;)V

    .line 801
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->postClearPatternRunnable()V

    goto :goto_4

    .line 794
    :pswitch_4
    iget-object p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    sget-object v0, Lcom/android/settings/LockPatternView$DisplayMode;->Animate:Lcom/android/settings/LockPatternView$DisplayMode;

    iget-object p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mAnimatePattern:Ljava/util/List;

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/LockPatternView;->setPattern(Lcom/android/settings/LockPatternView$DisplayMode;Ljava/util/List;)V

    goto :goto_4

    .line 791
    :pswitch_5
    iget-object p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-virtual {p0}, Lcom/android/settings/LockPatternView;->clearPattern()V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
