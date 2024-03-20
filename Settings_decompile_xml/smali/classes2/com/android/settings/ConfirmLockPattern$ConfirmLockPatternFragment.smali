.class public Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;
.super Lcom/android/settings/BaseConfirmLockFragment;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/settings/OnBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ConfirmLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockPatternFragment"
.end annotation


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private mBackGroundColor:I

.field private mBiometricEnrollChallenge:J

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mConfirmExistingLockPatternListener:Lcom/android/settings/LockPatternView$OnPatternListener;

.field private mContext:Landroid/content/Context;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCurrentPassword:Ljava/lang/String;

.field private mDefaultUserId:I

.field private mDisableObserver:Landroid/database/ContentObserver;

.field protected mEmergencyCall:Landroid/widget/Button;

.field protected mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

.field protected mFooterText:Ljava/lang/CharSequence;

.field private mFooterTextView:Landroid/widget/TextView;

.field private mFooterViewColor:I

.field private mFooterWrongText:Ljava/lang/CharSequence;

.field private mForgetClickListener:Landroid/view/View$OnClickListener;

.field private mForgetPasswordDialog:Lmiuix/appcompat/app/AlertDialog;

.field protected mForgetPattern:Landroid/widget/Button;

.field private mForgetPatternColor:I

.field private mFragmentResult:I

.field private mFrpHeaderMessage:Landroid/widget/TextView;

.field private mFrpSkipPassword:Landroid/widget/TextView;

.field protected mHeaderText:Ljava/lang/CharSequence;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mHeaderWrongText:Ljava/lang/CharSequence;

.field private mIconView:Landroid/widget/ImageView;

.field private mIsFromFrp:Z

.field private mIsLockPassword:Z

.field private mIsLockTouchBtnWhite:Z

.field private mIsManagedProfile:Z

.field private mIsReOnCreate:Z

.field private mIsShowForgetPwd:Z

.field protected mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

.field private mLockPatternView:Lcom/android/settings/LockPatternView;

.field private mNumWrongConfirmAttempts:I

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field private mPercentValueAnim:Landroid/animation/ValueAnimator;

.field private mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

.field private mReturnCredentials:Z

.field private mSubHeaderTextView:Landroid/widget/TextView;

.field private mTitleTextColor:I

.field private mTopView:Landroid/view/View;

.field protected mUserIdToConfirmPattern:I

.field private mVerifyChallenge:Z

.field private mVerifyChallengeFromFace:Z

.field private outbundle:Landroid/os/Bundle;


