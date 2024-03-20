.class public Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;
.super Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;
.source "FingerprintEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;,
        Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$SfpsEnrollStage;
    }
.end annotation


# static fields
.field private static final FINGERPRINT_ENROLLING_SONFICATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field protected static final SFPS_STAGE_CENTER:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected static final SFPS_STAGE_FINGERTIP:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected static final SFPS_STAGE_LEFT_EDGE:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected static final SFPS_STAGE_NO_ANIMATION:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected static final SFPS_STAGE_RIGHT_EDGE:I = 0x4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final VIBRATE_EFFECT_ERROR:Landroid/os/VibrationEffect;


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAnimationCancelled:Z

.field private mCanAssumeSfps:Z

.field private mCanAssumeUdfps:Z

.field private final mDelayedFinishRunnable:Ljava/lang/Runnable;

.field private mErrorText:Landroid/widget/TextView;

.field private mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mHaveShownSfpsCenterLottie:Z

.field private mHaveShownSfpsLeftEdgeLottie:Z

.field private mHaveShownSfpsNoAnimationLottie:Z

.field private mHaveShownSfpsRightEdgeLottie:Z

.field private mHaveShownSfpsTipLottie:Z

.field private mHaveShownUdfpsCenterLottie:Z

.field private mHaveShownUdfpsGuideLottie:Z

.field private mHaveShownUdfpsLeftEdgeLottie:Z

.field private mHaveShownUdfpsRightEdgeLottie:Z

.field private mHaveShownUdfpsTipLottie:Z

.field private mHelpAnimation:Landroid/animation/ObjectAnimator;

.field private final mIconAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

.field private mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private mIconBackgroundBlinksDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private mIconTouchCount:I

.field private mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

.field private mIsAccessibilityEnabled:Z

.field mIsCanceled:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mIsSetupWizard:Z

.field private mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mPreviousRotation:I

.field private mProgressAnim:Landroid/animation/ObjectAnimator;

.field private final mProgressAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRestoring:Z

.field private mScaleFactor:F

.field private mShouldShowLottie:Z

.field private final mShowDialogRunnable:Ljava/lang/Runnable;

.field private final mTouchAgainRunnable:Ljava/lang/Runnable;

