.class public final Lcom/android/systemui/assist/ui/DefaultUiController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

.field public final mAssistManagerLazy:Ldagger/Lazy;

.field public mAttached:Z

.field public mInvocationAnimator:Landroid/animation/ValueAnimator;

.field public mInvocationInProgress:Z

.field public final mInvocationLightsView:Lcom/android/systemui/assist/ui/InvocationLightsView;

.field public mLastInvocationProgress:F

.field public final mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mProgressInterpolator:Landroid/view/animation/PathInterpolator;

.field public final mRoot:Landroid/widget/FrameLayout;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 2
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 6
    move-result-object v2

    .line 9
    const-string v3, "debug"

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 21
    const-string v1, "eng"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    :cond_0
    return-void
    .line 27
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/assist/AssistLogger;Landroid/view/WindowManager;Lcom/android/internal/logging/MetricsLogger;Ldagger/Lazy;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 5
    const v1, 0x3f570a3d    # 0.84f

    .line 7
    const/high16 v2, 0x3f800000    # 1.0f

    .line 10
    const v3, 0x3f547ae1    # 0.83f

    .line 12
    const/4 v4, 0x0

    .line 15
    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 16
    iput-object v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mProgressInterpolator:Landroid/view/animation/PathInterpolator;

    .line 19
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mAttached:Z

    .line 22
    iput-boolean v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationInProgress:Z

    .line 24
    iput v4, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mLastInvocationProgress:F

    .line 26
    new-instance v1, Landroid/animation/ValueAnimator;

    .line 28
    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    .line 33
    iput-object p2, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

    .line 35
    new-instance p2, Landroid/widget/FrameLayout;

    .line 37
    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p2, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mRoot:Landroid/widget/FrameLayout;

    .line 42
    iput-object p3, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mWindowManager:Landroid/view/WindowManager;

    .line 44
    iput-object p4, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 46
    iput-object p5, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mAssistManagerLazy:Ldagger/Lazy;

    .line 48
    new-instance p3, Landroid/view/WindowManager$LayoutParams;

    .line 50
    const/4 v2, -0x1

    .line 52
    const/4 v3, -0x2

    .line 53
    const/4 v4, 0x0

    .line 54
    const/4 v5, 0x0

    .line 55
    const/16 v6, 0x7e8

    .line 56
    const/16 v7, 0x328

    .line 58
    const/4 v8, -0x3

    .line 60
    move-object v1, p3

    .line 61
    invoke-direct/range {v1 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 62
    iput-object p3, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 65
    const/16 p4, 0x40

    .line 67
    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 69
    const/16 p4, 0x50

    .line 71
    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 73
    invoke-virtual {p3, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 75
    const-string p4, "Assist"

    .line 78
    invoke-virtual {p3, p4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 83
    move-result-object p1

    .line 86
    const p3, 0x7f0d00e6    # @layout/invocation_lights 'res/layout/invocation_lights.xml'

    .line 87
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 90
    move-result-object p1

    .line 93
    check-cast p1, Lcom/android/systemui/assist/ui/InvocationLightsView;

    .line 94
    iput-object p1, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationLightsView:Lcom/android/systemui/assist/ui/InvocationLightsView;

    .line 96
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 98
    return-void
    .line 101
.end method


# virtual methods
.method public final animateInvocationCompletion()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    const/4 v1, 0x0

    .line 5
    iget v2, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mLastInvocationProgress:F

    .line 6
    aput v2, v0, v1

    .line 8
    const/4 v1, 0x1

    .line 10
    const/high16 v2, 0x3f800000    # 1.0f

    .line 11
    aput v2, v0, v1

    .line 13
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 15
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    .line 19
    const-wide/16 v1, 0x1

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 23
    iget-object v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    .line 26
    const-wide/16 v1, 0xc8

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 30
    iget-object v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    .line 33
    new-instance v1, Lcom/android/systemui/assist/ui/DefaultUiController$$ExternalSyntheticLambda0;

    .line 35
    invoke-direct {v1, p0}, Lcom/android/systemui/assist/ui/DefaultUiController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/assist/ui/DefaultUiController;)V

    .line 37
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 40
    iget-object v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    .line 43
    new-instance v1, Lcom/android/systemui/assist/ui/DefaultUiController$1;

    .line 45
    invoke-direct {v1, p0}, Lcom/android/systemui/assist/ui/DefaultUiController$1;-><init>(Lcom/android/systemui/assist/ui/DefaultUiController;)V

    .line 47
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 50
    iget-object p0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    .line 53
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 55
    return-void
    .line 58
.end method

.method public final hide()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mAttached:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mRoot:Landroid/widget/FrameLayout;

    .line 7
    iget-object v2, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mWindowManager:Landroid/view/WindowManager;

    .line 9
    invoke-interface {v2, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 11
    iput-boolean v1, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mAttached:Z

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    .line 16
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    .line 24
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 26
    :cond_1
    const/16 v0, 0x8

    .line 29
    iget-object v2, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationLightsView:Lcom/android/systemui/assist/ui/InvocationLightsView;

    .line 31
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    iget-object v0, v2, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v0

    .line 41
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v3

    .line 45
    if-eqz v3, :cond_2

    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v3

    .line 51
    check-cast v3, Lcom/android/systemui/assist/ui/EdgeLight;

    .line 52
    const/4 v4, 0x0

    .line 54
    invoke-virtual {v3, v4, v4}, Lcom/android/systemui/assist/ui/EdgeLight;->setEndpoints(FF)V

    .line 55
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v2}, Lcom/android/systemui/assist/ui/InvocationLightsView;->attemptUnregisterNavBarListener()V

    .line 59
    iput-boolean v1, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationInProgress:Z

    .line 62
    return-void
    .line 64
.end method

.method public final logInvocationProgressMetrics(FZ)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x6b4

    .line 3
    iget-object v2, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

    .line 5
    const/4 v3, 0x0

    .line 7
    if-nez p2, :cond_0

    .line 8
    cmpl-float v4, p1, v3

    .line 10
    if-lez v4, :cond_0

    .line 12
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    invoke-virtual {v2, v0, v4, v5, v5}, Lcom/android/systemui/assist/AssistLogger;->reportAssistantInvocationEventFromLegacy(IZLandroid/content/ComponentName;Ljava/lang/Integer;)V

    .line 16
    new-instance v4, Landroid/metrics/LogMaker;

    .line 19
    invoke-direct {v4, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 21
    const/4 v5, 0x4

    .line 24
    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 25
    move-result-object v4

    .line 28
    iget-object v6, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mAssistManagerLazy:Ldagger/Lazy;

    .line 29
    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 31
    move-result-object v6

    .line 34
    check-cast v6, Lcom/android/systemui/assist/AssistManager;

    .line 35
    iget-object v6, v6, Lcom/android/systemui/assist/AssistManager;->mPhoneStateMonitor:Lcom/android/systemui/assist/PhoneStateMonitor;

    .line 37
    invoke-virtual {v6}, Lcom/android/systemui/assist/PhoneStateMonitor;->getPhoneState()I

    .line 39
    move-result v6

    .line 42
    const/4 v7, 0x2

    .line 43
    shl-int/lit8 v5, v6, 0x4

    .line 44
    or-int/2addr v5, v7

    .line 46
    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 47
    move-result-object v4

    .line 50
    iget-object v5, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 51
    invoke-virtual {v5, v4}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 53
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    .line 56
    if-eqz p0, :cond_1

    .line 58
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 60
    move-result p0

    .line 63
    if-nez p0, :cond_2

    .line 64
    :cond_1
    if-eqz p2, :cond_2

    .line 66
    cmpl-float p0, p1, v3

    .line 68
    if-nez p0, :cond_2

    .line 70
    sget-object p0, Lcom/android/systemui/assist/AssistantSessionEvent;->ASSISTANT_SESSION_INVOCATION_CANCELLED:Lcom/android/systemui/assist/AssistantSessionEvent;

    .line 72
    invoke-virtual {v2, p0}, Lcom/android/systemui/assist/AssistLogger;->reportAssistantSessionEvent(Lcom/android/systemui/assist/AssistantSessionEvent;)V

    .line 74
    new-instance p0, Landroid/metrics/LogMaker;

    .line 77
    invoke-direct {p0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 79
    const/4 p1, 0x5

    .line 82
    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 83
    move-result-object p0

    .line 86
    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 87
    move-result-object p0

    .line 90
    invoke-static {p0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 91
    :cond_2
    return-void
    .line 94
.end method

.method public final setProgressInternal(F)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mProgressInterpolator:Landroid/view/animation/PathInterpolator;

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 4
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    cmpl-float v1, p1, v0

    .line 9
    iget-object p0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationLightsView:Lcom/android/systemui/assist/ui/InvocationLightsView;

    .line 11
    if-nez v1, :cond_0

    .line 13
    const/16 p1, 0x8

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/assist/ui/InvocationLightsView;->attemptRegisterNavBarListener()V

    .line 21
    iget-object v1, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    .line 24
    iget-object v1, v1, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    .line 26
    const/4 v2, 0x7

    .line 28
    aget-object v2, v1, v2

    .line 29
    iget v2, v2, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->normalizedLength:F

    .line 31
    const v3, 0x3f19999a    # 0.6f

    .line 33
    const/high16 v4, 0x40000000    # 2.0f

    .line 36
    invoke-static {v2, v3, v2, v4}, Landroidx/core/content/res/CamColor$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 38
    move-result v3

    .line 41
    const/4 v5, 0x0

    .line 42
    aget-object v1, v1, v5

    .line 43
    iget v1, v1, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->normalizedLength:F

    .line 45
    const/high16 v6, 0x40800000    # 4.0f

    .line 47
    div-float/2addr v1, v6

    .line 49
    invoke-static {v0, v1, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 50
    move-result v0

    .line 53
    neg-float v1, v2

    .line 54
    add-float/2addr v1, v3

    .line 55
    const/high16 v6, 0x3f800000    # 1.0f

    .line 56
    sub-float/2addr v6, p1

    .line 58
    mul-float/2addr v1, v6

    .line 59
    iget-object p1, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    .line 60
    iget-object p1, p1, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    .line 62
    aget-object p1, p1, v5

    .line 64
    iget p1, p1, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->normalizedLength:F

    .line 66
    invoke-static {v2, v3, v6, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 68
    move-result p1

    .line 71
    add-float v2, v1, v0

    .line 72
    invoke-virtual {p0, v1, v2, v5}, Lcom/android/systemui/assist/ui/InvocationLightsView;->setLight(FFI)V

    .line 74
    mul-float/2addr v4, v0

    .line 77
    add-float/2addr v1, v4

    .line 78
    const/4 v3, 0x1

    .line 79
    invoke-virtual {p0, v2, v1, v3}, Lcom/android/systemui/assist/ui/InvocationLightsView;->setLight(FFI)V

    .line 80
    sub-float v1, p1, v4

    .line 83
    sub-float v0, p1, v0

    .line 85
    const/4 v2, 0x2

    .line 87
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/assist/ui/InvocationLightsView;->setLight(FFI)V

    .line 88
    const/4 v1, 0x3

    .line 91
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/systemui/assist/ui/InvocationLightsView;->setLight(FFI)V

    .line 92
    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 95
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 98
    return-void
    .line 101
.end method
