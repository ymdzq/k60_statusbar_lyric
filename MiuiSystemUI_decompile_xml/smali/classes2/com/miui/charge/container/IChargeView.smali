.class public Lcom/miui/charge/container/IChargeView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public mChargeSpeed:I

.field public mContentContainer:Landroid/view/ViewGroup;

.field public mContext:Landroid/content/Context;

.field public mDismissAnimatorSet:Landroid/animation/AnimatorSet;

.field public mEnterAnimatorSet:Landroid/animation/AnimatorSet;

.field public mInitScreenOn:Z

.field public mIsFoldChargeVideo:Z

.field public mIsPadChargeVideo:Z

.field public final mQuartOutInterpolator:Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;

.field public mScreenSize:Landroid/graphics/Point;

.field public mStartingDismissAnim:Z

.field public mWindowManager:Landroid/view/WindowManager;

.field public mWireState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/miui/charge/container/IChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/charge/container/IChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;

    invoke-direct {p2}, Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;-><init>()V

    iput-object p2, p0, Lcom/miui/charge/container/IChargeView;->mQuartOutInterpolator:Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/miui/charge/container/IChargeView;->mIsFoldChargeVideo:Z

    .line 6
    iput-boolean p2, p0, Lcom/miui/charge/container/IChargeView;->mIsPadChargeVideo:Z

    .line 7
    invoke-virtual {p0, p1}, Lcom/miui/charge/container/IChargeView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getContainerLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    .line 1
    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    const/4 v0, -0x1

    .line 4
    invoke-direct {p0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5
    return-object p0
    .line 8
.end method


# virtual methods
.method public addChildView()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final checkScreenSize()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Point;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/miui/charge/container/IChargeView;->mWindowManager:Landroid/view/WindowManager;

    .line 7
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 13
    iget-object v1, p0, Lcom/miui/charge/container/IChargeView;->mScreenSize:Landroid/graphics/Point;

    .line 16
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 18
    iget v3, v0, Landroid/graphics/Point;->y:I

    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->equals(II)Z

    .line 22
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/miui/charge/container/IChargeView;->mScreenSize:Landroid/graphics/Point;

    .line 28
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 30
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 32
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    .line 34
    invoke-virtual {p0}, Lcom/miui/charge/container/IChargeView;->updateSizeForScreenSizeChange()V

    .line 37
    invoke-virtual {p0}, Lcom/miui/charge/container/IChargeView;->updateLayoutParamForScreenSizeChange()V

    .line 40
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 43
    :cond_0
    return-void
    .line 46
.end method

.method public getVideoTranslationY()F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    .line 2
    iput-boolean v0, p0, Lcom/miui/charge/container/IChargeView;->mIsFoldChargeVideo:Z

    .line 4
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 6
    iput-boolean v0, p0, Lcom/miui/charge/container/IChargeView;->mIsPadChargeVideo:Z

    .line 8
    iput-object p1, p0, Lcom/miui/charge/container/IChargeView;->mContext:Landroid/content/Context;

    .line 10
    const-string/jumbo v0, "window"

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 18
    check-cast v0, Landroid/view/WindowManager;

    .line 19
    iput-object v0, p0, Lcom/miui/charge/container/IChargeView;->mWindowManager:Landroid/view/WindowManager;

    .line 21
    new-instance v0, Landroid/graphics/Point;

    .line 23
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/miui/charge/container/IChargeView;->mScreenSize:Landroid/graphics/Point;

    .line 28
    iget-object v0, p0, Lcom/miui/charge/container/IChargeView;->mWindowManager:Landroid/view/WindowManager;

    .line 30
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 32
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/miui/charge/container/IChargeView;->mScreenSize:Landroid/graphics/Point;

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 38
    invoke-virtual {p0}, Lcom/miui/charge/container/IChargeView;->updateSizeForScreenSizeChange()V

    .line 41
    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/miui/charge/container/IChargeView;->mChargeSpeed:I

    .line 45
    new-instance v0, Landroid/widget/RelativeLayout;

    .line 47
    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object v0, p0, Lcom/miui/charge/container/IChargeView;->mContentContainer:Landroid/view/ViewGroup;

    .line 52
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 54
    const/4 v0, -0x1

    .line 56
    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 57
    const/16 v0, 0xd

    .line 60
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 62
    invoke-virtual {p0}, Lcom/miui/charge/container/IChargeView;->addChildView()V

    .line 65
    iget-object p1, p0, Lcom/miui/charge/container/IChargeView;->mContentContainer:Landroid/view/ViewGroup;

    .line 68
    invoke-direct {p0}, Lcom/miui/charge/container/IChargeView;->getContainerLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    .line 70
    move-result-object v0

    .line 73
    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    return-void
    .line 77
.end method

.method public initAnimator()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 2
    move-result p1

    .line 5
    iget-boolean v0, p0, Lcom/miui/charge/container/IChargeView;->mInitScreenOn:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 11
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 13
    return-void
    .line 16
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/miui/charge/container/IChargeView;->checkScreenSize()V

    .line 5
    return-void
    .line 8
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/miui/charge/container/IChargeView;->checkScreenSize()V

    .line 5
    return-void
    .line 8
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    return-void
    .line 5
.end method

.method public setComponentTransparent(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setProgress(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setViewState()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public startAnimationOnChildView()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public startDismiss(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/charge/container/IChargeView;->mStartingDismissAnim:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/miui/charge/container/IChargeView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    .line 7
    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    const-string/jumbo v1, "startDismiss: reason: "

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 28
    const-string v0, "IChargeView"

    .line 29
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance p1, Landroid/animation/AnimatorSet;

    .line 34
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/miui/charge/container/IChargeView;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    .line 39
    new-instance v0, Lcom/miui/charge/container/IChargeView$1;

    .line 41
    invoke-direct {v0, p0}, Lcom/miui/charge/container/IChargeView$1;-><init>(Lcom/miui/charge/container/IChargeView;)V

    .line 43
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 46
    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/miui/charge/container/IChargeView;->mStartingDismissAnim:Z

    .line 50
    return-void
    .line 52
.end method

.method public stopChildAnimation()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public switchContainerViewAnimation(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public updateLayoutParamForScreenSizeChange()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public updateSizeForScreenSizeChange()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