.field mUdfpsEnrollHelper:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mUdfpsUtils:Lcom/android/settingslib/udfps/UdfpsUtils;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public static synthetic $r8$lambda$0ZoPTJZQoU68El_jKO5DeEc59sg(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->lambda$configureEnrollmentStage$3(Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BodxQM8TA_taeKNCtqr6m3agkRE(ILcom/airbnb/lottie/value/LottieFrameInfo;)Landroid/graphics/ColorFilter;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->lambda$applyLottieDynamicColor$5(ILcom/airbnb/lottie/value/LottieFrameInfo;)Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CGeIsfYb_poCdigTgq1K6BZ4Ack(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;Landroid/view/View;Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->lambda$onCreate$0(Landroid/view/View;Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WR3_PU7I0S4hIYzIE9vCKWX93f4(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;Landroid/content/Context;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->lambda$setOnHoverListener$6(Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;Landroid/content/Context;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$kIFoNPzWPgmO7TZbrwCFKlw8d4w(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->lambda$onCreate$2(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mhtGBk189AJePeQmEFCd7CiLueg(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->lambda$onCreate$1(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t_m5qnQDBNk9i_YSDm67GwcWZ_Q(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->lambda$clearError$4()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAnimationCancelled(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mAnimationCancelled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDelayedFinishRunnable(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mDelayedFinishRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviousRotation(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mPreviousRotation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressBar(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/ProgressBar;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmPreviousRotation(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mPreviousRotation:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetFinishDelay(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)J
    .locals 2

    .line 0
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->getFinishDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mshowError(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowIconTouchDialog(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->showIconTouchDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartIconAnimation(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->startIconAnimation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopIconAnimation(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->stopIconAnimation()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [J

    .line 168
    fill-array-data v0, :array_0

    const/4 v1, -0x1

    .line 169
    invoke-static {v0, v1}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->VIBRATE_EFFECT_ERROR:Landroid/os/VibrationEffect;

    const/16 v0, 0x42

    .line 171
    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->FINGERPRINT_ENROLLING_SONFICATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    return-void

    :array_0
    .array-data 8
        0x0
        0x5
        0x37
        0x3c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 106
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 181
    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mScaleFactor:F

    const/4 v0, 0x0

    .line 214
    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mPreviousRotation:I

    .line 1103
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$2;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$2;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 1132
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$3;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$3;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mDelayedFinishRunnable:Ljava/lang/Runnable;

    .line 1139
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$4;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$4;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 1157
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$5;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$5;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mShowDialogRunnable:Ljava/lang/Runnable;

    .line 1164
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$6;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$6;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)[B
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;[B)V
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->launchFinish([B)V

    return-void
.end method

.method private animateFlash()V
    .locals 0

    .line 568
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIconBackgroundBlinksDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p0, :cond_0

    .line 569
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_0
    return-void
.end method

.method private animateProgress(I)V
    .locals 3

    .line 547
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    .line 551
    invoke-virtual {p0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mDelayedFinishRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->getFinishDelay()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 556
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 558
    :cond_2
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    .line 559
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    filled-new-array {v1, p1}, [I

    move-result-object p1

    const-string/jumbo v1, "progress"

    .line 558
    invoke-static {v0, v1, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 560
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 561
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xfa

    .line 562
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 563
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 564
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressAnim:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private announceEnrollmentProgress(Ljava/lang/CharSequence;)V
    .locals 2

    .line 865
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    const/16 v1, 0x4000

    .line 866
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 867
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 868
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 869
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method private applyLottieDynamicColor(Landroid/content/Context;Z)V
    .locals 3

    .line 1067
    sget v0, Lcom/android/settings/R$color;->sfps_enrollment_fp_error_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 1068
    sget v1, Lcom/android/settings/R$color;->sfps_enrollment_fp_captured_color:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 1070
    :goto_0
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance p2, Lcom/airbnb/lottie/model/KeyPath;

    const-string v1, ".blue100"

    const-string v2, "**"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    sget-object v1, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    new-instance v2, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p1, p2, v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    .line 1075
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->invalidate()V

    return-void
.end method

.method private applyProgressBarDynamicColor(Landroid/content/Context;Z)V
    .locals 2

    .line 1054
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 1055
    sget v0, Lcom/android/settings/R$color;->sfps_enrollment_progress_bar_error_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 1056
    sget v1, Lcom/android/settings/R$color;->sfps_enrollment_progress_bar_fill_color:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 1058
    :goto_0
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 1060
    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1061
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1062
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V

    :cond_1
    return-void
.end method

.method private applySfpsErrorDynamicColors(Landroid/content/Context;Z)V
    .locals 1

    .line 1047
    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->applyProgressBarDynamicColor(Landroid/content/Context;Z)V

    .line 1048
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 1049
    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->applyLottieDynamicColor(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method private clearError()V
    .locals 3

    .line 1027
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeSfps:Z

    if-eqz v0, :cond_0

    .line 1028
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->applySfpsErrorDynamicColors(Landroid/content/Context;Z)V

    .line 1030
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeSfps:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1031
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1032
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1033
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->fingerprint_error_text_disappear_distance:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 1035
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 1036
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    .line 1037
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1038
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method private clearTalkback()V
    .locals 0

    .line 688
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    return-void
.end method

.method private dismissTouchDialogIfSfps()V
    .locals 1

    .line 905
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeSfps:Z

    if-nez v0, :cond_0

    return-void

    .line 909
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "fps_icon_touch_dialog"

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;

    if-eqz p0, :cond_1

    .line 910
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 911
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_1
    return-void
.end method

.method private getCurrentSfpsStage()I
    .locals 3

    .line 794
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 798
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->getEnrollmentSteps()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {v1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->getEnrollmentRemaining()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 799
    invoke-virtual {p0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->getStageThresholdSteps(I)I

    move-result v2

    if-ge v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x1

    .line 801
    invoke-virtual {p0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->getStageThresholdSteps(I)I

    move-result v2

    if-ge v0, v2, :cond_2

    return v1

    :cond_2
    const/4 v1, 0x2

    .line 803
    invoke-virtual {p0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->getStageThresholdSteps(I)I

    move-result v2

    if-ge v0, v2, :cond_3

    return v1

    :cond_3
    const/4 v1, 0x3

    .line 805
    invoke-virtual {p0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->getStageThresholdSteps(I)I

    move-result p0

    if-ge v0, p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x4

    return p0
.end method

.method private getCurrentStage()I
    .locals 3

    .line 774
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    const/4 v1, -0x1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->getEnrollmentSteps()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->getEnrollmentSteps()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {v1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->getEnrollmentRemaining()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 779
    invoke-virtual {p0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->getStageThresholdSteps(I)I

    move-result v2

    if-ge v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x1

    .line 781
    invoke-virtual {p0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->getStageThresholdSteps(I)I

    move-result v2

    if-ge v0, v2, :cond_2

    return v1

    :cond_2
    const/4 v1, 0x2

    .line 783
    invoke-virtual {p0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->getStageThresholdSteps(I)I

    move-result v2

    if-ge v0, v2, :cond_3

    return v1

    :cond_3
    const/4 v1, 0x3

    .line 785
    invoke-virtual {p0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->getStageThresholdSteps(I)I

    move-result p0

    if-ge v0, p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x4

    return p0

    :cond_5
    :goto_0
    return v1
.end method

.method private getFinishDelay()J
    .locals 2

    .line 1128
    iget-boolean p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x190

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0xfa

    :goto_0
    return-wide v0
.end method

.method private getProgress(II)I
    .locals 1

    const/4 p0, -0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    sub-int p0, p1, p2

    .line 971
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    mul-int/lit16 p0, p0, 0x2710

    .line 972
    div-int/2addr p0, p1

    return p0
.end method

.method private isStageHalfCompleted()Z
    .locals 6

    .line 814
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->getEnrollmentSteps()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->getEnrollmentSteps()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {v2}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->getEnrollmentRemaining()I

    move-result v2

    sub-int/2addr v0, v2

    move v2, v1

    move v3, v2

    .line 820
    :goto_0
    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrollStageCount()I

    move-result v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_3

    .line 821
    invoke-virtual {p0, v2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->getStageThresholdSteps(I)I

    move-result v4

    if-lt v0, v3, :cond_2

    if-ge v0, v4, :cond_2

    sub-int/2addr v0, v3

    sub-int/2addr v4, v3

    .line 825
    div-int/lit8 v4, v4, 0x2

    if-lt v0, v4, :cond_1

    move v1, v5

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    :cond_3
    return v5

    :cond_4
    :goto_1
    return v1
.end method

.method private static synthetic lambda$applyLottieDynamicColor$5(ILcom/airbnb/lottie/value/LottieFrameInfo;)Landroid/graphics/ColorFilter;
    .locals 1

    .line 1073
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p0, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1
.end method

.method private synthetic lambda$clearError$4()V
    .locals 1

    .line 1037
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$configureEnrollmentStage$3(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 1

    .line 766
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    .line 767
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 768
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;)V
    .locals 1

    .line 315
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 316
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->hasOverlap(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    .line 317
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onCreate$1(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;Landroid/view/View;)V
    .locals 0

    .line 364
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->onSkipButtonClick(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onCreate$2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 407
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 408
    iget p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIconTouchCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIconTouchCount:I

    if-ne p1, v0, :cond_0

    .line 410
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->showIconTouchDialog()V

    goto :goto_0

    .line 412
    :cond_0
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mShowDialogRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, p0, v2, v3}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 415
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eq p1, v0, :cond_2

    .line 416
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 417
    :cond_2
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mShowDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return v1
.end method

.method private synthetic lambda$setOnHoverListener$6(Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;Landroid/content/Context;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1283
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mUdfpsUtils:Lcom/android/settingslib/udfps/UdfpsUtils;

    const/4 v1, 0x0

    .line 1284
    invoke-virtual {p4, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1285
    invoke-virtual {p1}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->getOverlayParams()Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    move-result-object v3

    .line 1284
    invoke-virtual {v0, v2, p4, v3}, Lcom/android/settingslib/udfps/UdfpsUtils;->getTouchInNativeCoordinates(ILandroid/view/MotionEvent;Lcom/android/settingslib/udfps/UdfpsOverlayParams;)Landroid/graphics/Point;

    move-result-object v0

    .line 1287
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mUdfpsUtils:Lcom/android/settingslib/udfps/UdfpsUtils;

    invoke-virtual {p4, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 1288
    invoke-virtual {p1}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->getOverlayParams()Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    move-result-object v4

    .line 1287
    invoke-virtual {v2, v3, p4, v4}, Lcom/android/settingslib/udfps/UdfpsUtils;->isWithinSensorArea(ILandroid/view/MotionEvent;Lcom/android/settingslib/udfps/UdfpsOverlayParams;)Z

    move-result p4

    if-eqz p4, :cond_0

    return v1

    .line 1292
    :cond_0
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mUdfpsUtils:Lcom/android/settingslib/udfps/UdfpsUtils;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1293
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    .line 1294
    invoke-virtual {p1}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->getOverlayParams()Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    move-result-object v7

    move-object v4, p2

    .line 1292
    invoke-virtual/range {v2 .. v7}, Lcom/android/settingslib/udfps/UdfpsUtils;->onTouchOutsideOfSensorArea(ZLandroid/content/Context;IILcom/android/settingslib/udfps/UdfpsOverlayParams;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1296
    invoke-virtual {p3, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    return v1
.end method

.method private listenOrientationEvent()V
    .locals 1

    .line 1079
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$1;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 1092
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 1093
    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mPreviousRotation:I

    return-void
.end method

.method private maybeHideSfpsText(Landroid/content/res/Configuration;)V
    .locals 5

    .line 1218
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    const-class v1, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    .line 1219
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v1

    const-class v2, Lcom/google/android/setupdesign/template/DescriptionMixin;

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v1

    check-cast v1, Lcom/google/android/setupdesign/template/DescriptionMixin;

    .line 1220
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v2, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v4

    .line 1222
    :goto_0
    iget-boolean p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeSfps:Z

    if-eqz p0, :cond_2

    .line 1224
    invoke-virtual {v1}, Lcom/google/android/setupdesign/template/DescriptionMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p0

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1225
    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    if-eqz p1, :cond_1

    .line 1227
    invoke-virtual {v0, v3}, Lcom/google/android/setupdesign/template/HeaderMixin;->setAutoTextSizeEnabled(Z)V

    .line 1228
    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setMinLines(I)V

    .line 1229
    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p0

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1

    .line 1231
    :cond_1
    invoke-virtual {v0, v4}, Lcom/google/android/setupdesign/template/HeaderMixin;->setAutoTextSizeEnabled(Z)V

    .line 1232
    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLines(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private restoreSavedState(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    .line 463
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mRestoring:Z

    const-string v0, "is_canceled"

    const/4 v1, 0x0

    .line 464
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsCanceled:Z

    .line 466
    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const-string/jumbo v1, "previous_rotation"

    .line 465
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mPreviousRotation:I

    return-void
.end method

.method private setHelpAnimation()V
    .locals 3

    .line 430
    sget v0, Lcom/android/settings/R$id;->progress_lottie:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x5

    new-array v1, v1, [F

    .line 431
    fill-array-data v1, :array_0

    const-string/jumbo v2, "translationX"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHelpAnimation:Landroid/animation/ObjectAnimator;

    .line 434
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 435
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHelpAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x226

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 436
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHelpAnimation:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x42200000    # 40.0f
        -0x3de00000    # -40.0f
        0x42200000    # 40.0f
        0x0
    .end array-data
.end method

.method private setOnHoverListener(ZLcom/google/android/setupdesign/GlifLayout;Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;)V
    .locals 2

    .line 1277
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsAccessibilityEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 1279
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1280
    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p3, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;Landroid/content/Context;)V

    if-eqz p1, :cond_1

    .line 1301
    sget p0, Lcom/android/settings/R$id;->sud_landscape_content_area:I

    goto :goto_0

    .line 1302
    :cond_1
    sget p0, Lcom/android/settings/R$id;->sud_layout_content:I

    .line 1301
    :goto_0
    invoke-virtual {p2, p0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    .line 1302
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method private showError(Ljava/lang/CharSequence;)V
    .locals 6

    .line 990
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeSfps:Z

    if-eqz v0, :cond_1

    .line 991
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 992
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHelpAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    .line 993
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHelpAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 995
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->applySfpsErrorDynamicColors(Landroid/content/Context;Z)V

    goto :goto_0

    .line 996
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-eqz v0, :cond_2

    .line 997
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(Ljava/lang/CharSequence;)V

    const-string p1, ""

    .line 999
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1001
    :cond_2
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1002
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-ne p1, v0, :cond_3

    .line 1003
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1004
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$dimen;->fingerprint_error_text_appear_distance:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1006
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1007
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1008
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1009
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 1010
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 1011
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1012
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 1014
    :cond_3
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1015
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1016
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1019
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsAccessibilityEnabled:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-nez p1, :cond_4

    .line 1020
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mVibrator:Landroid/os/Vibrator;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->VIBRATE_EFFECT_ERROR:Landroid/os/VibrationEffect;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1021
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "::showError"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->FINGERPRINT_ENROLLING_SONFICATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 1020
    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    :cond_4
    return-void
.end method

.method private showIconTouchDialog()V
    .locals 1

    const/4 v0, 0x0

    .line 983
    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIconTouchCount:I

    return-void
.end method

.method private startIconAnimation()V
    .locals 0

    .line 492
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p0, :cond_0

    .line 493
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_0
    return-void
.end method

.method private stopIconAnimation()V
    .locals 1

    const/4 v0, 0x1

    .line 498
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mAnimationCancelled:Z

    .line 499
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p0, :cond_0

    .line 500
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    :cond_0
    return-void
.end method

.method private stopListenOrientationEvent()V
    .locals 1

    .line 1097
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 1098
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    const/4 v0, 0x0

    .line 1100
    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    return-void
.end method

.method private updateOrientation(I)V
    .locals 1

    .line 1177
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeSfps:Z

    if-eqz v0, :cond_0

    .line 1178
    sget p1, Lcom/android/settings/R$id;->illustration_lottie:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const-string p0, "FingerprintEnrollEnrolling"

    const-string p1, "Error unhandled configuration change"

    .line 1192
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1182
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    goto :goto_0

    .line 1186
    :cond_2
    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mShouldShowLottie:Z

    if-eqz p1, :cond_3

    .line 1187
    sget p1, Lcom/android/settings/R$id;->illustration_lottie:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    :cond_3
    :goto_0
    return-void
.end method

.method private updateProgress(Z)V
    .locals 4

    .line 937
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->isEnrolling()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    .line 943
    invoke-virtual {v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->getEnrollmentSteps()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {v1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->getEnrollmentRemaining()I

    move-result v1

    .line 942
    invoke-direct {p0, v0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->getProgress(II)I

    move-result v0

    .line 946
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 947
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->clearError()V

    .line 950
    :cond_1
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mUdfpsEnrollHelper:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;

    if-eqz v1, :cond_2

    .line 951
    iget-object v2, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {v2}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->getEnrollmentSteps()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    .line 952
    invoke-virtual {v3}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->getEnrollmentRemaining()I

    move-result v3

    .line 951
    invoke-virtual {v1, v2, v3}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->onEnrollmentProgress(II)V

    :cond_2
    if-eqz p1, :cond_3

    .line 956
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->animateProgress(I)V

    goto :goto_0

    .line 958
    :cond_3
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_4

    .line 959
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_4
    const/16 p1, 0x2710

    if-lt v0, p1, :cond_5

    .line 962
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mDelayedFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    const-string p0, "FingerprintEnrollEnrolling"

    const-string p1, "Enrollment not started yet"

    .line 938
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateTitleAndDescription()V
    .locals 2

    .line 578
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-eqz v0, :cond_0

    .line 579
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->updateTitleAndDescriptionForUdfps()V

    return-void

    .line 581
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeSfps:Z

    if-eqz v0, :cond_1

    .line 582
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->updateTitleAndDescriptionForSfps()V

    return-void

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->getEnrollmentSteps()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 589
    :cond_2
    sget v0, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_repeat_message:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    goto :goto_1

    .line 587
    :cond_3
    :goto_0
    sget v0, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_start_message:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    :goto_1
    return-void
.end method

.method private updateTitleAndDescriptionForSfps()V
    .locals 3

    .line 692
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsAccessibilityEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 693
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->clearTalkback()V

    .line 694
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityLiveRegion(I)V

    .line 697
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->getCurrentSfpsStage()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 749
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->security_settings_sfps_enroll_find_sensor_title:I

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(I)V

    .line 751
    sget v0, Lcom/android/settings/R$string;->security_settings_sfps_enroll_find_sensor_message:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 753
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 754
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 737
    :cond_1
    sget v0, Lcom/android/settings/R$string;->security_settings_sfps_enroll_right_edge_title:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    .line 738
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownSfpsRightEdgeLottie:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_6

    .line 739
    iput-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownSfpsRightEdgeLottie:Z

    .line 740
    sget v0, Lcom/android/settings/R$raw;->sfps_lottie_right_edge:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->configureEnrollmentStage(I)V

    goto :goto_0

    .line 729
    :cond_2
    sget v0, Lcom/android/settings/R$string;->security_settings_sfps_enroll_left_edge_title:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    .line 730
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownSfpsLeftEdgeLottie:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_6

    .line 731
    iput-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownSfpsLeftEdgeLottie:Z

    .line 732
    sget v0, Lcom/android/settings/R$raw;->sfps_lottie_left_edge:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->configureEnrollmentStage(I)V

    goto :goto_0

    .line 721
    :cond_3
    sget v0, Lcom/android/settings/R$string;->security_settings_sfps_enroll_fingertip_title:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    .line 722
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownSfpsTipLottie:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_6

    .line 723
    iput-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownSfpsTipLottie:Z

    .line 724
    sget v0, Lcom/android/settings/R$raw;->sfps_lottie_tip:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->configureEnrollmentStage(I)V

    goto :goto_0

    .line 713
    :cond_4
    sget v0, Lcom/android/settings/R$string;->security_settings_sfps_enroll_finger_center_title:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    .line 714
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownSfpsCenterLottie:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_6

    .line 715
    iput-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownSfpsCenterLottie:Z

    .line 716
    sget v0, Lcom/android/settings/R$raw;->sfps_lottie_pad_center:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->configureEnrollmentStage(I)V

    goto :goto_0

    .line 699
    :cond_5
    sget v0, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_repeat_title:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    .line 700
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownSfpsNoAnimationLottie:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_6

    .line 701
    iput-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownSfpsNoAnimationLottie:Z

    .line 702
    sget v1, Lcom/android/settings/R$string;->security_settings_sfps_animation_a11y_label:I

    const/4 v2, 0x0

    .line 705
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 703
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 702
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 708
    sget v0, Lcom/android/settings/R$raw;->sfps_lottie_no_animation:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->configureEnrollmentStage(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method private updateTitleAndDescriptionForUdfps()V
    .locals 3

    .line 594
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->getCurrentStage()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    if-eq v0, v1, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 674
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_udfps_title:I

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(I)V

    .line 676
    sget v0, Lcom/android/settings/R$string;->security_settings_udfps_enroll_start_message:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    .line 677
    sget v0, Lcom/android/settings/R$string;->security_settings_udfps_enroll_a11y:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 679
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 680
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 650
    :cond_0
    sget v0, Lcom/android/settings/R$string;->security_settings_udfps_enroll_right_edge_title:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    .line 651
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownUdfpsRightEdgeLottie:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    .line 652
    iput-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownUdfpsRightEdgeLottie:Z

    .line 653
    sget v1, Lcom/android/settings/R$string;->security_settings_udfps_side_fingerprint_help:I

    .line 654
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 653
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 656
    sget v0, Lcom/android/settings/R$raw;->udfps_right_edge_hint_lottie:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->configureEnrollmentStage(I)V

    goto/16 :goto_2

    .line 658
    :cond_1
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_d

    .line 659
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->isStageHalfCompleted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 660
    sget v0, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_repeat_message:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    goto/16 :goto_2

    .line 663
    :cond_2
    sget v0, Lcom/android/settings/R$string;->security_settings_udfps_enroll_edge_message:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    goto/16 :goto_2

    .line 633
    :cond_3
    sget v0, Lcom/android/settings/R$string;->security_settings_udfps_enroll_left_edge_title:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    .line 634
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownUdfpsLeftEdgeLottie:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_4

    .line 635
    iput-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownUdfpsLeftEdgeLottie:Z

    .line 636
    sget v1, Lcom/android/settings/R$string;->security_settings_udfps_side_fingerprint_help:I

    .line 637
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 636
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 639
    sget v0, Lcom/android/settings/R$raw;->udfps_left_edge_hint_lottie:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->configureEnrollmentStage(I)V

    goto/16 :goto_2

    .line 640
    :cond_4
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_d

    .line 641
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->isStageHalfCompleted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 642
    sget v0, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_repeat_message:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    goto/16 :goto_2

    .line 645
    :cond_5
    sget v0, Lcom/android/settings/R$string;->security_settings_udfps_enroll_edge_message:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    goto/16 :goto_2

    .line 623
    :cond_6
    sget v0, Lcom/android/settings/R$string;->security_settings_udfps_enroll_fingertip_title:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    .line 624
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownUdfpsTipLottie:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_d

    .line 625
    iput-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownUdfpsTipLottie:Z

    .line 626
    sget v1, Lcom/android/settings/R$string;->security_settings_udfps_tip_fingerprint_help:I

    .line 627
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 626
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 629
    sget v0, Lcom/android/settings/R$raw;->udfps_tip_hint_lottie:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->configureEnrollmentStage(I)V

    goto :goto_2

    .line 610
    :cond_7
    sget v0, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_repeat_title:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    .line 611
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsAccessibilityEnabled:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_8

    goto :goto_0

    .line 613
    :cond_8
    iget-boolean v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownUdfpsGuideLottie:Z

    if-nez v2, :cond_d

    if-eqz v0, :cond_d

    .line 614
    iput-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownUdfpsGuideLottie:Z

    .line 615
    sget v1, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_repeat_message:I

    .line 616
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 615
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 619
    sget v0, Lcom/android/settings/R$raw;->udfps_center_hint_lottie:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->configureEnrollmentStage(I)V

    goto :goto_2

    .line 612
    :cond_9
    :goto_0
    sget v0, Lcom/android/settings/R$string;->security_settings_udfps_enroll_repeat_a11y_message:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    goto :goto_2

    .line 596
    :cond_a
    sget v0, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_repeat_title:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    .line 597
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsAccessibilityEnabled:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_b

    goto :goto_1

    .line 599
    :cond_b
    iget-boolean v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownUdfpsCenterLottie:Z

    if-nez v2, :cond_d

    if-eqz v0, :cond_d

    .line 600
    iput-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownUdfpsCenterLottie:Z

    .line 602
    sget v1, Lcom/android/settings/R$string;->security_settings_sfps_enroll_finger_center_title:I

    .line 603
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 602
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 605
    sget v0, Lcom/android/settings/R$raw;->udfps_center_hint_lottie:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->configureEnrollmentStage(I)V

    goto :goto_2

    .line 598
    :cond_c
    :goto_1
    sget v0, Lcom/android/settings/R$string;->security_settings_udfps_enroll_start_message:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    :cond_d
    :goto_2
    return-void
.end method

.method private updateUdfpsEnrollView(Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;
    .locals 8

    .line 1239
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 1240
    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 1241
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mUdfpsUtils:Lcom/android/settingslib/udfps/UdfpsUtils;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/udfps/UdfpsUtils;->getScaleFactor(Landroid/view/DisplayInfo;)F

    move-result v1

    iput v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mScaleFactor:F

    .line 1242
    invoke-virtual {p2}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->getLocation()Landroid/hardware/biometrics/SensorLocationInternal;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/biometrics/SensorLocationInternal;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 1243
    iget p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mScaleFactor:F

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->scale(F)V

    .line 1245
    new-instance v3, Landroid/graphics/Rect;

    .line 1247
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    .line 1248
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v1

    .line 1249
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, p2, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1251
    new-instance p2, Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 1254
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v4

    .line 1255
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v5

    iget v6, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mScaleFactor:F

    iget v7, v0, Landroid/view/DisplayInfo;->rotation:I

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/settingslib/udfps/UdfpsOverlayParams;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;IIFI)V

    .line 1259
    invoke-virtual {p1, p2}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->setOverlayParams(Lcom/android/settingslib/udfps/UdfpsOverlayParams;)V

    .line 1261
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string/jumbo v0, "udfps_helper"

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mUdfpsEnrollHelper:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;

    if-nez p2, :cond_0

    .line 1264
    new-instance p2, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-direct {p2, v1, v2}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;-><init>(Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintManager;)V

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mUdfpsEnrollHelper:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;

    .line 1266
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mUdfpsEnrollHelper:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;

    .line 1267
    invoke-virtual {p2, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    .line 1268
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1270
    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mUdfpsEnrollHelper:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;

    invoke-virtual {p1, p0}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->setEnrollHelper(Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;)V

    return-object p1
.end method


# virtual methods
.method configureEnrollmentStage(I)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 761
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeSfps:Z

    if-nez v0, :cond_0

    const-string v0, ""

    .line 762
    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(Ljava/lang/CharSequence;)V

    .line 764
    :cond_0
    invoke-static {p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawRes(Landroid/content/Context;I)Lcom/airbnb/lottie/LottieTask;

    move-result-object p1

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    .line 765
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    return-void
.end method

.method protected getFinishIntent()Landroid/content/Intent;
    .locals 2

    .line 574
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0xf0

    return p0
.end method

.method protected getSidecar()Lcom/android/settings/biometrics/BiometricEnrollSidecar;
    .locals 2

    .line 440
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected getStageThresholdSteps(I)I
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 836
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->getEnrollmentSteps()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->getEnrollmentSteps()I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 841
    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrollStageThreshold(I)F

    move-result p0

    mul-float/2addr v0, p0

    .line 840
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string p0, "FingerprintEnrollEnrolling"

    const-string p1, "getStageThresholdSteps: Enrollment not started yet"

    .line 837
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method hasOverlap(Landroid/view/View;Landroid/view/View;)Z
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 p0, 0x2

    new-array v0, p0, [I

    new-array p0, p0, [I

    .line 1310
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1311
    invoke-virtual {p2, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1314
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    .line 1315
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v3

    aget v0, v0, v4

    .line 1316
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr v0, p1

    invoke-direct {v1, v3, v5, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1317
    new-instance p1, Landroid/graphics/Rect;

    aget v0, p0, v2

    aget v2, p0, v4

    .line 1318
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    aget p0, p0, v4

    .line 1319
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p0, p2

    invoke-direct {p1, v0, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1320
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public onAcquired(Z)V
    .locals 0

    .line 917
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mUdfpsEnrollHelper:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;

    if-eqz p0, :cond_0

    .line 918
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->onAcquired(Z)V

    :cond_0
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2

    .line 228
    sget v0, Lcom/android/settings/R$style;->SetupWizardPartnerResource:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 229
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method onCancelEnrollment(I)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    .line 508
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsCanceled:Z

    .line 509
    instance-of v0, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollEnrolling;

    invoke-static {p0, p1, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;->showErrorDialog(Lcom/android/settings/biometrics/BiometricEnrollBase;IZ)V

    .line 511
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->cancelEnrollment()V

    .line 512
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->stopIconAnimation()V

    .line 513
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->stopListenOrientationEvent()V

    .line 514
    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-nez p1, :cond_0

    .line 515
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1201
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->maybeHideSfpsText(Landroid/content/res/Configuration;)V

    .line 1202
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p0, "FingerprintEnrollEnrolling"

    const-string p1, "Error unhandled configuration change"

    .line 1212
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1204
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->updateOrientation(I)V

    goto :goto_0

    .line 1208
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->updateOrientation(I)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 234
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 236
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 237
    sget p1, Lcom/android/settings/R$string;->dock_multi_instances_not_supported_text:I

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 239
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 240
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 245
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->restoreSavedState(Landroid/os/Bundle;)V

    .line 247
    :cond_1
    const-class p1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 249
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 250
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-eqz p1, :cond_3

    .line 251
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnySidefpsType()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeSfps:Z

    .line 253
    const-class v2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 254
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsAccessibilityEnabled:Z

    .line 255
    new-instance v2, Lcom/android/settingslib/udfps/UdfpsUtils;

    invoke-direct {v2}, Lcom/android/settingslib/udfps/UdfpsUtils;-><init>()V

    iput-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mUdfpsUtils:Lcom/android/settingslib/udfps/UdfpsUtils;

    .line 258
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 257
    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    if-ne v2, v0, :cond_4

    move v2, v0

    goto :goto_2

    :cond_4
    move v2, v1

    .line 259
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->listenOrientationEvent()V

    .line 261
    iget-boolean v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v3, :cond_8

    .line 262
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 263
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/android/settings/R$layout;->udfps_enroll_enrolling:I

    invoke-virtual {v6, v7, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/setupdesign/GlifLayout;

    .line 265
    sget v7, Lcom/android/settings/R$id;->udfps_animation_view:I

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;

    .line 266
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-direct {p0, v7, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->updateUdfpsEnrollView(Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;

    if-eqz v3, :cond_7

    if-eq v3, v0, :cond_5

    if-eq v3, v4, :cond_7

    .line 327
    invoke-direct {p0, v0, v6, v7}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->setOnHoverListener(ZLcom/google/android/setupdesign/GlifLayout;Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;)V

    .line 328
    invoke-virtual {p0, v6}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 269
    :cond_5
    sget p1, Lcom/android/settings/R$id;->layout_container:I

    invoke-virtual {v6, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 271
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 275
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/settings/R$dimen;->rotation_90_enroll_margin_end:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 277
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/settings/R$dimen;->rotation_90_enroll_padding_start:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    if-eqz v2, :cond_6

    move v2, v1

    goto :goto_3

    .line 279
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v9, Lcom/android/settings/R$dimen;->rotation_90_enroll_padding_end:I

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 277
    :goto_3
    invoke-virtual {p1, v8, v1, v2, v1}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 281
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    invoke-direct {p0, v0, v6, v7}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->setOnHoverListener(ZLcom/google/android/setupdesign/GlifLayout;Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;)V

    .line 284
    invoke-virtual {p0, v6, v3}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 291
    :cond_7
    sget p1, Lcom/android/settings/R$id;->layout_container:I

    invoke-virtual {v6, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 297
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->udfps_lottie_padding_top:I

    .line 298
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 299
    invoke-virtual {p1, v1, v2, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 301
    sget p1, Lcom/android/settings/R$id;->udfps_enroll_animation_fp_progress_view:I

    invoke-virtual {v7, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    neg-int v3, v2

    .line 303
    invoke-virtual {p1, v1, v3, v1, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 305
    sget p1, Lcom/android/settings/R$id;->udfps_enroll_animation_fp_view:I

    invoke-virtual {v7, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 307
    invoke-virtual {p1, v1, v3, v1, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 313
    invoke-virtual {v6}, Lcom/google/android/setupdesign/GlifLayout;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object p1

    .line 314
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1, v7}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;Landroid/view/View;Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 321
    invoke-direct {p0, v1, v6, v7}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->setOnHoverListener(ZLcom/google/android/setupdesign/GlifLayout;Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;)V

    .line 322
    invoke-virtual {p0, v6}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 331
    :goto_4
    sget p1, Lcom/android/settings/R$string;->security_settings_udfps_enroll_start_message:I

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    goto :goto_5

    .line 332
    :cond_8
    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeSfps:Z

    if-eqz p1, :cond_9

    .line 333
    sget p1, Lcom/android/settings/R$layout;->sfps_enroll_enrolling:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 334
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->setHelpAnimation()V

    goto :goto_5

    .line 336
    :cond_9
    sget p1, Lcom/android/settings/R$layout;->fingerprint_enroll_enrolling:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 337
    sget p1, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_start_message:I

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    .line 340
    :goto_5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsSetupWizard:Z

    .line 341
    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeSfps:Z

    if-eqz p1, :cond_a

    goto :goto_6

    .line 344
    :cond_a
    sget p1, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_repeat_title:I

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    goto :goto_7

    .line 342
    :cond_b
    :goto_6
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->updateTitleAndDescription()V

    .line 347
    :goto_7
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->shouldShowLottie()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mShouldShowLottie:Z

    .line 350
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/biometrics/BiometricUtils;->isReverseLandscape(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 351
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/biometrics/BiometricUtils;->isLandscape(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_8

    :cond_c
    move p1, v1

    goto :goto_9

    :cond_d
    :goto_8
    move p1, v0

    :goto_9
    if-eqz p1, :cond_e

    move v0, v4

    .line 353
    :cond_e
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->updateOrientation(I)V

    .line 356
    sget p1, Lcom/android/settings/R$id;->error_text:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    .line 357
    sget p1, Lcom/android/settings/R$id;->fingerprint_progress_bar:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    .line 358
    const-class p1, Landroid/os/Vibrator;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mVibrator:Landroid/os/Vibrator;

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 361
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_enrolling_skip:I

    .line 363
    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    .line 364
    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const/4 v2, 0x7

    .line 365
    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    sget v2, Lcom/android/settings/R$style;->SudGlifButton_Secondary:I

    .line 366
    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 361
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 370
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "settings_show_udfps_enroll_in_settings"

    invoke-static {p1, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 374
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getButtonContainer()Landroid/widget/LinearLayout;

    move-result-object p1

    .line 376
    :goto_a
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_10

    .line 377
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/setupcompat/template/FooterActionButton;

    if-nez v0, :cond_f

    .line 378
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_b

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_10
    move-object v0, v5

    :goto_b
    if-eqz v0, :cond_11

    const/16 v1, 0x8

    .line 383
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 384
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 388
    :cond_11
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_12

    .line 389
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/graphics/drawable/LayerDrawable;

    :cond_12
    if-eqz v5, :cond_13

    .line 391
    sget p1, Lcom/android/settings/R$id;->fingerprint_animation:I

    .line 392
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 393
    sget p1, Lcom/android/settings/R$id;->fingerprint_background:I

    .line 394
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIconBackgroundBlinksDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 395
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    :cond_13
    const p1, 0x10c000d    # @android:interpolator/fast_out_slow_in

    .line 398
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const p1, 0x10c000e    # @android:interpolator/linear_out_slow_in

    .line 400
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const p1, 0x10c000f    # @android:interpolator/fast_out_linear_in

    .line 402
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 404
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_14

    .line 405
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 406
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 423
    :cond_14
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 424
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->maybeHideSfpsText(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 542
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->stopListenOrientationEvent()V

    .line 543
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onDestroy()V

    return-void
.end method

.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 0

    .line 860
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->onCancelEnrollment(I)V

    .line 861
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->dismissTouchDialogIfSfps()V

    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 1

    .line 846
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 847
    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeSfps:Z

    if-nez p1, :cond_0

    .line 848
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 850
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    .line 852
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mUdfpsEnrollHelper:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->onEnrollmentHelp()V

    .line 855
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->dismissTouchDialogIfSfps()V

    return-void
.end method

.method public onEnrollmentProgressChange(II)V
    .locals 2

    const/4 v0, 0x1

    .line 875
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->updateProgress(Z)V

    sub-int p2, p1, p2

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 877
    iget-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeSfps:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsAccessibilityEnabled:Z

    if-eqz p2, :cond_0

    .line 878
    sget p2, Lcom/android/settings/R$string;->security_settings_sfps_enroll_progress_a11y_message:I

    .line 879
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 878
    invoke-virtual {p0, p2, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 880
    invoke-direct {p0, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->announceEnrollmentProgress(Ljava/lang/CharSequence;)V

    .line 881
    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p2, :cond_0

    .line 882
    sget v0, Lcom/android/settings/R$string;->security_settings_sfps_animation_a11y_label:I

    .line 885
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 883
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 882
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 889
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->updateTitleAndDescription()V

    .line 890
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->animateFlash()V

    .line 891
    iget-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-eqz p2, :cond_1

    .line 892
    iget-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsAccessibilityEnabled:Z

    if-eqz p2, :cond_2

    .line 893
    sget p2, Lcom/android/settings/R$string;->security_settings_udfps_enroll_progress_a11y_message:I

    .line 894
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 893
    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 895
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->announceEnrollmentProgress(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 897
    :cond_1
    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeSfps:Z

    if-nez p1, :cond_2

    .line 898
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 899
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x9c4

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 901
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->dismissTouchDialogIfSfps()V

    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 1

    .line 481
    invoke-super {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    .line 483
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->startEnrollment()V

    :cond_0
    const/4 v0, 0x0

    .line 487
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mAnimationCancelled:Z

    .line 488
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->startIconAnimation()V

    return-void
.end method

.method public onPointerDown(I)V
    .locals 0

    .line 924
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mUdfpsEnrollHelper:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;

    if-eqz p0, :cond_0

    .line 925
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->onPointerDown(I)V

    :cond_0
    return-void
.end method

.method public onPointerUp(I)V
    .locals 0

    .line 931
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mUdfpsEnrollHelper:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;

    if-eqz p0, :cond_0

    .line 932
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->onPointerUp(I)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 457
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "is_canceled"

    .line 458
    iget-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsCanceled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "previous_rotation"

    .line 459
    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mPreviousRotation:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 471
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->onStart()V

    const/4 v0, 0x0

    .line 472
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->updateProgress(Z)V

    .line 473
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->updateTitleAndDescription()V

    .line 474
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mRestoring:Z

    if-eqz v0, :cond_0

    .line 475
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->startIconAnimation()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 521
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 522
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    invoke-static {p0}, Lcom/android/settings/biometrics/BiometricUtils;->isAnyMultiBiometricFlow(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFromSettingsSummary:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 525
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 527
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 529
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->stopIconAnimation()V

    .line 531
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->onStop()V

    return-void
.end method

.method protected shouldFinishWhenBackgrounded()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected shouldShowLottie()Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 218
    new-instance v0, Lcom/android/settingslib/display/DisplayDensityUtils;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settingslib/display/DisplayDensityUtils;-><init>(Landroid/content/Context;)V

    .line 219
    invoke-virtual {v0}, Lcom/android/settingslib/display/DisplayDensityUtils;->getCurrentIndexForDefaultDisplay()I

    move-result p0

    .line 220
    invoke-virtual {v0}, Lcom/android/settingslib/display/DisplayDensityUtils;->getDefaultDisplayDensityValues()[I

    move-result-object v1

    aget p0, v1, p0

    .line 222
    invoke-virtual {v0}, Lcom/android/settingslib/display/DisplayDensityUtils;->getDefaultDensityForDefaultDisplay()I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected shouldStartAutomatically()Z
    .locals 2

    .line 447
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 450
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mRestoring:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsCanceled:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
