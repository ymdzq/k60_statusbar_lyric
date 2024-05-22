.class public Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;
.implements Lcom/android/wm/shell/onehanded/OneHandedState$OnStateChangedListener;
.implements Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;


# static fields
.field private static final START_TRANSITION_FRACTION:F = 0.6f

.field private static final TAG:Ljava/lang/String; = "OneHandedTutorialHandler"


# instance fields
.field private mAlphaAnimationDurationMs:I

.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAlphaTransitionStart:F

.field private final mBackgroundWindowManager:Lcom/android/wm/shell/onehanded/BackgroundWindowManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mDisplayBounds:Landroid/graphics/Rect;

.field private mOneHandedTutorialHandlerStub:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerStub;

.field private mTargetViewContainer:Landroid/view/ViewGroup;

.field private mTutorialAreaHeight:I

.field private final mTutorialHeightRatio:F

.field private mTutorialView:Landroid/view/View;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$bsIXGV757ssRnq-o7keY_wWaeQE(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->lambda$setupAlphaTransition$0(Landroid/animation/ValueAnimator;)V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;Landroid/view/WindowManager;Lcom/android/wm/shell/onehanded/BackgroundWindowManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mContext:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mWindowManager:Landroid/view/WindowManager;

    .line 7
    iput-object p4, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mBackgroundWindowManager:Lcom/android/wm/shell/onehanded/BackgroundWindowManager;

    .line 9
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getTranslationFraction(Landroid/content/Context;)F

    .line 11
    move-result p4

    .line 14
    iput p4, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTutorialHeightRatio:F

    .line 15
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getTransitionDuration(Landroid/content/Context;)I

    .line 17
    move-result p1

    .line 20
    iput p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mAlphaAnimationDurationMs:I

    .line 21
    invoke-static {}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerStub;->newImpl()Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerStub;

    .line 23
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mOneHandedTutorialHandlerStub:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerStub;

    .line 27
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mContext:Landroid/content/Context;

    .line 29
    invoke-interface {p1, p0, p2, p3}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerStub;->init(Landroid/content/Context;Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;Landroid/view/WindowManager;)V

    .line 31
    return-void
    .line 34
.end method

.method private attachTargetToWindow()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mWindowManager:Landroid/view/WindowManager;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    .line 4
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->getTutorialTargetLayoutParams()Landroid/view/WindowManager$LayoutParams;

    .line 6
    move-result-object v2

    .line 9
    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mBackgroundWindowManager:Lcom/android/wm/shell/onehanded/BackgroundWindowManager;

    .line 13
    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->showBackgroundLayer()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 18
    :catch_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mWindowManager:Landroid/view/WindowManager;

    .line 19
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    .line 21
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->getTutorialTargetLayoutParams()Landroid/view/WindowManager$LayoutParams;

    .line 23
    move-result-object p0

    .line 26
    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    :goto_0
    return-void
    .line 30
.end method

.method private checkTransitionEnd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 12
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 20
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 22
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 25
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 27
    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 31
    :cond_1
    return-void
    .line 33
.end method

.method private fillBackgroundColor()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mBackgroundWindowManager:Lcom/android/wm/shell/onehanded/BackgroundWindowManager;

    .line 6
    if-nez p0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->getThemeColorForBackground()I

    .line 11
    move-result p0

    .line 14
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 15
    :cond_1
    :goto_0
    return-void
    .line 18
.end method

.method private getTutorialTargetLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 9

    .line 1
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mDisplayBounds:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 6
    move-result v1

    .line 9
    iget v2, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTutorialAreaHeight:I

    .line 10
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/16 v5, 0x7e8

    .line 14
    const/16 v6, 0x108

    .line 16
    const/4 v7, -0x3

    .line 18
    move-object v0, v8

    .line 19
    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 20
    const/16 p0, 0x33

    .line 23
    iput p0, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 25
    const/4 p0, 0x3

    .line 27
    iput p0, v8, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 28
    iget p0, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 30
    or-int/lit8 p0, p0, 0x10

    .line 32
    iput p0, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 34
    const/4 p0, 0x0

    .line 36
    invoke-virtual {v8, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 37
    const-string p0, "one-handed-tutorial-overlay"

    .line 40
    invoke-virtual {v8, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    return-object v8
    .line 45
.end method

.method private synthetic lambda$setupAlphaTransition$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Float;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 10
    move-result p1

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 14
    return-void
    .line 17
.end method

.method private setupAlphaTransition(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    if-eqz p1, :cond_0

    .line 5
    move v2, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v2, v1

    .line 9
    :goto_0
    if-eqz p1, :cond_1

    .line 10
    move v0, v1

    .line 12
    :cond_1
    if-eqz p1, :cond_2

    .line 13
    iget p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mAlphaAnimationDurationMs:I

    .line 15
    goto :goto_1

    .line 17
    :cond_2
    iget p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mAlphaAnimationDurationMs:I

    .line 18
    int-to-float p1, p1

    .line 20
    iget v3, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTutorialHeightRatio:F

    .line 21
    sub-float/2addr v1, v3

    .line 23
    mul-float/2addr v1, p1

    .line 24
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 25
    move-result p1

    .line 28
    :goto_1
    const/4 v1, 0x2

    .line 29
    new-array v1, v1, [F

    .line 30
    const/4 v3, 0x0

    .line 32
    aput v2, v1, v3

    .line 33
    const/4 v2, 0x1

    .line 35
    aput v0, v1, v2

    .line 36
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 38
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 42
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 44
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 46
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 49
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 52
    int-to-long v1, p1

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 55
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 58
    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$$ExternalSyntheticLambda0;

    .line 60
    invoke-direct {v0, p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;)V

    .line 62
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 65
    return-void
    .line 68
.end method

.method private updateThemeColor()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTutorialView:Landroid/view/View;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 7
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTutorialView:Landroid/view/View;

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 14
    const v2, 0x10302e3    # @android:style/Theme.DeviceDefault.DayNight

    .line 15
    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 18
    const v1, 0x1010036    # @android:attr/textColorPrimary

    .line 21
    const v2, 0x1010038    # @android:attr/textColorSecondary

    .line 24
    filled-new-array {v1, v2}, [I

    .line 27
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 31
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 36
    move-result v2

    .line 39
    const/4 v3, 0x1

    .line 40
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 41
    move-result v1

    .line 44
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTutorialView:Landroid/view/View;

    .line 48
    const v3, 0x7f0a06c7    # @id/one_handed_tutorial_image

    .line 50
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object v0

    .line 56
    check-cast v0, Landroid/widget/ImageView;

    .line 57
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 59
    move-result-object v3

    .line 62
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 63
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTutorialView:Landroid/view/View;

    .line 66
    const v3, 0x7f0a06c9    # @id/one_handed_tutorial_title

    .line 68
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/TextView;

    .line 75
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTutorialView:Landroid/view/View;

    .line 77
    const v3, 0x7f0a06c6    # @id/one_handed_tutorial_description

    .line 79
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    move-result-object p0

    .line 85
    check-cast p0, Landroid/widget/TextView;

    .line 86
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    return-void
    .line 94
.end method


# virtual methods
.method public createViewAndAttachToWindow(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->isAttached()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    move-result-object v0

    .line 12
    const v1, 0x7f0d02a4    # @layout/one_handed_tutorial 'res/layout/one_handed_tutorial.xml'

    .line 13
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTutorialView:Landroid/view/View;

    .line 21
    new-instance v0, Landroid/widget/FrameLayout;

    .line 23
    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    .line 28
    const/4 p1, 0x0

    .line 30
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 31
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    .line 34
    iget v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mCurrentState:I

    .line 36
    const/4 v1, 0x2

    .line 38
    if-ne v0, v1, :cond_1

    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    .line 41
    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 45
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mOneHandedTutorialHandlerStub:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerStub;

    .line 48
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    .line 50
    invoke-interface {p1, v0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerStub;->setTargetViewContainer(Landroid/view/ViewGroup;)V

    .line 52
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mOneHandedTutorialHandlerStub:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerStub;

    .line 55
    invoke-interface {p1}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerStub;->canShowTutorial()Z

    .line 57
    move-result p1

    .line 60
    if-eqz p1, :cond_2

    .line 61
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    .line 63
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTutorialView:Landroid/view/View;

    .line 65
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    .line 70
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 72
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->attachTargetToWindow()V

    .line 75
    return-void
    .line 78
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    const-string v0, "OneHandedTutorialHandler"

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    const-string v0, "  isAttached="

    .line 7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->isAttached()Z

    .line 12
    move-result v0

    .line 15
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 16
    const-string v0, "  mCurrentState="

    .line 19
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 21
    iget v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mCurrentState:I

    .line 24
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 26
    const-string v0, "  mDisplayBounds="

    .line 29
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mDisplayBounds:Landroid/graphics/Rect;

    .line 34
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 36
    const-string v0, "  mTutorialAreaHeight="

    .line 39
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 41
    iget v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTutorialAreaHeight:I

    .line 44
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 46
    const-string v0, "  mAlphaTransitionStart="

    .line 49
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 51
    iget v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mAlphaTransitionStart:F

    .line 54
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 56
    const-string v0, "  mAlphaAnimationDurationMs="

    .line 59
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    iget v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mAlphaAnimationDurationMs:I

    .line 64
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 66
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mBackgroundWindowManager:Lcom/android/wm/shell/onehanded/BackgroundWindowManager;

    .line 69
    if-eqz p0, :cond_0

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->dump(Ljava/io/PrintWriter;)V

    .line 73
    :cond_0
    return-void
    .line 76
.end method

.method public isAttached()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    .line 6
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public onAnimationUpdate(Landroid/view/SurfaceControl$Transaction;FF)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->isAttached()Z

    .line 2
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mAlphaTransitionStart:F

    .line 9
    cmpg-float p1, p3, p1

    .line 11
    if-gez p1, :cond_1

    .line 13
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->checkTransitionEnd()V

    .line 15
    return-void

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 19
    if-eqz p1, :cond_3

    .line 21
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 23
    move-result p1

    .line 26
    if-nez p1, :cond_3

    .line 27
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 29
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 31
    move-result p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    goto :goto_0

    .line 37
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 38
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 40
    :cond_3
    :goto_0
    return-void
    .line 43
.end method

.method public onConfigurationChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mBackgroundWindowManager:Lcom/android/wm/shell/onehanded/BackgroundWindowManager;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->onConfigurationChanged()V

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mOneHandedTutorialHandlerStub:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerStub;

    .line 7
    const/4 v1, 0x0

    .line 9
    invoke-interface {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerStub;->removeTutorialFromWindowManager(Z)V

    .line 10
    iget v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mCurrentState:I

    .line 13
    const/4 v1, 0x1

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    const/4 v1, 0x2

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mContext:Landroid/content/Context;

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->createViewAndAttachToWindow(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->fillBackgroundColor()V

    .line 26
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->updateThemeColor()V

    .line 29
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->checkTransitionEnd()V

    .line 32
    :cond_1
    return-void
    .line 35
.end method

.method public onDisplayChanged(Lcom/android/wm/shell/common/DisplayLayout;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    iget v1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 4
    iget v2, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 6
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mDisplayBounds:Landroid/graphics/Rect;

    .line 12
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 14
    move-result v0

    .line 17
    int-to-float v0, v0

    .line 18
    iget v1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTutorialHeightRatio:F

    .line 19
    mul-float/2addr v0, v1

    .line 21
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 22
    move-result v0

    .line 25
    iput v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTutorialAreaHeight:I

    .line 26
    int-to-float v0, v0

    .line 28
    const v1, 0x3f19999a    # 0.6f

    .line 29
    mul-float/2addr v0, v1

    .line 32
    iput v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mAlphaTransitionStart:F

    .line 33
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mBackgroundWindowManager:Lcom/android/wm/shell/onehanded/BackgroundWindowManager;

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->onDisplayChanged(Lcom/android/wm/shell/common/DisplayLayout;)V

    .line 37
    return-void
    .line 40
.end method

.method public onOneHandedAnimationCancel(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public onStartFinished(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->fillBackgroundColor()V

    .line 2
    return-void
    .line 5
.end method

.method public onStateChanged(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mCurrentState:I

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mBackgroundWindowManager:Lcom/android/wm/shell/onehanded/BackgroundWindowManager;

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->onStateChanged(I)V

    .line 6
    const/4 v0, 0x1

    .line 9
    if-eqz p1, :cond_2

    .line 10
    if-eq p1, v0, :cond_1

    .line 12
    const/4 v1, 0x2

    .line 14
    if-eq p1, v1, :cond_0

    .line 15
    const/4 v1, 0x3

    .line 17
    if-eq p1, v1, :cond_2

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->checkTransitionEnd()V

    .line 21
    const/4 p1, 0x0

    .line 24
    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->setupAlphaTransition(Z)V

    .line 25
    goto :goto_0

    .line 28
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mContext:Landroid/content/Context;

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->createViewAndAttachToWindow(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->updateThemeColor()V

    .line 34
    invoke-direct {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->setupAlphaTransition(Z)V

    .line 37
    goto :goto_0

    .line 40
    :cond_2
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->checkTransitionEnd()V

    .line 41
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mOneHandedTutorialHandlerStub:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerStub;

    .line 44
    invoke-interface {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerStub;->removeTutorialFromWindowManager(Z)V

    .line 46
    :goto_0
    return-void
    .line 49
.end method

.method public onStopFinished(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->removeBackgroundSurface()V

    .line 2
    return-void
    .line 5
.end method

.method public removeBackgroundSurface()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mBackgroundWindowManager:Lcom/android/wm/shell/onehanded/BackgroundWindowManager;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->removeBackgroundLayer()V

    .line 4
    return-void
    .line 7
.end method

.method public removeTutorialFromWindowManager()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->isAttached()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    .line 9
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 13
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mWindowManager:Landroid/view/WindowManager;

    .line 16
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    .line 18
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 20
    iput-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    .line 23
    return-void
    .line 25
.end method
