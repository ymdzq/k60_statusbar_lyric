.class public Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;
.super Lcom/android/settings/BaseConfirmLockFragment;
.source "ConfirmLockPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/android/settings/OnBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ConfirmLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockPasswordFragment"
.end annotation


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private mBiometricEnrollChallenge:J

.field private mContext:Landroid/content/Context;

.field private mContinueButton:Landroid/widget/Button;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCurrentPassword:Ljava/lang/String;

.field private mDefaultUserId:I

.field protected mEmergencyCall:Landroid/widget/Button;

.field protected mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

.field private mFooterLayout:Landroid/widget/LinearLayout;

.field protected mForgetPassword:Landroid/widget/Button;

.field private mForgetPasswordDialog:Lcom/android/settings/ForgetPasswordDialog;

.field private mFragmentResult:I

.field private mFrpHeaderMessage:Landroid/widget/TextView;

.field private mFrpSkipPassword:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderConfirmFRP:Ljava/lang/String;

.field private mHeaderConfirmLockpassword:Ljava/lang/String;

.field private mHeaderConfirmPrivatepassword:Ljava/lang/String;

.field private mHeaderMessage:Ljava/lang/CharSequence;

.field private mHeaderText:Landroid/widget/TextView;

.field private mIconView:Landroid/widget/ImageView;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mIsAlpha:Z

.field private mIsFromFrp:Z

.field private mIsLockPassword:Z

.field private mIsManagedProfile:Z

.field private mIsShowForgetPwd:Z

.field private mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

.field private mNumWrongConfirmAttempts:I

.field private mOrientation:I

.field private mPasswordEntry:Landroid/widget/TextView;

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

.field private final mResetErrorRunnable:Ljava/lang/Runnable;

.field private mReturnCredentials:Z

.field private mTopBlankHeightRunnable:Ljava/lang/Runnable;

.field protected mUserIdToConfirmPassword:I

.field private mVerifyChallenge:Z

.field private mVerifyChallengeFromFace:Z

.field private outbundle:Landroid/os/Bundle;

