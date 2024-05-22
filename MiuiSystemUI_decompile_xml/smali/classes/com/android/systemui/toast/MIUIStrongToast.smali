.class public Lcom/android/systemui/toast/MIUIStrongToast;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAnimationProportion:F

.field public mAnimationXPad:F

.field public mCacheModel:Lcom/android/systemui/toast/bean/StrongToastModel;

.field public mCancelDecimalPointAnimation:Z

.field public mCharge:Ljava/lang/String;

.field public mChargeFlag:I

.field public mChargeLevel:F

.field public mChargeRate:F

.field public final mChargeStateColors:[[F

.field public final mChargeStateStop:[F

.field public mCheckChargeFirstVideoIsCompletion:Z

.field public mCheckChargeStartDouble:Z

.field public mCheckDoubleLightingShow:Z

.field public mCheckInOutStrongToasting:Z

.field public mCheckLeftNotInStartAnimation:Z

.field public mCheckLeftTextRunAnimation:Z

.field public mCheckRightNotInStartAnimation:Z

.field public mCheckStartAnimation:Z

.field public mCirCleCenter:Landroid/widget/FrameLayout;

.field public mContainerMargin:I

.field public mContext:Landroid/content/Context;

.field public mCurrentProgress:I

.field public mCurrentTextHeight:I

.field public mCurrentToastCategory:Ljava/lang/String;

.field public mCutOut:Landroid/view/View;

.field public mDFWAnimationSet:Landroid/animation/AnimatorSet;

.field public mDarkToast:Landroid/widget/LinearLayout;

.field public mDarkToastContent:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final mHideStrongToastRunnable:Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda0;

.field public mIconRightType:I

.field public final mLastHandler:Landroid/os/Handler;

.field public mLeftContentWithOutText:Landroid/widget/FrameLayout;

.field public mLeftIcon:Landroid/graphics/drawable/Drawable;

.field public mLeftImageView:Landroid/widget/ImageView;

.field public mLeftLabel:Ljava/lang/String;

.field public mLeftTextView:Landroid/widget/TextView;

.field public mLeftVideoReady:Z

.field public mLeftVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

.field public mMIUIStrongToastControl:Lcom/android/systemui/toast/MIUIStrongToastControl;

.field public mOnComputeInternalInsetsListener:Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda1;

.field public mOrientation:I

.field public mPadTractionAnimatorSet:Landroid/animation/AnimatorSet;

.field public mPaddingBig:I

.field public mPaddingDefault:I

.field public mPaddingSmail:I

.field public mRLLeft:Landroid/widget/RelativeLayout;

.field public mRLRight:Landroid/widget/RelativeLayout;

.field public mRightContentWithOutText:Landroid/widget/FrameLayout;

.field public mRightIcon:Landroid/graphics/drawable/Drawable;

.field public mRightImageView:Landroid/widget/ImageView;

.field public mRightLabel:Ljava/lang/String;

.field public mRightTextView:Landroid/widget/TextView;

.field public mRightVideoReady:Z

.field public mRightVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

.field public mRoundRect:Lcom/android/systemui/toast/view/RoundRect;

.field public mRuntimeShader:Landroid/graphics/RuntimeShader;

.field public mSTBgCenterIv:Landroid/widget/ImageView;

.field public mSTBgFL:Landroid/widget/FrameLayout;

.field public mScreenHeight:I

.field public mScreenWidth:I

.field public mShowBottom:Z

.field public final mShowStrongToastHandler:Landroid/os/Handler;

.field public final mStartAlphaConfig:Lmiuix/animation/base/AnimSpecialConfig;

.field public final mStartAlphaConfigPad:Lmiuix/animation/base/AnimSpecialConfig;

.field public final mStartXConfig:Lmiuix/animation/base/AnimSpecialConfig;

.field public final mStartXConfigPad:Lmiuix/animation/base/AnimSpecialConfig;

.field public mStorageHideState:Z

.field public mStrongSupperCharge:I

.field public mStrongToastBottomView:Landroid/view/View;

.field public mStrongToastShow:Z

.field public mTarget:Landroid/app/PendingIntent;

.field public mTextLeftColor:I

.field public mTextRightColor:I

.field public mValueAnimator:Landroid/animation/ValueAnimator;

.field public mVideoIndex:I

.field public mVideoLeftPath:Ljava/lang/String;

.field public mVideoRightPath:Ljava/lang/String;

.field public mView:Landroid/view/View;

.field public mWindowManager:Landroid/view/WindowManager;

.field public mediaLeftPlayer:Landroid/media/MediaPlayer;

.field public mediaRightPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public static synthetic $r8$lambda$Pp1fL5zYAKsVONBi443CCETjaFg(Lcom/android/systemui/toast/MIUIStrongToast;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mVideoIndex:I

    .line 2
    const/4 v1, 0x4

    .line 4
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-direct {p0}, Lcom/android/systemui/toast/MIUIStrongToast;->getResourcePath()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const v2, 0x7f12001d    # @raw/double_charge 'res/raw/double_charge.mp4'

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mVideoRightPath:Ljava/lang/String;

    .line 29
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 31
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 33
    move-result-object v0

    .line 36
    invoke-virtual {v2, v0}, Lcom/android/systemui/toast/view/TextureVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    const-string v2, "mVideoIndex: "

    .line 42
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    iget v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mVideoIndex:I

    .line 47
    const-string v3, "MIUIStrongToast"

    .line 49
    invoke-static {v0, v2, v3}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 54
    invoke-virtual {v0}, Lcom/android/systemui/toast/view/TextureVideoView;->start()V

    .line 56
    goto :goto_0

    .line 59
    :cond_0
    if-lez v0, :cond_1

    .line 60
    if-ge v0, v1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 64
    invoke-virtual {v0}, Lcom/android/systemui/toast/view/TextureVideoView;->start()V

    .line 66
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mVideoIndex:I

    .line 69
    add-int/lit8 v0, v0, 0x1

    .line 71
    iput v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mVideoIndex:I

    .line 73
    if-ne v0, v1, :cond_2

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/toast/MIUIStrongToast;->hideStrongToast()V

    .line 77
    :cond_2
    return-void
    .line 80
.end method

.method public static -$$Nest$mstartAnimationComplete(Lcom/android/systemui/toast/MIUIStrongToast;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckRightNotInStartAnimation:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckLeftNotInStartAnimation:Z

    .line 6
    if-eqz v0, :cond_1

    .line 8
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckStartAnimation:Z

    .line 11
    iget-boolean v1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mStorageHideState:Z

    .line 13
    if-eqz v1, :cond_1

    .line 15
    iget-boolean v1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mStrongToastShow:Z

    .line 17
    if-eqz v1, :cond_0

    .line 19
    iget-boolean v1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckInOutStrongToasting:Z

    .line 21
    if-nez v1, :cond_0

    .line 23
    const-string v1, "MIUIStrongToast"

    .line 25
    const-string v2, "realHideStrongToast"

    .line 27
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mShowStrongToastHandler:Landroid/os/Handler;

    .line 32
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mHideStrongToastRunnable:Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda0;

    .line 34
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/toast/MIUIStrongToast;->realHideStrongToast()V

    .line 39
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mStorageHideState:Z

    .line 42
    :cond_1
    return-void
    .line 44
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/toast/MIUIStrongToast;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/toast/MIUIStrongToast;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLastHandler:Landroid/os/Handler;

    .line 5
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mShowStrongToastHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    .line 6
    iput-object p2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightIcon:Landroid/graphics/drawable/Drawable;

    const-string p3, ""

    .line 7
    iput-object p3, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mVideoLeftPath:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mVideoRightPath:Ljava/lang/String;

    const/4 p3, 0x1

    .line 9
    iput-boolean p3, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckLeftNotInStartAnimation:Z

    .line 10
    iput-boolean p3, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckRightNotInStartAnimation:Z

    const/4 p3, 0x0

    .line 11
    iput-boolean p3, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckStartAnimation:Z

    .line 12
    iput-boolean p3, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftVideoReady:Z

    .line 13
    iput-boolean p3, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoReady:Z

    .line 14
    iput-object p2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCacheModel:Lcom/android/systemui/toast/bean/StrongToastModel;

    .line 15
    iput-boolean p3, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckLeftTextRunAnimation:Z

    .line 16
    new-instance p2, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {p2}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const/4 v2, -0x2

    .line 17
    invoke-virtual {p2, v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p2

    const-wide/16 v3, 0x32

    .line 18
    invoke-virtual {p2, v3, v4}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    move-result-object p2

    check-cast p2, Lmiuix/animation/base/AnimSpecialConfig;

    .line 19
    new-instance v1, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    new-array v3, v0, [F

    fill-array-data v3, :array_1

    .line 20
    invoke-virtual {v1, v2, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    check-cast v1, Lmiuix/animation/base/AnimSpecialConfig;

    .line 21
    new-instance v3, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    new-array v4, v0, [F

    fill-array-data v4, :array_2

    .line 22
    invoke-virtual {v3, v2, v4}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    const-wide/16 v4, 0xc8

    .line 23
    invoke-virtual {v3, v4, v5}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    check-cast v3, Lmiuix/animation/base/AnimSpecialConfig;

    iput-object v3, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mStartXConfig:Lmiuix/animation/base/AnimSpecialConfig;

    .line 24
    new-instance v3, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    new-array v4, v0, [F

    fill-array-data v4, :array_3

    .line 25
    invoke-virtual {v3, v2, v4}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    const-wide/16 v4, 0x12c

    .line 26
    invoke-virtual {v3, v4, v5}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    check-cast v3, Lmiuix/animation/base/AnimSpecialConfig;

    iput-object v3, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mStartAlphaConfig:Lmiuix/animation/base/AnimSpecialConfig;

    .line 27
    new-instance v3, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    new-array v4, v0, [F

    fill-array-data v4, :array_4

    .line 28
    invoke-virtual {v3, v2, v4}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    check-cast v3, Lmiuix/animation/base/AnimSpecialConfig;

    iput-object v3, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mStartXConfigPad:Lmiuix/animation/base/AnimSpecialConfig;

    .line 29
    new-instance v3, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    new-array v0, v0, [F

    fill-array-data v0, :array_5

    .line 30
    invoke-virtual {v3, v2, v0}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    iput-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mStartAlphaConfigPad:Lmiuix/animation/base/AnimSpecialConfig;

    .line 31
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    sget-object v2, Lmiuix/animation/property/ViewProperty;->X:Lmiuix/animation/property/ViewProperty;

    .line 32
    invoke-virtual {v0, v2, p2}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    move-result-object p2

    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 33
    invoke-virtual {p2, v0, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 34
    new-instance p2, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;I)V

    iput-object p2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mHideStrongToastRunnable:Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    .line 35
    iput p2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mAnimationXPad:F

    const/4 p2, 0x4

    new-array v0, p2, [F

    .line 36
    fill-array-data v0, :array_6

    new-array v1, p2, [F

    fill-array-data v1, :array_7

    new-array v2, p2, [F

    fill-array-data v2, :array_8

    new-array v3, p2, [F

    fill-array-data v3, :array_9

    filled-new-array {v0, v1, v2, v3}, [[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mChargeStateColors:[[F

    new-array p2, p2, [F

    .line 37
    fill-array-data p2, :array_a

    iput-object p2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mChargeStateStop:[F

    .line 38
    iput-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mContext:Landroid/content/Context;

    .line 39
    const-class p2, Lcom/android/systemui/toast/MIUIStrongToastControl;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/toast/MIUIStrongToastControl;

    iput-object p2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mMIUIStrongToastControl:Lcom/android/systemui/toast/MIUIStrongToastControl;

    .line 40
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    iput p2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mOrientation:I

    .line 41
    iget-object p2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f05000e    # @bool/check_is_default_strong_toast 'true'

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mShowBottom:Z

    .line 42
    iget-object p2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mScreenHeight:I

    .line 43
    const-class p2, Landroid/view/WindowManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mWindowManager:Landroid/view/WindowManager;

    .line 44
    invoke-interface {p1}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mScreenWidth:I

    int-to-float p1, p1

    const p2, 0x3dc67382    # 0.0969f

    mul-float/2addr p2, p1

    float-to-int p2, p2

    .line 45
    iput p2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCurrentTextHeight:I

    const/high16 p2, 0x43c40000    # 392.0f

    div-float/2addr p1, p2

    .line 46
    iput p1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mAnimationProportion:F

    .line 47
    iput-boolean p3, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mStorageHideState:Z

    .line 48
    iget-boolean p1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mShowBottom:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f071114    # @dimen/strong_toast_width_window '337.0dp'

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 50
    iget-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f071112    # @dimen/strong_toast_view_animation_x '42.0dp'

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mAnimationXPad:F

    .line 51
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Screen width :"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mScreenWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "   mCurrentTextHeight"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCurrentTextHeight:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "mAnimationProportion :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mAnimationProportion:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MIUIStrongToast"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3ecccccd    # 0.4f
    .end array-data

    :array_1
    .array-data 4
        0x3f733333    # 0.95f
        0x3e19999a    # 0.15f
    .end array-data

    :array_2
    .array-data 4
        0x3f666666    # 0.9f
        0x3ecccccd    # 0.4f
    .end array-data

    :array_3
    .array-data 4
        0x3f733333    # 0.95f
        0x3eb33333    # 0.35f
    .end array-data

    :array_4
    .array-data 4
        0x3f666666    # 0.9f
        0x3ecccccd    # 0.4f
    .end array-data

    :array_5
    .array-data 4
        0x3f733333    # 0.95f
        0x3eb33333    # 0.35f
    .end array-data

    :array_6
    .array-data 4
        0x3efae148    # 0.49f
        0x3f800000    # 1.0f
        0x3eeb851f    # 0.46f
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x3efae148    # 0.49f
        0x3f7ae148    # 0.98f
        0x3f051eb8    # 0.52f
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        0x3f68f5c3    # 0.91f
        0x3f800000    # 1.0f
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        0x3f2147ae    # 0.63f
        0x3f7851ec    # 0.97f
        0x3f11eb85    # 0.57f
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x3eb851ec    # 0.36f
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getPadBgAlphaAnimator()Landroid/animation/ObjectAnimator;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRoundRect:Lcom/android/systemui/toast/view/RoundRect;

    .line 2
    const/4 v0, 0x2

    .line 4
    new-array v0, v0, [F

    .line 5
    fill-array-data v0, :array_0

    .line 7
    const-string v1, "alpha"

    .line 10
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 12
    move-result-object p0

    .line 15
    const-wide/16 v0, 0x15e

    .line 16
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 18
    const-wide/16 v0, 0x12c

    .line 21
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 23
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 26
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 28
    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 30
    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 33
    return-object p0

    .line 36
    nop

    .line 37
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
    .line 38
.end method

.method private getPadBgTractionAnimation()Landroid/animation/AnimatorSet;
    .locals 5

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 2
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 4
    const/4 v1, 0x2

    .line 7
    new-array v2, v1, [F

    .line 8
    fill-array-data v2, :array_0

    .line 10
    invoke-static {v2}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 13
    move-result-object v2

    .line 16
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 17
    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 19
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 22
    const-wide/16 v3, 0xfa

    .line 25
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 27
    new-instance v3, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda2;

    .line 30
    const/4 v4, 0x0

    .line 32
    invoke-direct {v3, p0, v4}, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;I)V

    .line 33
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 36
    new-array v1, v1, [F

    .line 39
    fill-array-data v1, :array_1

    .line 41
    invoke-static {v1}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 44
    move-result-object v1

    .line 47
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    .line 48
    const/high16 v4, 0x40000000    # 2.0f

    .line 50
    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 52
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 55
    const-wide/16 v3, 0x12c

    .line 58
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 60
    new-instance v3, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda2;

    .line 63
    const/4 v4, 0x1

    .line 65
    invoke-direct {v3, p0, v4}, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;I)V

    .line 66
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 69
    filled-new-array {v2, v1}, [Landroid/animation/Animator;

    .line 72
    move-result-object p0

    .line 75
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 76
    return-object v0

    .line 79
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f86c8b4    # 1.053f
    .end array-data

    .line 80
    :array_1
    .array-data 4
        0x3f86c8b4    # 1.053f
        0x3e083127    # 0.133f
    .end array-data
    .line 88
.end method

.method private getPadLeftRightAlphaAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLLeft:Landroid/widget/RelativeLayout;

    .line 2
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [F

    .line 5
    fill-array-data v2, :array_0

    .line 7
    const-string v3, "alpha"

    .line 10
    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 12
    move-result-object v0

    .line 15
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    .line 16
    const/high16 v4, 0x3fc00000    # 1.5f

    .line 18
    invoke-direct {v2, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 20
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 23
    const-wide/16 v5, 0x96

    .line 26
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 28
    const-wide/16 v7, 0xfa

    .line 31
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 33
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLRight:Landroid/widget/RelativeLayout;

    .line 36
    new-array v1, v1, [F

    .line 38
    fill-array-data v1, :array_1

    .line 40
    invoke-static {p0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 43
    move-result-object p0

    .line 46
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 47
    invoke-direct {v1, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 49
    invoke-virtual {p0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 52
    invoke-virtual {p0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 55
    invoke-virtual {p0, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 58
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 61
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 63
    filled-new-array {v0, p0}, [Landroid/animation/Animator;

    .line 66
    move-result-object p0

    .line 69
    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 70
    return-object v1

    .line 73
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 74
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
    .line 82
.end method

.method private getResourcePath()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "android.resource://"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string p0, "/"

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 26
    return-object p0
    .line 27
.end method

.method private getWindowParam()Landroid/view/WindowManager$LayoutParams;
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mShowBottom:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCurrentTextHeight:I

    .line 6
    mul-int/lit8 v0, v0, 0x2

    .line 8
    const/4 v1, -0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object v0

    .line 17
    const v1, 0x7f071114    # @dimen/strong_toast_width_window '337.0dp'

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 21
    move-result v1

    .line 24
    const/4 v0, -0x2

    .line 25
    :goto_0
    move v4, v0

    .line 26
    move v3, v1

    .line 27
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 28
    const/16 v5, 0x7e1

    .line 30
    const v6, 0x1800728

    .line 32
    const/4 v7, -0x3

    .line 35
    move-object v2, v0

    .line 36
    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 37
    const/16 v1, 0x504

    .line 40
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 42
    iget-boolean p0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mShowBottom:Z

    .line 44
    if-eqz p0, :cond_1

    .line 46
    const p0, 0x7f1401ac    # @style/MIUIStrongToast

    .line 48
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 51
    :cond_1
    const-string p0, "StrongToastView"

    .line 53
    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    .line 58
    const/16 p0, 0x31

    .line 61
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 63
    return-object v0
    .line 65
.end method


# virtual methods
.method public final checkRegisterClickForIntent(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCurrentToastCategory:Ljava/lang/String;

    .line 2
    const-string/jumbo v1, "text_bitmap_intent"

    .line 4
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 7
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCurrentToastCategory:Ljava/lang/String;

    .line 13
    const-string/jumbo v1, "video_bitmap_intent"

    .line 15
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightImageView:Landroid/widget/ImageView;

    .line 24
    new-instance v1, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda3;

    .line 26
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;Z)V

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    :cond_1
    return-void
    .line 34
.end method

.method public final clearAll()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCurrentToastCategory:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 7
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, -0x1

    .line 12
    sparse-switch v1, :sswitch_data_0

    .line 13
    goto :goto_0

    .line 16
    :sswitch_0
    const-string/jumbo v1, "video_text_text_video"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    const/4 v3, 0x3

    .line 27
    goto :goto_0

    .line 28
    :sswitch_1
    const-string v1, "charge"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    goto :goto_0

    .line 37
    :cond_1
    const/4 v3, 0x2

    .line 38
    goto :goto_0

    .line 39
    :sswitch_2
    const-string/jumbo v1, "video_bitmap_intent"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v0

    .line 46
    if-nez v0, :cond_2

    .line 47
    goto :goto_0

    .line 49
    :cond_2
    const/4 v3, 0x1

    .line 50
    goto :goto_0

    .line 51
    :sswitch_3
    const-string/jumbo v1, "video_text"

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v0

    .line 58
    if-nez v0, :cond_3

    .line 59
    goto :goto_0

    .line 61
    :cond_3
    move v3, v2

    .line 62
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 63
    goto :goto_1

    .line 66
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 67
    if-eqz v0, :cond_4

    .line 69
    invoke-virtual {v0, v2}, Lcom/android/systemui/toast/view/TextureVideoView;->release(Z)V

    .line 71
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftImageView:Landroid/widget/ImageView;

    .line 74
    if-eqz v0, :cond_5

    .line 76
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 81
    if-eqz v0, :cond_6

    .line 83
    invoke-virtual {v0, v2}, Lcom/android/systemui/toast/view/TextureVideoView;->release(Z)V

    .line 85
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightImageView:Landroid/widget/ImageView;

    .line 88
    if-eqz p0, :cond_a

    .line 90
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    goto :goto_1

    .line 95
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftTextView:Landroid/widget/TextView;

    .line 96
    if-eqz v0, :cond_7

    .line 98
    iget-object v1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCharge:Ljava/lang/String;

    .line 100
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 105
    if-eqz v0, :cond_8

    .line 107
    invoke-virtual {v0, v2}, Lcom/android/systemui/toast/view/TextureVideoView;->release(Z)V

    .line 109
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightImageView:Landroid/widget/ImageView;

    .line 112
    if-eqz p0, :cond_a

    .line 114
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    goto :goto_1

    .line 119
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 120
    if-eqz v0, :cond_9

    .line 122
    invoke-virtual {v0, v2}, Lcom/android/systemui/toast/view/TextureVideoView;->release(Z)V

    .line 124
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftImageView:Landroid/widget/ImageView;

    .line 127
    if-eqz p0, :cond_a

    .line 129
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    :cond_a
    :goto_1
    return-void

    .line 134
    nop

    .line 135
    :sswitch_data_0
    .sparse-switch
        -0x606e818f -> :sswitch_3
        -0x5f0aad18 -> :sswitch_2
        -0x5128dd4c -> :sswitch_1
        0x446f7d77 -> :sswitch_0
    .end sparse-switch

    .line 136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 154
.end method

.method public final doHideViewAnimationTB()V
    .locals 7

    .line 1
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 2
    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 4
    const/4 v1, 0x2

    .line 7
    new-array v1, v1, [F

    .line 8
    fill-array-data v1, :array_0

    .line 10
    const/4 v2, -0x2

    .line 13
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 18
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    .line 20
    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 22
    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 25
    invoke-virtual {v1, v2, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 27
    move-result-object v0

    .line 30
    new-instance v1, Lmiuix/animation/controller/AnimState;

    .line 31
    invoke-direct {v1}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 33
    const/4 v3, 0x0

    .line 36
    int-to-double v3, v3

    .line 37
    invoke-virtual {v1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 38
    move-result-object v1

    .line 41
    new-instance v5, Lmiuix/animation/controller/AnimState;

    .line 42
    invoke-direct {v5}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 44
    invoke-virtual {v5, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 47
    move-result-object v3

    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/toast/MIUIStrongToast;->clearAll()V

    .line 51
    iget-object v4, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLLeft:Landroid/widget/RelativeLayout;

    .line 54
    filled-new-array {v4}, [Landroid/view/View;

    .line 56
    move-result-object v4

    .line 59
    invoke-static {v4}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 60
    move-result-object v4

    .line 63
    invoke-interface {v4}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 64
    move-result-object v4

    .line 67
    const/4 v5, 0x1

    .line 68
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v5

    .line 72
    filled-new-array {v2, v5}, [Ljava/lang/Object;

    .line 73
    move-result-object v6

    .line 76
    invoke-interface {v4, v6}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 77
    move-result-object v4

    .line 80
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 81
    move-result-object v6

    .line 84
    invoke-interface {v4, v1, v6}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 85
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLRight:Landroid/widget/RelativeLayout;

    .line 88
    filled-new-array {p0}, [Landroid/view/View;

    .line 90
    move-result-object p0

    .line 93
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 94
    move-result-object p0

    .line 97
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 98
    move-result-object p0

    .line 101
    filled-new-array {v2, v5}, [Ljava/lang/Object;

    .line 102
    move-result-object v1

    .line 105
    invoke-interface {p0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 106
    move-result-object p0

    .line 109
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 110
    move-result-object v0

    .line 113
    invoke-interface {p0, v3, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 114
    return-void

    .line 117
    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3e19999a    # 0.15f
    .end array-data
    .line 118
.end method

.method public final doShowViewAnimationForTB()V
    .locals 7

    .line 1
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 2
    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 4
    const/4 v1, 0x2

    .line 7
    new-array v1, v1, [F

    .line 8
    fill-array-data v1, :array_0

    .line 10
    const/4 v2, -0x2

    .line 13
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 14
    move-result-object v0

    .line 17
    const-wide/16 v1, 0x46

    .line 18
    invoke-virtual {v0, v1, v2}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 24
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    .line 26
    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 28
    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 31
    invoke-virtual {v1, v2, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 33
    move-result-object v0

    .line 36
    new-instance v1, Lmiuix/animation/controller/AnimState;

    .line 37
    const-string v3, "leftState"

    .line 39
    invoke-direct {v1, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 41
    const/4 v3, 0x1

    .line 44
    int-to-double v3, v3

    .line 45
    invoke-virtual {v1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 46
    move-result-object v1

    .line 49
    const-string/jumbo v5, "rightState"

    .line 50
    invoke-static {v5, v2, v3, v4}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    .line 53
    move-result-object v3

    .line 56
    iget-object v4, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLLeft:Landroid/widget/RelativeLayout;

    .line 57
    filled-new-array {v4}, [Landroid/view/View;

    .line 59
    move-result-object v4

    .line 62
    invoke-static {v4}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 63
    move-result-object v4

    .line 66
    invoke-interface {v4}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 67
    move-result-object v4

    .line 70
    const/4 v5, 0x0

    .line 71
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object v5

    .line 75
    filled-new-array {v2, v5}, [Ljava/lang/Object;

    .line 76
    move-result-object v6

    .line 79
    invoke-interface {v4, v6}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 80
    move-result-object v4

    .line 83
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 84
    move-result-object v6

    .line 87
    invoke-interface {v4, v1, v6}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 88
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLRight:Landroid/widget/RelativeLayout;

    .line 91
    filled-new-array {p0}, [Landroid/view/View;

    .line 93
    move-result-object p0

    .line 96
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 97
    move-result-object p0

    .line 100
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 101
    move-result-object p0

    .line 104
    filled-new-array {v2, v5}, [Ljava/lang/Object;

    .line 105
    move-result-object v1

    .line 108
    invoke-interface {p0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 109
    move-result-object p0

    .line 112
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 113
    move-result-object v0

    .line 116
    invoke-interface {p0, v3, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 117
    return-void

    .line 120
    nop

    .line 121
    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3e800000    # 0.25f
    .end array-data
    .line 122
.end method

.method public final getPadSideTranslationAnimatorSet(FFZ)Landroid/animation/AnimatorSet;
    .locals 7

    .line 1
    if-eqz p3, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLLeft:Landroid/widget/RelativeLayout;

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLRight:Landroid/widget/RelativeLayout;

    .line 7
    :goto_0
    if-eqz p3, :cond_1

    .line 9
    neg-float p1, p1

    .line 11
    :cond_1
    if-eqz p3, :cond_2

    .line 12
    goto :goto_1

    .line 14
    :cond_2
    neg-float p2, p2

    .line 15
    :goto_1
    new-instance p3, Landroid/animation/AnimatorSet;

    .line 16
    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 18
    sget-object v0, Landroid/widget/FrameLayout;->TRANSLATION_X:Landroid/util/Property;

    .line 21
    const/4 v1, 0x2

    .line 23
    new-array v2, v1, [F

    .line 24
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    aput v3, v2, v4

    .line 28
    const/4 v3, 0x1

    .line 30
    aput p1, v2, v3

    .line 31
    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 33
    move-result-object v0

    .line 36
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 37
    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 39
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 42
    const-wide/16 v5, 0xfa

    .line 45
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 47
    sget-object v2, Landroid/widget/FrameLayout;->TRANSLATION_X:Landroid/util/Property;

    .line 50
    new-array v1, v1, [F

    .line 52
    aput p1, v1, v4

    .line 54
    aput p2, v1, v3

    .line 56
    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 58
    move-result-object p0

    .line 61
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    .line 62
    const/high16 p2, 0x40000000    # 2.0f

    .line 64
    invoke-direct {p1, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 66
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 69
    const-wide/16 p1, 0x12c

    .line 72
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 74
    filled-new-array {v0, p0}, [Landroid/animation/Animator;

    .line 77
    move-result-object p0

    .line 80
    invoke-virtual {p3, p0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 81
    return-object p3
    .line 84
.end method

.method public final hideStrongToast()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mShowBottom:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckStartAnimation:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mStorageHideState:Z

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/toast/MIUIStrongToast;->realHideStrongToast()V

    .line 14
    :goto_0
    return-void
    .line 17
.end method

.method public final isRTL()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 12
    move-result p0

    .line 15
    const/4 v0, 0x1

    .line 16
    if-ne p0, v0, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
    .line 21
.end method

.method public final onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 5
    move-result-object v0

    .line 8
    new-instance v1, Lcom/android/systemui/toast/MIUIStrongToast$2;

    .line 9
    const/4 v2, 0x2

    .line 11
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/toast/MIUIStrongToast$2;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;I)V

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 15
    new-instance v0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda1;

    .line 18
    invoke-direct {v0, p0}, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;)V

    .line 20
    iput-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mOnComputeInternalInsetsListener:Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda1;

    .line 23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 25
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mOnComputeInternalInsetsListener:Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda1;

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 31
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLastHandler:Landroid/os/Handler;

    .line 34
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mHideStrongToastRunnable:Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda0;

    .line 36
    const-wide/16 v1, 0x7530

    .line 38
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    return-void
    .line 43
.end method

.method public final onComplete()V
    .locals 4

    .line 1
    const-string v0, "MIUIStrongToast"

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mWindowManager:Landroid/view/WindowManager;

    .line 4
    invoke-interface {v1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    goto :goto_0

    .line 9
    :catch_0
    move-exception v1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    const-string v3, "Exception "

    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :goto_0
    const-string v1, "onComplete"

    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mStrongToastShow:Z

    .line 34
    iget-boolean v1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckInOutStrongToasting:Z

    .line 36
    if-eqz v1, :cond_0

    .line 38
    iput-boolean v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckInOutStrongToasting:Z

    .line 40
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCacheModel:Lcom/android/systemui/toast/bean/StrongToastModel;

    .line 42
    if-eqz v0, :cond_0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mMIUIStrongToastControl:Lcom/android/systemui/toast/MIUIStrongToastControl;

    .line 46
    if-eqz p0, :cond_0

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/systemui/toast/MIUIStrongToastControl;->showCustomStrongToast(Lcom/android/systemui/toast/bean/StrongToastModel;)V

    .line 50
    :cond_0
    return-void
    .line 53
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 11
    move-result-object v0

    .line 14
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 15
    const-string/jumbo v1, "screenHeight :"

    .line 17
    const-string v2, "MIUIStrongToast"

    .line 20
    invoke-static {v1, v0, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 22
    iget v1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mScreenHeight:I

    .line 25
    if-ne v1, v0, :cond_0

    .line 27
    if-eqz p1, :cond_1

    .line 29
    iget v1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mOrientation:I

    .line 31
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    .line 33
    if-eq v1, v2, :cond_1

    .line 35
    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 37
    iput p1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mOrientation:I

    .line 39
    iput v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mScreenHeight:I

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/toast/MIUIStrongToast;->hideStrongToast()V

    .line 43
    :cond_1
    return-void
    .line 46
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/toast/MIUIStrongToast;->clearAll()V

    .line 5
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLastHandler:Landroid/os/Handler;

    .line 8
    iget-object v1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mHideStrongToastRunnable:Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda0;

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 15
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mOnComputeInternalInsetsListener:Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda1;

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 21
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mOnComputeInternalInsetsListener:Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda1;

    .line 25
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 27
    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckLeftTextRunAnimation:Z

    .line 35
    return-void
    .line 37
.end method

.method public final onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    return-void
    .line 5
.end method

.method public final realHideStrongToast()V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mStrongToastShow:Z

    .line 2
    if-eqz v0, :cond_3

    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckInOutStrongToasting:Z

    .line 6
    if-nez v0, :cond_3

    .line 8
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    iput-boolean v1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckInOutStrongToasting:Z

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/toast/MIUIStrongToast;->getWindowParam()Landroid/view/WindowManager$LayoutParams;

    .line 15
    move-result-object v0

    .line 18
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 19
    or-int/lit8 v2, v2, 0x10

    .line 21
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 23
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mWindowManager:Landroid/view/WindowManager;

    .line 25
    iget-object v3, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mView:Landroid/view/View;

    .line 27
    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/toast/MIUIStrongToast;->clearAll()V

    .line 32
    iget-boolean v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mShowBottom:Z

    .line 35
    const/4 v2, 0x2

    .line 37
    const/4 v3, 0x0

    .line 38
    const/high16 v4, 0x40000000    # 2.0f

    .line 39
    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mDarkToast:Landroid/widget/LinearLayout;

    .line 43
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    .line 45
    move-result v0

    .line 48
    neg-int v0, v0

    .line 49
    iget-object v5, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLLeft:Landroid/widget/RelativeLayout;

    .line 50
    new-array v6, v2, [F

    .line 52
    fill-array-data v6, :array_0

    .line 54
    const-string v7, "alpha"

    .line 57
    invoke-static {v5, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 59
    move-result-object v5

    .line 62
    const-wide/16 v8, 0xc8

    .line 63
    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 65
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    .line 68
    invoke-direct {v6, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 70
    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 73
    iget-object v6, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLRight:Landroid/widget/RelativeLayout;

    .line 76
    new-array v10, v2, [F

    .line 78
    fill-array-data v10, :array_1

    .line 80
    invoke-static {v6, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 83
    move-result-object v6

    .line 86
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 87
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    .line 90
    invoke-direct {v7, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 92
    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 95
    iget-object v7, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mDarkToast:Landroid/widget/LinearLayout;

    .line 98
    sget-object v8, Landroid/widget/FrameLayout;->TRANSLATION_Y:Landroid/util/Property;

    .line 100
    new-array v2, v2, [F

    .line 102
    int-to-float v9, v3

    .line 104
    aput v9, v2, v3

    .line 105
    int-to-float v0, v0

    .line 107
    aput v0, v2, v1

    .line 108
    invoke-static {v7, v8, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 110
    move-result-object v0

    .line 113
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 114
    invoke-direct {v1, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 116
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 119
    const-wide/16 v1, 0x1f4

    .line 122
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 124
    const-wide/16 v1, 0x64

    .line 127
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 129
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 132
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 134
    iput-object v1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mDFWAnimationSet:Landroid/animation/AnimatorSet;

    .line 137
    filled-new-array {v5, v6, v0}, [Landroid/animation/Animator;

    .line 139
    move-result-object v0

    .line 142
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mDFWAnimationSet:Landroid/animation/AnimatorSet;

    .line 146
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mDFWAnimationSet:Landroid/animation/AnimatorSet;

    .line 151
    new-instance v1, Lcom/android/systemui/toast/MIUIStrongToast$7;

    .line 153
    invoke-direct {v1, p0, v3}, Lcom/android/systemui/toast/MIUIStrongToast$7;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;I)V

    .line 155
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 158
    goto/16 :goto_0

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mPadTractionAnimatorSet:Landroid/animation/AnimatorSet;

    .line 163
    if-eqz v0, :cond_2

    .line 165
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 167
    :cond_2
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 170
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 172
    iput-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mPadTractionAnimatorSet:Landroid/animation/AnimatorSet;

    .line 175
    invoke-direct {p0}, Lcom/android/systemui/toast/MIUIStrongToast;->getPadBgTractionAnimation()Landroid/animation/AnimatorSet;

    .line 177
    move-result-object v5

    .line 180
    invoke-direct {p0}, Lcom/android/systemui/toast/MIUIStrongToast;->getPadBgAlphaAnimator()Landroid/animation/ObjectAnimator;

    .line 181
    move-result-object v6

    .line 184
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mContext:Landroid/content/Context;

    .line 185
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 187
    move-result-object v0

    .line 190
    const v7, 0x7f07110d    # @dimen/strong_toast_bg_padding '0.0dp'

    .line 191
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 194
    move-result v0

    .line 197
    int-to-float v0, v0

    .line 198
    iget-object v7, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRoundRect:Lcom/android/systemui/toast/view/RoundRect;

    .line 199
    invoke-virtual {v7}, Lcom/android/systemui/toast/view/RoundRect;->getRoundRectWidth()F

    .line 201
    move-result v7

    .line 204
    div-float/2addr v7, v4

    .line 205
    invoke-virtual {p0, v0, v7, v1}, Lcom/android/systemui/toast/MIUIStrongToast;->getPadSideTranslationAnimatorSet(FFZ)Landroid/animation/AnimatorSet;

    .line 206
    move-result-object v8

    .line 209
    invoke-virtual {p0, v0, v7, v3}, Lcom/android/systemui/toast/MIUIStrongToast;->getPadSideTranslationAnimatorSet(FFZ)Landroid/animation/AnimatorSet;

    .line 210
    move-result-object v0

    .line 213
    invoke-direct {p0}, Lcom/android/systemui/toast/MIUIStrongToast;->getPadLeftRightAlphaAnimatorSet()Landroid/animation/AnimatorSet;

    .line 214
    move-result-object v9

    .line 217
    iget-object v3, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mDarkToastContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 218
    sget-object v7, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    .line 220
    new-array v10, v2, [F

    .line 222
    fill-array-data v10, :array_2

    .line 224
    invoke-static {v3, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 227
    move-result-object v3

    .line 230
    iget-object v7, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mDarkToastContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 231
    sget-object v10, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    .line 233
    new-array v2, v2, [F

    .line 235
    fill-array-data v2, :array_3

    .line 237
    invoke-static {v7, v10, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 240
    move-result-object v2

    .line 243
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    .line 244
    invoke-direct {v7, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 246
    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 249
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    .line 252
    invoke-direct {v7, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 254
    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 257
    const-wide/16 v10, 0x12c

    .line 260
    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 262
    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 265
    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 268
    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 271
    new-instance v10, Landroid/animation/AnimatorSet;

    .line 274
    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    .line 276
    filled-new-array {v2, v3}, [Landroid/animation/Animator;

    .line 279
    move-result-object v2

    .line 282
    invoke-virtual {v10, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 283
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mPadTractionAnimatorSet:Landroid/animation/AnimatorSet;

    .line 286
    move-object v7, v8

    .line 288
    move-object v8, v0

    .line 289
    filled-new-array/range {v5 .. v10}, [Landroid/animation/Animator;

    .line 290
    move-result-object v0

    .line 293
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 294
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mPadTractionAnimatorSet:Landroid/animation/AnimatorSet;

    .line 297
    new-instance v2, Lcom/android/systemui/toast/MIUIStrongToast$5;

    .line 299
    invoke-direct {v2, p0, v1}, Lcom/android/systemui/toast/MIUIStrongToast$5;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;I)V

    .line 301
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 304
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mPadTractionAnimatorSet:Landroid/animation/AnimatorSet;

    .line 307
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 309
    :cond_3
    :goto_0
    return-void

    .line 312
    nop

    .line 313
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 314
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 322
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    .line 330
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
    .line 338
.end method

.method public final realStartVideo()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckChargeFirstVideoIsCompletion:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckChargeStartDouble:Z

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 7
    invoke-virtual {v1, v0}, Lcom/android/systemui/toast/view/TextureVideoView;->release(Z)V

    .line 9
    iget-object v1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 12
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mVideoRightPath:Ljava/lang/String;

    .line 14
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Lcom/android/systemui/toast/view/TextureVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 20
    iget-object v1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 23
    invoke-virtual {v1}, Lcom/android/systemui/toast/view/TextureVideoView;->start()V

    .line 25
    iput v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mVideoIndex:I

    .line 28
    iget v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mChargeFlag:I

    .line 30
    const/4 v1, 0x2

    .line 32
    if-ne v0, v1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 35
    new-instance v1, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda8;

    .line 37
    const/4 v2, 0x1

    .line 39
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;I)V

    .line 40
    invoke-virtual {v0, v1}, Lcom/android/systemui/toast/view/TextureVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 46
    :catch_0
    move-exception p0

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    const-string v1, "playVideo: e: "

    .line 50
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 65
    const-string v0, "MIUIStrongToast"

    .line 66
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    :goto_0
    return-void
    .line 71
.end method

.method public final setValue()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCurrentToastCategory:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 7
    move-result v1

    .line 10
    const-string/jumbo v2, "text_bitmap_intent"

    .line 11
    const/4 v3, 0x3

    .line 14
    const-string/jumbo v4, "text_bitmap"

    .line 15
    const/4 v5, 0x2

    .line 18
    const/4 v6, 0x1

    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v8, -0x1

    .line 21
    sparse-switch v1, :sswitch_data_0

    .line 22
    goto :goto_0

    .line 25
    :sswitch_0
    const-string/jumbo v1, "video_text_text_video"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    goto :goto_0

    .line 35
    :cond_0
    const/4 v8, 0x5

    .line 36
    goto :goto_0

    .line 37
    :sswitch_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    goto :goto_0

    .line 44
    :cond_1
    const/4 v8, 0x4

    .line 45
    goto :goto_0

    .line 46
    :sswitch_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v0

    .line 50
    if-nez v0, :cond_2

    .line 51
    goto :goto_0

    .line 53
    :cond_2
    move v8, v3

    .line 54
    goto :goto_0

    .line 55
    :sswitch_3
    const-string v1, "charge"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v0

    .line 61
    if-nez v0, :cond_3

    .line 62
    goto :goto_0

    .line 64
    :cond_3
    move v8, v5

    .line 65
    goto :goto_0

    .line 66
    :sswitch_4
    const-string/jumbo v1, "video_bitmap_intent"

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v0

    .line 73
    if-nez v0, :cond_4

    .line 74
    goto :goto_0

    .line 76
    :cond_4
    move v8, v6

    .line 77
    goto :goto_0

    .line 78
    :sswitch_5
    const-string/jumbo v1, "video_text"

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v0

    .line 85
    if-nez v0, :cond_5

    .line 86
    goto :goto_0

    .line 88
    :cond_5
    move v8, v7

    .line 89
    :goto_0
    const-string v0, "excepiton :"

    .line 90
    const-string v1, "MIUIStrongToast"

    .line 92
    const/16 v9, 0x8

    .line 94
    packed-switch v8, :pswitch_data_0

    .line 96
    goto/16 :goto_5

    .line 99
    :pswitch_0
    const-string/jumbo v2, "uri1 :"

    .line 101
    const-string v3, "path1 :"

    .line 104
    const-string v4, "VIDEO_TEXT_TEXT_VIDEO"

    .line 106
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v4, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftTextView:Landroid/widget/TextView;

    .line 111
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v4, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightTextView:Landroid/widget/TextView;

    .line 116
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v4, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 121
    invoke-virtual {v4, v7}, Landroid/view/TextureView;->setVisibility(I)V

    .line 123
    iget-object v4, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 126
    invoke-virtual {v4, v7}, Landroid/view/TextureView;->setVisibility(I)V

    .line 128
    iget-object v4, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftContentWithOutText:Landroid/widget/FrameLayout;

    .line 131
    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 133
    iget-object v4, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftImageView:Landroid/widget/ImageView;

    .line 136
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    iget-object v4, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightImageView:Landroid/widget/ImageView;

    .line 141
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object v4, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftTextView:Landroid/widget/TextView;

    .line 146
    iget v8, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mTextLeftColor:I

    .line 148
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    iget-object v4, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightTextView:Landroid/widget/TextView;

    .line 153
    iget v8, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mTextRightColor:I

    .line 155
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    iget-object v4, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftTextView:Landroid/widget/TextView;

    .line 160
    iget-object v8, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftLabel:Ljava/lang/String;

    .line 162
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v4, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightTextView:Landroid/widget/TextView;

    .line 167
    iget-object v8, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightLabel:Ljava/lang/String;

    .line 169
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v4, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightContentWithOutText:Landroid/widget/FrameLayout;

    .line 174
    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 176
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 179
    iget-object v8, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mVideoLeftPath:Ljava/lang/String;

    .line 181
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 183
    move-result-object v8

    .line 186
    invoke-virtual {v4, v8}, Lcom/android/systemui/toast/view/TextureVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 187
    new-instance v4, Ljava/lang/StringBuilder;

    .line 190
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    iget-object v3, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mVideoRightPath:Ljava/lang/String;

    .line 195
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    move-result-object v3

    .line 203
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    .line 207
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mVideoRightPath:Ljava/lang/String;

    .line 212
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 214
    move-result-object v2

    .line 217
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    move-result-object v2

    .line 224
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 228
    iget-object v3, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mVideoRightPath:Ljava/lang/String;

    .line 230
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 232
    move-result-object v3

    .line 235
    invoke-virtual {v2, v3}, Lcom/android/systemui/toast/view/TextureVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 236
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 239
    new-instance v3, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda4;

    .line 241
    invoke-direct {v3, p0, v6}, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;I)V

    .line 243
    invoke-virtual {v2, v3}, Lcom/android/systemui/toast/view/TextureVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 246
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 249
    new-instance v3, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda4;

    .line 251
    invoke-direct {v3, p0, v5}, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;I)V

    .line 253
    invoke-virtual {v2, v3}, Lcom/android/systemui/toast/view/TextureVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 256
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mSTBgCenterIv:Landroid/widget/ImageView;

    .line 259
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    goto :goto_1

    .line 264
    :catch_0
    move-exception v2

    .line 265
    invoke-static {v0, v2, v1}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 266
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mShowBottom:Z

    .line 269
    if-nez v0, :cond_d

    .line 271
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLLeft:Landroid/widget/RelativeLayout;

    .line 273
    iget v1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mPaddingDefault:I

    .line 275
    invoke-virtual {v0, v1, v7, v7, v7}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    .line 277
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLRight:Landroid/widget/RelativeLayout;

    .line 280
    iget p0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mPaddingDefault:I

    .line 282
    invoke-virtual {v0, v7, v7, p0, v7}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    .line 284
    goto/16 :goto_5

    .line 287
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftTextView:Landroid/widget/TextView;

    .line 289
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightImageView:Landroid/widget/ImageView;

    .line 294
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftTextView:Landroid/widget/TextView;

    .line 299
    iget-object v1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftLabel:Ljava/lang/String;

    .line 301
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftTextView:Landroid/widget/TextView;

    .line 306
    iget v1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mTextLeftColor:I

    .line 308
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 310
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightImageView:Landroid/widget/ImageView;

    .line 313
    iget-object v1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightIcon:Landroid/graphics/drawable/Drawable;

    .line 315
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 317
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftImageView:Landroid/widget/ImageView;

    .line 320
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightTextView:Landroid/widget/TextView;

    .line 325
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 330
    invoke-virtual {v0, v9}, Landroid/view/TextureView;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 335
    invoke-virtual {v0, v9}, Landroid/view/TextureView;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftContentWithOutText:Landroid/widget/FrameLayout;

    .line 340
    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 342
    iget v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mIconRightType:I

    .line 345
    if-ne v0, v6, :cond_6

    .line 347
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightImageView:Landroid/widget/ImageView;

    .line 349
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 351
    move-result-object v0

    .line 354
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    .line 355
    if-eqz v1, :cond_6

    .line 357
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .line 359
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 361
    :cond_6
    invoke-virtual {p0, v6}, Lcom/android/systemui/toast/MIUIStrongToast;->checkRegisterClickForIntent(Z)V

    .line 364
    iget-boolean v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mShowBottom:Z

    .line 367
    if-nez v0, :cond_d

    .line 369
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCurrentToastCategory:Ljava/lang/String;

    .line 371
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 373
    move-result v0

    .line 376
    if-eqz v0, :cond_7

    .line 377
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLLeft:Landroid/widget/RelativeLayout;

    .line 379
    iget v1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mPaddingBig:I

    .line 381
    invoke-virtual {v0, v1, v7, v7, v7}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    .line 383
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLRight:Landroid/widget/RelativeLayout;

    .line 386
    iget v1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mPaddingDefault:I

    .line 388
    invoke-virtual {v0, v7, v7, v1, v7}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    .line 390
    goto :goto_2

    .line 393
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCurrentToastCategory:Ljava/lang/String;

    .line 394
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 396
    move-result v0

    .line 399
    if-eqz v0, :cond_8

    .line 400
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLLeft:Landroid/widget/RelativeLayout;

    .line 402
    iget v1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mPaddingDefault:I

    .line 404
    invoke-virtual {v0, v1, v7, v7, v7}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    .line 406
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLRight:Landroid/widget/RelativeLayout;

    .line 409
    iget v1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mPaddingSmail:I

    .line 411
    invoke-virtual {v0, v7, v7, v1, v7}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    .line 413
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mSTBgCenterIv:Landroid/widget/ImageView;

    .line 416
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mSTBgCenterIv:Landroid/widget/ImageView;

    .line 421
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightIcon:Landroid/graphics/drawable/Drawable;

    .line 423
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 425
    goto/16 :goto_5

    .line 428
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftContentWithOutText:Landroid/widget/FrameLayout;

    .line 430
    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 435
    invoke-virtual {v0, v9}, Landroid/view/TextureView;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftImageView:Landroid/widget/ImageView;

    .line 440
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftTextView:Landroid/widget/TextView;

    .line 445
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 447
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightContentWithOutText:Landroid/widget/FrameLayout;

    .line 450
    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightTextView:Landroid/widget/TextView;

    .line 455
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 460
    invoke-virtual {v0, v7}, Landroid/view/TextureView;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightImageView:Landroid/widget/ImageView;

    .line 465
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftTextView:Landroid/widget/TextView;

    .line 470
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 472
    move-result-object v2

    .line 475
    const v3, 0x7f0603ca    # @color/miui_strong_toast_charge_color '#00ff75'

    .line 476
    const/4 v4, 0x0

    .line 479
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 480
    move-result v2

    .line 483
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 484
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightTextView:Landroid/widget/TextView;

    .line 487
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 489
    move-result-object v2

    .line 492
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 493
    move-result v2

    .line 496
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 497
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftTextView:Landroid/widget/TextView;

    .line 500
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCharge:Ljava/lang/String;

    .line 502
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightTextView:Landroid/widget/TextView;

    .line 507
    new-instance v2, Ljava/lang/StringBuilder;

    .line 509
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 511
    iget v3, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mChargeLevel:F

    .line 514
    float-to-int v3, v3

    .line 516
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 517
    const-string v3, "%"

    .line 520
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 525
    move-result-object v2

    .line 528
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-boolean v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mShowBottom:Z

    .line 532
    if-nez v0, :cond_9

    .line 534
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLLeft:Landroid/widget/RelativeLayout;

    .line 536
    iget v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mPaddingDefault:I

    .line 538
    invoke-virtual {v0, v2, v7, v7, v7}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    .line 540
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLRight:Landroid/widget/RelativeLayout;

    .line 543
    iget v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mPaddingDefault:I

    .line 545
    invoke-virtual {v0, v7, v7, v2, v7}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    .line 547
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mSTBgCenterIv:Landroid/widget/ImageView;

    .line 550
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 552
    :cond_9
    iget v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mChargeFlag:I

    .line 555
    if-ne v0, v5, :cond_b

    .line 557
    iput-boolean v6, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckChargeStartDouble:Z

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    .line 561
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    invoke-direct {p0}, Lcom/android/systemui/toast/MIUIStrongToast;->getResourcePath()Ljava/lang/String;

    .line 566
    move-result-object v2

    .line 569
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    const v2, 0x7f120034    # @raw/single_to_double_charge 'res/raw/single_to_double_charge.mp4'

    .line 573
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 579
    move-result-object v0

    .line 582
    iput-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mVideoRightPath:Ljava/lang/String;

    .line 583
    iget-boolean v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckChargeFirstVideoIsCompletion:Z

    .line 585
    if-eqz v0, :cond_a

    .line 587
    invoke-virtual {p0}, Lcom/android/systemui/toast/MIUIStrongToast;->realStartVideo()V

    .line 589
    goto/16 :goto_5

    .line 592
    :cond_a
    const-string p0, "FLAG_UPDATE_CHARGE_LEVEL is error"

    .line 594
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    goto/16 :goto_5

    .line 599
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 601
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 603
    invoke-direct {p0}, Lcom/android/systemui/toast/MIUIStrongToast;->getResourcePath()Ljava/lang/String;

    .line 606
    move-result-object v1

    .line 609
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    const v1, 0x7f120033    # @raw/single_charge 'res/raw/single_charge.mp4'

    .line 613
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 616
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 619
    move-result-object v0

    .line 622
    iput-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mVideoRightPath:Ljava/lang/String;

    .line 623
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 625
    new-instance v1, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda8;

    .line 627
    invoke-direct {v1, p0, v7}, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;I)V

    .line 629
    invoke-virtual {v0, v1}, Lcom/android/systemui/toast/view/TextureVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 632
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 635
    invoke-virtual {v0, v7}, Lcom/android/systemui/toast/view/TextureVideoView;->release(Z)V

    .line 637
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 640
    iget-object v1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mVideoRightPath:Ljava/lang/String;

    .line 642
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 644
    move-result-object v1

    .line 647
    invoke-virtual {v0, v1}, Lcom/android/systemui/toast/view/TextureVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 648
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 651
    invoke-virtual {p0}, Lcom/android/systemui/toast/view/TextureVideoView;->start()V

    .line 653
    goto/16 :goto_5

    .line 656
    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftContentWithOutText:Landroid/widget/FrameLayout;

    .line 658
    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 660
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftImageView:Landroid/widget/ImageView;

    .line 663
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 665
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftTextView:Landroid/widget/TextView;

    .line 668
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 670
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightImageView:Landroid/widget/ImageView;

    .line 673
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 675
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 678
    invoke-virtual {v2, v7}, Landroid/view/TextureView;->setVisibility(I)V

    .line 680
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 683
    invoke-virtual {v2, v9}, Landroid/view/TextureView;->setVisibility(I)V

    .line 685
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightContentWithOutText:Landroid/widget/FrameLayout;

    .line 688
    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 690
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightTextView:Landroid/widget/TextView;

    .line 693
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 695
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightImageView:Landroid/widget/ImageView;

    .line 698
    iget-object v4, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightIcon:Landroid/graphics/drawable/Drawable;

    .line 700
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 702
    iget-boolean v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mShowBottom:Z

    .line 705
    if-nez v2, :cond_c

    .line 707
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mSTBgCenterIv:Landroid/widget/ImageView;

    .line 709
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 711
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLLeft:Landroid/widget/RelativeLayout;

    .line 714
    iget v4, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mPaddingDefault:I

    .line 716
    invoke-virtual {v2, v4, v7, v7, v7}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    .line 718
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLRight:Landroid/widget/RelativeLayout;

    .line 721
    iget v4, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mPaddingSmail:I

    .line 723
    invoke-virtual {v2, v7, v7, v4, v7}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    .line 725
    :cond_c
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 728
    iget-object v4, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mVideoLeftPath:Ljava/lang/String;

    .line 730
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 732
    move-result-object v4

    .line 735
    invoke-virtual {v2, v4}, Lcom/android/systemui/toast/view/TextureVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 736
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 739
    new-instance v4, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda4;

    .line 741
    invoke-direct {v4, p0, v3}, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;I)V

    .line 743
    invoke-virtual {v2, v4}, Lcom/android/systemui/toast/view/TextureVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 746
    goto :goto_3

    .line 749
    :catch_1
    move-exception v2

    .line 750
    invoke-static {v0, v2, v1}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 751
    :goto_3
    invoke-virtual {p0, v7}, Lcom/android/systemui/toast/MIUIStrongToast;->checkRegisterClickForIntent(Z)V

    .line 754
    goto :goto_5

    .line 757
    :pswitch_4
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftContentWithOutText:Landroid/widget/FrameLayout;

    .line 758
    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 760
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftImageView:Landroid/widget/ImageView;

    .line 763
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 765
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftTextView:Landroid/widget/TextView;

    .line 768
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 770
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightImageView:Landroid/widget/ImageView;

    .line 773
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 775
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 778
    invoke-virtual {v2, v7}, Landroid/view/TextureView;->setVisibility(I)V

    .line 780
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 783
    invoke-virtual {v2, v9}, Landroid/view/TextureView;->setVisibility(I)V

    .line 785
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightContentWithOutText:Landroid/widget/FrameLayout;

    .line 788
    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 790
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightTextView:Landroid/widget/TextView;

    .line 793
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 795
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightTextView:Landroid/widget/TextView;

    .line 798
    iget-object v3, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightLabel:Ljava/lang/String;

    .line 800
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 802
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightTextView:Landroid/widget/TextView;

    .line 805
    iget v3, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mTextRightColor:I

    .line 807
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 809
    :try_start_2
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 812
    iget-object v3, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mVideoLeftPath:Ljava/lang/String;

    .line 814
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 816
    move-result-object v3

    .line 819
    invoke-virtual {v2, v3}, Lcom/android/systemui/toast/view/TextureVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 820
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftVideoView:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 823
    new-instance v3, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda4;

    .line 825
    invoke-direct {v3, p0, v7}, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;I)V

    .line 827
    invoke-virtual {v2, v3}, Lcom/android/systemui/toast/view/TextureVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 830
    goto :goto_4

    .line 833
    :catch_2
    move-exception v2

    .line 834
    invoke-static {v0, v2, v1}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 835
    :goto_4
    iget-boolean v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mShowBottom:Z

    .line 838
    if-nez v0, :cond_d

    .line 840
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLLeft:Landroid/widget/RelativeLayout;

    .line 842
    iget v1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mPaddingDefault:I

    .line 844
    invoke-virtual {v0, v1, v7, v7, v7}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    .line 846
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRLRight:Landroid/widget/RelativeLayout;

    .line 849
    iget v1, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mPaddingBig:I

    .line 851
    invoke-virtual {v0, v7, v7, v1, v7}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    .line 853
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mSTBgCenterIv:Landroid/widget/ImageView;

    .line 856
    invoke-virtual {p0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 858
    :cond_d
    :goto_5
    return-void

    .line 861
    :sswitch_data_0
    .sparse-switch
        -0x606e818f -> :sswitch_5
        -0x5f0aad18 -> :sswitch_4
        -0x5128dd4c -> :sswitch_3
        -0x46a0137f -> :sswitch_2
        0x1677641a -> :sswitch_1
        0x446f7d77 -> :sswitch_0
    .end sparse-switch

    .line 862
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 888
.end method

.method public final showCustomStrongToast(Lcom/android/systemui/toast/bean/StrongToastModel;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/toast/bean/StrongToastModel;->getStrongToastCategory()Ljava/lang/String;

    .line 4
    move-result-object v1

    .line 7
    iput-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCurrentToastCategory:Ljava/lang/String;

    .line 8
    iget-boolean v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckInOutStrongToasting:Z

    .line 10
    const-string v2, "charge"

    .line 12
    const-string v3, "MIUIStrongToast"

    .line 14
    if-eqz v1, :cond_1

    .line 16
    const-string v1, "in out strong toast"

    .line 18
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCurrentToastCategory:Ljava/lang/String;

    .line 23
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 25
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    return-void

    .line 31
    :cond_0
    move-object/from16 v1, p1

    .line 32
    iput-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCacheModel:Lcom/android/systemui/toast/bean/StrongToastModel;

    .line 34
    return-void

    .line 36
    :cond_1
    move-object/from16 v1, p1

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/toast/bean/StrongToastModel;->getStrongSupperCharge()I

    .line 39
    move-result v4

    .line 42
    iput v4, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mStrongSupperCharge:I

    .line 43
    const/4 v4, 0x0

    .line 45
    iput-object v4, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCacheModel:Lcom/android/systemui/toast/bean/StrongToastModel;

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/toast/bean/StrongToastModel;->getDuration()Ljava/lang/Long;

    .line 48
    move-result-object v5

    .line 51
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 52
    move-result-wide v5

    .line 55
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/toast/bean/StrongToastModel;->getChargeFlag()I

    .line 56
    move-result v7

    .line 59
    iput v7, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mChargeFlag:I

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/toast/bean/StrongToastModel;->getStatusBarGuideModel()Lcom/android/systemui/toast/bean/StatusBarGuideModel;

    .line 62
    move-result-object v7

    .line 65
    if-nez v7, :cond_2

    .line 66
    iget-object v7, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCurrentToastCategory:Ljava/lang/String;

    .line 68
    invoke-static {v7, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 70
    move-result v7

    .line 73
    if-nez v7, :cond_2

    .line 74
    return-void

    .line 76
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/toast/bean/StrongToastModel;->getStatusBarGuideModel()Lcom/android/systemui/toast/bean/StatusBarGuideModel;

    .line 77
    move-result-object v7

    .line 80
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/toast/bean/StrongToastModel;->getPackageName()Ljava/lang/String;

    .line 81
    move-result-object v8

    .line 84
    if-nez v7, :cond_3

    .line 85
    const-string/jumbo v7, "statusBarGuideModel is null"

    .line 87
    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    goto/16 :goto_8

    .line 93
    :cond_3
    invoke-virtual {v7}, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->getLeft()Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;

    .line 95
    move-result-object v11

    .line 98
    const-string v12, ""

    .line 99
    if-eqz v11, :cond_4

    .line 101
    invoke-virtual {v7}, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->getLeft()Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;

    .line 103
    move-result-object v11

    .line 106
    invoke-virtual {v11}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;->getTextParams()Lcom/android/systemui/toast/bean/StatusBarGuideModel$TextParams;

    .line 107
    move-result-object v11

    .line 110
    if-eqz v11, :cond_4

    .line 111
    invoke-virtual {v7}, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->getLeft()Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;

    .line 113
    move-result-object v11

    .line 116
    invoke-virtual {v11}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;->getTextParams()Lcom/android/systemui/toast/bean/StatusBarGuideModel$TextParams;

    .line 117
    move-result-object v11

    .line 120
    invoke-virtual {v11}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$TextParams;->getText()Ljava/lang/String;

    .line 121
    move-result-object v11

    .line 124
    iput-object v11, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftLabel:Ljava/lang/String;

    .line 125
    invoke-virtual {v7}, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->getLeft()Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;

    .line 127
    move-result-object v11

    .line 130
    invoke-virtual {v11}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;->getTextParams()Lcom/android/systemui/toast/bean/StatusBarGuideModel$TextParams;

    .line 131
    move-result-object v11

    .line 134
    invoke-virtual {v11}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$TextParams;->getTextColor()Ljava/lang/Integer;

    .line 135
    move-result-object v11

    .line 138
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 139
    move-result v11

    .line 142
    iput v11, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mTextLeftColor:I

    .line 143
    goto :goto_0

    .line 145
    :cond_4
    invoke-virtual {v7}, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->getLeft()Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;

    .line 146
    move-result-object v11

    .line 149
    invoke-virtual {v11}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;->getTextParams()Lcom/android/systemui/toast/bean/StatusBarGuideModel$TextParams;

    .line 150
    move-result-object v11

    .line 153
    if-nez v11, :cond_5

    .line 154
    iput-object v12, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftLabel:Ljava/lang/String;

    .line 156
    :cond_5
    :goto_0
    invoke-virtual {v7}, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->getRight()Lcom/android/systemui/toast/bean/StatusBarGuideModel$Right;

    .line 158
    move-result-object v11

    .line 161
    if-eqz v11, :cond_6

    .line 162
    invoke-virtual {v7}, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->getRight()Lcom/android/systemui/toast/bean/StatusBarGuideModel$Right;

    .line 164
    move-result-object v11

    .line 167
    invoke-virtual {v11}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Right;->getTextParams()Lcom/android/systemui/toast/bean/StatusBarGuideModel$TextParams;

    .line 168
    move-result-object v11

    .line 171
    if-eqz v11, :cond_6

    .line 172
    invoke-virtual {v7}, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->getRight()Lcom/android/systemui/toast/bean/StatusBarGuideModel$Right;

    .line 174
    move-result-object v11

    .line 177
    invoke-virtual {v11}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Right;->getTextParams()Lcom/android/systemui/toast/bean/StatusBarGuideModel$TextParams;

    .line 178
    move-result-object v11

    .line 181
    invoke-virtual {v11}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$TextParams;->getText()Ljava/lang/String;

    .line 182
    move-result-object v11

    .line 185
    iput-object v11, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightLabel:Ljava/lang/String;

    .line 186
    invoke-virtual {v7}, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->getRight()Lcom/android/systemui/toast/bean/StatusBarGuideModel$Right;

    .line 188
    move-result-object v11

    .line 191
    invoke-virtual {v11}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Right;->getTextParams()Lcom/android/systemui/toast/bean/StatusBarGuideModel$TextParams;

    .line 192
    move-result-object v11

    .line 195
    invoke-virtual {v11}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$TextParams;->getTextColor()Ljava/lang/Integer;

    .line 196
    move-result-object v11

    .line 199
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 200
    move-result v11

    .line 203
    iput v11, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mTextRightColor:I

    .line 204
    goto :goto_1

    .line 206
    :cond_6
    invoke-virtual {v7}, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->getRight()Lcom/android/systemui/toast/bean/StatusBarGuideModel$Right;

    .line 207
    move-result-object v11

    .line 210
    invoke-virtual {v11}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Right;->getTextParams()Lcom/android/systemui/toast/bean/StatusBarGuideModel$TextParams;

    .line 211
    move-result-object v11

    .line 214
    if-nez v11, :cond_7

    .line 215
    iput-object v12, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightLabel:Ljava/lang/String;

    .line 217
    :cond_7
    :goto_1
    invoke-virtual {v7}, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->getLeft()Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;

    .line 219
    move-result-object v11

    .line 222
    const-string/jumbo v14, "svg"

    .line 223
    const-string v15, "png"

    .line 226
    const-string v13, "mp4"

    .line 228
    const/16 v16, -0x1

    .line 230
    if-eqz v11, :cond_b

    .line 232
    invoke-virtual {v7}, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->getLeft()Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;

    .line 234
    move-result-object v11

    .line 237
    invoke-virtual {v11}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;->getIconParams()Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;

    .line 238
    move-result-object v11

    .line 241
    if-eqz v11, :cond_b

    .line 242
    invoke-virtual {v7}, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->getLeft()Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;

    .line 244
    move-result-object v11

    .line 247
    invoke-virtual {v11}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;->getIconParams()Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;

    .line 248
    move-result-object v11

    .line 251
    invoke-virtual {v11}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;->getCategory()Ljava/lang/String;

    .line 252
    move-result-object v11

    .line 255
    invoke-virtual {v7}, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->getLeft()Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;

    .line 256
    move-result-object v17

    .line 259
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;->getIconParams()Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;

    .line 260
    move-result-object v17

    .line 263
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;->getIconType()Ljava/lang/Integer;

    .line 264
    move-result-object v17

    .line 267
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    .line 268
    invoke-virtual {v7}, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->getLeft()Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;

    .line 271
    move-result-object v17

    .line 274
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;->getIconParams()Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;

    .line 275
    move-result-object v17

    .line 278
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;->getIconFormat()Ljava/lang/String;

    .line 279
    move-result-object v9

    .line 282
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 286
    move-result v17

    .line 289
    sparse-switch v17, :sswitch_data_0

    .line 290
    :goto_2
    move/from16 v9, v16

    .line 293
    goto :goto_3

    .line 295
    :sswitch_0
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 296
    move-result v9

    .line 299
    if-nez v9, :cond_8

    .line 300
    goto :goto_2

    .line 302
    :cond_8
    const/4 v9, 0x2

    .line 303
    goto :goto_3

    .line 304
    :sswitch_1
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    move-result v9

    .line 308
    if-nez v9, :cond_9

    .line 309
    goto :goto_2

    .line 311
    :cond_9
    const/4 v9, 0x1

    .line 312
    goto :goto_3

    .line 313
    :sswitch_2
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    move-result v9

    .line 317
    if-nez v9, :cond_a

    .line 318
    goto :goto_2

    .line 320
    :cond_a
    const/4 v9, 0x0

    .line 321
    :goto_3
    packed-switch v9, :pswitch_data_0

    .line 322
    goto :goto_4

    .line 325
    :pswitch_0
    iget-object v9, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mContext:Landroid/content/Context;

    .line 326
    invoke-virtual {v7}, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->getLeft()Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;

    .line 328
    move-result-object v17

    .line 331
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;->getIconParams()Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;

    .line 332
    move-result-object v17

    .line 335
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;->getIconResName()Ljava/lang/String;

    .line 336
    move-result-object v10

    .line 339
    invoke-static {v9, v11, v10, v8}, Lcom/android/systemui/toast/utils/MIUIStrongToastUtils;->getDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 340
    move-result-object v9

    .line 343
    iput-object v9, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftIcon:Landroid/graphics/drawable/Drawable;

    .line 344
    goto :goto_4

    .line 346
    :pswitch_1
    invoke-virtual {v7}, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->getLeft()Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;

    .line 347
    move-result-object v9

    .line 350
    invoke-virtual {v9}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;->getIconParams()Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;

    .line 351
    move-result-object v9

    .line 354
    invoke-virtual {v9}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;->getIconResName()Ljava/lang/String;

    .line 355
    move-result-object v9

    .line 358
    iput-object v9, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mVideoLeftPath:Ljava/lang/String;

    .line 359
    goto :goto_4

    .line 361
    :cond_b
    invoke-virtual {v7}, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->getLeft()Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;

    .line 362
    move-result-object v9

    .line 365
    invoke-virtual {v9}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;->getIconParams()Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;

    .line 366
    move-result-object v9

    .line 369
    if-nez v9, :cond_c

    .line 370
    iput-object v12, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mVideoLeftPath:Ljava/lang/String;

    .line 372
    :cond_c
    :goto_4
    invoke-virtual {v7}, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->getRight()Lcom/android/systemui/toast/bean/StatusBarGuideModel$Right;

    .line 374
    move-result-object v9

    .line 377
    if-eqz v9, :cond_10

    .line 378
    invoke-virtual {v7}, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->getRight()Lcom/android/systemui/toast/bean/StatusBarGuideModel$Right;

    .line 380
    move-result-object v9

    .line 383
    invoke-virtual {v9}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Right;->getIconParams()Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;

    .line 384
    move-result-object v9

    .line 387
    if-eqz v9, :cond_10

    .line 388
    invoke-virtual {v7}, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->getRight()Lcom/android/systemui/toast/bean/StatusBarGuideModel$Right;

    .line 390
    move-result-object v9

    .line 393
    invoke-virtual {v9}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Right;->getIconParams()Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;

    .line 394
    move-result-object v9

    .line 397
    invoke-virtual {v9}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;->getCategory()Ljava/lang/String;

    .line 398
    move-result-object v9

    .line 401
    invoke-virtual {v7}, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->getRight()Lcom/android/systemui/toast/bean/StatusBarGuideModel$Right;

    .line 402
    move-result-object v10

    .line 405
    invoke-virtual {v10}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Right;->getIconParams()Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;

    .line 406
    move-result-object v10

    .line 409
    invoke-virtual {v10}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;->getIconType()Ljava/lang/Integer;

    .line 410
    move-result-object v10

    .line 413
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 414
    move-result v10

    .line 417
    iput v10, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mIconRightType:I

    .line 418
    invoke-virtual {v7}, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->getRight()Lcom/android/systemui/toast/bean/StatusBarGuideModel$Right;

    .line 420
    move-result-object v10

    .line 423
    invoke-virtual {v10}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Right;->getIconParams()Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;

    .line 424
    move-result-object v10

    .line 427
    invoke-virtual {v10}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;->getIconFormat()Ljava/lang/String;

    .line 428
    move-result-object v10

    .line 431
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 432
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 435
    move-result v11

    .line 438
    sparse-switch v11, :sswitch_data_1

    .line 439
    :goto_5
    move/from16 v13, v16

    .line 442
    goto :goto_6

    .line 444
    :sswitch_3
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 445
    move-result v10

    .line 448
    if-nez v10, :cond_d

    .line 449
    goto :goto_5

    .line 451
    :cond_d
    const/4 v13, 0x2

    .line 452
    goto :goto_6

    .line 453
    :sswitch_4
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 454
    move-result v10

    .line 457
    if-nez v10, :cond_e

    .line 458
    goto :goto_5

    .line 460
    :cond_e
    const/4 v13, 0x1

    .line 461
    goto :goto_6

    .line 462
    :sswitch_5
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 463
    move-result v10

    .line 466
    if-nez v10, :cond_f

    .line 467
    goto :goto_5

    .line 469
    :cond_f
    const/4 v13, 0x0

    .line 470
    :goto_6
    packed-switch v13, :pswitch_data_1

    .line 471
    goto :goto_7

    .line 474
    :pswitch_2
    iget-object v10, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mContext:Landroid/content/Context;

    .line 475
    invoke-virtual {v7}, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->getRight()Lcom/android/systemui/toast/bean/StatusBarGuideModel$Right;

    .line 477
    move-result-object v11

    .line 480
    invoke-virtual {v11}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Right;->getIconParams()Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;

    .line 481
    move-result-object v11

    .line 484
    invoke-virtual {v11}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;->getIconResName()Ljava/lang/String;

    .line 485
    move-result-object v11

    .line 488
    invoke-static {v10, v9, v11, v8}, Lcom/android/systemui/toast/utils/MIUIStrongToastUtils;->getDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 489
    move-result-object v8

    .line 492
    iput-object v8, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightIcon:Landroid/graphics/drawable/Drawable;

    .line 493
    goto :goto_7

    .line 495
    :pswitch_3
    invoke-virtual {v7}, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->getRight()Lcom/android/systemui/toast/bean/StatusBarGuideModel$Right;

    .line 496
    move-result-object v8

    .line 499
    invoke-virtual {v8}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Right;->getIconParams()Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;

    .line 500
    move-result-object v8

    .line 503
    invoke-virtual {v8}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;->getIconResName()Ljava/lang/String;

    .line 504
    move-result-object v8

    .line 507
    iput-object v8, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mVideoRightPath:Ljava/lang/String;

    .line 508
    goto :goto_7

    .line 510
    :cond_10
    invoke-virtual {v7}, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->getRight()Lcom/android/systemui/toast/bean/StatusBarGuideModel$Right;

    .line 511
    move-result-object v8

    .line 514
    invoke-virtual {v8}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Right;->getIconParams()Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;

    .line 515
    move-result-object v8

    .line 518
    if-nez v8, :cond_11

    .line 519
    iput-object v4, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightIcon:Landroid/graphics/drawable/Drawable;

    .line 521
    iput-object v12, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mVideoRightPath:Ljava/lang/String;

    .line 523
    :cond_11
    :goto_7
    invoke-virtual {v7}, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->getCenter()Lcom/android/systemui/toast/bean/StatusBarGuideModel$Center;

    .line 525
    move-result-object v8

    .line 528
    if-eqz v8, :cond_12

    .line 529
    invoke-virtual {v7}, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->getCenter()Lcom/android/systemui/toast/bean/StatusBarGuideModel$Center;

    .line 531
    move-result-object v8

    .line 534
    invoke-virtual {v8}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Center;->getIconParams()Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;

    .line 535
    move-result-object v8

    .line 538
    if-eqz v8, :cond_12

    .line 539
    invoke-virtual {v7}, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->getCenter()Lcom/android/systemui/toast/bean/StatusBarGuideModel$Center;

    .line 541
    move-result-object v7

    .line 544
    invoke-virtual {v7}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Center;->getIconParams()Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;

    .line 545
    move-result-object v7

    .line 548
    invoke-virtual {v7}, Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;->getIconResName()Ljava/lang/String;

    .line 549
    :cond_12
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/toast/bean/StrongToastModel;->getTarget()Landroid/app/PendingIntent;

    .line 552
    move-result-object v7

    .line 555
    iput-object v7, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mTarget:Landroid/app/PendingIntent;

    .line 556
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/toast/bean/StrongToastModel;->getChargeLevel()F

    .line 558
    move-result v7

    .line 561
    iput v7, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mChargeLevel:F

    .line 562
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/toast/bean/StrongToastModel;->getChargeRate()F

    .line 564
    move-result v7

    .line 567
    iput v7, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mChargeRate:F

    .line 568
    new-instance v7, Ljava/lang/StringBuilder;

    .line 570
    const-string v8, "mChargeLevel: "

    .line 572
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 574
    iget v8, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mChargeLevel:F

    .line 577
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 579
    const-string v8, " mChargeRate:"

    .line 582
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    iget v8, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mChargeRate:F

    .line 587
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 589
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 592
    move-result-object v7

    .line 595
    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/toast/bean/StrongToastModel;->getCharge()Ljava/lang/String;

    .line 599
    move-result-object v1

    .line 602
    iput-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCharge:Ljava/lang/String;

    .line 603
    const-wide/16 v7, 0x0

    .line 605
    cmp-long v1, v5, v7

    .line 607
    if-gtz v1, :cond_13

    .line 609
    const-wide/16 v5, 0x7d0

    .line 611
    :cond_13
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mDFWAnimationSet:Landroid/animation/AnimatorSet;

    .line 613
    if-eqz v1, :cond_15

    .line 615
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 617
    move-result v1

    .line 620
    if-nez v1, :cond_14

    .line 621
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mDFWAnimationSet:Landroid/animation/AnimatorSet;

    .line 623
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isPaused()Z

    .line 625
    move-result v1

    .line 628
    if-eqz v1, :cond_15

    .line 629
    :cond_14
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mDFWAnimationSet:Landroid/animation/AnimatorSet;

    .line 631
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 633
    :cond_15
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mPadTractionAnimatorSet:Landroid/animation/AnimatorSet;

    .line 636
    if-eqz v1, :cond_16

    .line 638
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 640
    :cond_16
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mShowStrongToastHandler:Landroid/os/Handler;

    .line 643
    iget-object v7, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mHideStrongToastRunnable:Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda0;

    .line 645
    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 647
    iget-boolean v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mStrongToastShow:Z

    .line 650
    if-nez v1, :cond_18

    .line 652
    iget-boolean v7, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckStartAnimation:Z

    .line 654
    if-nez v7, :cond_18

    .line 656
    const-string v1, "addView"

    .line 658
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mWindowManager:Landroid/view/WindowManager;

    .line 663
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/toast/MIUIStrongToast;->getWindowParam()Landroid/view/WindowManager$LayoutParams;

    .line 665
    move-result-object v3

    .line 668
    invoke-interface {v1, v0, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCurrentToastCategory:Ljava/lang/String;

    .line 672
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 674
    move-result v1

    .line 677
    if-eqz v1, :cond_17

    .line 678
    const-class v1, Lcom/miui/interfaces/IHapticFeedBack;

    .line 680
    invoke-static {v1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 682
    move-result-object v1

    .line 685
    check-cast v1, Lcom/miui/interfaces/IHapticFeedBack;

    .line 686
    check-cast v1, Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 688
    const/16 v2, 0xd3

    .line 690
    const/16 v3, 0x4a

    .line 692
    const/4 v7, 0x0

    .line 694
    invoke-virtual {v1, v2, v4, v3, v7}, Lcom/miui/systemui/functions/HapticFeedBackImpl;->extExtHapticFeedback(ILjava/lang/String;II)V

    .line 695
    :cond_17
    const/4 v1, 0x1

    .line 698
    iput-boolean v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mStrongToastShow:Z

    .line 699
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/toast/MIUIStrongToast;->setValue()V

    .line 701
    goto :goto_9

    .line 704
    :cond_18
    if-eqz v1, :cond_19

    .line 705
    iget-boolean v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckStartAnimation:Z

    .line 707
    if-nez v1, :cond_19

    .line 709
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/toast/MIUIStrongToast;->updateStrongToast()V

    .line 711
    goto :goto_9

    .line 714
    :cond_19
    const-string/jumbo v1, "setValue"

    .line 715
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/toast/MIUIStrongToast;->setValue()V

    .line 721
    :goto_9
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mShowStrongToastHandler:Landroid/os/Handler;

    .line 724
    iget-object v0, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mHideStrongToastRunnable:Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda0;

    .line 726
    invoke-virtual {v1, v0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 728
    return-void

    .line 731
    :sswitch_data_0
    .sparse-switch
        0x1a6f1 -> :sswitch_2
        0x1b229 -> :sswitch_1
        0x1be64 -> :sswitch_0
    .end sparse-switch

    .line 732
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 746
    :sswitch_data_1
    .sparse-switch
        0x1a6f1 -> :sswitch_5
        0x1b229 -> :sswitch_4
        0x1be64 -> :sswitch_3
    .end sparse-switch

    .line 756
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
    .line 770
.end method

.method public final updateStrongToast()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCurrentToastCategory:Ljava/lang/String;

    .line 4
    const-string v2, "charge"

    .line 6
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_8

    .line 12
    iget v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mStrongSupperCharge:I

    .line 14
    const/4 v2, 0x3

    .line 16
    const/4 v3, 0x2

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x1

    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    iget-boolean v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckLeftTextRunAnimation:Z

    .line 22
    if-nez v1, :cond_0

    .line 24
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftTextView:Landroid/widget/TextView;

    .line 26
    iget-object v6, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCharge:Ljava/lang/String;

    .line 28
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 33
    move-result-object v1

    .line 36
    const v6, 0x7f120025    # @raw/gradient_text 'res/raw/gradient_text.glsl'

    .line 37
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 40
    move-result-object v1

    .line 43
    new-instance v6, Ljava/util/Scanner;

    .line 44
    invoke-direct {v6, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 46
    const-string v1, "\\Z"

    .line 49
    invoke-virtual {v6, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 51
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 58
    invoke-virtual {v6}, Ljava/util/Scanner;->close()V

    .line 59
    new-instance v6, Landroid/graphics/RuntimeShader;

    .line 62
    invoke-direct {v6, v1}, Landroid/graphics/RuntimeShader;-><init>(Ljava/lang/String;)V

    .line 64
    iput-object v6, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRuntimeShader:Landroid/graphics/RuntimeShader;

    .line 67
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftTextView:Landroid/widget/TextView;

    .line 69
    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    .line 71
    move-result v1

    .line 74
    int-to-float v1, v1

    .line 75
    iget-object v7, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftTextView:Landroid/widget/TextView;

    .line 76
    invoke-virtual {v7}, Landroid/widget/TextView;->getHeight()I

    .line 78
    move-result v7

    .line 81
    int-to-float v7, v7

    .line 82
    const-string/jumbo v8, "uViewSize"

    .line 83
    invoke-virtual {v6, v8, v1, v7}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    .line 86
    iget-object v9, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRuntimeShader:Landroid/graphics/RuntimeShader;

    .line 89
    const-string/jumbo v10, "uColor1"

    .line 91
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mChargeStateColors:[[F

    .line 94
    aget-object v1, v1, v4

    .line 96
    aget v11, v1, v4

    .line 98
    aget v12, v1, v5

    .line 100
    aget v13, v1, v3

    .line 102
    aget v14, v1, v2

    .line 104
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FFFF)V

    .line 106
    iget-object v15, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRuntimeShader:Landroid/graphics/RuntimeShader;

    .line 109
    const-string/jumbo v16, "uColor2"

    .line 111
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mChargeStateColors:[[F

    .line 114
    aget-object v1, v1, v5

    .line 116
    aget v17, v1, v4

    .line 118
    aget v18, v1, v5

    .line 120
    aget v19, v1, v3

    .line 122
    aget v20, v1, v2

    .line 124
    invoke-virtual/range {v15 .. v20}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FFFF)V

    .line 126
    iget-object v6, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRuntimeShader:Landroid/graphics/RuntimeShader;

    .line 129
    const-string/jumbo v7, "uColor3"

    .line 131
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mChargeStateColors:[[F

    .line 134
    aget-object v1, v1, v3

    .line 136
    aget v8, v1, v4

    .line 138
    aget v9, v1, v5

    .line 140
    aget v10, v1, v3

    .line 142
    aget v11, v1, v2

    .line 144
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FFFF)V

    .line 146
    iget-object v12, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRuntimeShader:Landroid/graphics/RuntimeShader;

    .line 149
    const-string/jumbo v13, "uColor4"

    .line 151
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mChargeStateColors:[[F

    .line 154
    aget-object v1, v1, v2

    .line 156
    aget v14, v1, v4

    .line 158
    aget v15, v1, v5

    .line 160
    aget v16, v1, v3

    .line 162
    aget v17, v1, v2

    .line 164
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FFFF)V

    .line 166
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRuntimeShader:Landroid/graphics/RuntimeShader;

    .line 169
    iget-object v6, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mChargeStateStop:[F

    .line 171
    aget v6, v6, v4

    .line 173
    const-string/jumbo v7, "uColorStop1"

    .line 175
    invoke-virtual {v1, v7, v6}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 178
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRuntimeShader:Landroid/graphics/RuntimeShader;

    .line 181
    iget-object v6, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mChargeStateStop:[F

    .line 183
    aget v6, v6, v5

    .line 185
    const-string/jumbo v7, "uColorStop2"

    .line 187
    invoke-virtual {v1, v7, v6}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 190
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRuntimeShader:Landroid/graphics/RuntimeShader;

    .line 193
    iget-object v6, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mChargeStateStop:[F

    .line 195
    aget v6, v6, v3

    .line 197
    const-string/jumbo v7, "uColorStop3"

    .line 199
    invoke-virtual {v1, v7, v6}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 202
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRuntimeShader:Landroid/graphics/RuntimeShader;

    .line 205
    iget-object v6, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mChargeStateStop:[F

    .line 207
    aget v2, v6, v2

    .line 209
    const-string/jumbo v6, "uColorStop4"

    .line 211
    invoke-virtual {v1, v6, v2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 214
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRuntimeShader:Landroid/graphics/RuntimeShader;

    .line 217
    const-string/jumbo v2, "uAngle"

    .line 219
    const v6, 0x3e860a92

    .line 222
    invoke-virtual {v1, v2, v6}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 225
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRuntimeShader:Landroid/graphics/RuntimeShader;

    .line 228
    const-string/jumbo v2, "uOffset"

    .line 230
    const/high16 v6, 0x3f800000    # 1.0f

    .line 233
    invoke-virtual {v1, v2, v6}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 235
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRuntimeShader:Landroid/graphics/RuntimeShader;

    .line 238
    const-string/jumbo v2, "uView"

    .line 240
    invoke-static {v1, v2}, Landroid/graphics/RenderEffect;->createRuntimeShaderEffect(Landroid/graphics/RuntimeShader;Ljava/lang/String;)Landroid/graphics/RenderEffect;

    .line 243
    move-result-object v1

    .line 246
    iget-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftTextView:Landroid/widget/TextView;

    .line 247
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    .line 249
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftTextView:Landroid/widget/TextView;

    .line 252
    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 254
    move-result-object v1

    .line 257
    new-instance v2, Lcom/android/systemui/toast/MIUIStrongToast$2;

    .line 258
    invoke-direct {v2, v0, v5}, Lcom/android/systemui/toast/MIUIStrongToast$2;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;I)V

    .line 260
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 263
    iput-boolean v5, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckLeftTextRunAnimation:Z

    .line 266
    :cond_0
    iget v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mChargeFlag:I

    .line 268
    const-string v2, "MIUIStrongToast"

    .line 270
    if-ne v1, v5, :cond_1

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    .line 274
    const-string v3, "mCharge :"

    .line 276
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    iget-object v3, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCharge:Ljava/lang/String;

    .line 281
    invoke-static {v1, v3, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCharge:Ljava/lang/String;

    .line 286
    if-eqz v1, :cond_9

    .line 288
    iget-object v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftTextView:Landroid/widget/TextView;

    .line 290
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 292
    move-result-object v1

    .line 295
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftTextView:Landroid/widget/TextView;

    .line 299
    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 301
    move-result-object v1

    .line 304
    new-instance v2, Lcom/android/systemui/toast/MIUIStrongToast$2;

    .line 305
    invoke-direct {v2, v0, v4}, Lcom/android/systemui/toast/MIUIStrongToast$2;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;I)V

    .line 307
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 310
    goto/16 :goto_1

    .line 313
    :cond_1
    if-ne v1, v3, :cond_6

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    .line 317
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    iget v6, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mChargeLevel:F

    .line 322
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 324
    const-string v6, "%"

    .line 327
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    move-result-object v1

    .line 335
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mChargeLevel:F

    .line 339
    iget v2, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mChargeRate:F

    .line 341
    const/4 v7, 0x0

    .line 343
    cmpg-float v7, v1, v7

    .line 344
    if-ltz v7, :cond_4

    .line 346
    const/high16 v7, 0x42c80000    # 100.0f

    .line 348
    cmpl-float v7, v1, v7

    .line 350
    if-ltz v7, :cond_2

    .line 352
    goto :goto_0

    .line 354
    :cond_2
    iget-object v7, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 355
    if-eqz v7, :cond_3

    .line 357
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->cancel()V

    .line 359
    :cond_3
    float-to-int v7, v1

    .line 362
    iput v7, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCurrentProgress:I

    .line 363
    iget-object v7, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mRightTextView:Landroid/widget/TextView;

    .line 365
    new-instance v8, Ljava/lang/StringBuilder;

    .line 367
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    iget v9, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCurrentProgress:I

    .line 372
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    move-result-object v6

    .line 383
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    new-array v3, v3, [F

    .line 387
    aput v1, v3, v4

    .line 389
    add-float/2addr v1, v2

    .line 391
    const v2, 0x42c7fae1    # 99.99f

    .line 392
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 395
    move-result v1

    .line 398
    aput v1, v3, v5

    .line 399
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 401
    move-result-object v1

    .line 404
    iput-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 405
    new-instance v2, Lcom/android/systemui/toast/MIUIStrongToast$4;

    .line 407
    invoke-direct {v2, v0, v4}, Lcom/android/systemui/toast/MIUIStrongToast$4;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;I)V

    .line 409
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 412
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 415
    new-instance v2, Lcom/android/systemui/toast/MIUIStrongToast$5;

    .line 417
    invoke-direct {v2, v0, v4}, Lcom/android/systemui/toast/MIUIStrongToast$5;-><init>(Lcom/android/systemui/toast/MIUIStrongToast;I)V

    .line 419
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 422
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 425
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    .line 427
    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 429
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 432
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 435
    const-wide/16 v2, 0x2710

    .line 437
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 439
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 442
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 444
    :cond_4
    :goto_0
    iget-boolean v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckDoubleLightingShow:Z

    .line 447
    if-eqz v1, :cond_5

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/toast/MIUIStrongToast;->doShowViewAnimationForTB()V

    .line 451
    iput-boolean v4, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckDoubleLightingShow:Z

    .line 454
    goto :goto_1

    .line 456
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/toast/MIUIStrongToast;->setValue()V

    .line 457
    iput-boolean v5, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckDoubleLightingShow:Z

    .line 460
    goto :goto_1

    .line 462
    :cond_6
    if-nez v1, :cond_7

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/toast/MIUIStrongToast;->setValue()V

    .line 465
    goto :goto_1

    .line 468
    :cond_7
    const-string/jumbo v1, "update all view"

    .line 469
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/toast/MIUIStrongToast;->doHideViewAnimationTB()V

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/toast/MIUIStrongToast;->setValue()V

    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/toast/MIUIStrongToast;->doShowViewAnimationForTB()V

    .line 481
    goto :goto_1

    .line 484
    :cond_8
    iget-object v1, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mLeftTextView:Landroid/widget/TextView;

    .line 485
    const/4 v2, 0x0

    .line 487
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/toast/MIUIStrongToast;->doHideViewAnimationTB()V

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/toast/MIUIStrongToast;->setValue()V

    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/toast/MIUIStrongToast;->doShowViewAnimationForTB()V

    .line 497
    :cond_9
    :goto_1
    return-void
    .line 500
.end method
