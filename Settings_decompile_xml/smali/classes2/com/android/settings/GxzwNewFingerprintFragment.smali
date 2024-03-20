.class public Lcom/android/settings/GxzwNewFingerprintFragment;
.super Lcom/android/settings/KeyguardBaseEditFragment;
.source "GxzwNewFingerprintFragment.java"


# instance fields
.field private final CMD_ADD_DISMISS:I

.field private final CMD_ADD_SHOW:I

.field private final CODE_PROCESS_CMD:I

.field private final GXZW_SERVICE_NAME:Ljava/lang/String;

.field private final INTERFACE_DESCRIPTOR:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mAddKeyguardpasswordThenAddFingerprint:Z

.field private mCancelButton:Landroid/widget/ImageButton;

.field private mChallengeToken:[B

.field private mConfirmLockLaunched:Z

.field private mContentView:Landroid/view/View;

.field private mCurrentShowingDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mEnrollFailNewEffectId:I

.field private mEnrollFailRtpEffectId:I

.field private mEnrollHelpInfoText:Ljava/lang/String;

.field private mEnrollSuccessNewEffectId:I

.field private mEnrollSuccessRtpEffectId:I

.field private mFailTime:I

.field private mFingerprintAddistener:Lcom/android/settings/FingerprintAddListener;

.field private mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

.field private mFingerprintName:Ljava/lang/String;

.field private mGxzwService:Landroid/os/IBinder;

.field private mHandler:Landroid/os/Handler;

.field private mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

.field private mIdOfFingerprintWithoutName:Ljava/lang/String;

.field private mInputStep:I

.field private mInstructionIndicate:Landroid/widget/TextView;

.field private mInstructionText:Landroid/widget/TextView;

.field private mInstructionTitle:Landroid/widget/TextView;

.field private mIntentForExtern:Z

.field private mIsSetup:Z

.field private mIsShowHelpInfo:Z

.field private mIsStartFingerprint:Z

.field private mNeedToManager:Z

.field private mNextInputStep:I

.field private mOkButton:Landroid/view/View;

.field private mOnInputFailedAlertDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mProgress:I

.field private final mShowDialogToAddFaceRunnable:Ljava/lang/Runnable;

.field private mShowGxzw:Z

.field private mStartEnrolling:Z

.field private mStepView:Landroid/widget/ImageView;

.field private mTotalStepNum:I

.field private mUiMode:I

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public static synthetic $r8$lambda$MLsNZi0RFmcwRFk_QPKkxhdfVBM(Lmiuix/appcompat/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/GxzwNewFingerprintFragment;->lambda$showGxzwGuideDialog$0(Lmiuix/appcompat/app/AlertDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/app/Activity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCancelButton(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/widget/ImageButton;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mCancelButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmChallengeToken(Lcom/android/settings/GxzwNewFingerprintFragment;)[B
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mChallengeToken:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentShowingDialog(Lcom/android/settings/GxzwNewFingerprintFragment;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mCurrentShowingDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnrollFailNewEffectId(Lcom/android/settings/GxzwNewFingerprintFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mEnrollFailNewEffectId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnrollFailRtpEffectId(Lcom/android/settings/GxzwNewFingerprintFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mEnrollFailRtpEffectId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnrollHelpInfoText(Lcom/android/settings/GxzwNewFingerprintFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mEnrollHelpInfoText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnrollSuccessNewEffectId(Lcom/android/settings/GxzwNewFingerprintFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mEnrollSuccessNewEffectId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnrollSuccessRtpEffectId(Lcom/android/settings/GxzwNewFingerprintFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mEnrollSuccessRtpEffectId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFingerprintAddistener(Lcom/android/settings/GxzwNewFingerprintFragment;)Lcom/android/settings/FingerprintAddListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mFingerprintAddistener:Lcom/android/settings/FingerprintAddListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFingerprintHelper(Lcom/android/settings/GxzwNewFingerprintFragment;)Lcom/android/settings/FingerprintHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFingerprintName(Lcom/android/settings/GxzwNewFingerprintFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mFingerprintName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInputStep(Lcom/android/settings/GxzwNewFingerprintFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mInputStep:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInstructionIndicate(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mInstructionIndicate:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInstructionText(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mInstructionText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInstructionTitle(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mInstructionTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIntentForExtern(Lcom/android/settings/GxzwNewFingerprintFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mIntentForExtern:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsShowHelpInfo(Lcom/android/settings/GxzwNewFingerprintFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mIsShowHelpInfo:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsStartFingerprint(Lcom/android/settings/GxzwNewFingerprintFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mIsStartFingerprint:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedToManager(Lcom/android/settings/GxzwNewFingerprintFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mNeedToManager:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNextInputStep(Lcom/android/settings/GxzwNewFingerprintFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mNextInputStep:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOkButton(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mOkButton:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnInputFailedAlertDialog(Lcom/android/settings/GxzwNewFingerprintFragment;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mOnInputFailedAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgress(Lcom/android/settings/GxzwNewFingerprintFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mProgress:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShowDialogToAddFaceRunnable(Lcom/android/settings/GxzwNewFingerprintFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mShowDialogToAddFaceRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartEnrolling(Lcom/android/settings/GxzwNewFingerprintFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mStartEnrolling:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStepView(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mStepView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTotalStepNum(Lcom/android/settings/GxzwNewFingerprintFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mTotalStepNum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentShowingDialog(Lcom/android/settings/GxzwNewFingerprintFragment;Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mCurrentShowingDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEnrollHelpInfoText(Lcom/android/settings/GxzwNewFingerprintFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mEnrollHelpInfoText:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFailTime(Lcom/android/settings/GxzwNewFingerprintFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mFailTime:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFingerprintName(Lcom/android/settings/GxzwNewFingerprintFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mFingerprintName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIdOfFingerprintWithoutName(Lcom/android/settings/GxzwNewFingerprintFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mIdOfFingerprintWithoutName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInputStep(Lcom/android/settings/GxzwNewFingerprintFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mInputStep:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsShowHelpInfo(Lcom/android/settings/GxzwNewFingerprintFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mIsShowHelpInfo:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsStartFingerprint(Lcom/android/settings/GxzwNewFingerprintFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mIsStartFingerprint:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNextInputStep(Lcom/android/settings/GxzwNewFingerprintFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mNextInputStep:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOnInputFailedAlertDialog(Lcom/android/settings/GxzwNewFingerprintFragment;Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mOnInputFailedAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProgress(Lcom/android/settings/GxzwNewFingerprintFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mProgress:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStartEnrolling(Lcom/android/settings/GxzwNewFingerprintFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mStartEnrolling:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTotalStepNum(Lcom/android/settings/GxzwNewFingerprintFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mTotalStepNum:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckIfShowGxzwGuide(Lcom/android/settings/GxzwNewFingerprintFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/GxzwNewFingerprintFragment;->checkIfShowGxzwGuide()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdismissAlertDialog(Lcom/android/settings/GxzwNewFingerprintFragment;Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/GxzwNewFingerprintFragment;->dismissAlertDialog(Lmiuix/appcompat/app/AlertDialog;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideNavigationBar(Lcom/android/settings/GxzwNewFingerprintFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/GxzwNewFingerprintFragment;->hideNavigationBar()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misDeviceProvisioned(Lcom/android/settings/GxzwNewFingerprintFragment;Landroid/content/Context;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/GxzwNewFingerprintFragment;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mperformExtHapticFeedback(Lcom/android/settings/GxzwNewFingerprintFragment;III)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/GxzwNewFingerprintFragment;->performExtHapticFeedback(III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mplayStepAnimation(Lcom/android/settings/GxzwNewFingerprintFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/GxzwNewFingerprintFragment;->playStepAnimation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseFingerprintHelper(Lcom/android/settings/GxzwNewFingerprintFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/GxzwNewFingerprintFragment;->releaseFingerprintHelper()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetContentDescription(Lcom/android/settings/GxzwNewFingerprintFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/GxzwNewFingerprintFragment;->setContentDescription(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowGxzwGuideDialog(Lcom/android/settings/GxzwNewFingerprintFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/GxzwNewFingerprintFragment;->showGxzwGuideDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowGxzwTips(Lcom/android/settings/GxzwNewFingerprintFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/GxzwNewFingerprintFragment;->showGxzwTips(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowGxzwUserNotice(Lcom/android/settings/GxzwNewFingerprintFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/GxzwNewFingerprintFragment;->showGxzwUserNotice()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateNeedShowGxzwGuide(Lcom/android/settings/GxzwNewFingerprintFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/GxzwNewFingerprintFragment;->updateNeedShowGxzwGuide(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mvibrateDoubleClick(Lcom/android/settings/GxzwNewFingerprintFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/GxzwNewFingerprintFragment;->vibrateDoubleClick()V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 56
    invoke-direct {p0}, Lcom/android/settings/KeyguardBaseEditFragment;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    const/4 v1, 0x1

    .line 69
    iput v1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mInputStep:I

    const/4 v2, 0x0

    .line 71
    iput v2, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mProgress:I

    .line 72
    iput v2, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mTotalStepNum:I

    .line 73
    iput-boolean v2, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mIsStartFingerprint:Z

    .line 74
    iput-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mVibrator:Landroid/os/Vibrator;

    .line 83
    iput-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mOnInputFailedAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 84
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mHandler:Landroid/os/Handler;

    .line 85
    iput-boolean v2, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mStartEnrolling:Z

    .line 86
    iput v2, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mFailTime:I

    .line 90
    iput-boolean v2, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mIsShowHelpInfo:Z

    .line 93
    iput-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    const-string v3, ""

    .line 94
    iput-object v3, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mFingerprintName:Ljava/lang/String;

    .line 95
    iput-boolean v2, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mShowGxzw:Z

    .line 97
    iput-boolean v2, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mConfirmLockLaunched:Z

    .line 98
    iput-boolean v2, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mIsSetup:Z

    const/16 v3, 0xa8

    .line 99
    iput v3, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mEnrollSuccessRtpEffectId:I

    const/16 v3, 0xa5

    .line 100
    iput v3, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mEnrollFailRtpEffectId:I

    const/16 v3, 0xce

    .line 102
    iput v3, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mEnrollSuccessNewEffectId:I

    const/16 v3, 0xcf

    .line 103
    iput v3, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mEnrollFailNewEffectId:I

    .line 106
    iput v2, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mUiMode:I

    .line 107
    iput-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mCurrentShowingDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 161
    iput-boolean v2, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mIntentForExtern:Z

    const-string v0, "android.app.fod.ICallback"

    .line 286
    iput-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->GXZW_SERVICE_NAME:Ljava/lang/String;

    .line 287
    iput-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->INTERFACE_DESCRIPTOR:Ljava/lang/String;

    .line 288
    iput v1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->CODE_PROCESS_CMD:I

    const/16 v0, 0x65

    .line 289
    iput v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->CMD_ADD_SHOW:I

    const/16 v0, 0x66

    .line 290
    iput v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->CMD_ADD_DISMISS:I

    .line 447
    new-instance v0, Lcom/android/settings/GxzwNewFingerprintFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/GxzwNewFingerprintFragment$3;-><init>(Lcom/android/settings/GxzwNewFingerprintFragment;)V

    iput-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mShowDialogToAddFaceRunnable:Ljava/lang/Runnable;

    .line 456
    new-instance v0, Lcom/android/settings/GxzwNewFingerprintFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/GxzwNewFingerprintFragment$4;-><init>(Lcom/android/settings/GxzwNewFingerprintFragment;)V

    iput-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mFingerprintAddistener:Lcom/android/settings/FingerprintAddListener;

    return-void
.end method

.method private checkIfShowGxzwGuide()V
    .locals 1

    .line 728
    new-instance v0, Lcom/android/settings/GxzwNewFingerprintFragment$10;

    invoke-direct {v0, p0}, Lcom/android/settings/GxzwNewFingerprintFragment$10;-><init>(Lcom/android/settings/GxzwNewFingerprintFragment;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 750
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private checkIfShowUserNotice()V
    .locals 1

    .line 653
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 654
    invoke-direct {p0}, Lcom/android/settings/GxzwNewFingerprintFragment;->checkIfShowGxzwGuide()V

    goto :goto_0

    .line 657
    :cond_0
    new-instance v0, Lcom/android/settings/GxzwNewFingerprintFragment$6;

    invoke-direct {v0, p0}, Lcom/android/settings/GxzwNewFingerprintFragment$6;-><init>(Lcom/android/settings/GxzwNewFingerprintFragment;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 678
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method private dismissAlertDialog(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 647
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 648
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private generateStepResource()I
    .locals 3

    .line 430
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget v1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mInputStep:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "scan_output_%02d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 431
    iget-object v1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 432
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v2, "drawable"

    invoke-virtual {p0, v0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private gxzwCallBack(II)I
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mGxzwService:Landroid/os/IBinder;

    const-string v1, "android.app.fod.ICallback"

    if-nez v0, :cond_0

    .line 295
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mGxzwService:Landroid/os/IBinder;

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mGxzwService:Landroid/os/IBinder;

    if-nez v0, :cond_1

    goto :goto_0

    .line 299
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 302
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mGxzwService:Landroid/os/IBinder;

    const/4 p2, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, p2, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 306
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 307
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 312
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    const/4 p1, 0x0

    .line 309
    :try_start_1
    iput-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mGxzwService:Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 312
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :goto_0
    const/4 p0, -0x1

    :goto_1
    return p0

    .line 311
    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 312
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 313
    throw p0
.end method

.method private hideNavigationBar()V
    .locals 1

    .line 246
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x1302

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 1

    .line 834
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

.method private static synthetic lambda$showGxzwGuideDialog$0(Lmiuix/appcompat/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 0

    .line 786
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    sget p1, Lcom/android/settings/R$id;->alertTitle:I

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 788
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_0
    return-void
.end method

.method private performExtHapticFeedback(III)V
    .locals 2

    .line 824
    sget-boolean v0, Lcom/android/settings/utils/FingerprintUtils;->IS_SUPPORT_NEW_HAPTIC_VERSION:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, p1}, Lmiui/util/HapticFeedbackUtil;->isSupportExtHapticFeedback(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p0, p1, v1}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(IZ)Z

    goto :goto_0

    .line 826
    :cond_0
    sget-boolean p1, Lcom/android/settings/utils/FingerprintUtils;->IS_SUPPORT_LINEAR_MOTOR_VIBRATE:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p1, p2}, Lmiui/util/HapticFeedbackUtil;->isSupportExtHapticFeedback(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 827
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p0, p2, v1}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(IZ)Z

    goto :goto_0

    :cond_1
    if-lez p3, :cond_2

    .line 828
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mVibrator:Landroid/os/Vibrator;

    if-eqz p0, :cond_2

    int-to-long p1, p3

    .line 829
    invoke-virtual {p0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method private playStepAnimation()V
    .locals 2

    .line 437
    invoke-direct {p0}, Lcom/android/settings/GxzwNewFingerprintFragment;->generateStepResource()I

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mStepView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 440
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mStepView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 441
    instance-of v0, p0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 442
    check-cast p0, Landroid/graphics/drawable/Animatable;

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_0
    return-void
.end method

.method private releaseFingerprintHelper()V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->cancelEnrol()V

    const/4 v0, 0x0

    .line 348
    iput-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    :cond_0
    return-void
.end method

.method private saveFingerprintname()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mFingerprintName:Ljava/lang/String;

    .line 155
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mIdOfFingerprintWithoutName:Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lcom/android/settings/utils/FingerprintUtils;->setFingerprintName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setContentDescription(Ljava/lang/String;)V
    .locals 2

    .line 638
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/GxzwNewFingerprintFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/GxzwNewFingerprintFragment$5;-><init>(Lcom/android/settings/GxzwNewFingerprintFragment;Ljava/lang/String;)V

    const-wide/16 p0, 0x64

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showGxzwGuideDialog()V
    .locals 4

    .line 754
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 758
    :cond_0
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    sget v2, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight:I

    invoke-direct {v1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 759
    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 760
    sget v2, Lcom/android/settings/R$string;->gxzw_dialog_title:I

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 761
    sget v2, Lcom/android/settings/R$string;->gxzw_dialog_message:I

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 762
    sget v2, Lcom/android/settings/R$string;->gxzw_dialog_ok:I

    new-instance v3, Lcom/android/settings/GxzwNewFingerprintFragment$11;

    invoke-direct {v3, p0}, Lcom/android/settings/GxzwNewFingerprintFragment$11;-><init>(Lcom/android/settings/GxzwNewFingerprintFragment;)V

    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 771
    iget-object v2, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    sget v3, Lcom/android/settings/R$string;->gxzw_dialog_not_show_again:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 772
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v1

    .line 773
    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog;->setEnableImmersive(Z)V

    .line 774
    new-instance v0, Lcom/android/settings/GxzwNewFingerprintFragment$12;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/GxzwNewFingerprintFragment$12;-><init>(Lcom/android/settings/GxzwNewFingerprintFragment;Lmiuix/appcompat/app/AlertDialog;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 785
    new-instance v0, Lcom/android/settings/GxzwNewFingerprintFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lcom/android/settings/GxzwNewFingerprintFragment$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/app/AlertDialog;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 791
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 792
    iput-object v1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mCurrentShowingDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private showGxzwTips(Z)V
    .locals 1

    .line 281
    iput-boolean p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mShowGxzw:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x65

    goto :goto_0

    :cond_0
    const/16 p1, 0x66

    :goto_0
    const/4 v0, 0x0

    .line 282
    invoke-direct {p0, p1, v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->gxzwCallBack(II)I

    return-void
.end method

.method private showGxzwUserNotice()V
    .locals 6

    .line 683
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 687
    :cond_0
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    sget v2, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight:I

    invoke-direct {v1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 688
    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->finger_add_user_info_dialog_title:I

    .line 689
    invoke-virtual {v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->finger_add_user_info_dialog_next:I

    new-instance v4, Lcom/android/settings/GxzwNewFingerprintFragment$9;

    invoke-direct {v4, p0}, Lcom/android/settings/GxzwNewFingerprintFragment$9;-><init>(Lcom/android/settings/GxzwNewFingerprintFragment;)V

    .line 690
    invoke-virtual {v2, v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->finger_add_user_info_dialog_cancel:I

    new-instance v4, Lcom/android/settings/GxzwNewFingerprintFragment$8;

    invoke-direct {v4, p0}, Lcom/android/settings/GxzwNewFingerprintFragment$8;-><init>(Lcom/android/settings/GxzwNewFingerprintFragment;)V

    .line 703
    invoke-virtual {v2, v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/GxzwNewFingerprintFragment$7;

    invoke-direct {v3, p0}, Lcom/android/settings/GxzwNewFingerprintFragment$7;-><init>(Lcom/android/settings/GxzwNewFingerprintFragment;)V

    .line 711
    invoke-virtual {v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 719
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->finger_add_user_info_dialog_message:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 720
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<br><br>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/settings/R$string;->view_fingerprint_privacy_policy:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 721
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v1

    .line 722
    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog;->setEnableImmersive(Z)V

    .line 723
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 724
    iput-object v1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mCurrentShowingDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private updateNeedShowGxzwGuide(Z)V
    .locals 1

    .line 796
    new-instance v0, Lcom/android/settings/GxzwNewFingerprintFragment$13;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/GxzwNewFingerprintFragment$13;-><init>(Lcom/android/settings/GxzwNewFingerprintFragment;Z)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 808
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private vibrateDoubleClick()V
    .locals 2

    .line 818
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mVibrator:Landroid/os/Vibrator;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [J

    .line 819
    fill-array-data v0, :array_0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x3c
        0x3c
        0x3c
    .end array-data
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 260
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/KeyguardBaseEditFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p2, 0x1

    .line 264
    iput-boolean p2, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mStartEnrolling:Z

    const-string p2, "hw_auth_token"

    .line 265
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mChallengeToken:[B

    .line 266
    iget-object p2, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    const-string/jumbo p3, "vibrator"

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Vibrator;

    iput-object p2, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mVibrator:Landroid/os/Vibrator;

    .line 267
    invoke-direct {p0}, Lcom/android/settings/GxzwNewFingerprintFragment;->checkIfShowUserNotice()V

    .line 268
    iget-boolean p2, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mIsSetup:Z

    if-eqz p2, :cond_2

    .line 269
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0xb

    if-ne p2, p1, :cond_1

    .line 272
    iget-boolean p2, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mIsSetup:Z

    if-eqz p2, :cond_1

    .line 273
    iget-object p2, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->setResult(I)V

    .line 275
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 111
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 113
    iput-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 119
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 120
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 122
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 839
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 840
    iget v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mUiMode:I

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v0, p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mCurrentShowingDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_0

    .line 841
    invoke-direct {p0, p1}, Lcom/android/settings/GxzwNewFingerprintFragment;->dismissAlertDialog(Lmiuix/appcompat/app/AlertDialog;)V

    .line 842
    invoke-direct {p0}, Lcom/android/settings/GxzwNewFingerprintFragment;->checkIfShowUserNotice()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 164
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 165
    sget v0, Lcom/android/settings/R$style;->Theme_Dark_Settings_NoTitle:I

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 167
    new-instance v0, Lcom/android/settings/FingerprintHelper;

    iget-object v1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/settings/FingerprintHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "add_keyguard_password_then_add_fingerprint"

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    const-string v5, "fingerprint_request_code"

    .line 171
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/16 v6, 0x65

    if-ne v5, v6, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    iput-boolean v5, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mIntentForExtern:Z

    .line 172
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mAddKeyguardpasswordThenAddFingerprint:Z

    const-string/jumbo v5, "need_to_manager"

    .line 173
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mNeedToManager:Z

    goto :goto_1

    .line 175
    :cond_1
    iput-boolean v3, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mIntentForExtern:Z

    .line 176
    iput-boolean v3, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mAddKeyguardpasswordThenAddFingerprint:Z

    .line 177
    iput-boolean v4, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mNeedToManager:Z

    :goto_1
    if-eqz p1, :cond_2

    const-string v5, "key_confirm_lock_launched"

    .line 181
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mConfirmLockLaunched:Z

    .line 184
    :cond_2
    iget-boolean p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mAddKeyguardpasswordThenAddFingerprint:Z

    if-eqz p1, :cond_3

    .line 185
    iput-boolean v4, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mStartEnrolling:Z

    const-string p1, "hw_auth_token"

    .line 186
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mChallengeToken:[B

    .line 187
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mVibrator:Landroid/os/Vibrator;

    .line 188
    invoke-direct {p0}, Lcom/android/settings/GxzwNewFingerprintFragment;->checkIfShowUserNotice()V

    goto/16 :goto_6

    .line 189
    :cond_3
    iget-boolean p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mConfirmLockLaunched:Z

    if-nez p1, :cond_b

    if-eqz v0, :cond_4

    const-string/jumbo p1, "setup"

    .line 190
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v4

    goto :goto_2

    :cond_4
    move p1, v3

    :goto_2
    iput-boolean p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mIsSetup:Z

    .line 191
    new-instance p1, Landroid/security/MiuiLockPatternUtils;

    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 192
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/security/MiuiLockPatternUtils;->getActivePasswordQuality(I)I

    move-result p1

    .line 193
    iget-boolean v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mIsSetup:Z

    const/16 v5, 0x64

    const-string v6, "has_challenge"

    if-eqz v0, :cond_7

    if-eqz p1, :cond_5

    .line 195
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->finish()V

    goto/16 :goto_6

    .line 198
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/GxzwNewFingerprintFragment;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-class p1, Lcom/android/settings/SetUpMiuiSecurityChooseUnlock$InternalActivity;

    goto :goto_3

    :cond_6
    const-class p1, Lcom/android/settings/ProvisionSetUpMiuiSecurityChooseUnlock$InternalActivity;

    .line 200
    :goto_3
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 202
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0, v0, v5}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_6

    :cond_7
    if-eqz p1, :cond_9

    const/high16 v0, 0x10000

    if-ne p1, v0, :cond_8

    .line 209
    const-class p1, Lcom/android/settings/ConfirmLockPattern$InternalActivity;

    goto :goto_4

    .line 211
    :cond_8
    const-class p1, Lcom/android/settings/ConfirmLockPassword$InternalActivity;

    goto :goto_4

    .line 207
    :cond_9
    const-class p1, Lcom/android/settings/MiuiSecurityChooseUnlock$InternalActivity;

    .line 216
    :goto_4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_a

    .line 217
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_5

    .line 219
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 220
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "com.android.settings.ConfirmLockPattern.header"

    .line 221
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 222
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x106000b    # @android:color/white

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const-string v7, "com.android.settings.titleColor"

    invoke-virtual {v0, v7, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v7, Lcom/android/settings/R$color;->set_second_space_background:I

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const-string v7, "com.android.settings.bgColor"

    invoke-virtual {v0, v7, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.android.settings.lockBtnWhite"

    .line 224
    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 225
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const-string v7, "com.android.settings.forgetPatternColor"

    invoke-virtual {v0, v7, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 226
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const-string v2, "com.android.settings.footerTextColor"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.android.settings.forgetPassword"

    .line 227
    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object v0, v1

    .line 229
    :goto_5
    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p1, "show_add_fingerprint_hint"

    .line 230
    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, ":android:show_fragment_title"

    .line 231
    sget v1, Lcom/android/settings/R$string;->empty_title:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0, v0, v5}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 233
    iput-boolean v4, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mConfirmLockLaunched:Z

    .line 237
    :cond_b
    :goto_6
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 238
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 239
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 240
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x8000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 241
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 242
    new-instance p1, Lmiui/util/HapticFeedbackUtil;

    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, v3}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 341
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onDetach()V

    const/4 v0, 0x0

    .line 342
    iput-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 354
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/BaseFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 355
    iget-boolean p3, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mIsSetup:Z

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/settings/GxzwNewFingerprintFragment;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_0

    sget p3, Lcom/android/settings/R$layout;->setup_gxzw_new_fingerprint:I

    goto :goto_0

    :cond_0
    sget p3, Lcom/android/settings/R$layout;->provision_setup_gxzw_new_fingerprint:I

    goto :goto_0

    .line 356
    :cond_1
    sget p3, Lcom/android/settings/R$layout;->gxzw_new_fingerprint:I

    :goto_0
    const/4 v0, 0x0

    .line 355
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mContentView:Landroid/view/View;

    .line 358
    sget p2, Lcom/android/settings/R$id;->new_fingerprint_top_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mInstructionTitle:Landroid/widget/TextView;

    .line 359
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mContentView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->new_fingerprint_top_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mInstructionText:Landroid/widget/TextView;

    .line 360
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mContentView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->gxzw_new_fingerprint_indicate:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mInstructionIndicate:Landroid/widget/TextView;

    .line 361
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mContentView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->fingerprint_step_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mStepView:Landroid/widget/ImageView;

    .line 363
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mInstructionTitle:Landroid/widget/TextView;

    sget p2, Lcom/android/settings/R$string;->gxzw_add_fingerprint_title:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 364
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mInstructionText:Landroid/widget/TextView;

    sget p2, Lcom/android/settings/R$string;->gxzw_add_fingerprint_message:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 365
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mContentView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->gxzw_new_fingerprint_ok:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mOkButton:Landroid/view/View;

    .line 366
    new-instance p1, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mCancelButton:Landroid/widget/ImageButton;

    .line 368
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mOkButton:Landroid/view/View;

    new-instance p2, Lcom/android/settings/GxzwNewFingerprintFragment$1;

    invoke-direct {p2, p0}, Lcom/android/settings/GxzwNewFingerprintFragment$1;-><init>(Lcom/android/settings/GxzwNewFingerprintFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mCancelButton:Landroid/widget/ImageButton;

    new-instance p2, Lcom/android/settings/GxzwNewFingerprintFragment$2;

    invoke-direct {p2, p0}, Lcom/android/settings/GxzwNewFingerprintFragment$2;-><init>(Lcom/android/settings/GxzwNewFingerprintFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mCancelButton:Landroid/widget/ImageButton;

    sget p2, Lcom/android/settings/R$string;->add_fingerprint_cancel_button_text:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string/jumbo p1, "persist.sys.fp.fod.location.X_Y"

    const-string p2, ""

    .line 393
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 394
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 395
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/utils/MiuiGxzwUtils;->caculateGxzwIconSize(Landroid/content/Context;)V

    .line 396
    sget p1, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_ICON_Y:I

    goto :goto_2

    .line 399
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 401
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    move p1, v0

    :goto_2
    if-nez p1, :cond_4

    .line 405
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mInstructionIndicate:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_3

    .line 407
    :cond_4
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p3, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mInstructionIndicate:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    iget-object p3, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/android/settings/R$dimen;->gxzw_new_fingerprint_indicate_margin:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    sub-int/2addr p1, p3

    invoke-virtual {p2, v0, p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 410
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mInstructionIndicate:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    :goto_3
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public onPause()V
    .locals 2

    .line 129
    iget-boolean v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mStartEnrolling:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mStartEnrolling:Z

    .line 131
    invoke-direct {p0}, Lcom/android/settings/GxzwNewFingerprintFragment;->releaseFingerprintHelper()V

    .line 132
    iget-object v1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mOnInputFailedAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-direct {p0, v1}, Lcom/android/settings/GxzwNewFingerprintFragment;->dismissAlertDialog(Lmiuix/appcompat/app/AlertDialog;)V

    .line 133
    invoke-direct {p0, v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->showGxzwTips(Z)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->finish()V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mIdOfFingerprintWithoutName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 138
    invoke-direct {p0}, Lcom/android/settings/GxzwNewFingerprintFragment;->saveFingerprintname()V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mShowDialogToAddFaceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 141
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 146
    invoke-super {p0}, Lcom/android/settings/KeyguardBaseEditFragment;->onResume()V

    .line 147
    iget-boolean v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mStartEnrolling:Z

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/android/settings/GxzwNewFingerprintFragment;->hideNavigationBar()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 254
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "key_confirm_lock_launched"

    .line 255
    iget-boolean p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mConfirmLockLaunched:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 320
    invoke-super {p0}, Lcom/android/settings/BaseEditFragment;->onStart()V

    .line 321
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 325
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(I)V

    .line 326
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    .line 327
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    const/4 v1, 0x0

    .line 328
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 329
    iget-boolean v2, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mIsSetup:Z

    if-eqz v2, :cond_1

    .line 330
    iget-object v1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mCancelButton:Landroid/widget/ImageButton;

    sget v2, Lcom/android/settings/R$drawable;->miuix_appcompat_action_bar_back_dark:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 331
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mCancelButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/ActionBar;->setStartView(Landroid/view/View;)V

    goto :goto_0

    .line 333
    :cond_1
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setStartView(Landroid/view/View;)V

    .line 334
    iget-object v1, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mCancelButton:Landroid/widget/ImageButton;

    sget v2, Lcom/android/settings/R$drawable;->miuix_appcompat_action_mode_title_button_cancel_dark:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 335
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment;->mCancelButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    :goto_0
    return-void
.end method
