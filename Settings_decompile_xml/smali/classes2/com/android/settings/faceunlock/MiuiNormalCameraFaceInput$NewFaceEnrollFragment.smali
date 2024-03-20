.class public Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;
.super Lcom/android/settings/BaseEditFragment;
.source "MiuiNormalCameraFaceInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewFaceEnrollFragment"
.end annotation


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field private mBackImage:Landroid/widget/LinearLayout;

.field private mCameraPreviewCoverdView:Lcom/android/settings/faceunlock/CameraPreviewCoverdView;

.field private mCameraPrviewCircleRadius:F

.field protected mContentView:Landroid/view/View;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field mEnrollCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

.field private mEnrollSuggestionDetectEnd:F

.field private mEnrollSuggestionDetectRepeatEnd:F

.field private mFaceCameraPreviewCoverAnimation:Landroid/animation/ValueAnimator;

.field private mFaceDetectAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mFaceDetectAnimator:Landroid/animation/ValueAnimator;

.field private mFaceDetectView:Lcom/android/settings/faceunlock/FaceDetectView;

.field private mFaceEnrollFromNormal:Z

.field private mFaceEnrollSucceed:Z

.field private mFaceEnrollSuccessView:Lcom/android/settings/faceunlock/FaceEnrollSuccessView;

.field private mFaceInputCameraPreview:Landroid/view/SurfaceView;

.field private mFaceInputFirstSuggestion:Landroid/widget/TextView;

.field private mFaceInputNextOrSuccessButton:Landroid/widget/Button;

.field private mFaceInputProgressAnimation:Landroid/animation/ValueAnimator;

.field private mFaceInputProgressView:Lcom/android/settings/faceunlock/FaceInputProgressView;

.field private mFaceInputSuccessMsg:Landroid/widget/TextView;

.field private mFaceInputSuccessTitle:Landroid/widget/TextView;

.field private mFaceInputSuccessVideo:Landroid/view/TextureView;

.field private mFaceInputSuggestionVideo:Landroid/view/TextureView;

.field private mFaceInputSuggestionVideoImage:Landroid/widget/ImageView;

.field private mFaceInputTitle:Landroid/widget/TextView;

.field private mFacePreviewSurface:Landroid/view/Surface;

.field private mFaceUnlockManager:Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

.field private mFinishFaceSuggestion:Z

.field private mHasClickNextBtn:Z

.field private mHasClickStartAddBtn:Z

.field private mLastAnnounceTime:J

.field private mMainHandler:Landroid/os/Handler;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mRiskWarningDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mSltObserver:Landroid/database/ContentObserver;

.field private final mStartFaceInput:Ljava/lang/Runnable;

.field private final mStartFaceSuggestionVideo:Ljava/lang/Runnable;

.field private surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;