# direct methods
.method public static synthetic $r8$lambda$b-bvL2eX5aUV1v9xspmXsUkGQg0(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;IIJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->lambda$onStart$0(IIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$qZHtqnik0RriQ0ZC45BGaOXbmEc(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;IIJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->lambda$onStart$1(IIJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbundle(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/os/Bundle;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->bundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBiometricEnrollChallenge(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mBiometricEnrollChallenge:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmClearPatternRunnable(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFooterTextView(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmForgetPasswordDialog(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mForgetPasswordDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLockPatternView(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings/LockPatternView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingLockCheck(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/os/AsyncTask;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressDialog(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lmiuix/appcompat/app/ProgressDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmForgetPasswordDialog(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mForgetPasswordDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNumWrongConfirmAttempts(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPendingLockCheck(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdismissProgressDialog(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->dismissProgressDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleWrongPattern(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Ljava/util/List;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->handleWrongPattern(Ljava/util/List;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartCheckPattern(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->startCheckPattern(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartVerifyPattern(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->startVerifyPattern(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 219
    invoke-direct {p0}, Lcom/android/settings/BaseConfirmLockFragment;-><init>()V

    const/4 v0, -0x1

    .line 191
    iput v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFragmentResult:I

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCurrentPassword:Ljava/lang/String;

    .line 194
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserIdToConfirmPattern:I

    const/4 v1, 0x0

    .line 202
    iput-boolean v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mReturnCredentials:Z

    .line 203
    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mForgetPasswordDialog:Lmiuix/appcompat/app/AlertDialog;

    const-wide/16 v0, 0x0

    .line 372
    iput-wide v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mBiometricEnrollChallenge:J

    .line 648
    new-instance v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$7;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$7;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    .line 665
    new-instance v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$8;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$8;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mConfirmExistingLockPatternListener:Lcom/android/settings/LockPatternView$OnPatternListener;

    return-void
.end method

.method private dismissProgressDialog()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    return-void
.end method

.method private handleWrongPattern(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 772
    invoke-direct {p0, p1, v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->handleWrongPattern(Ljava/util/List;I)V

    return-void
.end method

.method private handleWrongPattern(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;I)V"
        }
    .end annotation

    .line 776
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    if-lez p2, :cond_0

    .line 777
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserIdToConfirmPattern:I

    invoke-virtual {p1, v0, p2}, Landroid/security/MiuiLockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide p1

    .line 778
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->setLockoutAttepmpDeadline(J)V

    .line 779
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V

    goto :goto_0

    .line 782
    :cond_0
    sget-object p1, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlockWrong:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 783
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->postClearPatternRunnable()V

    :goto_0
    return-void
.end method

.method private initEmergencyCall()V
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mEmergencyCall:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsManagedProfile:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 356
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mEmergencyCall:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    invoke-direct {v1, p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private isConfirmLockPatternActivity()Z
    .locals 0

    .line 796
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p0, p0, Lcom/android/settings/ConfirmLockPattern;

    return p0
.end method

.method private isInternalActivity()Z
    .locals 0

    .line 792
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p0, p0, Lcom/android/settings/ConfirmLockPattern$InternalActivity;

    return p0
.end method

.method private isValidPattern(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .line 768
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x4

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onStart$0(IIJ)V
    .locals 1

    .line 389
    sget-object p1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "generateTeeFaceChallenge challenge="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iput-wide p3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mBiometricEnrollChallenge:J

    return-void
.end method

.method private synthetic lambda$onStart$1(IIJ)V
    .locals 1

    .line 395
    sget-object p1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "generateFingerChallenge challenge="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iput-wide p3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mBiometricEnrollChallenge:J

    return-void
.end method

.method private postClearPatternRunnable()V
    .locals 3

    .line 657
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 658
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    iget-object p0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showProgressAnim()V
    .locals 5

    .line 414
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->dismissProgressDialog()V

    .line 415
    new-instance v0, Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    .line 416
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->security_check_progress_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setMax(I)V

    .line 418
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/ProgressDialog;->setProgressStyle(I)V

    .line 419
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 421
    filled-new-array {v3, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mPercentValueAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x7d0

    .line 422
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 423
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mPercentValueAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$5;

    invoke-direct {v1, p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$5;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 432
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mPercentValueAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$6;

    invoke-direct {v1, p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$6;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 464
    :try_start_0
    const-class v0, Landroid/animation/ValueAnimator;

    const-string/jumbo v1, "sDurationScale"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 465
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 466
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 467
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 470
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 472
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mPercentValueAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startCheckPattern(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 727
    invoke-direct {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->isValidPattern(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 728
    invoke-direct {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->handleWrongPattern(Ljava/util/List;)V

    return-void

    .line 732
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/ConfirmAccessControl;

    if-nez v0, :cond_2

    .line 733
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/ConfirmGalleryLockPattern;

    if-nez v0, :cond_2

    .line 734
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/ConfirmSmsLockPattern;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 743
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserIdToConfirmPattern:I

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$10;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$10;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Ljava/util/List;)V

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/settings/LockPatternChecker;->checkPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;ILandroid/content/Context;Lcom/android/settings/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    goto :goto_1

    .line 735
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->checkPattern(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 736
    invoke-virtual {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->accessLockPattern(Ljava/util/List;)V

    goto :goto_1

    .line 739
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->handleWrongPattern(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method private startVerifyPattern(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 698
    invoke-direct {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->isValidPattern(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 699
    invoke-direct {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->handleWrongPattern(Ljava/util/List;)V

    return-void

    .line 703
    :cond_0
    iget v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    .line 704
    iget v5, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    .line 705
    new-instance v7, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$9;

    invoke-direct {v7, p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$9;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Ljava/util/List;)V

    if-ne v0, v5, :cond_1

    .line 720
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget-wide v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mBiometricEnrollChallenge:J

    iget-object v6, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mContext:Landroid/content/Context;

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/android/settings/LockPatternChecker;->verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILandroid/content/Context;Lcom/android/settings/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object p1

    goto :goto_0

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    .line 723
    invoke-static {v0, p1}, Lcom/android/settings/compat/LockPatternUtilsCompat;->patternToString(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 722
    invoke-static {v0, p1, v1, v5, v7}, Lcom/android/settings/LockPatternChecker;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZILcom/android/settings/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method protected accessLockPattern(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 858
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->accessLockPattern(Ljava/util/List;[B)V

    return-void
.end method

.method protected accessLockPattern(Ljava/util/List;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;[B)V"
        }
    .end annotation

    .line 862
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 863
    iget v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserIdToConfirmPattern:I

    if-eqz v0, :cond_0

    const/16 v1, -0x270f

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    .line 864
    invoke-virtual {v1, v0}, Landroid/security/MiuiLockPatternUtils;->getStrongAuthForUser(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserIdToConfirmPattern:I

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->userPresent(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 868
    sget-object v1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sth wrong when user present"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 872
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 873
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->outbundle:Landroid/os/Bundle;

    .line 875
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->isInternalActivity()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mReturnCredentials:Z

    if-eqz v1, :cond_2

    .line 876
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->outbundle:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-static {v2, p1}, Lcom/android/settings/compat/LockPatternUtilsCompat;->patternToString(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "password"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 879
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->outbundle:Landroid/os/Bundle;

    const-string v2, "hw_auth_token"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_3
    if-nez v0, :cond_4

    .line 882
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_4

    .line 885
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 886
    iget-object p2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->outbundle:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 887
    invoke-virtual {p0}, Lcom/android/settings/BaseConfirmLockFragment;->onConfirmDeviceCredentialSuccess()V

    .line 888
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 v0, -0x1

    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 889
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 891
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/BaseConfirmLockFragment;->checkForPendingIntentForCts()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 893
    :catch_1
    sget-object p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->TAG:Ljava/lang/String;

    const-string p1, "check for pending intent error"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 895
    :cond_4
    invoke-static {v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->instanceofSettingsPreFragment(Landroidx/fragment/app/Fragment;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x0

    .line 896
    iput p2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFragmentResult:I

    .line 897
    iget-boolean p2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mReturnCredentials:Z

    if-eqz p2, :cond_5

    .line 898
    iget-object p2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-static {p2, p1}, Lcom/android/settings/compat/LockPatternUtilsCompat;->patternToString(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCurrentPassword:Ljava/lang/String;

    .line 900
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 902
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    :cond_6
    :goto_1
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

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 267
    sget p2, Lcom/android/settings/R$layout;->miui_confirm_lock_pattern:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mTopView:Landroid/view/View;

    .line 268
    sget p2, Lcom/android/settings/R$id;->headerText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    .line 269
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mTopView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->subHeaderText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mSubHeaderTextView:Landroid/widget/TextView;

    .line 270
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mTopView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->lockPattern:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/LockPatternView;

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    .line 271
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mTopView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->footerText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    .line 273
    iget-boolean p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsFromFrp:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget p2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserIdToConfirmPattern:I

    invoke-virtual {p1, p2}, Landroid/security/MiuiLockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p1

    goto :goto_0

    .line 274
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget p2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserIdToConfirmPattern:I

    invoke-virtual {p1, p2}, Landroid/security/MiuiLockPatternUtils;->getActivePasswordQuality(I)I

    move-result p1

    :goto_0
    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    move p1, p2

    .line 276
    :goto_1
    iput-boolean p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsLockPassword:Z

    .line 278
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mTopView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->forgetPattern:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mForgetPattern:Landroid/widget/Button;

    .line 279
    new-instance p1, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$2;

    invoke-direct {p1, p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$2;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mForgetClickListener:Landroid/view/View$OnClickListener;

    .line 296
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->setForgetPatternVisibility(Landroid/app/Activity;)V

    .line 298
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mForgetPattern:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mForgetClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mTopView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->frpSkipPassword:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFrpSkipPassword:Landroid/widget/TextView;

    .line 301
    iget-boolean v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsFromFrp:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    move v0, p2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFrpSkipPassword:Landroid/widget/TextView;

    new-instance v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$3;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mTopView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->headerMessage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFrpHeaderMessage:Landroid/widget/TextView;

    .line 309
    iget-boolean v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsFromFrp:Z

    if-eqz v0, :cond_3

    move v1, p2

    :cond_3
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mTopView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->cts_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mIconView:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    .line 312
    iget-boolean p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsManagedProfile:Z

    if-eqz p1, :cond_4

    .line 313
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$drawable;->auth_dialog_enterprise:I

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mContext:Landroid/content/Context;

    .line 314
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 313
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 315
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 316
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 318
    :cond_4
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mTopView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->emergencyCall:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mEmergencyCall:Landroid/widget/Button;

    .line 319
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->initEmergencyCall()V

    .line 323
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mTopView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->topLayout:I

    .line 324
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 325
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 327
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mTitleTextColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mSubHeaderTextView:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mTitleTextColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 329
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterViewColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 330
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mForgetPattern:Landroid/widget/Button;

    iget v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mForgetPatternColor:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 332
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mTopView:Landroid/view/View;

    iget v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mBackGroundColor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 333
    iget-boolean p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsLockTouchBtnWhite:Z

    if-eqz p1, :cond_5

    .line 334
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    sget v0, Lcom/android/settings/R$drawable;->lock_pattern_code_lock_white:I

    invoke-virtual {p1, v0}, Lcom/android/settings/LockPatternView;->setBitmapBtnTouched(I)V

    .line 336
    :cond_5
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 337
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mConfirmExistingLockPatternListener:Lcom/android/settings/LockPatternView$OnPatternListener;

    invoke-virtual {p1, v0}, Lcom/android/settings/LockPatternView;->setOnPatternListener(Lcom/android/settings/LockPatternView$OnPatternListener;)V

    .line 338
    sget-object p1, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    if-eqz p3, :cond_6

    const-string/jumbo p1, "num_wrong_attempts"

    .line 341
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    const-string/jumbo p1, "save_ui_mode_night"

    .line 342
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 343
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p3, p3, 0x30

    if-eq p1, p3, :cond_7

    .line 344
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 345
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_3

    .line 348
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->onCreateNoSaveState()V

    .line 351
    :cond_7
    :goto_3
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mTopView:Landroid/view/View;

    return-object p0
.end method

.method protected getDisableKey()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getInStealthMode()Z
    .locals 1

    .line 854
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget p0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserIdToConfirmPattern:I

    invoke-virtual {v0, p0}, Landroid/security/MiuiLockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getIntentArguments()Landroid/os/Bundle;
    .locals 1

    .line 223
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->isConfirmLockPatternActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected getLastTryDefaultErrorMessage(I)I
    .locals 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    .line 545
    sget p0, Lcom/android/settings/R$string;->lock_last_pattern_attempt_before_wipe_user:I

    return p0

    .line 547
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized user type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 543
    :cond_1
    sget p0, Lcom/android/settings/R$string;->lock_last_pattern_attempt_before_wipe_profile:I

    return p0

    .line 541
    :cond_2
    sget p0, Lcom/android/settings/R$string;->lock_last_pattern_attempt_before_wipe_device:I

    return p0
.end method

.method protected getLastTryOverrideErrorMessageId(I)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    const-string p0, "Settings.WORK_PROFILE_LAST_PATTERN_ATTEMPT_BEFORE_WIPE"

    return-object p0

    :cond_0
    const-string p0, "UNDEFINED"

    return-object p0
.end method

.method protected getLockoutAttepmpDeadline(J)J
    .locals 0

    .line 0
    return-wide p1
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 957
    invoke-virtual {p0}, Lcom/android/settings/BaseConfirmLockFragment;->getMetricsPatternCategory()I

    move-result p0

    return p0
.end method

.method protected handleAttemptLockout(J)V
    .locals 9

    .line 800
    sget-object v0, Lcom/android/settings/ConfirmLockPattern$Stage;->LockedOut:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 801
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->refreshLockScreen()V

    .line 802
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 803
    new-instance v8, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$11;

    sub-long v4, p1, v0

    const-wide/16 v6, 0x3e8

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$11;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;JJ)V

    .line 819
    invoke-virtual {v8}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 477
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "account_dialog_state"

    .line 478
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mForgetPattern:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 480
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mForgetPattern:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 481
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mForgetClickListener:Landroid/view/View$OnClickListener;

    iget-object p0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mForgetPattern:Landroid/widget/Button;

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 591
    sget-boolean v0, Lcom/android/settings/utils/TabletUtils;->IS_TABLET:Z

    if-eqz v0, :cond_1

    .line 592
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 593
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 594
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 228
    invoke-super {p0, p1}, Lcom/android/settings/BaseConfirmLockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 229
    new-instance v0, Lcom/android/settings/FingerprintHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/FingerprintHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    .line 231
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 233
    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsReOnCreate:Z

    .line 234
    invoke-static {v0}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isLargeScreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 235
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 237
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getIntentArguments()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->bundle:Landroid/os/Bundle;

    const-string/jumbo v0, "return_credentials"

    if-eqz p1, :cond_2

    .line 239
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mReturnCredentials:Z

    .line 241
    :cond_2
    iget-boolean p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mReturnCredentials:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->bundle:Landroid/os/Bundle;

    .line 242
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move p1, v2

    goto :goto_2

    :cond_4
    :goto_1
    move p1, v1

    :goto_2
    iput-boolean p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mReturnCredentials:Z

    .line 243
    new-instance p1, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    .line 244
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->bundle:Landroid/os/Bundle;

    invoke-static {p1, v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->getEffectiveUserId(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result p1

    .line 245
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->bundle:Landroid/os/Bundle;

    const-string v3, "from_confirm_frp_credential"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/16 v3, -0x270f

    if-nez v0, :cond_5

    .line 246
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.app.action.CONFIRM_FRP_CREDENTIAL"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    if-ne p1, v3, :cond_6

    :cond_5
    move v2, v1

    :cond_6
    iput-boolean v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsFromFrp:Z

    if-eqz v2, :cond_7

    move p1, v3

    .line 248
    :cond_7
    iput p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDefaultUserId:I

    if-eqz v2, :cond_8

    goto :goto_3

    .line 249
    :cond_8
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    :goto_3
    iput v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserIdToConfirmPattern:I

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getDisableKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 251
    new-instance p1, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$1;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisableObserver:Landroid/database/ContentObserver;

    .line 257
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getDisableKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisableObserver:Landroid/database/ContentObserver;

    .line 257
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 261
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x2000

    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method protected onCreateNoSaveState()V
    .locals 2

    .line 908
    iget-boolean v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsFromFrp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserIdToConfirmPattern:I

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    goto :goto_0

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserIdToConfirmPattern:I

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    :goto_0
    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_2

    .line 911
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 913
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 582
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisableObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 586
    :cond_0
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onDestroy()V

    return-void
.end method

.method public onDetach()V
    .locals 3

    .line 919
    iget v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFragmentResult:I

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCurrentPassword:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->outbundle:Landroid/os/Bundle;

    invoke-static {p0, v0, v1, v2}, Lcom/android/settings/MiuiSecurityCommonSettings;->setFragmentResultOnDetach(Landroidx/fragment/app/Fragment;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 920
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 603
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onPause()V
    .locals 2

    .line 506
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onPause()V

    .line 508
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 513
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 514
    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 517
    :cond_1
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mForgetPasswordDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p0, :cond_2

    .line 518
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 553
    invoke-super {p0}, Lcom/android/settings/BaseConfirmLockFragment;->onResume()V

    .line 556
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserIdToConfirmPattern:I

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 557
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getLockoutAttepmpDeadline(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 559
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V

    goto :goto_0

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 563
    iput v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    .line 564
    sget-object v0, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 566
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->setForgetPatternVisibility(Landroid/app/Activity;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "num_wrong_attempts"

    .line 500
    iget v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 501
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const-string/jumbo v0, "save_ui_mode_night"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onShowError()V
    .locals 0

    .line 0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 377
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onStart()V

    .line 379
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->bundle:Landroid/os/Bundle;

    const-string v1, "has_challenge"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mVerifyChallenge:Z

    .line 384
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->bundle:Landroid/os/Bundle;

    const-string v1, "for_face"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mVerifyChallengeFromFace:Z

    .line 385
    sget-object v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateTeeFaceChallenge mVerifyChallenge="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mVerifyChallenge:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ";mVerifyChallengeFromFace="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mVerifyChallengeFromFace:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-boolean v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mVerifyChallenge:Z

    if-eqz v0, :cond_2

    .line 387
    iget-boolean v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mVerifyChallengeFromFace:Z

    if-eqz v0, :cond_1

    .line 388
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->generateFaceEnrollChallenge(Landroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    goto :goto_0

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    new-instance v2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/FingerprintHelper;->generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    .line 399
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->showProgressAnim()V

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 405
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onStop()V

    .line 406
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->dismissProgressDialog()V

    .line 407
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mPercentValueAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mPercentValueAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 409
    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mPercentValueAnim:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method protected parseIntent(Landroid/content/Intent;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 925
    invoke-static {p1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->getHeader(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    const-string v0, "com.android.settings.ConfirmLockPattern.footer"

    .line 926
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterText:Ljava/lang/CharSequence;

    const-string v0, "com.android.settings.ConfirmLockPattern.header_wrong"

    .line 927
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderWrongText:Ljava/lang/CharSequence;

    const-string v0, "com.android.settings.ConfirmLockPattern.footer_wrong"

    .line 928
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterWrongText:Ljava/lang/CharSequence;

    const-string v0, "com.android.settings.userIdToConfirm"

    .line 929
    iget v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDefaultUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserIdToConfirmPattern:I

    .line 930
    iget-boolean v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsFromFrp:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v1, v0}, Landroid/security/MiuiLockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    goto :goto_0

    .line 931
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v1, v0}, Landroid/security/MiuiLockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 932
    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsLockPassword:Z

    .line 933
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mSubHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    const-string v3, "com.android.settings.titleColor"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mTitleTextColor:I

    .line 934
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mTopView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v0

    const-string v3, "com.android.settings.bgColor"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mBackGroundColor:I

    const-string v0, "com.android.settings.lockBtnWhite"

    .line 935
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsLockTouchBtnWhite:Z

    .line 936
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    const-string v2, "com.android.settings.footerTextColor"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterViewColor:I

    .line 937
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mForgetPattern:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getCurrentTextColor()I

    move-result v0

    const-string v2, "com.android.settings.forgetPatternColor"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mForgetPatternColor:I

    const-string v0, "com.android.settings.forgetPassword"

    .line 938
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsShowForgetPwd:Z

    .line 940
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserIdToConfirmPattern:I

    invoke-static {v0, v1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsManagedProfile:Z

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 941
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    sget v0, Lcom/android/settings/R$string;->lockpassword_confirm_your_password_generic_profile:I

    .line 943
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 942
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 944
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 945
    instance-of v0, p1, Lcom/android/settings/BaseConfirmLockActivity;

    if-eqz v0, :cond_5

    .line 946
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 948
    iget p0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserIdToConfirmPattern:I

    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerNameAsUser(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "CTS Verifier"

    .line 949
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 950
    check-cast p1, Lcom/android/settings/BaseConfirmLockActivity;

    const-string p0, "Cts Verifier"

    invoke-virtual {p1, p0}, Lcom/android/settings/BaseConfirmLockActivity;->setMiuixHeaderTitle(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method public setForgetPatternVisibility(Landroid/app/Activity;)V
    .locals 2

    .line 570
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    const-string v0, "com.xiaomi"

    invoke-virtual {p1, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p1

    .line 571
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->parseIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    .line 572
    array-length p1, p1

    if-lez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsShowForgetPwd:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserIdToConfirmPattern:I

    const/16 v0, -0x270f

    if-eq p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsManagedProfile:Z

    if-nez p1, :cond_0

    .line 574
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mForgetPattern:Landroid/widget/Button;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 576
    :cond_0
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mForgetPattern:Landroid/widget/Button;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected setLockoutAttepmpDeadline(J)V
    .locals 0

    .line 0
    return-void
.end method

.method protected updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V
    .locals 3

    .line 608
    sget-object v0, Lcom/android/settings/ConfirmLockPattern$1;->$SwitchMap$com$android$settings$ConfirmLockPattern$Stage:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, ""

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_2

    .line 635
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mSubHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-virtual {p1}, Lcom/android/settings/LockPatternView;->clearPattern()V

    .line 639
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2

    .line 621
    :cond_1
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderWrongText:Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    .line 622
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mSubHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 624
    :cond_2
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mSubHeaderTextView:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->lockpattern_need_to_unlock_wrong:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 626
    :goto_0
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterWrongText:Ljava/lang/CharSequence;

    if-eqz p1, :cond_3

    .line 627
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    :cond_3
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    sget-object v0, Lcom/android/settings/LockPatternView$DisplayMode;->Wrong:Lcom/android/settings/LockPatternView$DisplayMode;

    invoke-virtual {p1, v0}, Lcom/android/settings/LockPatternView;->setDisplayMode(Lcom/android/settings/LockPatternView$DisplayMode;)V

    .line 631
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 632
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-virtual {p1}, Lcom/android/settings/LockPatternView;->enableInput()V

    goto :goto_2

    .line 610
    :cond_4
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterText:Ljava/lang/CharSequence;

    if-eqz p1, :cond_5

    .line 611
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 613
    :cond_5
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    :goto_1
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getInStealthMode()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/LockPatternView;->setInStealthMode(Z)V

    .line 617
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 618
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-virtual {p1}, Lcom/android/settings/LockPatternView;->enableInput()V

    .line 645
    :goto_2
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mSubHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method
