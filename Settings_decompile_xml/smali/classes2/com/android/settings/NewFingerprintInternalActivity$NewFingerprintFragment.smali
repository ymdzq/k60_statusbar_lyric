.class public Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;
.super Lcom/android/settings/KeyguardBaseEditFragment;
.source "NewFingerprintInternalActivity.java"

# interfaces
.implements Lcom/android/settings/FragmentResultCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NewFingerprintInternalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewFingerprintFragment"
.end annotation


# static fields
.field private static STEPS_NUM:I = 0x19


# instance fields
.field private final mActionOnAddCompletedRunnable:Ljava/lang/Runnable;

.field protected mActivity:Landroid/app/Activity;

.field private mAddKeyguardpasswordThenAddFingerprint:Z

.field private mBackImage:Landroid/widget/ImageView;

.field private mCancelButton:Landroid/view/View;

.field private mConfirmLockLaunched:Z

.field private mContentDescriptionRunnable:Ljava/lang/Runnable;

.field protected mContentView:Landroid/view/View;

.field private mCurrentShowingDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mEnrollHelpInfoText:Ljava/lang/String;

.field private mFailTime:I

.field private mFingerprintAddistener:Lcom/android/settings/FingerprintAddListener;

.field protected mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

.field private mFingerprintLayout:Landroid/widget/FrameLayout;

.field private mFingerprintSensorType:Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;

.field private mHandler:Landroid/os/Handler;

.field private mIdOfFingerprintWithoutName:Ljava/lang/String;

.field private mInputStep:I

.field private mInstructionFingernameEditText:Landroid/widget/EditText;

.field private mInstructionFingernameTitle:Landroid/widget/TextView;

.field protected mInstructionImageView:Landroid/widget/ImageView;

.field protected mInstructionText:Landroid/widget/TextView;

.field protected mInstructionTitle:Landroid/widget/TextView;

.field private mIntentForExtern:Z

.field private mIsBlackMode:Z

.field private mIsShowHelpInfo:Z

.field private mIsStartFingerprint:Z

.field private mNextVideoUri:Landroid/net/Uri;

.field private mOkButton:Landroid/widget/Button;

.field protected mOnInputFailedAlertDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mProgress:I

.field private final mRotationWatcher:Landroid/view/IRotationWatcher;

.field private mStartEnrolling:Z

.field protected mStepVideoView:Lcom/android/settings/MutedVideoView;

.field private mTotalStepNum:I

.field private mVibrator:Landroid/os/Vibrator;

.field private nextInputStep:I