# direct methods
.method public static synthetic $r8$lambda$aKgQW8TeavPvwejW6zTt0XhTb64(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->lambda$onPause$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$fMUrH3lVCpUgYNeGC6xctQMoYrY(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->lambda$startFaceInputSuccessAnimation$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$lveqH_oGfyVLbxyNMTrUr_Y_rcE(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;Landroid/graphics/RectF;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->lambda$startEnrollFace$1(Landroid/graphics/RectF;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCameraPreviewCoverdView(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)Lcom/android/settings/faceunlock/CameraPreviewCoverdView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mCameraPreviewCoverdView:Lcom/android/settings/faceunlock/CameraPreviewCoverdView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCountdownTimer(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)Landroid/os/CountDownTimer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFaceDetectView(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)Lcom/android/settings/faceunlock/FaceDetectView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceDetectView:Lcom/android/settings/faceunlock/FaceDetectView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFaceEnrollSucceed(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceEnrollSucceed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFaceEnrollSuccessView(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)Lcom/android/settings/faceunlock/FaceEnrollSuccessView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceEnrollSuccessView:Lcom/android/settings/faceunlock/FaceEnrollSuccessView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFaceInputFirstSuggestion(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputFirstSuggestion:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFaceInputNextOrSuccessButton(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)Landroid/widget/Button;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputNextOrSuccessButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFaceInputProgressView(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)Lcom/android/settings/faceunlock/FaceInputProgressView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputProgressView:Lcom/android/settings/faceunlock/FaceInputProgressView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFaceInputSuccessVideo(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)Landroid/view/TextureView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputSuccessVideo:Landroid/view/TextureView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFaceInputSuggestionVideo(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)Landroid/view/TextureView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputSuggestionVideo:Landroid/view/TextureView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFaceInputTitle(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFinishFaceSuggestion(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFinishFaceSuggestion:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasClickNextBtn(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mHasClickNextBtn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasClickStartAddBtn(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mHasClickStartAddBtn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMediaPlayer(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)Landroid/media/MediaPlayer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCountdownTimer(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;Landroid/os/CountDownTimer;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFaceEnrollSucceed(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceEnrollSucceed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHasClickNextBtn(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mHasClickNextBtn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHasClickStartAddBtn(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mHasClickStartAddBtn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$menterFaceInputStepAnimation(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->enterFaceInputStepAnimation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$menterFaceSuggestionStepAnimation(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->enterFaceSuggestionStepAnimation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$menterRiskWarningDialog(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->enterRiskWarningDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrepeatFaceDetectRectAnimation(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;FFI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->repeatFaceDetectRectAnimation(FFI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetContentDescription(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->setContentDescription(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartFaceInputProgressAnimation(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->startFaceInputProgressAnimation(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartFaceInputSuccessAnimation(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->startFaceInputSuccessAnimation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFaceErrorInfo(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->updateFaceErrorInfo(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFaceHelpInfo(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->updateFaceHelpInfo(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFaceUnlockSuccessView(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->updateFaceUnlockSuccessView()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 116
    invoke-direct {p0}, Lcom/android/settings/BaseEditFragment;-><init>()V

    const-wide/16 v0, 0x0

    .line 142
    iput-wide v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mLastAnnounceTime:J

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mActivity:Landroid/app/Activity;

    .line 150
    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mRiskWarningDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 153
    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mSltObserver:Landroid/database/ContentObserver;

    .line 435
    new-instance v0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$8;

    invoke-direct {v0, p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$8;-><init>(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)V

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 571
    new-instance v0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$13;

    invoke-direct {v0, p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$13;-><init>(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)V

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mEnrollCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    .line 881
    new-instance v0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$23;

    invoke-direct {v0, p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$23;-><init>(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)V

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mStartFaceInput:Ljava/lang/Runnable;

    .line 888
    new-instance v0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$24;

    invoke-direct {v0, p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$24;-><init>(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)V

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mStartFaceSuggestionVideo:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;I)V
    .locals 0

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/settings/BaseFragment;->setResult(I)V

    return-void
.end method

.method private enterFaceInputStepAnimation()V
    .locals 12

    .line 475
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceDetectAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x1

    .line 478
    iput-boolean v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFinishFaceSuggestion:Z

    .line 479
    iget-object v1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputSuggestionVideoImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    const/4 v1, 0x2

    new-array v3, v1, [F

    .line 481
    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceDetectAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xe6

    .line 482
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 483
    iget-object v3, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceDetectAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$10;

    invoke-direct {v4, p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$10;-><init>(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 490
    iget-object v3, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceDetectAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const v7, 0x3f19999a    # 0.6f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 491
    iget-object v3, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceDetectAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 493
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 494
    iget-object v4, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputSuggestionVideo:Landroid/view/TextureView;

    new-array v9, v1, [F

    fill-array-data v9, :array_1

    const-string/jumbo v10, "scaleX"

    invoke-static {v4, v10, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 495
    iget-object v9, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputSuggestionVideo:Landroid/view/TextureView;

    new-array v10, v1, [F

    fill-array-data v10, :array_2

    const-string/jumbo v11, "scaleY"

    invoke-static {v9, v11, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v10, 0x14a

    .line 496
    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 497
    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 498
    new-instance v10, Landroid/view/animation/PathInterpolator;

    invoke-direct {v10, v5, v6, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v4, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 499
    new-instance v10, Landroid/view/animation/PathInterpolator;

    invoke-direct {v10, v5, v6, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v9, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 500
    iget-object v5, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputSuggestionVideo:Landroid/view/TextureView;

    new-array v7, v1, [F

    fill-array-data v7, :array_3

    const-string v8, "alpha"

    invoke-static {v5, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v7, 0xb7

    .line 501
    invoke-virtual {v5, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 502
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 503
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 504
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 506
    iget-object v3, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputCameraPreview:Landroid/view/SurfaceView;

    invoke-virtual {v3, v6}, Landroid/view/SurfaceView;->setAlpha(F)V

    new-array v3, v1, [F

    aput v6, v3, v2

    .line 507
    iget v2, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mCameraPrviewCircleRadius:F

    aput v2, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceCameraPreviewCoverAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x212

    .line 508
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 509
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceCameraPreviewCoverAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$11;

    invoke-direct {v2, p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$11;-><init>(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 516
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceCameraPreviewCoverAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x23

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 517
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceCameraPreviewCoverAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    new-array v0, v1, [F

    .line 519
    fill-array-data v0, :array_4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputProgressAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    .line 520
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 521
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputProgressAnimation:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$12;

    invoke-direct {v3, p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$12;-><init>(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 528
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputProgressAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 529
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputProgressAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 530
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputProgressAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 533
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mStartFaceInput:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 534
    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isPad()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceDetectView:Lcom/android/settings/faceunlock/FaceDetectView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 536
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->miui_face_detect_view_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 537
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->miui_face_detect_view_margin_end:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 538
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceDetectView:Lcom/android/settings/faceunlock/FaceDetectView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3e8e5604    # 0.278f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3e8e5604    # 0.278f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private enterFaceSuggestionStepAnimation()V
    .locals 11

    .line 455
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputSuggestionVideoImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$raw;->miui_face_input_suggestion_video:I

    invoke-static {v1, v2}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->getFirstFrameOfVideo(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 456
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputSuggestionVideo:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setAlpha(F)V

    const/4 v3, 0x0

    .line 458
    iget v6, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mEnrollSuggestionDetectEnd:F

    const/16 v5, 0x1f4

    iget v7, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mEnrollSuggestionDetectRepeatEnd:F

    const/16 v8, 0x4b0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    move v4, v6

    invoke-direct/range {v2 .. v10}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->faceDetectRectAnimation(FFIFFIZF)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 459
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceDetectAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 460
    sget-object v1, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->SLOWDOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 461
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceDetectAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 462
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceDetectAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$9;

    invoke-direct {v3, p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$9;-><init>(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 469
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceDetectAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 471
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mStartFaceSuggestionVideo:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private enterRiskWarningDialog()V
    .locals 10

    .line 263
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 264
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 265
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_0

    sget v3, Lcom/android/settings/R$string;->miui_face_enroll_risk_warning_title_text:I

    goto :goto_0

    .line 266
    :cond_0
    sget v3, Lcom/android/settings/R$string;->miui_face_enroll_risk_warning_title_text_cn:I

    .line 265
    :goto_0
    invoke-virtual {v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 267
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_1

    sget v3, Lcom/android/settings/R$string;->face_data_suggesstion_first:I

    goto :goto_1

    .line 268
    :cond_1
    sget v3, Lcom/android/settings/R$string;->face_data_suggesstion_first_cn:I

    .line 267
    :goto_1
    invoke-virtual {v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->face_data_introduction_next:I

    new-instance v4, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$4;

    invoke-direct {v4, p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$4;-><init>(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)V

    .line 269
    invoke-virtual {v2, v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->miui_face_enroll_risk_warning_btn_cancel:I

    new-instance v4, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$3;

    invoke-direct {v4, p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$3;-><init>(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)V

    .line 282
    invoke-virtual {v2, v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 294
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mRiskWarningDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 295
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$layout;->miui_face_enroll_warning_dialog_highlight:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 297
    sget v2, Lcom/android/settings/R$id;->privacy_policy:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 298
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 299
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->view_face_privacy_policy:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 301
    iget-object v2, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mRiskWarningDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v2, v0}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mRiskWarningDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 304
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mRiskWarningDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v9

    .line 305
    invoke-virtual {v9, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 306
    new-instance v0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$5;

    const-wide/16 v5, 0x1388

    const-wide/16 v7, 0x3e8

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$5;-><init>(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;JJLandroid/widget/Button;)V

    .line 319
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private faceDetectRectAnimation(FFIFFIZF)V
    .locals 7

    .line 795
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceDetectAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 796
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 805
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceDetectAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p3

    .line 806
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 807
    iget-object p3, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceDetectAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$18;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p8

    move v4, p2

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$18;-><init>(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;FFFZ)V

    invoke-virtual {p3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 815
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceDetectAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$19;

    invoke-direct {p2, p0, p4, p5, p6}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$19;-><init>(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;FFI)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 833
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceDetectAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/PathInterpolator;

    const p3, 0x3f19999a    # 0.6f

    const/high16 p4, 0x3f800000    # 1.0f

    const/high16 p5, 0x3f000000    # 0.5f

    const/4 p6, 0x0

    invoke-direct {p2, p5, p6, p3, p4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 834
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceDetectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private getEnrollArea()Landroid/graphics/RectF;
    .locals 4

    .line 561
    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isPad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$integer;->normal_camera_face_enroll_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 563
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$integer;->normal_camera_face_enroll_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 564
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$integer;->normal_camera_face_enroll_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 565
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/android/settings/R$integer;->normal_camera_face_enroll_bottom:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 566
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v2, v2

    int-to-float p0, p0

    invoke-direct {v3, v0, v1, v2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v3

    .line 568
    :cond_0
    new-instance p0, Landroid/graphics/RectF;

    const/high16 v0, 0x43e60000    # 460.0f

    const v1, 0x44098000    # 550.0f

    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v3, 0x42dc0000    # 110.0f

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0
.end method

.method private getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 779
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputCameraPreview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputCameraPreview:Landroid/view/SurfaceView;

    .line 780
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 779
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 781
    iget-object v1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputCameraPreview:Landroid/view/SurfaceView;

    new-instance v2, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$17;

    invoke-direct {v2, p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$17;-><init>(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)V

    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputCameraPreview:Landroid/view/SurfaceView;

    .line 786
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object p0

    .line 781
    invoke-static {v1, v0, v2, p0}, Landroid/view/PixelCopy;->request(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$onPause$0()V
    .locals 0

    .line 394
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceUnlockManager:Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    invoke-virtual {p0}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->stopEnrollFace()V

    return-void
.end method

.method private synthetic lambda$startEnrollFace$1(Landroid/graphics/RectF;)V
    .locals 8

    .line 555
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceUnlockManager:Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFacePreviewSurface:Landroid/view/Surface;

    iget-object v3, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mEnrollCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    const/4 v4, 0x0

    const/4 v6, 0x1

    const v7, 0xea60

    move-object v5, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->startEnrollFace([BLandroid/view/Surface;Landroid/hardware/face/FaceManager$EnrollmentCallback;Landroid/graphics/RectF;Landroid/graphics/RectF;II)Z

    return-void
.end method

.method private synthetic lambda$startFaceInputSuccessAnimation$2()V
    .locals 0

    .line 773
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceUnlockManager:Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    invoke-virtual {p0}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->stopEnrollFace()V

    return-void
.end method

.method private registerSltChangeObserver()V
    .locals 3

    .line 324
    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->supportSlt()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mSltObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1

    .line 328
    new-instance v0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$6;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$6;-><init>(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mSltObserver:Landroid/database/ContentObserver;

    .line 342
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mSltObserver:Landroid/database/ContentObserver;

    invoke-static {v0, p0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->registerSltChangeObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private repeatFaceDetectRectAnimation(FFI)V
    .locals 2

    .line 838
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceDetectAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 839
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 p2, 0x2

    aput p1, v0, p2

    .line 841
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceDetectAnimator:Landroid/animation/ValueAnimator;

    int-to-long p2, p3

    .line 842
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 843
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceDetectAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$20;

    invoke-direct {p2, p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$20;-><init>(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 850
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceDetectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 851
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceDetectAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 852
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceDetectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private resetFaceEnrollAnimation()V
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 418
    iput-object v1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 421
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 422
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 423
    iput-object v1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceDetectAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 426
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 427
    iput-object v1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceDetectAnimator:Landroid/animation/ValueAnimator;

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputProgressAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 430
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 431
    iput-object v1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputProgressAnimation:Landroid/animation/ValueAnimator;

    :cond_3
    return-void
.end method

.method private setContentDescription(Ljava/lang/String;)V
    .locals 1

    .line 912
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 913
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private startFaceInputProgressAnimation(I)V
    .locals 2

    .line 718
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mBackImage:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v0, 0x168

    .line 719
    filled-new-array {p1, v0}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputProgressAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x4b0

    .line 720
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 721
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputProgressAnimation:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$14;

    invoke-direct {v0, p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$14;-><init>(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 731
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputProgressAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startFaceInputSuccessAnimation()V
    .locals 9

    .line 735
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputTitle:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 736
    invoke-direct {p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 738
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 739
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->getFaceInputRotation(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v7, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 740
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 741
    iget-object v1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceEnrollSuccessView:Lcom/android/settings/faceunlock/FaceEnrollSuccessView;

    invoke-virtual {v1, v0}, Lcom/android/settings/faceunlock/FaceEnrollSuccessView;->updateFaceBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 742
    iget v2, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mCameraPrviewCircleRadius:F

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceCameraPreviewCoverAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1e0

    .line 743
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 744
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceCameraPreviewCoverAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$15;

    invoke-direct {v1, p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$15;-><init>(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 751
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceCameraPreviewCoverAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$16;

    invoke-direct {v1, p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$16;-><init>(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 769
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceCameraPreviewCoverAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceUnlockManager:Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    new-instance v1, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->runOnFaceUnlockWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateFaceErrorInfo(I)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 710
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->finish()V

    :goto_0
    return-void
.end method

.method private updateFaceHelpInfo(I)V
    .locals 4

    const/16 v0, 0x21

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    .line 692
    sget p1, Lcom/android/settings/R$string;->structure_face_data_input_error_keep_inface:I

    goto :goto_0

    .line 688
    :pswitch_0
    sget p1, Lcom/android/settings/R$string;->face_unlock_reveal_mouth:I

    goto :goto_0

    .line 684
    :pswitch_1
    sget p1, Lcom/android/settings/R$string;->face_unlock_open_eye:I

    goto :goto_0

    .line 680
    :pswitch_2
    sget p1, Lcom/android/settings/R$string;->face_unlock_reveal_eye:I

    goto :goto_0

    .line 668
    :pswitch_3
    sget p1, Lcom/android/settings/R$string;->face_unlock_down:I

    goto :goto_0

    .line 664
    :pswitch_4
    sget p1, Lcom/android/settings/R$string;->face_unlock_rotated_right:I

    goto :goto_0

    .line 660
    :pswitch_5
    sget p1, Lcom/android/settings/R$string;->face_unlock_rise:I

    goto :goto_0

    .line 656
    :pswitch_6
    sget p1, Lcom/android/settings/R$string;->face_unlock_rotated_left:I

    goto :goto_0

    .line 652
    :pswitch_7
    sget p1, Lcom/android/settings/R$string;->face_unlock_offset_bottom:I

    goto :goto_0

    .line 648
    :pswitch_8
    sget p1, Lcom/android/settings/R$string;->face_unlock_offset_right:I

    goto :goto_0

    .line 644
    :pswitch_9
    sget p1, Lcom/android/settings/R$string;->face_unlock_offset_top:I

    goto :goto_0

    .line 640
    :pswitch_a
    sget p1, Lcom/android/settings/R$string;->face_unlock_offset_left:I

    goto :goto_0

    .line 636
    :pswitch_b
    sget p1, Lcom/android/settings/R$string;->face_unlock_stay_away_screen:I

    goto :goto_0

    .line 632
    :pswitch_c
    sget p1, Lcom/android/settings/R$string;->face_unlock_close_screen:I

    goto :goto_0

    .line 628
    :pswitch_d
    sget p1, Lcom/android/settings/R$string;->face_unlock_not_found:I

    goto :goto_0

    .line 672
    :pswitch_e
    sget p1, Lcom/android/settings/R$string;->face_unlock_quality:I

    goto :goto_0

    .line 620
    :cond_0
    sget p1, Lcom/android/settings/R$string;->structure_face_data_input_error_keep_inface:I

    .line 621
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mCameraPreviewCoverdView:Lcom/android/settings/faceunlock/CameraPreviewCoverdView;

    iget v1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mCameraPrviewCircleRadius:F

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->refreshCameraView(FZZZ)V

    .line 622
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputCameraPreview:Landroid/view/SurfaceView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setAlpha(F)V

    goto :goto_0

    .line 625
    :cond_1
    sget p1, Lcom/android/settings/R$string;->face_data_input_camera_fail:I

    goto :goto_0

    .line 676
    :cond_2
    sget p1, Lcom/android/settings/R$string;->structure_face_data_input_error_keep_inface:I

    :goto_0
    if-eqz p1, :cond_3

    .line 697
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 698
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mLastAnnounceTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x514

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 700
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->setContentDescription(Ljava/lang/String;)V

    .line 701
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mLastAnnounceTime:J

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x15
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateFaceUnlockSuccessView()V
    .locals 4

    .line 897
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputSuccessTitle:Landroid/widget/TextView;

    filled-new-array {v0}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IVisibleStyle;->setHide()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    sget-object v1, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->SHOW_ANIM_CONFING:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    invoke-interface {v0, v2}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    .line 898
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputSuccessTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->face_data_input_ok_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 899
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputSuccessMsg:Landroid/widget/TextView;

    filled-new-array {v0}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IVisibleStyle;->setHide()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    invoke-interface {v0, v2}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    .line 900
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputSuccessMsg:Landroid/widget/TextView;

    sget v2, Lcom/android/settings/R$string;->miui_face_enroll_success:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 901
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputNextOrSuccessButton:Landroid/widget/Button;

    filled-new-array {v0}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IVisibleStyle;->setHide()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    .line 902
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputNextOrSuccessButton:Landroid/widget/Button;

    sget v1, Lcom/android/settings/R$string;->face_data_input_ok:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 903
    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isPad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputNextOrSuccessButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 905
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$dimen;->miui_face_enroll_ok_button_bottom:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 906
    iget-object v1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputNextOrSuccessButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 908
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->setContentDescription(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 157
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 158
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 159
    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mActivity:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 165
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 166
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 168
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mActivity:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 175
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 176
    sget p1, Lcom/android/settings/R$style;->Theme_Dark_Settings_NoTitle:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 177
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->setActivityOrientationAccordingArgs(Landroid/app/Activity;)V

    .line 178
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mMainHandler:Landroid/os/Handler;

    .line 179
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceUnlockManager:Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    .line 180
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->setFaceEnrollViewStatus(Landroid/content/Context;Landroid/view/Window;)V

    .line 181
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 182
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 183
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v1, 0x4000000

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 185
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isInFullWindowGestureMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v1, 0x8000000

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "for_face_enroll_from_normal"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceEnrollFromNormal:Z

    if-nez p1, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->finish()V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 410
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    const/4 v0, 0x0

    .line 411
    iput-boolean v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFinishFaceSuggestion:Z

    .line 412
    iput-boolean v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceEnrollSucceed:Z

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 359
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onDetach()V

    const/4 v0, 0x0

    .line 360
    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 196
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/BaseFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 197
    sget p3, Lcom/android/settings/R$layout;->miui_face_enroll:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mContentView:Landroid/view/View;

    .line 198
    sget p2, Lcom/android/settings/R$id;->back_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mBackImage:Landroid/widget/LinearLayout;

    .line 199
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mContentView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->miui_face_input_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputTitle:Landroid/widget/TextView;

    .line 200
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mContentView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->miui_face_input_first_suggestion:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputFirstSuggestion:Landroid/widget/TextView;

    .line 201
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mContentView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->miui_face_input_camera_preview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceView;

    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputCameraPreview:Landroid/view/SurfaceView;

    .line 202
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mContentView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->miui_face_input_camera_preview_second_coverd:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;

    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mCameraPreviewCoverdView:Lcom/android/settings/faceunlock/CameraPreviewCoverdView;

    .line 203
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mContentView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->miui_face_input_suggestion_video_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputSuggestionVideoImage:Landroid/widget/ImageView;

    .line 204
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mContentView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->miui_face_input_suggestion_video:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputSuggestionVideo:Landroid/view/TextureView;

    .line 205
    iget-object p2, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 206
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mContentView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->miui_face_input_detect:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/faceunlock/FaceDetectView;

    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceDetectView:Lcom/android/settings/faceunlock/FaceDetectView;

    .line 207
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mContentView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->miui_face_input_progress_circle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/faceunlock/FaceInputProgressView;

    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputProgressView:Lcom/android/settings/faceunlock/FaceInputProgressView;

    .line 208
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mContentView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->miui_face_input_success_video:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputSuccessVideo:Landroid/view/TextureView;

    .line 209
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mContentView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->miui_face_input_success_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/faceunlock/FaceEnrollSuccessView;

    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceEnrollSuccessView:Lcom/android/settings/faceunlock/FaceEnrollSuccessView;

    .line 210
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mContentView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->miui_face_input_success_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputSuccessTitle:Landroid/widget/TextView;

    .line 211
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mContentView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->miui_face_input_success_message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputSuccessMsg:Landroid/widget/TextView;

    .line 212
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mContentView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->miui_face_input_nextorsuccess_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputNextOrSuccessButton:Landroid/widget/Button;

    .line 213
    invoke-static {p1}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->createCardFolmeTouchStyle(Landroid/view/View;)V

    .line 214
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mBackImage:Landroid/widget/LinearLayout;

    sget p2, Lcom/android/settings/R$string;->structure_face_data_introduction_back:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 215
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputNextOrSuccessButton:Landroid/widget/Button;

    new-instance p2, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$1;

    invoke-direct {p2, p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$1;-><init>(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mBackImage:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$2;

    invoke-direct {p2, p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$2;-><init>(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputTitle:Landroid/widget/TextView;

    sget p2, Lcom/android/settings/R$string;->face_data_input_title:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 240
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->miui_face_enroll_suggesiton_detect_image_end:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mEnrollSuggestionDetectEnd:F

    .line 241
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->miui_face_enroll_suggesiton_detect_image_repeta_end:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mEnrollSuggestionDetectRepeatEnd:F

    .line 242
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->miui_face_enroll_circle_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mCameraPrviewCircleRadius:F

    .line 243
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mBackImage:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 244
    iget-object p2, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 245
    iget-object p2, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mBackImage:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputCameraPreview:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 248
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$dimen;->miui_face_enroll_camera_preview_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 249
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$dimen;->miui_face_enroll_camera_preview_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 250
    iget-object p2, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputCameraPreview:Landroid/view/SurfaceView;

    invoke-virtual {p2, p1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputCameraPreview:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/16 p2, 0x280

    const/16 p3, 0x1e0

    invoke-interface {p1, p2, p3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 252
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    .line 253
    iget-object p2, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputCameraPreview:Landroid/view/SurfaceView;

    invoke-static {p1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->getFaceInputRotation(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/view/SurfaceView;->setRotation(F)V

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    if-ne p1, p2, :cond_1

    .line 255
    :cond_0
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputCameraPreview:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 256
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$dimen;->miui_face_rotate_margin_top:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 257
    iget-object p2, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputCameraPreview:Landroid/view/SurfaceView;

    invoke-virtual {p2, p1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    :cond_1
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public onPause()V
    .locals 3

    .line 381
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 382
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mRiskWarningDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mRiskWarningDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 384
    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mRiskWarningDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 386
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFinishFaceSuggestion:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceEnrollSucceed:Z

    if-nez v0, :cond_1

    .line 387
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->face_data_input_cancel_msg:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->setContentDescription(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mActivity:Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceEnrollSucceed:Z

    if-eqz v2, :cond_2

    const/4 v1, -0x1

    :cond_2
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 391
    invoke-direct {p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->resetFaceEnrollAnimation()V

    .line 392
    iget-boolean v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFinishFaceSuggestion:Z

    if-eqz v0, :cond_3

    .line 393
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceUnlockManager:Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    new-instance v1, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->runOnFaceUnlockWorkerThread(Ljava/lang/Runnable;)V

    .line 396
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mStartFaceInput:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 398
    :cond_3
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mStartFaceSuggestionVideo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 399
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->finish()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 365
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    .line 366
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1302

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceUnlockManager:Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    .line 371
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$7;

    invoke-direct {v1, p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$7;-><init>(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 347
    invoke-super {p0}, Lcom/android/settings/BaseEditFragment;->onStart()V

    .line 348
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 354
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->registerSltChangeObserver()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 404
    invoke-super {p0}, Lcom/android/settings/BaseEditFragment;->onStop()V

    .line 405
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mSltObserver:Landroid/database/ContentObserver;

    invoke-static {v0, p0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->unregisterSltChangeObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public playVideo(Landroid/view/Surface;ZI)V
    .locals 1

    .line 857
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 858
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 860
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p3}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 861
    invoke-virtual {p3, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 862
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 863
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance p3, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$21;

    invoke-direct {p3, p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$21;-><init>(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)V

    invoke-virtual {p1, p3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 869
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance p3, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$22;

    invoke-direct {p3, p0, p2}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$22;-><init>(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;Z)V

    invoke-virtual {p1, p3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public startEnrollFace()V
    .locals 3

    .line 543
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceUnlockManager:Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    .line 544
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputCameraPreview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputCameraPreview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFacePreviewSurface:Landroid/view/Surface;

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFacePreviewSurface:Landroid/view/Surface;

    if-nez v0, :cond_1

    const-string/jumbo p0, "miui_face"

    const-string/jumbo v0, "start enroll face: suface = null"

    .line 548
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceInputTitle:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->face_data_input_camera_ok:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x0

    .line 552
    iput-boolean v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceEnrollSucceed:Z

    .line 553
    invoke-direct {p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->getEnrollArea()Landroid/graphics/RectF;

    move-result-object v0

    .line 554
    iget-object v1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->mFaceUnlockManager:Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;

    new-instance v2, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;Landroid/graphics/RectF;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockManager;->runOnFaceUnlockWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method
