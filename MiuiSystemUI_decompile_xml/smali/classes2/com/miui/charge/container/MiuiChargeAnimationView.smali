.class public Lcom/miui/charge/container/MiuiChargeAnimationView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public animationListener:Lcom/miui/charge/view/IChargeAnimationListener;

.field public itemContainer:Landroid/view/ViewGroup;

.field public mChargeContainerView:Lcom/miui/charge/container/MiuiChargeContainerView;

.field public mChargeIconView:Lcom/miui/charge/container/MiuiChargeIconView;

.field public mChargeLogoView:Lcom/miui/charge/container/MiuiChargeLogoView;

.field public mChargePercentView:Lcom/miui/charge/view/MiuiChargePercentCountView;

.field public final mConfiguration:Landroid/content/res/Configuration;

.field public mDismissAnimatorSet:Landroid/animation/AnimatorSet;

.field public mDismissReason:Ljava/lang/String;

.field public final mDismissRunnable:Lcom/miui/charge/container/MiuiChargeAnimationView$6;

.field public final mHandler:Landroid/os/Handler;

.field public mIconPaddingTop:I

.field public mIsFoldChargeVideo:Z

.field public mIsPadChargeVideo:Z

.field public mOrientationListener:Lcom/miui/charge/container/MiuiChargeAnimationView$1;

.field public mParentContainer:Landroid/view/ViewGroup;

.field public final mQuartOutInterpolator:Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;

.field public mScreenSize:Landroid/graphics/Point;

.field public mShowChargingInNonLockscreen:Z

.field public mShowingAnimatorSet:Landroid/animation/AnimatorSet;

.field public mStartingDismissAnim:Z

.field public final mSupportWaveChargeAnimation:Z

.field public final mTimeoutDismissJob:Lcom/miui/charge/container/MiuiChargeAnimationView$6;

.field public mUpdateMonitorInjector:Lmiui/stub/MiuiStub$13;

.field public mWindowManager:Landroid/view/WindowManager;