.field private oldRotation:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmBackImage(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mBackImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCancelButton(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mCancelButton:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentShowingDialog(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mCurrentShowingDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnrollHelpInfoText(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mEnrollHelpInfoText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFingerprintAddistener(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Lcom/android/settings/FingerprintAddListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mFingerprintAddistener:Lcom/android/settings/FingerprintAddListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInputStep(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInputStep:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInstructionFingernameEditText(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionFingernameEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInstructionFingernameTitle(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionFingernameTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIntentForExtern(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mIntentForExtern:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsShowHelpInfo(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mIsShowHelpInfo:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsStartFingerprint(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mIsStartFingerprint:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNextVideoUri(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/net/Uri;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mNextVideoUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOkButton(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/Button;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mOkButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgress(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mProgress:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartEnrolling(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mStartEnrolling:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTotalStepNum(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mTotalStepNum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnextInputStep(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->nextInputStep:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentShowingDialog(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mCurrentShowingDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEnrollHelpInfoText(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mEnrollHelpInfoText:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFailTime(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mFailTime:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIdOfFingerprintWithoutName(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mIdOfFingerprintWithoutName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInputStep(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInputStep:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsShowHelpInfo(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mIsShowHelpInfo:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsStartFingerprint(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mIsStartFingerprint:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNextVideoUri(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Landroid/net/Uri;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mNextVideoUri:Landroid/net/Uri;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProgress(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mProgress:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStartEnrolling(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mStartEnrolling:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTotalStepNum(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mTotalStepNum:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnextInputStep(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->nextInputStep:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputoldRotation(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->oldRotation:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mdismissAlertDialog(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->dismissAlertDialog(Lmiuix/appcompat/app/AlertDialog;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgenerateViewUri(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->generateViewUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misDeviceProvisioned(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Landroid/content/Context;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misNewFingerprintInternalActivity(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->isNewFingerprintInternalActivity()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mplayVideo(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Landroid/net/Uri;Lcom/android/settings/MutedVideoView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->playVideo(Landroid/net/Uri;Lcom/android/settings/MutedVideoView;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseFingerprintHelper(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->releaseFingerprintHelper()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetContentDescription(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->setContentDescription(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowGxzwUserNotice(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;[B)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->showGxzwUserNotice([B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetSTEPS_NUM()I
    .locals 1

    .line 0
    sget v0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->STEPS_NUM:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 103
    invoke-direct {p0}, Lcom/android/settings/KeyguardBaseEditFragment;-><init>()V

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    const/4 v1, 0x1

    .line 114
    iput v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInputStep:I

    const/4 v1, 0x0

    .line 116
    iput v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mProgress:I

    .line 117
    iput v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mTotalStepNum:I

    .line 118
    iput-boolean v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mIsStartFingerprint:Z

    .line 119
    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mVibrator:Landroid/os/Vibrator;

    .line 131
    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mOnInputFailedAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 132
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mHandler:Landroid/os/Handler;

    .line 133
    iput-boolean v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mStartEnrolling:Z

    .line 134
    iput v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mFailTime:I

    .line 135
    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mNextVideoUri:Landroid/net/Uri;

    .line 141
    iput-boolean v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mIsShowHelpInfo:Z

    .line 144
    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    .line 146
    iput-boolean v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mConfirmLockLaunched:Z

    .line 148
    iput-boolean v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mIntentForExtern:Z

    .line 150
    iput v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->oldRotation:I

    .line 151
    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mCurrentShowingDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 153
    new-instance v0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$1;-><init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)V

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mContentDescriptionRunnable:Ljava/lang/Runnable;

    .line 211
    new-instance v0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$2;-><init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)V

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mRotationWatcher:Landroid/view/IRotationWatcher;

    .line 691
    new-instance v0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;

    invoke-direct {v0, p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;-><init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)V

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mFingerprintAddistener:Lcom/android/settings/FingerprintAddListener;

    .line 831
    new-instance v0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$14;

    invoke-direct {v0, p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$14;-><init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)V

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActionOnAddCompletedRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private checkIfShowUserNotice([B)V
    .locals 1

    .line 352
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mFingerprintAddistener:Lcom/android/settings/FingerprintAddListener;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/FingerprintHelper;->startEnrol(Lcom/android/settings/FingerprintAddListener;[B)V

    goto :goto_0

    .line 356
    :cond_0
    new-instance v0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$3;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$3;-><init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;[B)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 377
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method private dismissAlertDialog(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 872
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 873
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private generateViewUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 660
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string/jumbo v1, "raw"

    invoke-virtual {p0, p1, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 664
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private getCoreScanGestureImage()I
    .locals 1

    .line 915
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mFingerprintSensorType:Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;

    sget-object v0, Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;->BROADSIDE:Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;

    if-ne p0, v0, :cond_1

    .line 916
    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isPad()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 917
    sget p0, Lcom/android/settings/R$drawable;->core_scan_gesture_pad_broadside:I

    return p0

    .line 919
    :cond_0
    sget p0, Lcom/android/settings/R$drawable;->core_scan_gesture_broadside:I

    return p0

    .line 921
    :cond_1
    sget-object v0, Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;->FRONT:Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;

    if-ne p0, v0, :cond_2

    .line 922
    sget p0, Lcom/android/settings/R$drawable;->core_scan_gesture_font:I

    return p0

    .line 924
    :cond_2
    sget p0, Lcom/android/settings/R$drawable;->core_scan_gesture_back:I

    return p0
.end method

.method private getFingerprintInstructionString()I
    .locals 1

    .line 929
    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isPad()Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/settings/MiuiKeyguardSettingsUtils;->IS_FOLD:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 931
    :cond_0
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mFingerprintSensorType:Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;

    sget-object v0, Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;->BROADSIDE:Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;

    if-ne p0, v0, :cond_1

    .line 932
    sget p0, Lcom/android/settings/R$string;->add_broadsize_fingerprint_instruction_msg:I

    return p0

    .line 933
    :cond_1
    sget-object v0, Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;->FRONT:Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;

    if-ne p0, v0, :cond_2

    .line 934
    sget p0, Lcom/android/settings/R$string;->add_front_fingerprint_instruction_msg:I

    return p0

    .line 936
    :cond_2
    sget p0, Lcom/android/settings/R$string;->add_back_fingerprint_instruction_msg:I

    return p0

    .line 930
    :cond_3
    :goto_0
    sget p0, Lcom/android/settings/R$string;->pad_add_fingerprint_message:I

    return p0
.end method

.method private hideNavigationBar()V
    .locals 1

    .line 269
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x1302

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private initFingerprintSensorType()V
    .locals 3

    .line 903
    invoke-static {}, Lcom/android/settings/utils/FingerprintUtils;->isBroadSideFingerprint()Z

    move-result v0

    const-string v1, "front_fingerprint_sensor"

    const/4 v2, 0x0

    .line 904
    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v0, :cond_0

    .line 906
    sget-object v0, Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;->BROADSIDE:Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mFingerprintSensorType:Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 908
    sget-object v0, Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;->FRONT:Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mFingerprintSensorType:Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;

    goto :goto_0

    .line 910
    :cond_1
    sget-object v0, Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;->BACK:Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mFingerprintSensorType:Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;

    :goto_0
    return-void
.end method

.method private isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 1

    .line 495
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

.method private isNewFingerprintInternalActivity()Z
    .locals 1

    .line 480
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p0, p0, Lcom/android/settings/NewFingerprintInternalActivity;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private playVideo(Landroid/net/Uri;Lcom/android/settings/MutedVideoView;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 670
    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mNextVideoUri:Landroid/net/Uri;

    .line 671
    invoke-virtual {p2, p1}, Lcom/android/settings/MutedVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 672
    new-instance p1, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$11;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$11;-><init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Lcom/android/settings/MutedVideoView;)V

    invoke-virtual {p2, p1}, Lcom/android/settings/MutedVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    :cond_0
    return-void
.end method

.method private popNewFingerprintBackStack()V
    .locals 2

    .line 471
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 473
    const-class v0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private releaseFingerprintHelper()V
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->cancelEnrol()V

    const/4 v0, 0x0

    .line 567
    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    :cond_0
    return-void
.end method

.method private saveFingerprintname()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionFingernameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mIdOfFingerprintWithoutName:Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lcom/android/settings/utils/FingerprintUtils;->setFingerprintName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setContentDescription(Ljava/lang/String;)V
    .locals 2

    .line 682
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionTitle:Landroid/widget/TextView;

    new-instance v1, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$12;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$12;-><init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Ljava/lang/String;)V

    const-wide/16 p0, 0x64

    invoke-virtual {v0, v1, p0, p1}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setInstructionImageViewBackground()V
    .locals 3

    .line 878
    sget-boolean v0, Lcom/android/settings/MiuiKeyguardSettingsUtils;->IS_FOLD:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isPad()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 880
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 895
    :cond_1
    iput v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->oldRotation:I

    .line 896
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionImageView:Landroid/widget/ImageView;

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_0

    .line 891
    :cond_2
    iput v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->oldRotation:I

    .line 892
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionImageView:Landroid/widget/ImageView;

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_0

    .line 887
    :cond_3
    iput v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->oldRotation:I

    .line 888
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionImageView:Landroid/widget/ImageView;

    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 883
    iput v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->oldRotation:I

    .line 884
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    :cond_5
    :goto_0
    return-void
.end method

.method private showGxzwUserNotice([B)V
    .locals 4

    .line 382
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 386
    :cond_0
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    sget v2, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight:I

    invoke-direct {v1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 387
    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->finger_add_user_info_dialog_title:I

    .line 388
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->finger_add_user_info_dialog_next:I

    new-instance v3, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$6;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$6;-><init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;[B)V

    .line 389
    invoke-virtual {v0, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->finger_add_user_info_dialog_cancel:I

    new-instance v2, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$5;

    invoke-direct {v2, p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$5;-><init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)V

    .line 402
    invoke-virtual {p1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$4;-><init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)V

    .line 410
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 418
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->finger_add_user_info_dialog_message:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<br><br>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/android/settings/R$string;->view_fingerprint_privacy_policy:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 420
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    .line 421
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 422
    iput-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mCurrentShowingDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private updateLayoutParams()V
    .locals 3

    .line 255
    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isPad()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/MiuiKeyguardSettingsUtils;->IS_FOLD:Z

    if-eqz v0, :cond_4

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->isSetUp()Z

    move-result v0

    if-nez v0, :cond_4

    .line 256
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionFingernameTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 257
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isPad()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    sget v2, Lcom/android/settings/R$dimen;->miui_finger_enroll_suggest_bottom_pad:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/android/settings/R$dimen;->miui_finger_enroll_suggest_title_bottom:I

    .line 257
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 259
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mFingerprintLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 260
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isPad()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 261
    sget v2, Lcom/android/settings/R$dimen;->miui_finger_enroll_margin_top_pad:I

    goto :goto_1

    :cond_2
    sget v2, Lcom/android/settings/R$dimen;->miui_finger_enroll_margin_top:I

    .line 260
    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 262
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mStepVideoView:Lcom/android/settings/MutedVideoView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 263
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isPad()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 264
    sget v1, Lcom/android/settings/R$dimen;->new_fingerprint_image_top_pad:I

    goto :goto_2

    :cond_3
    sget v1, Lcom/android/settings/R$dimen;->new_fingerprint_image_top:I

    .line 263
    :goto_2
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_4
    return-void
.end method


# virtual methods
.method protected buildAlertDialog(I)Lmiuix/appcompat/app/AlertDialog;
    .locals 2

    .line 648
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 651
    :cond_0
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v1, 0x1010355    # @android:attr/alertDialogIcon

    .line 652
    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 653
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->information_dialog_button_text:I

    .line 654
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 655
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public finish()V
    .locals 1

    .line 455
    invoke-direct {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->isNewFingerprintInternalActivity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    invoke-direct {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->popNewFingerprintBackStack()V

    goto :goto_0

    .line 458
    :cond_0
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->finish()V

    :goto_0
    return-void
.end method

.method protected isSetUp()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected launchConfirmOrChoose()V
    .locals 7

    .line 519
    iget-boolean v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mConfirmLockLaunched:Z

    if-nez v0, :cond_4

    .line 520
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 521
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    .line 524
    invoke-static {}, Lcom/android/settings/MiuiSecurityChooseUnlock$InternalActivity;->getExtraFragmentName()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 528
    invoke-static {}, Lcom/android/settings/ConfirmLockPattern$InternalActivity;->getExtraFragmentName()Ljava/lang/String;

    move-result-object v1

    const-class v0, Lcom/android/settings/ConfirmLockPattern$InternalActivity;

    goto :goto_0

    .line 531
    :cond_0
    invoke-static {}, Lcom/android/settings/ConfirmLockPassword$InternalActivity;->getExtraFragmentName()Ljava/lang/String;

    move-result-object v1

    const-class v0, Lcom/android/settings/ConfirmLockPassword$InternalActivity;

    goto :goto_0

    .line 525
    :cond_1
    const-class v0, Lcom/android/settings/MiuiSecurityChooseUnlock$InternalActivity;

    .line 536
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 537
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 539
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 540
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.android.settings.ConfirmLockPattern.header"

    .line 541
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 542
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x106000b    # @android:color/white

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const-string v6, "com.android.settings.titleColor"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 543
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lcom/android/settings/R$color;->set_second_space_background:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const-string v6, "com.android.settings.bgColor"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.android.settings.lockBtnWhite"

    .line 544
    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 545
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const-string v6, "com.android.settings.forgetPatternColor"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 546
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const-string v5, "com.android.settings.footerTextColor"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.android.settings.forgetPassword"

    const/4 v2, 0x0

    .line 547
    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object v2, v4

    :goto_1
    const-string v0, ":settings:show_fragment"

    .line 549
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "has_challenge"

    .line 550
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "show_add_fingerprint_hint"

    .line 552
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 553
    sget v0, Lcom/android/settings/R$string;->empty_title:I

    const-string v4, ":android:show_fragment_title"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 554
    sget-boolean v4, Lcom/android/settings/utils/TabletUtils;->IS_TABLET:Z

    const/16 v5, 0x64

    if-eqz v4, :cond_3

    .line 556
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 555
    invoke-static {p0, v1, v5, v2, v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_2

    .line 558
    :cond_3
    invoke-virtual {p0, v2, v5}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 560
    :goto_2
    iput-boolean v3, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mConfirmLockLaunched:Z

    :cond_4
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 338
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/KeyguardBaseEditFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    .line 341
    iput-boolean p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mStartEnrolling:Z

    const-string p1, "hw_auth_token"

    .line 342
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    .line 343
    iget-object p2, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    const-string/jumbo p3, "vibrator"

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Vibrator;

    iput-object p2, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mVibrator:Landroid/os/Vibrator;

    .line 344
    invoke-direct {p0, p1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->checkIfShowUserNotice([B)V

    goto :goto_0

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 167
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 169
    iput-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 175
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 176
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 178
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 236
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->getCoreScanGestureImage()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 237
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 238
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mIsBlackMode:Z

    if-eq v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->isSetUp()Z

    move-result v0

    if-nez v0, :cond_2

    .line 239
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$bool;->is_black_theme:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 241
    iget-boolean p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mStartEnrolling:Z

    if-eqz p1, :cond_1

    .line 242
    iput-boolean v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mStartEnrolling:Z

    .line 243
    invoke-direct {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->releaseFingerprintHelper()V

    .line 244
    iget-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mOnInputFailedAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-direct {p0, p1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->dismissAlertDialog(Lmiuix/appcompat/app/AlertDialog;)V

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->finish()V

    return-void

    .line 250
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->updateLayoutParams()V

    .line 251
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 286
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 287
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;

    .line 288
    sget v0, Lcom/android/settings/R$style;->Theme_Dark_Settings_NoTitle:I

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 290
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 291
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 293
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->setActivityOrientationAccordingArgs(Landroid/app/Activity;)V

    .line 295
    new-instance v0, Lcom/android/settings/FingerprintHelper;

    iget-object v2, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/android/settings/FingerprintHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    .line 297
    invoke-direct {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->initFingerprintSensorType()V

    .line 298
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$bool;->is_black_theme:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 299
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v0, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    .line 300
    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mIsBlackMode:Z

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "fingerprint_request_code"

    const/4 v4, -0x1

    .line 304
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v4, 0x65

    if-ne v2, v4, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    iput-boolean v2, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mIntentForExtern:Z

    const-string v2, "add_keyguard_password_then_add_fingerprint"

    .line 305
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mAddKeyguardpasswordThenAddFingerprint:Z

    goto :goto_3

    .line 307
    :cond_3
    iput-boolean v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mIntentForExtern:Z

    .line 308
    iput-boolean v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mAddKeyguardpasswordThenAddFingerprint:Z

    :goto_3
    if-eqz p1, :cond_4

    const-string v1, "key_confirm_lock_launched"

    .line 312
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mConfirmLockLaunched:Z

    .line 315
    :cond_4
    iget-boolean p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mAddKeyguardpasswordThenAddFingerprint:Z

    if-eqz p1, :cond_5

    .line 316
    iput-boolean v3, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mStartEnrolling:Z

    const-string p1, "hw_auth_token"

    .line 317
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    .line 318
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mVibrator:Landroid/os/Vibrator;

    .line 319
    invoke-direct {p0, p1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->checkIfShowUserNotice([B)V

    goto :goto_4

    .line 321
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->launchConfirmOrChoose()V

    .line 324
    :goto_4
    iget-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 325
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isInFullWindowGestureMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 326
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 p1, 0x8000000

    invoke-virtual {p0, p1}, Landroid/view/Window;->clearFlags(I)V

    :cond_6
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 464
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    .line 465
    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isRegisterRotationListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-static {p0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->unRegisterRotationListener(Landroid/view/IRotationWatcher;)V

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 485
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onDetach()V

    const/4 v0, 0x0

    .line 486
    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method protected onFingerprintAddCompleted()V
    .locals 1

    .line 868
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActionOnAddCompletedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFragmentResult(ILandroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    const-string/jumbo p1, "miui_security_fragment_result"

    .line 428
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 429
    iput-boolean p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mStartEnrolling:Z

    const-string p1, "hw_auth_token"

    .line 430
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 431
    iget-object p2, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mFingerprintAddistener:Lcom/android/settings/FingerprintAddListener;

    invoke-virtual {p2, v0, p1}, Lcom/android/settings/FingerprintHelper;->startEnrol(Lcom/android/settings/FingerprintAddListener;[B)V

    .line 432
    iget-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    const-string/jumbo p2, "vibrator"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 573
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/BaseFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 574
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->isSetUp()Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 575
    sget p3, Lcom/android/settings/R$layout;->new_fingerprint:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mContentView:Landroid/view/View;

    goto :goto_0

    .line 577
    :cond_0
    sget p3, Lcom/android/settings/R$layout;->setup_new_fingerprint:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mContentView:Landroid/view/View;

    .line 579
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->setupViews()V

    .line 581
    iget-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mContentView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->fingerprint_name_suggest_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionFingernameTitle:Landroid/widget/TextView;

    .line 582
    iget-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mContentView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->fingerprint_name_edit_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionFingernameEditText:Landroid/widget/EditText;

    .line 584
    iget-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->getCoreScanGestureImage()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 585
    invoke-direct {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->setInstructionImageViewBackground()V

    .line 587
    iget-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionTitle:Landroid/widget/TextView;

    sget p2, Lcom/android/settings/R$string;->add_fingerprint_instruction_title:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 588
    iget-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->getFingerprintInstructionString()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 589
    iget-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mContentView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->new_fingerprint_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mOkButton:Landroid/widget/Button;

    .line 590
    invoke-static {p1}, Lcom/android/settings/utils/FingerprintUtils;->createCardFolmeTouchStyle(Landroid/view/View;)V

    .line 591
    new-instance p1, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$8;

    invoke-direct {p1, p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$8;-><init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)V

    .line 598
    iget-object p2, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mStepVideoView:Lcom/android/settings/MutedVideoView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 599
    iget-object p2, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mStepVideoView:Lcom/android/settings/MutedVideoView;

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    const/4 v0, -0x3

    invoke-interface {p2, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 600
    iget-object p2, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mStepVideoView:Lcom/android/settings/MutedVideoView;

    invoke-virtual {p2, p1}, Lcom/android/settings/MutedVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 601
    iget-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mStepVideoView:Lcom/android/settings/MutedVideoView;

    new-instance p2, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$9;

    invoke-direct {p2, p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$9;-><init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)V

    invoke-virtual {p1, p2}, Lcom/android/settings/MutedVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 609
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "core_scan_output_%02d"

    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->generateViewUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 611
    iget-object p2, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mStepVideoView:Lcom/android/settings/MutedVideoView;

    invoke-virtual {p2, p1}, Lcom/android/settings/MutedVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 613
    :cond_1
    iget-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mOkButton:Landroid/widget/Button;

    invoke-static {p1}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->createCardFolmeTouchStyle(Landroid/view/View;)V

    .line 614
    iget-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mOkButton:Landroid/widget/Button;

    new-instance p2, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$10;

    invoke-direct {p2, p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$10;-><init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    invoke-direct {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->updateLayoutParams()V

    .line 641
    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isRegisterRotationListener()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 642
    iget-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-static {p1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->registerRotationListener(Landroid/view/IRotationWatcher;)V

    .line 644
    :cond_2
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public onPause()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mContentDescriptionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 198
    iget-boolean v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mStartEnrolling:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mStartEnrolling:Z

    .line 200
    invoke-direct {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->releaseFingerprintHelper()V

    .line 201
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mOnInputFailedAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->dismissAlertDialog(Lmiuix/appcompat/app/AlertDialog;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->finish()V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mIdOfFingerprintWithoutName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 206
    invoke-direct {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->saveFingerprintname()V

    .line 208
    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 185
    invoke-super {p0}, Lcom/android/settings/KeyguardBaseEditFragment;->onResume()V

    .line 186
    iget-boolean v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mStartEnrolling:Z

    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->hideNavigationBar()V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mContentDescriptionRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 190
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mCancelButton:Landroid/view/View;

    if-eqz p0, :cond_1

    const/4 v0, 0x4

    .line 191
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 332
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "key_confirm_lock_launched"

    .line 333
    iget-boolean p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mConfirmLockLaunched:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 439
    invoke-super {p0}, Lcom/android/settings/BaseEditFragment;->onStart()V

    .line 440
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_1

    .line 441
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    .line 442
    sget-boolean v1, Lcom/android/settings/utils/TabletUtils;->IS_TABLET:Z

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    .line 443
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/ActionBar;->setCustomView(Landroid/view/View;)V

    goto :goto_0

    .line 446
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020019    # @android:id/button1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mCancelButton:Landroid/view/View;

    .line 447
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object p0

    const v1, 0x102001a    # @android:id/button2

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 449
    :goto_0
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    :cond_1
    return-void
.end method

.method protected setupViews()V
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->fingerprint_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mFingerprintLayout:Landroid/widget/FrameLayout;

    .line 501
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->new_fingerprint_top_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionTitle:Landroid/widget/TextView;

    .line 502
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->new_fingerprint_top_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionText:Landroid/widget/TextView;

    .line 503
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->new_fingerprint_instruction_img:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionImageView:Landroid/widget/ImageView;

    .line 504
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->new_fingerprint_step_video:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MutedVideoView;

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mStepVideoView:Lcom/android/settings/MutedVideoView;

    .line 505
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->isSetUp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->back_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mBackImage:Landroid/widget/ImageView;

    .line 507
    new-instance v1, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$7;

    invoke-direct {v1, p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$7;-><init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