.field private windowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# direct methods
.method public static synthetic $r8$lambda$CzuIyO7G8YFyyqnQDzgg1gdfehY(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$DvtFGPja5XcSh1RGZiw44vRODws(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->lambda$new$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$JRAbQOsP6fk3YjPODTj0WTk-aBY(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;IIJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->lambda$onStart$3(IIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$X8neGT-4B7HTM9CAyRF2qiLkIXc(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;IIJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->lambda$onStart$2(IIJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBiometricEnrollChallenge(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mBiometricEnrollChallenge:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmForgetPasswordDialog(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/settings/ForgetPasswordDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mForgetPasswordDialog:Lcom/android/settings/ForgetPasswordDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHeaderText(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLockPatternUtils(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/security/MiuiLockPatternUtils;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPasswordEntry(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressDialog(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lmiuix/appcompat/app/ProgressDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmForgetPasswordDialog(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;Lcom/android/settings/ForgetPasswordDialog;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mForgetPasswordDialog:Lcom/android/settings/ForgetPasswordDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNumWrongConfirmAttempts(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPendingLockCheck(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/os/AsyncTask;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdismissProgressDialog(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->dismissProgressDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monPasswordChecked(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;Ljava/lang/String;[B)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->onPasswordChecked(Ljava/lang/String;[B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowSoftInput(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showSoftInput(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 191
    invoke-direct {p0}, Lcom/android/settings/BaseConfirmLockFragment;-><init>()V

    .line 140
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 147
    iput v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFragmentResult:I

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    .line 149
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUserIdToConfirmPassword:I

    const/4 v1, 0x0

    .line 154
    iput-boolean v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mReturnCredentials:Z

    .line 166
    iput-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mForgetPasswordDialog:Lcom/android/settings/ForgetPasswordDialog;

    .line 175
    new-instance v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->windowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    const-wide/16 v0, 0x0

    .line 235
    iput-wide v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mBiometricEnrollChallenge:J

    .line 844
    new-instance v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$9;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$9;-><init>(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private dismissProgressDialog()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    return-void
.end method

.method private handleAttemptLockout(J)V
    .locals 10

    .line 773
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 774
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->refreshLockScreen()V

    .line 775
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 776
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 778
    new-instance v2, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$8;

    sub-long v6, p1, v0

    const-wide/16 v8, 0x3e8

    move-object v4, v2

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$8;-><init>(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;JJ)V

    .line 798
    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private handleNext()V
    .locals 4

    .line 647
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 648
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->lock_password_checking:I

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    return-void

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 653
    :goto_0
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->bundle:Landroid/os/Bundle;

    const-string v3, "has_challenge"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 657
    invoke-direct {p0, v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->startVerifyPassword(Ljava/lang/String;)V

    goto :goto_1

    .line 659
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->startCheckPassword(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private initEmergencyCall()V
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEmergencyCall:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsManagedProfile:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 482
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEmergencyCall:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;

    invoke-direct {v1, p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;-><init>(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private isConfirmLockPasswordActivity()Z
    .locals 0

    .line 643
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p0, p0, Lcom/android/settings/ConfirmLockPassword;

    return p0
.end method

.method private isInternalActivity()Z
    .locals 0

    .line 639
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p0, p0, Lcom/android/settings/ConfirmLockPassword$InternalActivity;

    return p0
.end method

.method private isValidPassword(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 755
    invoke-virtual {p1}, Ljava/lang/String;->length()I

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

.method private synthetic lambda$new$0()V
    .locals 0

    .line 177
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->hideSoftInput(Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic lambda$new$1(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 176
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isMultiWindowNotFreeformMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$onStart$2(IIJ)V
    .locals 1

    .line 247
    sget-object p1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "generateTeeFaceChallenge challenge="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iput-wide p3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mBiometricEnrollChallenge:J

    return-void
.end method

.method private synthetic lambda$onStart$3(IIJ)V
    .locals 1

    .line 253
    sget-object p1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "generateFingerChallenge challenge="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iput-wide p3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mBiometricEnrollChallenge:J

    return-void
.end method

.method private onPasswordChecked(Ljava/lang/String;[B)V
    .locals 3

    .line 692
    iget v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUserIdToConfirmPassword:I

    if-eqz v0, :cond_0

    const/16 v1, -0x270f

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    .line 693
    invoke-virtual {v1, v0}, Landroid/security/MiuiLockPatternUtils;->getStrongAuthForUser(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUserIdToConfirmPassword:I

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->userPresent(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 697
    sget-object v1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sth wrong when user present"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 700
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 701
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->outbundle:Landroid/os/Bundle;

    .line 702
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->isInternalActivity()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mReturnCredentials:Z

    if-eqz v1, :cond_2

    .line 703
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->outbundle:Landroid/os/Bundle;

    const-string/jumbo v2, "password"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 706
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->outbundle:Landroid/os/Bundle;

    const-string v2, "hw_auth_token"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_3
    if-nez v0, :cond_4

    .line 708
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_4

    .line 711
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 712
    iget-object p2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->outbundle:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 713
    invoke-virtual {p0}, Lcom/android/settings/BaseConfirmLockFragment;->onConfirmDeviceCredentialSuccess()V

    .line 714
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 v0, -0x1

    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 715
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 717
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/BaseConfirmLockFragment;->checkForPendingIntentForCts()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 719
    :catch_1
    sget-object p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->TAG:Ljava/lang/String;

    const-string p1, "check for pending intent error"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 721
    :cond_4
    invoke-static {v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->instanceofSettingsPreFragment(Landroidx/fragment/app/Fragment;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x0

    .line 722
    iput p2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFragmentResult:I

    .line 723
    iget-boolean p2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mReturnCredentials:Z

    if-eqz p2, :cond_5

    .line 724
    iput-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    .line 726
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->popupFragment()V

    :cond_6
    :goto_1
    return-void
.end method

.method private popupFragment()V
    .locals 0

    .line 834
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 836
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    :cond_0
    return-void
.end method

.method private showError(I)V
    .locals 2

    const-wide/16 v0, 0xbb8

    .line 841
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(IJ)V

    return-void
.end method

.method private showProgressAnim()V
    .locals 5

    .line 262
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->dismissProgressDialog()V

    .line 263
    new-instance v0, Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    .line 264
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->security_check_progress_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setMax(I)V

    .line 266
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/ProgressDialog;->setProgressStyle(I)V

    .line 267
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 269
    filled-new-array {v3, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPercentValueAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x7d0

    .line 270
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 271
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPercentValueAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;-><init>(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 280
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPercentValueAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$2;-><init>(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 311
    :try_start_0
    const-class v0, Landroid/animation/ValueAnimator;

    const-string/jumbo v1, "sDurationScale"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 312
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 314
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 317
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 319
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPercentValueAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private showSoftInput(Landroid/view/View;)V
    .locals 1

    .line 903
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isMultiWindowNotFreeformMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 904
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 905
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method private startCheckPassword(Ljava/lang/String;)V
    .locals 4

    .line 731
    invoke-direct {p0, p1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->isValidPassword(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 732
    invoke-virtual {p0, p1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleWrongPassword(Ljava/lang/String;)V

    return-void

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUserIdToConfirmPassword:I

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;-><init>(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;Ljava/lang/String;)V

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/settings/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILandroid/content/Context;Lcom/android/settings/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method

.method private startVerifyPassword(Ljava/lang/String;)V
    .locals 8

    .line 664
    invoke-direct {p0, p1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->isValidPassword(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 665
    invoke-virtual {p0, p1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleWrongPassword(Ljava/lang/String;)V

    return-void

    .line 669
    :cond_0
    iget v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    .line 670
    iget v5, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    .line 671
    new-instance v7, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$6;

    invoke-direct {v7, p0, p1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$6;-><init>(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;Ljava/lang/String;)V

    if-ne v0, v5, :cond_1

    .line 685
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget-wide v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mBiometricEnrollChallenge:J

    iget-object v6, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContext:Landroid/content/Context;

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/android/settings/LockPatternChecker;->verifyPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JILandroid/content/Context;Lcom/android/settings/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object p1

    goto :goto_0

    .line 687
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v5, v7}, Lcom/android/settings/LockPatternChecker;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZILcom/android/settings/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 880
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    iget-object p0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 337
    sget p2, Lcom/android/settings/R$layout;->miui_confirm_lock_password:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 338
    sget p2, Lcom/android/settings/R$id;->footerLeftButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    sget p2, Lcom/android/settings/R$id;->footerRightButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    .line 340
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object p2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 343
    sget p2, Lcom/android/settings/R$id;->password_entry:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 344
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 345
    iget-object p2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 347
    sget p2, Lcom/android/settings/R$id;->headerText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    .line 375
    sget p2, Lcom/android/settings/R$id;->forgetPassword:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mForgetPassword:Landroid/widget/Button;

    .line 377
    sget p2, Lcom/android/settings/R$id;->footerLayout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFooterLayout:Landroid/widget/LinearLayout;

    .line 379
    sget p2, Lcom/android/settings/R$string;->lockpassword_confirm_your_private_password_header:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderConfirmPrivatepassword:Ljava/lang/String;

    .line 380
    sget p2, Lcom/android/settings/R$string;->confirm_frp_credential_title:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderConfirmFRP:Ljava/lang/String;

    .line 382
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->bundle:Landroid/os/Bundle;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 384
    invoke-static {p2}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->getHeader(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderMessage:Ljava/lang/CharSequence;

    const-string v2, "com.android.settings.userIdToConfirm"

    .line 385
    iget v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDefaultUserId:I

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUserIdToConfirmPassword:I

    .line 386
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const-string v3, "com.android.settings.titleColor"

    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "com.android.settings.bgColor"

    .line 387
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 388
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mForgetPassword:Landroid/widget/Button;

    const-string v3, "com.android.settings.forgetPatternColor"

    invoke-virtual {v2}, Landroid/widget/Button;->getCurrentTextColor()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    const-string v2, "com.android.settings.forgetPassword"

    .line 389
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsShowForgetPwd:Z

    .line 392
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUserIdToConfirmPassword:I

    invoke-static {v2, v3}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsManagedProfile:Z

    if-eqz p2, :cond_2

    if-eqz v2, :cond_2

    .line 393
    iget-object p2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderMessage:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderMessage:Ljava/lang/CharSequence;

    sget v2, Lcom/android/settings/R$string;->lockpassword_confirm_your_password_generic_profile:I

    .line 395
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 394
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 396
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 397
    instance-of v2, p2, Lcom/android/settings/BaseConfirmLockActivity;

    if-eqz v2, :cond_2

    .line 398
    const-class v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p2, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 400
    iget v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUserIdToConfirmPassword:I

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerNameAsUser(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CTS Verifier"

    .line 401
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 402
    check-cast p2, Lcom/android/settings/BaseConfirmLockActivity;

    const-string v2, "Cts Verifier"

    invoke-virtual {p2, v2}, Lcom/android/settings/BaseConfirmLockActivity;->setMiuixHeaderTitle(Ljava/lang/CharSequence;)V

    .line 406
    :cond_2
    sget p2, Lcom/android/settings/R$id;->emergencyCall:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEmergencyCall:Landroid/widget/Button;

    .line 407
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->initEmergencyCall()V

    .line 409
    sget p2, Lcom/android/settings/R$id;->cts_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIconView:Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    .line 410
    iget-boolean p2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsManagedProfile:Z

    if-eqz p2, :cond_3

    .line 411
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/android/settings/R$drawable;->auth_dialog_enterprise:I

    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContext:Landroid/content/Context;

    .line 412
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 411
    invoke-virtual {p2, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 413
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 414
    iget-object p2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 417
    :cond_3
    iget-boolean p2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsFromFrp:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget v2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUserIdToConfirmPassword:I

    invoke-virtual {p2, v2}, Landroid/security/MiuiLockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p2

    goto :goto_0

    .line 418
    :cond_4
    iget-object p2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget v2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUserIdToConfirmPassword:I

    invoke-virtual {p2, v2}, Landroid/security/MiuiLockPatternUtils;->getActivePasswordQuality(I)I

    move-result p2

    :goto_0
    if-eqz p2, :cond_5

    move v2, v1

    goto :goto_1

    :cond_5
    move v2, v0

    .line 419
    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsLockPassword:Z

    .line 420
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDefaultHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    sget v2, Lcom/android/settings/R$id;->frpSkipPassword:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFrpSkipPassword:Landroid/widget/TextView;

    .line 423
    iget-boolean v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsFromFrp:Z

    const/16 v4, 0x8

    if-eqz v3, :cond_6

    move v3, v0

    goto :goto_2

    :cond_6
    move v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 424
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFrpSkipPassword:Landroid/widget/TextView;

    new-instance v3, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$3;

    invoke-direct {v3, p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$3;-><init>(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    sget v2, Lcom/android/settings/R$id;->headerMessage:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFrpHeaderMessage:Landroid/widget/TextView;

    .line 431
    iget-boolean v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsFromFrp:Z

    if-eqz v3, :cond_7

    move v4, v0

    :cond_7
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const/high16 v2, 0x40000

    if-eq v2, p2, :cond_9

    const/high16 v2, 0x50000

    if-eq v2, p2, :cond_9

    const/high16 v2, 0x60000

    if-ne v2, p2, :cond_8

    goto :goto_3

    :cond_8
    move v1, v0

    .line 433
    :cond_9
    :goto_3
    iput-boolean v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v1, :cond_a

    .line 437
    sget p2, Lcom/android/settings/R$string;->lockpassword_confirm_your_lock_password_header:I

    goto :goto_4

    :cond_a
    sget p2, Lcom/android/settings/R$string;->lockpassword_confirm_your_lock_pin_header:I

    :goto_4
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderConfirmLockpassword:Ljava/lang/String;

    .line 438
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 440
    invoke-virtual {p0, p2}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->setForgetPasswordVisibility(Landroid/app/Activity;)V

    .line 441
    iget-object p2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mForgetPassword:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;

    invoke-direct {v1, p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;-><init>(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    iget-object p2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getInputType()I

    move-result p2

    .line 459
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v2, :cond_b

    goto :goto_5

    :cond_b
    const/16 p2, 0x12

    :goto_5
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setInputType(I)V

    .line 462
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isInFullWindowGestureMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 463
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/high16 v1, 0x8000000

    invoke-virtual {p2, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 465
    :cond_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/high16 v1, 0x4000000

    invoke-virtual {p2, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 466
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/high16 v1, 0x20000

    invoke-virtual {p2, v1}, Landroid/view/Window;->clearFlags(I)V

    if-eqz p3, :cond_d

    const-string p2, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    .line 469
    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I

    const-string/jumbo p2, "save_ui_mode_night"

    .line 471
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 472
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p3, p3, 0x30

    if-eq p2, p3, :cond_d

    .line 473
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/app/Activity;->setResult(I)V

    .line 474
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_d
    return-object p1
.end method

.method protected getDefaultHeader()Ljava/lang/String;
    .locals 1

    .line 508
    iget-boolean v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsFromFrp:Z

    if-eqz v0, :cond_0

    .line 509
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderConfirmFRP:Ljava/lang/String;

    return-object p0

    .line 510
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsManagedProfile:Z

    if-eqz v0, :cond_1

    .line 511
    sget v0, Lcom/android/settings/R$string;->lockpassword_confirm_your_password_generic_profile:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 513
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderMessage:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 515
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsLockPassword:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderConfirmLockpassword:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderConfirmPrivatepassword:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getIntentArguments()Landroid/os/Bundle;
    .locals 1

    .line 196
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->isConfirmLockPasswordActivity()Z

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

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 602
    iget-boolean p0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/android/settings/R$string;->lock_last_password_attempt_before_wipe_user:I

    goto :goto_0

    .line 603
    :cond_0
    sget p0, Lcom/android/settings/R$string;->lock_last_pin_attempt_before_wipe_user:I

    :goto_0
    return p0

    .line 605
    :cond_1
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

    .line 599
    :cond_2
    iget-boolean p0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz p0, :cond_3

    sget p0, Lcom/android/settings/R$string;->lock_last_password_attempt_before_wipe_profile:I

    goto :goto_1

    .line 600
    :cond_3
    sget p0, Lcom/android/settings/R$string;->lock_last_pin_attempt_before_wipe_profile:I

    :goto_1
    return p0

    .line 596
    :cond_4
    iget-boolean p0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz p0, :cond_5

    sget p0, Lcom/android/settings/R$string;->lock_last_password_attempt_before_wipe_device:I

    goto :goto_2

    .line 597
    :cond_5
    sget p0, Lcom/android/settings/R$string;->lock_last_pin_attempt_before_wipe_device:I

    :goto_2
    return p0
.end method

.method protected getLastTryOverrideErrorMessageId(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 586
    iget-boolean p0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz p0, :cond_0

    const-string p0, "Settings.WORK_PROFILE_LAST_PASSWORD_ATTEMPT_BEFORE_WIPE"

    goto :goto_0

    :cond_0
    const-string p0, "Settings.WORK_PROFILE_LAST_PIN_ATTEMPT_BEFORE_WIPE"

    :goto_0
    return-object p0

    :cond_1
    const-string p0, "UNDEFINED"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 884
    invoke-virtual {p0}, Lcom/android/settings/BaseConfirmLockFragment;->getMetricsPasswordCategory()I

    move-result p0

    return p0
.end method

.method protected handleWrongPassword(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 759
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleWrongPassword(Ljava/lang/String;I)V

    return-void
.end method

.method protected handleWrongPassword(Ljava/lang/String;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 763
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    if-lez p2, :cond_0

    .line 764
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUserIdToConfirmPassword:I

    invoke-virtual {p1, v0, p2}, Landroid/security/MiuiLockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide p1

    .line 765
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleAttemptLockout(J)V

    goto :goto_0

    .line 768
    :cond_0
    sget p1, Lcom/android/settings/R$string;->lockpattern_need_to_unlock_wrong:I

    invoke-direct {p0, p1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V

    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 569
    sget-boolean v0, Lcom/android/settings/utils/TabletUtils;->IS_TABLET:Z

    if-eqz v0, :cond_1

    .line 570
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 571
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 572
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 820
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 821
    sget v0, Lcom/android/settings/R$id;->footerRightButton:I

    if-ne p1, v0, :cond_0

    .line 822
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 823
    :cond_0
    sget v0, Lcom/android/settings/R$id;->footerLeftButton:I

    if-ne p1, v0, :cond_2

    .line 824
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 825
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->onBackPressed()Z

    goto :goto_0

    .line 827
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 828
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 553
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 554
    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isPad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 556
    iget v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mOrientation:I

    if-eq p1, v0, :cond_0

    .line 557
    iput p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mOrientation:I

    .line 558
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 559
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->choose_unlock_password_footer_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 561
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 201
    invoke-super {p0, p1}, Lcom/android/settings/BaseConfirmLockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 202
    new-instance p1, Lcom/android/settings/FingerprintHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/FingerprintHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    .line 203
    new-instance p1, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    .line 205
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContext:Landroid/content/Context;

    .line 206
    invoke-static {p1}, Lcom/android/settings/MiuiChooseLockSettingsHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isLargeScreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 207
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 209
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mOrientation:I

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getIntentArguments()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->bundle:Landroid/os/Bundle;

    const-string/jumbo v1, "return_credentials"

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 213
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mReturnCredentials:Z

    .line 215
    :cond_1
    iget-boolean p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mReturnCredentials:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v2

    goto :goto_1

    :cond_3
    :goto_0
    move p1, v0

    :goto_1
    iput-boolean p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mReturnCredentials:Z

    .line 217
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->bundle:Landroid/os/Bundle;

    invoke-static {p1, v1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->getEffectiveUserId(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result p1

    .line 218
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->bundle:Landroid/os/Bundle;

    const-string v3, "from_confirm_frp_credential"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v3, -0x270f

    if-nez v1, :cond_5

    .line 219
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "android.app.action.CONFIRM_FRP_CREDENTIAL"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    if-ne p1, v3, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    :cond_5
    :goto_2
    iput-boolean v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsFromFrp:Z

    if-eqz v0, :cond_6

    move p1, v3

    .line 221
    :cond_6
    iput p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDefaultUserId:I

    if-eqz v0, :cond_7

    goto :goto_3

    .line 222
    :cond_7
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    :goto_3
    iput v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUserIdToConfirmPassword:I

    .line 224
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 226
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isInFullWindowGestureMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 227
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x8000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 229
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 231
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method public onDetach()V
    .locals 3

    .line 543
    iget v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFragmentResult:I

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->outbundle:Landroid/os/Bundle;

    invoke-static {p0, v0, v1, v2}, Lcom/android/settings/MiuiSecurityCommonSettings;->setFragmentResultOnDetach(Landroidx/fragment/app/Fragment;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 544
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 545
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mTopBlankHeightRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 546
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 548
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p2, :cond_1

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 866
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    const/4 p0, 0x1

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 581
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->onBackPressed()Z

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
    .locals 3

    .line 521
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onPause()V

    .line 522
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 524
    iput-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 528
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 529
    iput-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mForgetPasswordDialog:Lcom/android/settings/ForgetPasswordDialog;

    if-eqz v0, :cond_2

    .line 533
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 536
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 538
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->windowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 612
    invoke-super {p0}, Lcom/android/settings/BaseConfirmLockFragment;->onResume()V

    .line 613
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUserIdToConfirmPassword:I

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 615
    invoke-direct {p0, v0, v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleAttemptLockout(J)V

    goto :goto_0

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 618
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDefaultHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 619
    iput v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I

    .line 621
    :goto_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showSoftInput(Landroid/view/View;)V

    .line 622
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->setForgetPasswordVisibility(Landroid/app/Activity;)V

    .line 624
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->windowFocusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 629
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    .line 630
    iget v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mNumWrongConfirmAttempts:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 631
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

    .line 240
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onStart()V

    .line 241
    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->onStartEdit(Landroidx/fragment/app/Fragment;)V

    .line 242
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->bundle:Landroid/os/Bundle;

    const-string v1, "has_challenge"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mVerifyChallenge:Z

    .line 243
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->bundle:Landroid/os/Bundle;

    const-string v1, "for_face"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mVerifyChallengeFromFace:Z

    .line 244
    iget-boolean v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mVerifyChallenge:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->generateFaceEnrollChallenge(Landroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    goto :goto_0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    new-instance v2, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/FingerprintHelper;->generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    .line 257
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showProgressAnim()V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 324
    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->onFinishEdit(Landroidx/fragment/app/Fragment;)V

    .line 325
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onStop()V

    .line 326
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->dismissProgressDialog()V

    .line 327
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPercentValueAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPercentValueAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 329
    iput-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPercentValueAnim:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public setForgetPasswordVisibility(Landroid/app/Activity;)V
    .locals 1

    .line 498
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    const-string v0, "com.xiaomi"

    invoke-virtual {p1, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 499
    array-length p1, p1

    if-lez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsShowForgetPwd:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUserIdToConfirmPassword:I

    const/16 v0, -0x270f

    if-eq p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsManagedProfile:Z

    if-nez p1, :cond_0

    .line 501
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mForgetPassword:Landroid/widget/Button;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 503
    :cond_0
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mForgetPassword:Landroid/widget/Button;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public showError(IJ)V
    .locals 2

    .line 851
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 852
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 853
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 854
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-eqz p1, :cond_0

    .line 856
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