.field public mWireState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/miui/charge/container/MiuiChargeAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/charge/container/MiuiChargeAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mHandler:Landroid/os/Handler;

    .line 5
    new-instance p2, Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;

    invoke-direct {p2}, Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;-><init>()V

    iput-object p2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mQuartOutInterpolator:Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;

    .line 6
    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    iput-object p2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mConfiguration:Landroid/content/res/Configuration;

    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mIsFoldChargeVideo:Z

    .line 8
    iput-boolean p2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mIsPadChargeVideo:Z

    .line 9
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportWaveChargeAnimation()Z

    move-result p3

    iput-boolean p3, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mSupportWaveChargeAnimation:Z

    .line 10
    new-instance p3, Lcom/miui/charge/container/MiuiChargeAnimationView$6;

    invoke-direct {p3, p0, p2}, Lcom/miui/charge/container/MiuiChargeAnimationView$6;-><init>(Lcom/miui/charge/container/MiuiChargeAnimationView;I)V

    iput-object p3, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mTimeoutDismissJob:Lcom/miui/charge/container/MiuiChargeAnimationView$6;

    .line 11
    new-instance p3, Lcom/miui/charge/container/MiuiChargeAnimationView$6;

    const/4 v0, 0x1

    invoke-direct {p3, p0, v0}, Lcom/miui/charge/container/MiuiChargeAnimationView$6;-><init>(Lcom/miui/charge/container/MiuiChargeAnimationView;I)V

    iput-object p3, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mDismissRunnable:Lcom/miui/charge/container/MiuiChargeAnimationView$6;

    .line 12
    sget-boolean p3, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    iput-boolean p3, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mIsPadChargeVideo:Z

    const-string/jumbo p3, "window"

    .line 13
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mWindowManager:Landroid/view/WindowManager;

    .line 14
    sget-boolean p3, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    iput-boolean p3, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mIsFoldChargeVideo:Z

    .line 15
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mScreenSize:Landroid/graphics/Point;

    .line 16
    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeAnimationView;->updateSizeForScreenSizeChange()V

    .line 17
    new-instance p3, Landroid/widget/RelativeLayout;

    invoke-direct {p3, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mParentContainer:Landroid/view/ViewGroup;

    const/16 v0, 0xff

    .line 18
    invoke-static {v0, p2, p2, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 19
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 20
    invoke-virtual {p3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 21
    new-instance p3, Lcom/miui/charge/container/MiuiChargeContainerView;

    invoke-direct {p3, p1}, Lcom/miui/charge/container/MiuiChargeContainerView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeContainerView:Lcom/miui/charge/container/MiuiChargeContainerView;

    .line 22
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 23
    invoke-virtual {p3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 24
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mParentContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeContainerView:Lcom/miui/charge/container/MiuiChargeContainerView;

    invoke-virtual {v0, v2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    new-instance p3, Landroid/widget/RelativeLayout;

    invoke-direct {p3, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    .line 26
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 27
    invoke-virtual {p3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 28
    new-instance v2, Lcom/miui/charge/view/MiuiChargePercentCountView;

    invoke-direct {v2, p1}, Lcom/miui/charge/view/MiuiChargePercentCountView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargePercentView:Lcom/miui/charge/view/MiuiChargePercentCountView;

    .line 29
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 30
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 31
    iget-object v3, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargePercentView:Lcom/miui/charge/view/MiuiChargePercentCountView;

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    new-instance v2, Lcom/miui/charge/container/MiuiChargeLogoView;

    invoke-direct {v2, p1}, Lcom/miui/charge/container/MiuiChargeLogoView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeLogoView:Lcom/miui/charge/container/MiuiChargeLogoView;

    .line 33
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 34
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 35
    iget-object v3, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeLogoView:Lcom/miui/charge/container/MiuiChargeLogoView;

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportParticleChargeAnimation()Z

    move-result v2

    if-nez v2, :cond_0

    .line 37
    new-instance v2, Lcom/miui/charge/container/MiuiChargeIconView;

    invoke-direct {v2, p1}, Lcom/miui/charge/container/MiuiChargeIconView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeIconView:Lcom/miui/charge/container/MiuiChargeIconView;

    .line 38
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 39
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 40
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeIconView:Lcom/miui/charge/container/MiuiChargeIconView;

    iget v1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mIconPaddingTop:I

    invoke-virtual {v0, p2, v1, p2, p2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 41
    iget-object p2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeIconView:Lcom/miui/charge/container/MiuiChargeIconView;

    invoke-virtual {p2, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    :cond_0
    iget-object p2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mParentContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    iget-object p2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mParentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeAnimationView;->getContainerLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportWaveChargeAnimation()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 45
    iget-object p2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    const p3, 0x43958000    # 299.0f

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 46
    :cond_1
    iget-boolean p2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mIsFoldChargeVideo:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mIsPadChargeVideo:Z

    if-nez p2, :cond_2

    .line 47
    iget-object p2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    iget-object p3, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeContainerView:Lcom/miui/charge/container/MiuiChargeContainerView;

    invoke-virtual {p3}, Lcom/miui/charge/container/MiuiChargeContainerView;->getVideoTranslationY()F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :cond_2
    const/high16 p2, 0x41f00000    # 30.0f

    .line 48
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 49
    const-class p2, Lmiui/stub/MiuiStub$13;

    invoke-static {p2}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiui/stub/MiuiStub$13;

    iput-object p2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mUpdateMonitorInjector:Lmiui/stub/MiuiStub$13;

    .line 50
    new-instance p2, Lcom/miui/charge/container/MiuiChargeAnimationView$1;

    invoke-direct {p2, p0, p1}, Lcom/miui/charge/container/MiuiChargeAnimationView$1;-><init>(Lcom/miui/charge/container/MiuiChargeAnimationView;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mOrientationListener:Lcom/miui/charge/container/MiuiChargeAnimationView$1;

    return-void
.end method

.method private getParentViewParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    .line 2
    const/4 v0, -0x1

    .line 4
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 5
    return-object p0
    .line 8
.end method

.method private getWindowParam()Landroid/view/WindowManager$LayoutParams;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mWindowManager:Landroid/view/WindowManager;

    .line 2
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mScreenSize:Landroid/graphics/Point;

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 10
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 13
    const/4 v3, -0x1

    .line 15
    const/4 v4, -0x1

    .line 16
    const/16 v5, 0x7ea

    .line 17
    const v6, 0x5800400

    .line 19
    const/4 v7, -0x3

    .line 22
    move-object v2, v0

    .line 23
    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 24
    const/4 v1, 0x3

    .line 27
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 28
    const/4 v2, 0x0

    .line 30
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 31
    const/16 v2, 0x1300

    .line 33
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 35
    iget-boolean v2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mIsPadChargeVideo:Z

    .line 37
    if-nez v2, :cond_1

    .line 39
    iget-boolean v2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mIsFoldChargeVideo:Z

    .line 41
    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 45
    move-result-object p0

    .line 48
    invoke-static {p0}, Lcom/miui/utils/configs/MiuiConfigs;->isFoldLargeScreenAndNotPad(Landroid/content/Context;)Z

    .line 49
    move-result p0

    .line 52
    if-eqz p0, :cond_0

    .line 53
    goto :goto_0

    .line 55
    :cond_0
    const/4 p0, 0x1

    .line 56
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 57
    goto :goto_1

    .line 59
    :cond_1
    :goto_0
    const/4 p0, 0x2

    .line 60
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 61
    :goto_1
    const p0, 0x808000

    .line 63
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    .line 66
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 68
    const-string p0, "charge_animation_view"

    .line 70
    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    return-object v0
    .line 75
.end method


# virtual methods
.method public final addChargeView()V
    .locals 3

    .line 1
    const-string v0, "MiuiChargeAnimationView"

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 4
    move-result v1

    .line 7
    if-nez v1, :cond_2

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 10
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mShowChargingInNonLockscreen:Z

    .line 18
    :try_start_0
    const-string v1, "addToWindow: reason prepareChargeAnimation"

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 26
    iget-boolean v1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mShowChargingInNonLockscreen:Z

    .line 29
    if-eqz v1, :cond_1

    .line 31
    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mWindowManager:Landroid/view/WindowManager;

    .line 33
    invoke-direct {p0}, Lcom/miui/charge/container/MiuiChargeAnimationView;->getWindowParam()Landroid/view/WindowManager$LayoutParams;

    .line 35
    move-result-object v2

    .line 38
    invoke-interface {v1, p0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    goto :goto_0

    .line 42
    :cond_1
    sget-boolean v1, Lcom/miui/charge/ChargeUtils;->sChargeAnimationDisabled:Z

    .line 43
    const-class v1, Lmiui/stub/MiuiStub$9;

    .line 45
    invoke-static {v1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    move-result-object v1

    .line 50
    check-cast v1, Lmiui/stub/MiuiStub$9;

    .line 51
    iget-object v1, v1, Lmiui/stub/MiuiStub$9;->this$0:Lmiui/stub/MiuiStub;

    .line 53
    iget-object v1, v1, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 55
    iget-object v1, v1, Lmiui/stub/MiuiStub$SysUIProvider;->mCentralSurfaces:Ldagger/Lazy;

    .line 57
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 59
    move-result-object v1

    .line 62
    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 63
    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 65
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 67
    invoke-direct {p0}, Lcom/miui/charge/container/MiuiChargeAnimationView;->getParentViewParams()Landroid/view/ViewGroup$LayoutParams;

    .line 69
    move-result-object v2

    .line 72
    invoke-virtual {v1, p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 76
    :catch_0
    move-exception p0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    const-string v2, "addToWindow: Exception "

    .line 80
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    :cond_2
    :goto_0
    return-void
    .line 98
.end method

.method public final disableOrientation()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mOrientationListener:Lcom/miui/charge/container/MiuiChargeAnimationView$1;

    .line 2
    if-eqz v0, :cond_2

    .line 4
    iget-object v0, v0, Lcom/miui/charge/container/MiuiChargeAnimationView$1;->mSensor:Landroid/hardware/Sensor;

    .line 6
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    move v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v2

    .line 14
    :goto_0
    if-eqz v0, :cond_2

    .line 15
    const-string v0, "MiuiChargeAnimationView"

    .line 17
    const-string v3, "disable orientation sensor"

    .line 19
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mOrientationListener:Lcom/miui/charge/container/MiuiChargeAnimationView$1;

    .line 24
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$1;->mSensor:Landroid/hardware/Sensor;

    .line 26
    if-nez v0, :cond_1

    .line 28
    const-string p0, "DeviceOrientationEventListener"

    .line 30
    const-string v0, "Cannot detect sensors. Invalid disable"

    .line 32
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    goto :goto_1

    .line 37
    :cond_1
    iget-boolean v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$1;->mEnabled:Z

    .line 38
    if-ne v0, v1, :cond_2

    .line 40
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$1;->mSensorEventListener:Lcom/miui/charge/OrientationEventListenerWrapper$SensorEventListenerImpl;

    .line 42
    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$1;->mSensorManager:Landroid/hardware/SensorManager;

    .line 44
    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 46
    iput-boolean v2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$1;->mEnabled:Z

    .line 49
    :cond_2
    :goto_1
    return-void
    .line 51
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const-string p1, "dismiss_for_key_event"

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/charge/container/MiuiChargeAnimationView;->startDismiss(Ljava/lang/String;)V

    .line 4
    const/4 p0, 0x0

    .line 7
    return p0
    .line 8
.end method

.method public getAnimationDuration()I
    .locals 4

    .line 1
    const-class v0, Lcom/miui/charge/MiuiChargeManager;

    .line 2
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/miui/charge/MiuiChargeManager;

    .line 8
    iget-object v0, v0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 10
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    iget v0, v0, Lcom/miui/charge/MiuiBatteryStatus;->plugged:I

    .line 15
    const/4 v2, 0x2

    .line 17
    const/4 v3, 0x1

    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    move v0, v3

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v1

    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    move v1, v3

    .line 26
    :cond_1
    if-eqz v1, :cond_2

    .line 27
    const-class v0, Lmiui/stub/MiuiStub$3;

    .line 29
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 34
    check-cast v0, Lmiui/stub/MiuiStub$3;

    .line 35
    iget-object v0, v0, Lmiui/stub/MiuiStub$3;->this$0:Lmiui/stub/MiuiStub;

    .line 37
    iget-object v0, v0, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 39
    iget-object v0, v0, Lmiui/stub/MiuiStub$SysUIProvider;->mKeyguardUpdateMonitor:Ldagger/Lazy;

    .line 41
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 46
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 47
    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 49
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    .line 51
    move-result v0

    .line 54
    if-nez v0, :cond_2

    .line 55
    const/16 p0, 0x1388

    .line 57
    return p0

    .line 59
    :cond_2
    iget-boolean p0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mShowChargingInNonLockscreen:Z

    .line 60
    if-eqz p0, :cond_3

    .line 62
    const/16 p0, 0x2710

    .line 64
    return p0

    .line 66
    :cond_3
    const/16 p0, 0x4e20

    .line 67
    return p0
    .line 69
.end method

.method public getContainerLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
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

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mConfiguration:Landroid/content/res/Configuration;

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 7
    move-result p1

    .line 10
    and-int/lit16 p1, p1, 0x800

    .line 11
    const/4 v0, 0x0

    .line 13
    if-eqz p1, :cond_0

    .line 14
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move p1, v0

    .line 18
    :goto_0
    if-eqz p1, :cond_2

    .line 19
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mWindowManager:Landroid/view/WindowManager;

    .line 21
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 23
    move-result-object p1

    .line 26
    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mScreenSize:Landroid/graphics/Point;

    .line 27
    invoke-virtual {p1, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 29
    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeAnimationView;->updateSizeForScreenSizeChange()V

    .line 32
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeIconView:Lcom/miui/charge/container/MiuiChargeIconView;

    .line 35
    if-eqz p1, :cond_1

    .line 37
    iget v1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mIconPaddingTop:I

    .line 39
    invoke-virtual {p1, v0, v1, v0, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 41
    :cond_1
    iget-boolean p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mIsFoldChargeVideo:Z

    .line 44
    if-nez p1, :cond_2

    .line 46
    iget-boolean p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mIsPadChargeVideo:Z

    .line 48
    if-nez p1, :cond_2

    .line 50
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    .line 52
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeContainerView:Lcom/miui/charge/container/MiuiChargeContainerView;

    .line 54
    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeContainerView;->getVideoTranslationY()F

    .line 56
    move-result p0

    .line 59
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 60
    :cond_2
    return-void
    .line 63
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeAnimationView;->disableOrientation()V

    .line 5
    return-void
    .line 8
.end method

.method public final removeChargeView(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    const-string v0, "removeFromWindow: "

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 14
    const-string v0, "MiuiChargeAnimationView"

    .line 15
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :try_start_0
    iget-boolean p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mShowChargingInNonLockscreen:Z

    .line 20
    if-eqz p1, :cond_1

    .line 22
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mWindowManager:Landroid/view/WindowManager;

    .line 24
    invoke-interface {p1, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 26
    goto :goto_0

    .line 29
    :cond_1
    sget-boolean p1, Lcom/miui/charge/ChargeUtils;->sChargeAnimationDisabled:Z

    .line 30
    const-class p1, Lmiui/stub/MiuiStub$9;

    .line 32
    invoke-static {p1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 37
    check-cast p1, Lmiui/stub/MiuiStub$9;

    .line 38
    iget-object p1, p1, Lmiui/stub/MiuiStub$9;->this$0:Lmiui/stub/MiuiStub;

    .line 40
    iget-object p1, p1, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 42
    iget-object p1, p1, Lmiui/stub/MiuiStub$SysUIProvider;->mCentralSurfaces:Ldagger/Lazy;

    .line 44
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 49
    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 50
    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 52
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 54
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_0

    .line 59
    :catch_0
    move-exception p0

    .line 60
    const-string p1, "remove from window exception:"

    .line 61
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    :goto_0
    return-void
    .line 66
.end method

.method public setChargeAnimationListener(Lcom/miui/charge/view/IChargeAnimationListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->animationListener:Lcom/miui/charge/view/IChargeAnimationListener;

    .line 2
    return-void
    .line 4
.end method

.method public setProgress(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargePercentView:Lcom/miui/charge/view/MiuiChargePercentCountView;

    .line 2
    invoke-virtual {v0, p1}, Lcom/miui/charge/view/MiuiChargePercentCountView;->setProgress(I)V

    .line 4
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeContainerView:Lcom/miui/charge/container/MiuiChargeContainerView;

    .line 7
    invoke-virtual {p0, p1}, Lcom/miui/charge/container/MiuiChargeContainerView;->setProgress(I)V

    .line 9
    return-void
    .line 12
.end method

.method public final startDismiss(Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mStartingDismissAnim:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mShowingAnimatorSet:Landroid/animation/AnimatorSet;

    .line 7
    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mShowingAnimatorSet:Landroid/animation/AnimatorSet;

    .line 17
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mUpdateMonitorInjector:Lmiui/stub/MiuiStub$13;

    .line 22
    const-string v1, "dismiss_for_timeout"

    .line 24
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 26
    move-result v2

    .line 29
    const/4 v3, 0x1

    .line 30
    const/4 v4, 0x0

    .line 31
    if-nez v2, :cond_3

    .line 32
    const-string v2, "dismiss_for_screen_off"

    .line 34
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 36
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    goto :goto_0

    .line 42
    :cond_2
    move v2, v4

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    :goto_0
    move v2, v3

    .line 45
    :goto_1
    iget-object v0, v0, Lmiui/stub/MiuiStub$13;->this$0:Lmiui/stub/MiuiStub;

    .line 46
    iget-object v0, v0, Lmiui/stub/MiuiStub;->mMiuiModuleProvider:Lmiui/stub/MiuiStub$MiuiModuleProvider;

    .line 48
    iget-object v0, v0, Lmiui/stub/MiuiStub$MiuiModuleProvider;->mKeyguardUpdateMonitorInjector:Ldagger/Lazy;

    .line 50
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 52
    move-result-object v0

    .line 55
    check-cast v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 56
    invoke-virtual {v0, v4, v2}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->handleChargeAnimationShowingChanged(ZZ)V

    .line 58
    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeAnimationView;->disableOrientation()V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    const-string/jumbo v2, "startDismiss: reason: "

    .line 66
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 78
    const-string v2, "MiuiChargeAnimationView"

    .line 79
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iput-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mDismissReason:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mHandler:Landroid/os/Handler;

    .line 86
    iget-object v2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mTimeoutDismissJob:Lcom/miui/charge/container/MiuiChargeAnimationView$6;

    .line 88
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 90
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mHandler:Landroid/os/Handler;

    .line 93
    iget-object v2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mDismissRunnable:Lcom/miui/charge/container/MiuiChargeAnimationView$6;

    .line 95
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 97
    sget-object v0, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    .line 100
    const/4 v2, 0x2

    .line 102
    new-array v5, v2, [F

    .line 103
    iget-object v6, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mParentContainer:Landroid/view/ViewGroup;

    .line 105
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getAlpha()F

    .line 107
    move-result v6

    .line 110
    aput v6, v5, v4

    .line 111
    const/4 v6, 0x0

    .line 113
    aput v6, v5, v3

    .line 114
    invoke-static {v0, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 116
    move-result-object v0

    .line 119
    sget-object v5, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    .line 120
    new-array v7, v2, [F

    .line 122
    iget-object v8, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    .line 124
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getScaleX()F

    .line 126
    move-result v8

    .line 129
    aput v8, v7, v4

    .line 130
    aput v6, v7, v3

    .line 132
    invoke-static {v5, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 134
    move-result-object v5

    .line 137
    sget-object v7, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    .line 138
    new-array v8, v2, [F

    .line 140
    iget-object v9, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    .line 142
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getScaleY()F

    .line 144
    move-result v9

    .line 147
    aput v9, v8, v4

    .line 148
    aput v6, v8, v3

    .line 150
    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 152
    move-result-object v7

    .line 155
    iget-object v8, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mParentContainer:Landroid/view/ViewGroup;

    .line 156
    filled-new-array {v0}, [Landroid/animation/PropertyValuesHolder;

    .line 158
    move-result-object v0

    .line 161
    invoke-static {v8, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 162
    move-result-object v0

    .line 165
    sget-object v8, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    .line 166
    new-array v2, v2, [F

    .line 168
    iget-object v9, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    .line 170
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getAlpha()F

    .line 172
    move-result v9

    .line 175
    aput v9, v2, v4

    .line 176
    aput v6, v2, v3

    .line 178
    invoke-static {v8, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 180
    move-result-object v2

    .line 183
    iget-object v4, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    .line 184
    filled-new-array {v5, v7, v2}, [Landroid/animation/PropertyValuesHolder;

    .line 186
    move-result-object v2

    .line 189
    invoke-static {v4, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 190
    move-result-object v2

    .line 193
    new-instance v4, Landroid/animation/AnimatorSet;

    .line 194
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 196
    iput-object v4, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    .line 199
    const-wide/16 v5, 0x258

    .line 201
    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 203
    iget-object v4, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    .line 206
    iget-object v5, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mQuartOutInterpolator:Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;

    .line 208
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 210
    new-instance v4, Lcom/miui/charge/container/MiuiChargeAnimationView$5;

    .line 213
    invoke-direct {v4, p0, p1}, Lcom/miui/charge/container/MiuiChargeAnimationView$5;-><init>(Lcom/miui/charge/container/MiuiChargeAnimationView;Ljava/lang/String;)V

    .line 215
    iget-object v5, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    .line 218
    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 220
    iget-object v4, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mUpdateMonitorInjector:Lmiui/stub/MiuiStub$13;

    .line 223
    invoke-virtual {v4}, Lmiui/stub/MiuiStub$13;->isKeyguardShowing()Z

    .line 225
    move-result v4

    .line 228
    if-eqz v4, :cond_4

    .line 229
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 231
    move-result p1

    .line 234
    if-eqz p1, :cond_4

    .line 235
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    .line 237
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 239
    goto :goto_2

    .line 242
    :cond_4
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    .line 243
    filled-new-array {v0, v2}, [Landroid/animation/Animator;

    .line 245
    move-result-object v0

    .line 248
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 249
    :goto_2
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    .line 252
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 254
    iput-boolean v3, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mStartingDismissAnim:Z

    .line 257
    return-void
    .line 259
.end method

.method public final updateSizeForScreenSizeChange()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mIsPadChargeVideo:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/16 v0, 0xc1

    .line 6
    iput v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mIconPaddingTop:I

    .line 8
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mScreenSize:Landroid/graphics/Point;

    .line 11
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 13
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 15
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 17
    move-result v0

    .line 20
    int-to-float v0, v0

    .line 21
    const/high16 v1, 0x3f800000    # 1.0f

    .line 22
    mul-float v2, v0, v1

    .line 24
    const/high16 v3, 0x44870000    # 1080.0f

    .line 26
    div-float/2addr v2, v3

    .line 28
    iget-boolean v4, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mIsFoldChargeVideo:Z

    .line 29
    if-eqz v4, :cond_2

    .line 31
    cmpl-float v4, v2, v1

    .line 33
    if-lez v4, :cond_1

    .line 35
    goto :goto_0

    .line 37
    :cond_1
    move v1, v2

    .line 38
    :goto_0
    move v2, v1

    .line 39
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 40
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->isLiteChargeAnimationPad()Z

    .line 43
    move-result v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    const v1, 0x3f19999a    # 0.6f

    .line 49
    mul-float/2addr v0, v1

    .line 52
    div-float v2, v0, v3

    .line 53
    :cond_3
    const v0, 0x43898000    # 275.0f

    .line 55
    mul-float/2addr v2, v0

    .line 58
    float-to-int v0, v2

    .line 59
    iput v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mIconPaddingTop:I

    .line 60
    return-void
    .line 62
.end method
