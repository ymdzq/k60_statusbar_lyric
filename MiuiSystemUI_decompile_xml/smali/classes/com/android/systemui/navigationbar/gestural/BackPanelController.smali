.class public final Lcom/android/systemui/navigationbar/gestural/BackPanelController;
.super Lcom/android/systemui/util/ViewController;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;


# instance fields
.field public backCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final configurationListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$configurationListener$1;

.field public currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

.field public final displaySize:Landroid/graphics/Point;

.field public entryToActiveDelay:F

.field public final entryToActiveDelayCalculation:Lkotlin/jvm/functions/Function0;

.field public final failsafeRunnable:Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;

.field public fullyStretchedThreshold:F

.field public gestureEntryTime:J

.field public gestureInactiveTime:J

.field public hasPassedDragSlop:Z

.field public layoutParams:Landroid/view/WindowManager$LayoutParams;

.field public final mainHandler:Landroid/os/Handler;

.field public minFlingDistance:I

.field public final onAlphaEndSetGoneStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

.field public final onEndSetCommittedStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

.field public final onEndSetGoneStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

.field public final params:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;

.field public pastThresholdWhileEntryOrInactiveTime:J

.field public previousPreThresholdWidthInterpolator:Landroidx/core/animation/Interpolator;

.field public previousState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

.field public previousXTranslation:F

.field public previousXTranslationOnActiveOffset:F

.field public startX:F

.field public startY:F

.field public totalTouchDeltaActive:F

.field public totalTouchDeltaInactive:F

.field public touchDeltaStartX:F

.field public velocityTracker:Landroid/view/VelocityTracker;

.field public final vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field public final viewConfiguration:Landroid/view/ViewConfiguration;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/view/ViewConfiguration;Landroid/os/Handler;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/internal/util/LatencyTracker;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 2
    invoke-direct {v0, p1, p7}, Lcom/android/systemui/navigationbar/gestural/BackPanel;-><init>(Landroid/content/Context;Lcom/android/internal/util/LatencyTracker;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 7
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->windowManager:Landroid/view/WindowManager;

    .line 10
    iput-object p3, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->viewConfiguration:Landroid/view/ViewConfiguration;

    .line 12
    iput-object p4, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->mainHandler:Landroid/os/Handler;

    .line 14
    iput-object p5, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 16
    iput-object p6, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 18
    new-instance p1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;

    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 22
    move-result-object p2

    .line 25
    invoke-direct {p1, p2}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;-><init>(Landroid/content/res/Resources;)V

    .line 26
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->params:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;

    .line 29
    sget-object p2, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->GONE:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 31
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 33
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 35
    new-instance p2, Landroid/graphics/Point;

    .line 37
    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->displaySize:Landroid/graphics/Point;

    .line 42
    new-instance p2, Lcom/android/systemui/navigationbar/gestural/BackPanelController$entryToActiveDelayCalculation$1;

    .line 44
    invoke-direct {p2, p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$entryToActiveDelayCalculation$1;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;)V

    .line 46
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->entryToActiveDelayCalculation:Lkotlin/jvm/functions/Function0;

    .line 49
    new-instance p2, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;

    .line 51
    const/4 p3, 0x0

    .line 53
    invoke-direct {p2, p0, p3}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;I)V

    .line 54
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->failsafeRunnable:Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;

    .line 57
    new-instance p2, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    .line 59
    new-instance p3, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;

    .line 61
    const/4 p5, 0x2

    .line 63
    invoke-direct {p3, p0, p5}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;I)V

    .line 64
    invoke-direct {p2, p0, p4, p3}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;Landroid/os/Handler;Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;)V

    .line 67
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->onEndSetCommittedStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    .line 70
    new-instance p2, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    .line 72
    new-instance p3, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;

    .line 74
    const/4 p5, 0x3

    .line 76
    invoke-direct {p3, p0, p5}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;I)V

    .line 77
    invoke-direct {p2, p0, p4, p3}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;Landroid/os/Handler;Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;)V

    .line 80
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->onEndSetGoneStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    .line 83
    new-instance p2, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    .line 85
    new-instance p3, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;

    .line 87
    const/4 p5, 0x1

    .line 89
    invoke-direct {p3, p0, p5}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;I)V

    .line 90
    invoke-direct {p2, p0, p4, p3}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;Landroid/os/Handler;Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;)V

    .line 93
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->onAlphaEndSetGoneStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    .line 96
    new-instance p2, Lcom/android/systemui/navigationbar/gestural/BackPanelController$configurationListener$1;

    .line 98
    invoke-direct {p2, p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$configurationListener$1;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;)V

    .line 100
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->configurationListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$configurationListener$1;

    .line 103
    iget-object p1, p1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->entryWidthInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 105
    if-eqz p1, :cond_0

    .line 107
    goto :goto_0

    .line 109
    :cond_0
    const/4 p1, 0x0

    .line 110
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousPreThresholdWidthInterpolator:Landroidx/core/animation/Interpolator;

    .line 111
    return-void
    .line 113
.end method

.method public static synthetic getCurrentState$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getParams$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static isFlungAwayFromEdge$default(Lcom/android/systemui/navigationbar/gestural/BackPanelController;F)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->touchDeltaStartX:F

    .line 2
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    check-cast v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 6
    iget-boolean v2, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->isLeftPanel:Z

    .line 8
    if-eqz v2, :cond_0

    .line 10
    sub-float/2addr p1, v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sub-float p1, v0, p1

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    .line 16
    if-nez v0, :cond_1

    .line 18
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 20
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    .line 26
    if-eqz v0, :cond_4

    .line 28
    const/16 v2, 0x3e8

    .line 30
    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 32
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 35
    move-result v2

    .line 38
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 39
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 43
    iget-boolean v1, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->isLeftPanel:Z

    .line 46
    if-eqz v1, :cond_2

    .line 48
    goto :goto_1

    .line 50
    :cond_2
    const/4 v2, 0x0

    .line 51
    :goto_1
    if-eqz v2, :cond_3

    .line 52
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 54
    move-result v0

    .line 57
    goto :goto_2

    .line 58
    :cond_3
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 59
    move-result v0

    .line 62
    const/4 v1, -0x1

    .line 63
    int-to-float v1, v1

    .line 64
    mul-float/2addr v0, v1

    .line 65
    goto :goto_2

    .line 66
    :cond_4
    const/4 v0, 0x0

    .line 67
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->viewConfiguration:Landroid/view/ViewConfiguration;

    .line 68
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 70
    move-result v1

    .line 73
    int-to-float v1, v1

    .line 74
    cmpl-float v0, v0, v1

    .line 75
    const/4 v1, 0x1

    .line 77
    const/4 v2, 0x0

    .line 78
    if-lez v0, :cond_5

    .line 79
    move v0, v1

    .line 81
    goto :goto_3

    .line 82
    :cond_5
    move v0, v2

    .line 83
    :goto_3
    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->minFlingDistance:I

    .line 84
    int-to-float p0, p0

    .line 86
    cmpl-float p0, p1, p0

    .line 87
    if-lez p0, :cond_6

    .line 89
    if-eqz v0, :cond_6

    .line 91
    goto :goto_4

    .line 93
    :cond_6
    move v1, v2

    .line 94
    :goto_4
    return v1
    .line 95
.end method

.method public static isPastThresholdToActive$default(Lcom/android/systemui/navigationbar/gestural/BackPanelController;ZLjava/lang/Float;Lkotlin/jvm/functions/Function0;I)Z
    .locals 4

    .line 1
    and-int/lit8 v0, p4, 0x2

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 p2, 0x0

    .line 6
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 7
    if-eqz p4, :cond_1

    .line 9
    new-instance p3, Lcom/android/systemui/navigationbar/gestural/BackPanelController$isPastThresholdToActive$1;

    .line 11
    invoke-direct {p3, p2}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$isPastThresholdToActive$1;-><init>(Ljava/lang/Float;)V

    .line 13
    :cond_1
    iget-wide v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->pastThresholdWhileEntryOrInactiveTime:J

    .line 16
    const-wide/16 v2, 0x0

    .line 18
    cmp-long p2, v0, v2

    .line 20
    const/4 p4, 0x1

    .line 22
    const/4 v0, 0x0

    .line 23
    if-nez p2, :cond_2

    .line 24
    move p2, p4

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    move p2, v0

    .line 28
    :goto_0
    if-nez p1, :cond_3

    .line 29
    iput-wide v2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->pastThresholdWhileEntryOrInactiveTime:J

    .line 31
    goto :goto_2

    .line 33
    :cond_3
    if-eqz p2, :cond_4

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 36
    move-result-wide p1

    .line 39
    iput-wide p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->pastThresholdWhileEntryOrInactiveTime:J

    .line 40
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 45
    check-cast p1, Ljava/lang/Number;

    .line 46
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 48
    move-result p1

    .line 51
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->entryToActiveDelay:F

    .line 52
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 54
    move-result-wide p1

    .line 57
    iget-wide v1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->pastThresholdWhileEntryOrInactiveTime:J

    .line 58
    sub-long/2addr p1, v1

    .line 60
    long-to-float p1, p1

    .line 61
    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->entryToActiveDelay:F

    .line 62
    cmpl-float p0, p1, p0

    .line 64
    if-lez p0, :cond_5

    .line 66
    goto :goto_1

    .line 68
    :cond_5
    move p4, v0

    .line 69
    :goto_1
    move v0, p4

    .line 70
    :goto_2
    return v0
    .line 71
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "BackPanelController:"

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    const-string v2, "  currentState="

    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    const-string v1, "  isLeftPanel="

    .line 28
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    const-string p0, ".isLeftPanel"

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 46
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    return-void
    .line 50
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->failsafeRunnable:Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->mainHandler:Landroid/os/Handler;

    .line 4
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->windowManager:Landroid/view/WindowManager;

    .line 9
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 11
    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 13
    return-void
    .line 16
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    .line 4
    if-nez v1, :cond_0

    .line 6
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 8
    move-result-object v1

    .line 11
    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    .line 12
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    .line 14
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 16
    move-object/from16 v2, p1

    .line 19
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 24
    move-result v1

    .line 27
    sget-object v3, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->GONE:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 28
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v8, 0x0

    .line 32
    iget-object v9, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->params:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;

    .line 33
    iget-object v10, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->mainHandler:Landroid/os/Handler;

    .line 35
    iget-object v11, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 37
    if-eqz v1, :cond_47

    .line 39
    sget-object v12, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->INACTIVE:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 41
    sget-object v13, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->ENTRY:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 43
    const/4 v15, 0x1

    .line 45
    if-eq v1, v15, :cond_3f

    .line 46
    const/4 v10, 0x2

    .line 48
    const/4 v5, 0x3

    .line 49
    if-eq v1, v10, :cond_3

    .line 50
    if-eq v1, v5, :cond_1

    .line 52
    goto/16 :goto_2f

    .line 54
    :cond_1
    invoke-virtual {v0, v3, v7}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    .line 56
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    .line 59
    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    move-result v1

    .line 64
    if-nez v1, :cond_2

    .line 65
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    .line 67
    if-eqz v1, :cond_2

    .line 69
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 71
    :cond_2
    iput-object v8, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    .line 74
    goto/16 :goto_2f

    .line 76
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 78
    move-result v1

    .line 81
    iget v3, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->startX:F

    .line 82
    iget-boolean v4, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->hasPassedDragSlop:Z

    .line 84
    iget-object v8, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->viewConfiguration:Landroid/view/ViewConfiguration;

    .line 86
    if-eqz v4, :cond_4

    .line 88
    move v1, v15

    .line 90
    goto :goto_0

    .line 91
    :cond_4
    sub-float/2addr v1, v3

    .line 92
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 93
    move-result v1

    .line 96
    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    .line 97
    move-result v3

    .line 100
    int-to-float v3, v3

    .line 101
    cmpl-float v1, v1, v3

    .line 102
    if-lez v1, :cond_6

    .line 104
    invoke-virtual {v0, v13, v7}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    .line 106
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 109
    if-nez v1, :cond_5

    .line 111
    const/4 v1, 0x0

    .line 113
    :cond_5
    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->windowManager:Landroid/view/WindowManager;

    .line 114
    invoke-interface {v3, v11, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    move-object v1, v11

    .line 119
    check-cast v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 120
    iget-object v3, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->latencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 122
    const/16 v4, 0xf

    .line 124
    invoke-virtual {v3, v4}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 126
    iput-boolean v15, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->trackingBackArrowLatency:Z

    .line 129
    iput-boolean v15, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->hasPassedDragSlop:Z

    .line 131
    :cond_6
    iget-boolean v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->hasPassedDragSlop:Z

    .line 133
    :goto_0
    if-eqz v1, :cond_4b

    .line 135
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 137
    move-result v1

    .line 140
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 141
    move-result v2

    .line 144
    iget v3, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->startY:F

    .line 145
    sub-float/2addr v2, v3

    .line 147
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 148
    move-result v3

    .line 151
    check-cast v11, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 152
    iget-boolean v4, v11, Lcom/android/systemui/navigationbar/gestural/BackPanel;->isLeftPanel:Z

    .line 154
    if-eqz v4, :cond_7

    .line 156
    iget v4, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->startX:F

    .line 158
    sub-float v4, v1, v4

    .line 160
    goto :goto_1

    .line 162
    :cond_7
    iget v4, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->startX:F

    .line 163
    sub-float/2addr v4, v1

    .line 165
    :goto_1
    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    .line 166
    move-result v4

    .line 169
    iget v13, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousXTranslation:F

    .line 170
    sub-float v13, v4, v13

    .line 172
    iput v4, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousXTranslation:F

    .line 174
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    .line 176
    move-result v16

    .line 179
    cmpl-float v16, v16, v6

    .line 180
    if-lez v16, :cond_f

    .line 182
    invoke-static {v13}, Ljava/lang/Math;->signum(F)F

    .line 184
    move-result v16

    .line 187
    iget v6, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaActive:F

    .line 188
    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    .line 190
    move-result v6

    .line 193
    cmpg-float v6, v16, v6

    .line 194
    if-nez v6, :cond_8

    .line 196
    move v6, v15

    .line 198
    goto :goto_2

    .line 199
    :cond_8
    move v6, v7

    .line 200
    :goto_2
    iget-object v7, v9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->dynamicTriggerThresholdRange:Lkotlin/ranges/ClosedFloatRange;

    .line 201
    if-eqz v7, :cond_9

    .line 203
    goto :goto_3

    .line 205
    :cond_9
    const/4 v7, 0x0

    .line 206
    :goto_3
    iget v14, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaActive:F

    .line 207
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 209
    move-result-object v14

    .line 212
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    .line 216
    move-result v14

    .line 219
    iget v5, v7, Lkotlin/ranges/ClosedFloatRange;->_start:F

    .line 220
    cmpl-float v5, v14, v5

    .line 222
    if-ltz v5, :cond_a

    .line 224
    iget v5, v7, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    .line 226
    cmpg-float v5, v14, v5

    .line 228
    if-gtz v5, :cond_a

    .line 230
    move v5, v15

    .line 232
    goto :goto_4

    .line 233
    :cond_a
    const/4 v5, 0x0

    .line 234
    :goto_4
    if-nez v6, :cond_c

    .line 235
    if-eqz v5, :cond_b

    .line 237
    goto :goto_5

    .line 239
    :cond_b
    const/4 v5, 0x0

    .line 240
    goto :goto_6

    .line 241
    :cond_c
    :goto_5
    move v5, v15

    .line 242
    :goto_6
    if-eqz v5, :cond_d

    .line 243
    iget v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaActive:F

    .line 245
    add-float/2addr v1, v13

    .line 247
    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaActive:F

    .line 248
    goto :goto_7

    .line 250
    :cond_d
    iput v13, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaActive:F

    .line 251
    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->touchDeltaStartX:F

    .line 253
    :goto_7
    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 255
    move-result v1

    .line 258
    int-to-float v1, v1

    .line 259
    neg-float v1, v1

    .line 260
    iget v5, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaInactive:F

    .line 261
    add-float/2addr v5, v13

    .line 263
    cmpg-float v6, v5, v1

    .line 264
    if-gez v6, :cond_e

    .line 266
    goto :goto_8

    .line 268
    :cond_e
    move v1, v5

    .line 269
    :goto_8
    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaInactive:F

    .line 270
    :cond_f
    int-to-float v1, v10

    .line 272
    mul-float/2addr v1, v4

    .line 273
    cmpl-float v1, v1, v3

    .line 274
    if-ltz v1, :cond_10

    .line 276
    move v1, v15

    .line 278
    goto :goto_9

    .line 279
    :cond_10
    const/4 v1, 0x0

    .line 280
    :goto_9
    iget v3, v9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->staticTriggerThreshold:F

    .line 281
    cmpl-float v3, v4, v3

    .line 283
    if-lez v3, :cond_11

    .line 285
    move v3, v15

    .line 287
    goto :goto_a

    .line 288
    :cond_11
    const/4 v3, 0x0

    .line 289
    :goto_a
    iget-object v5, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 290
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 292
    move-result v5

    .line 295
    sget-object v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->ACTIVE:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 296
    if-eq v5, v15, :cond_1a

    .line 298
    if-eq v5, v10, :cond_15

    .line 300
    const/4 v7, 0x3

    .line 302
    if-eq v5, v7, :cond_12

    .line 303
    goto/16 :goto_11

    .line 305
    :cond_12
    iget v5, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaInactive:F

    .line 307
    iget v7, v9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->reactivationTriggerThreshold:F

    .line 309
    cmpl-float v5, v5, v7

    .line 311
    if-ltz v5, :cond_13

    .line 313
    move v5, v15

    .line 315
    goto :goto_b

    .line 316
    :cond_13
    const/4 v5, 0x0

    .line 317
    :goto_b
    if-eqz v3, :cond_14

    .line 318
    if-eqz v5, :cond_14

    .line 320
    if-eqz v1, :cond_14

    .line 322
    move v1, v15

    .line 324
    goto :goto_c

    .line 325
    :cond_14
    const/4 v1, 0x0

    .line 326
    :goto_c
    const/high16 v3, 0x43200000    # 160.0f

    .line 327
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 329
    move-result-object v3

    .line 332
    const/4 v5, 0x4

    .line 333
    const/4 v7, 0x0

    .line 334
    invoke-static {v0, v1, v3, v7, v5}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->isPastThresholdToActive$default(Lcom/android/systemui/navigationbar/gestural/BackPanelController;ZLjava/lang/Float;Lkotlin/jvm/functions/Function0;I)Z

    .line 335
    move-result v1

    .line 338
    if-eqz v1, :cond_1b

    .line 339
    const/4 v1, 0x0

    .line 341
    invoke-virtual {v0, v6, v1}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    .line 342
    goto :goto_11

    .line 345
    :cond_15
    iget v3, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaActive:F

    .line 346
    iget v5, v9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->deactivationTriggerThreshold:F

    .line 348
    neg-float v5, v5

    .line 350
    cmpg-float v3, v3, v5

    .line 351
    if-gtz v3, :cond_16

    .line 353
    move v3, v15

    .line 355
    goto :goto_d

    .line 356
    :cond_16
    const/4 v3, 0x0

    .line 357
    :goto_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 358
    move-result-wide v5

    .line 361
    iget-wide v13, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->gestureEntryTime:J

    .line 362
    sub-long/2addr v5, v13

    .line 364
    const-wide/16 v13, 0x12c

    .line 365
    cmp-long v5, v5, v13

    .line 367
    if-lez v5, :cond_17

    .line 369
    move v5, v15

    .line 371
    goto :goto_e

    .line 372
    :cond_17
    const/4 v5, 0x0

    .line 373
    :goto_e
    if-eqz v1, :cond_19

    .line 374
    if-eqz v3, :cond_18

    .line 376
    goto :goto_f

    .line 378
    :cond_18
    const/4 v1, 0x0

    .line 379
    goto :goto_10

    .line 380
    :cond_19
    :goto_f
    move v1, v15

    .line 381
    :goto_10
    if-eqz v1, :cond_1b

    .line 382
    if-eqz v5, :cond_1b

    .line 384
    const/4 v1, 0x0

    .line 386
    invoke-virtual {v0, v12, v1}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    .line 387
    goto :goto_11

    .line 390
    :cond_1a
    const/4 v1, 0x0

    .line 391
    iget-object v5, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->entryToActiveDelayCalculation:Lkotlin/jvm/functions/Function0;

    .line 392
    const/4 v7, 0x0

    .line 394
    invoke-static {v0, v3, v7, v5, v10}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->isPastThresholdToActive$default(Lcom/android/systemui/navigationbar/gestural/BackPanelController;ZLjava/lang/Float;Lkotlin/jvm/functions/Function0;I)Z

    .line 395
    move-result v3

    .line 398
    if-eqz v3, :cond_1b

    .line 399
    invoke-virtual {v0, v6, v1}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    .line 401
    :cond_1b
    :goto_11
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 404
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 406
    move-result v1

    .line 409
    if-eq v1, v15, :cond_1e

    .line 410
    if-eq v1, v10, :cond_1d

    .line 412
    const/4 v3, 0x3

    .line 414
    if-eq v1, v3, :cond_1c

    .line 415
    const/4 v1, 0x0

    .line 417
    goto :goto_12

    .line 418
    :cond_1c
    iget v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaInactive:F

    .line 419
    iget v3, v9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->reactivationTriggerThreshold:F

    .line 421
    div-float/2addr v1, v3

    .line 423
    invoke-static {v1}, Landroid/util/MathUtils;->saturate(F)F

    .line 424
    move-result v1

    .line 427
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 428
    move-result-object v1

    .line 431
    goto :goto_12

    .line 432
    :cond_1d
    iget v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousXTranslationOnActiveOffset:F

    .line 433
    sub-float/2addr v4, v1

    .line 435
    iget v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->fullyStretchedThreshold:F

    .line 436
    div-float/2addr v4, v1

    .line 438
    invoke-static {v4}, Landroid/util/MathUtils;->saturate(F)F

    .line 439
    move-result v1

    .line 442
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 443
    move-result-object v1

    .line 446
    goto :goto_12

    .line 447
    :cond_1e
    iget v1, v9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->staticTriggerThreshold:F

    .line 448
    div-float/2addr v4, v1

    .line 450
    invoke-static {v4}, Landroid/util/MathUtils;->saturate(F)F

    .line 451
    move-result v1

    .line 454
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 455
    move-result-object v1

    .line 458
    :goto_12
    if-eqz v1, :cond_36

    .line 459
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 461
    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 464
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 466
    move-result v3

    .line 469
    if-eq v3, v15, :cond_2f

    .line 470
    if-eq v3, v10, :cond_2a

    .line 472
    const/4 v4, 0x3

    .line 474
    if-eq v3, v4, :cond_1f

    .line 475
    goto/16 :goto_25

    .line 477
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 479
    move-result v3

    .line 482
    iget-object v4, v9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->arrowAngleInterpolator:Landroidx/core/animation/Interpolator;

    .line 483
    if-eqz v4, :cond_20

    .line 485
    goto :goto_13

    .line 487
    :cond_20
    const/4 v4, 0x0

    .line 488
    :goto_13
    invoke-interface {v4, v3}, Landroidx/core/animation/Interpolator;->getInterpolation(F)F

    .line 489
    move-result v18

    .line 492
    iget v4, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaInactive:F

    .line 493
    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 495
    move-result v5

    .line 498
    int-to-float v5, v5

    .line 499
    cmpl-float v4, v4, v5

    .line 500
    if-lez v4, :cond_21

    .line 502
    move v7, v15

    .line 504
    goto :goto_14

    .line 505
    :cond_21
    const/4 v7, 0x0

    .line 506
    :goto_14
    if-eqz v7, :cond_24

    .line 507
    iget v4, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaInactive:F

    .line 509
    const/4 v5, 0x0

    .line 511
    cmpl-float v4, v4, v5

    .line 512
    if-lez v4, :cond_22

    .line 514
    iget-object v4, v9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->entryWidthInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 516
    if-eqz v4, :cond_23

    .line 518
    goto :goto_15

    .line 520
    :cond_22
    iget-object v4, v9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->entryWidthTowardsEdgeInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 521
    if-eqz v4, :cond_23

    .line 523
    goto :goto_15

    .line 525
    :cond_23
    const/4 v4, 0x0

    .line 526
    goto :goto_15

    .line 527
    :cond_24
    iget-object v4, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousPreThresholdWidthInterpolator:Landroidx/core/animation/Interpolator;

    .line 528
    :goto_15
    iput-object v4, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousPreThresholdWidthInterpolator:Landroidx/core/animation/Interpolator;

    .line 530
    invoke-interface {v4, v3}, Landroidx/core/animation/Interpolator;->getInterpolation(F)F

    .line 532
    move-result v4

    .line 535
    const/4 v5, 0x0

    .line 536
    cmpg-float v6, v4, v5

    .line 537
    if-gez v6, :cond_25

    .line 539
    const/16 v21, 0x0

    .line 541
    goto :goto_16

    .line 543
    :cond_25
    move/from16 v21, v4

    .line 544
    :goto_16
    iget-object v4, v9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->heightInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 546
    if-eqz v4, :cond_26

    .line 548
    goto :goto_17

    .line 550
    :cond_26
    const/4 v4, 0x0

    .line 551
    :goto_17
    invoke-virtual {v4, v3}, Landroidx/core/animation/PathInterpolator;->getInterpolation(F)F

    .line 552
    move-result v22

    .line 555
    invoke-virtual {v9}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getPreThresholdIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 556
    move-result-object v4

    .line 559
    iget-object v4, v4, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 560
    iget-object v4, v4, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->alphaInterpolator:Lcom/android/systemui/navigationbar/gestural/Step;

    .line 562
    if-eqz v4, :cond_27

    .line 564
    invoke-virtual {v4, v3}, Lcom/android/systemui/navigationbar/gestural/Step;->get(F)Lcom/android/systemui/navigationbar/gestural/Step$Value;

    .line 566
    move-result-object v4

    .line 569
    if-eqz v4, :cond_27

    .line 570
    iget-object v4, v4, Lcom/android/systemui/navigationbar/gestural/Step$Value;->value:Ljava/lang/Object;

    .line 572
    check-cast v4, Ljava/lang/Number;

    .line 574
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 576
    move-result v4

    .line 579
    move/from16 v19, v4

    .line 580
    goto :goto_18

    .line 582
    :cond_27
    const/16 v19, 0x0

    .line 583
    :goto_18
    iget-object v4, v9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->edgeCornerInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 585
    if-eqz v4, :cond_28

    .line 587
    goto :goto_19

    .line 589
    :cond_28
    const/4 v4, 0x0

    .line 590
    :goto_19
    invoke-virtual {v4, v3}, Landroidx/core/animation/PathInterpolator;->getInterpolation(F)F

    .line 591
    move-result v23

    .line 594
    iget-object v4, v9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->farCornerInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 595
    if-eqz v4, :cond_29

    .line 597
    goto :goto_1a

    .line 599
    :cond_29
    const/4 v4, 0x0

    .line 600
    :goto_1a
    invoke-virtual {v4, v3}, Landroidx/core/animation/PathInterpolator;->getInterpolation(F)F

    .line 601
    move-result v24

    .line 604
    invoke-virtual {v9}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getPreThresholdIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 605
    move-result-object v25

    .line 608
    const/16 v17, 0x0

    .line 609
    const/high16 v20, 0x3f800000    # 1.0f

    .line 611
    move-object/from16 v16, v11

    .line 613
    invoke-virtual/range {v16 .. v25}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->setStretch(FFFFFFFFLcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;)V

    .line 615
    goto/16 :goto_25

    .line 618
    :cond_2a
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 620
    move-result v3

    .line 623
    iget-object v4, v9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->horizontalTranslationInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 624
    if-eqz v4, :cond_2b

    .line 626
    goto :goto_1b

    .line 628
    :cond_2b
    const/4 v4, 0x0

    .line 629
    :goto_1b
    invoke-virtual {v4, v3}, Landroidx/core/animation/PathInterpolator;->getInterpolation(F)F

    .line 630
    move-result v17

    .line 633
    iget-object v4, v9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->arrowAngleInterpolator:Landroidx/core/animation/Interpolator;

    .line 634
    if-eqz v4, :cond_2c

    .line 636
    goto :goto_1c

    .line 638
    :cond_2c
    const/4 v4, 0x0

    .line 639
    :goto_1c
    invoke-interface {v4, v3}, Landroidx/core/animation/Interpolator;->getInterpolation(F)F

    .line 640
    move-result v18

    .line 643
    iget-object v4, v9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->activeWidthInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 644
    if-eqz v4, :cond_2d

    .line 646
    goto :goto_1d

    .line 648
    :cond_2d
    const/4 v4, 0x0

    .line 649
    :goto_1d
    invoke-virtual {v4, v3}, Landroidx/core/animation/PathInterpolator;->getInterpolation(F)F

    .line 650
    move-result v21

    .line 653
    iget-object v3, v9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->fullyStretchedIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 654
    if-eqz v3, :cond_2e

    .line 656
    move-object/from16 v25, v3

    .line 658
    goto :goto_1e

    .line 660
    :cond_2e
    const/16 v25, 0x0

    .line 661
    :goto_1e
    const/high16 v19, 0x3f800000    # 1.0f

    .line 663
    const/high16 v20, 0x3f800000    # 1.0f

    .line 665
    const/high16 v22, 0x3f800000    # 1.0f

    .line 667
    const/high16 v23, 0x3f800000    # 1.0f

    .line 669
    const/high16 v24, 0x3f800000    # 1.0f

    .line 671
    move-object/from16 v16, v11

    .line 673
    invoke-virtual/range {v16 .. v25}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->setStretch(FFFFFFFFLcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;)V

    .line 675
    goto :goto_25

    .line 678
    :cond_2f
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 679
    move-result v3

    .line 682
    iget-object v4, v9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->arrowAngleInterpolator:Landroidx/core/animation/Interpolator;

    .line 683
    if-eqz v4, :cond_30

    .line 685
    goto :goto_1f

    .line 687
    :cond_30
    const/4 v4, 0x0

    .line 688
    :goto_1f
    invoke-interface {v4, v3}, Landroidx/core/animation/Interpolator;->getInterpolation(F)F

    .line 689
    move-result v18

    .line 692
    iget-object v4, v9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->entryWidthInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 693
    if-eqz v4, :cond_31

    .line 695
    goto :goto_20

    .line 697
    :cond_31
    const/4 v4, 0x0

    .line 698
    :goto_20
    invoke-virtual {v4, v3}, Landroidx/core/animation/PathInterpolator;->getInterpolation(F)F

    .line 699
    move-result v21

    .line 702
    iget-object v4, v9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->heightInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 703
    if-eqz v4, :cond_32

    .line 705
    goto :goto_21

    .line 707
    :cond_32
    const/4 v4, 0x0

    .line 708
    :goto_21
    invoke-virtual {v4, v3}, Landroidx/core/animation/PathInterpolator;->getInterpolation(F)F

    .line 709
    move-result v22

    .line 712
    invoke-virtual {v9}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 713
    move-result-object v4

    .line 716
    iget-object v4, v4, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 717
    iget-object v4, v4, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->alphaInterpolator:Lcom/android/systemui/navigationbar/gestural/Step;

    .line 719
    if-eqz v4, :cond_33

    .line 721
    invoke-virtual {v4, v3}, Lcom/android/systemui/navigationbar/gestural/Step;->get(F)Lcom/android/systemui/navigationbar/gestural/Step$Value;

    .line 723
    move-result-object v4

    .line 726
    if-eqz v4, :cond_33

    .line 727
    iget-object v4, v4, Lcom/android/systemui/navigationbar/gestural/Step$Value;->value:Ljava/lang/Object;

    .line 729
    check-cast v4, Ljava/lang/Number;

    .line 731
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 733
    move-result v4

    .line 736
    move/from16 v19, v4

    .line 737
    goto :goto_22

    .line 739
    :cond_33
    const/16 v19, 0x0

    .line 740
    :goto_22
    iget-object v4, v9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->edgeCornerInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 742
    if-eqz v4, :cond_34

    .line 744
    goto :goto_23

    .line 746
    :cond_34
    const/4 v4, 0x0

    .line 747
    :goto_23
    invoke-virtual {v4, v3}, Landroidx/core/animation/PathInterpolator;->getInterpolation(F)F

    .line 748
    move-result v23

    .line 751
    iget-object v4, v9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->farCornerInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 752
    if-eqz v4, :cond_35

    .line 754
    goto :goto_24

    .line 756
    :cond_35
    const/4 v4, 0x0

    .line 757
    :goto_24
    invoke-virtual {v4, v3}, Landroidx/core/animation/PathInterpolator;->getInterpolation(F)F

    .line 758
    move-result v24

    .line 761
    invoke-virtual {v9}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getPreThresholdIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 762
    move-result-object v25

    .line 765
    const/16 v17, 0x0

    .line 766
    const/high16 v20, 0x3f800000    # 1.0f

    .line 768
    move-object/from16 v16, v11

    .line 770
    invoke-virtual/range {v16 .. v25}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->setStretch(FFFFFFFFLcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;)V

    .line 772
    :cond_36
    :goto_25
    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 775
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 777
    move-result v3

    .line 780
    packed-switch v3, :pswitch_data_0

    .line 781
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 784
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 786
    throw v0

    .line 789
    :pswitch_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 790
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 792
    move-result-object v1

    .line 795
    goto :goto_26

    .line 796
    :pswitch_1
    const/4 v1, 0x0

    .line 797
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 798
    move-result-object v3

    .line 801
    move-object v1, v3

    .line 802
    :goto_26
    :pswitch_2
    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 803
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 805
    move-result v0

    .line 808
    if-eq v0, v15, :cond_39

    .line 809
    if-eq v0, v10, :cond_38

    .line 811
    const/4 v3, 0x3

    .line 813
    if-eq v0, v3, :cond_37

    .line 814
    invoke-virtual {v9}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getPreThresholdIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 816
    move-result-object v0

    .line 819
    goto :goto_27

    .line 820
    :cond_37
    invoke-virtual {v9}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getPreThresholdIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 821
    move-result-object v0

    .line 824
    goto :goto_27

    .line 825
    :cond_38
    invoke-virtual {v9}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 826
    move-result-object v0

    .line 829
    goto :goto_27

    .line 830
    :cond_39
    invoke-virtual {v9}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 831
    move-result-object v0

    .line 834
    :goto_27
    if-eqz v1, :cond_3d

    .line 835
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 837
    move-result v1

    .line 840
    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 841
    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->alphaSpring:Lcom/android/systemui/navigationbar/gestural/Step;

    .line 843
    if-eqz v0, :cond_3d

    .line 845
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/Step;->get(F)Lcom/android/systemui/navigationbar/gestural/Step$Value;

    .line 847
    move-result-object v0

    .line 850
    if-eqz v0, :cond_3d

    .line 851
    iget-boolean v1, v0, Lcom/android/systemui/navigationbar/gestural/Step$Value;->isNewState:Z

    .line 853
    if-eqz v1, :cond_3a

    .line 855
    goto :goto_28

    .line 857
    :cond_3a
    const/4 v0, 0x0

    .line 858
    :goto_28
    if-eqz v0, :cond_3d

    .line 859
    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/Step$Value;->value:Ljava/lang/Object;

    .line 861
    check-cast v0, Landroidx/dynamicanimation/animation/SpringForce;

    .line 863
    iget-object v1, v11, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 865
    const/4 v3, 0x0

    .line 867
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 868
    move-result-object v4

    .line 871
    iget-object v3, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->animation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 872
    if-eqz v4, :cond_3b

    .line 874
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 876
    move-result v4

    .line 879
    invoke-virtual {v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 880
    iput v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 883
    :cond_3b
    if-eqz v0, :cond_3c

    .line 885
    iput-object v0, v3, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 887
    :cond_3c
    iget v0, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->restingPosition:F

    .line 889
    const/4 v1, 0x0

    .line 891
    add-float/2addr v0, v1

    .line 892
    invoke-virtual {v3, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 893
    :cond_3d
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 896
    move-result v0

    .line 899
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    .line 900
    move-result v1

    .line 903
    int-to-float v1, v1

    .line 904
    invoke-virtual {v9}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 905
    move-result-object v3

    .line 908
    iget-object v3, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 909
    iget v3, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->height:F

    .line 911
    sub-float/2addr v1, v3

    .line 913
    const/high16 v3, 0x40000000    # 2.0f

    .line 914
    div-float/2addr v1, v3

    .line 916
    const/high16 v3, 0x41700000    # 15.0f

    .line 917
    mul-float/2addr v3, v1

    .line 919
    div-float/2addr v0, v3

    .line 920
    invoke-static {v0}, Landroid/util/MathUtils;->saturate(F)F

    .line 921
    move-result v0

    .line 924
    iget-object v3, v9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->verticalTranslationInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 925
    if-eqz v3, :cond_3e

    .line 927
    goto :goto_29

    .line 929
    :cond_3e
    const/4 v3, 0x0

    .line 930
    :goto_29
    invoke-virtual {v3, v0}, Landroidx/core/animation/PathInterpolator;->getInterpolation(F)F

    .line 931
    move-result v0

    .line 934
    mul-float/2addr v0, v1

    .line 935
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 936
    move-result v1

    .line 939
    mul-float/2addr v1, v0

    .line 940
    iget-object v0, v11, Lcom/android/systemui/navigationbar/gestural/BackPanel;->verticalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 941
    const/4 v2, 0x6

    .line 943
    const/4 v3, 0x0

    .line 944
    invoke-static {v0, v1, v3, v2}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->stretchTo$default(Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;FLjava/lang/Float;I)V

    .line 945
    goto/16 :goto_2f

    .line 948
    :cond_3f
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 950
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 952
    move-result v1

    .line 955
    sget-object v3, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->FLUNG:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 956
    sget-object v4, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->CANCELLED:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 958
    packed-switch v1, :pswitch_data_1

    .line 960
    goto/16 :goto_2b

    .line 963
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 965
    move-result v1

    .line 968
    invoke-static {v0, v1}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->isFlungAwayFromEdge$default(Lcom/android/systemui/navigationbar/gestural/BackPanelController;F)Z

    .line 969
    move-result v1

    .line 972
    if-eqz v1, :cond_41

    .line 973
    iget-object v7, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->backCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    .line 975
    if-nez v7, :cond_40

    .line 977
    const/4 v7, 0x0

    .line 979
    :cond_40
    invoke-interface {v7, v15}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;->setTriggerBack(Z)V

    .line 980
    new-instance v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;

    .line 983
    const/4 v2, 0x4

    .line 985
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;I)V

    .line 986
    const-wide/16 v2, 0x32

    .line 989
    invoke-virtual {v10, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 991
    goto :goto_2b

    .line 994
    :cond_41
    const/4 v1, 0x0

    .line 995
    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    .line 996
    goto :goto_2b

    .line 999
    :pswitch_4
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 1000
    if-ne v1, v13, :cond_42

    .line 1002
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1004
    move-result-wide v1

    .line 1007
    iget-wide v4, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->gestureEntryTime:J

    .line 1008
    sub-long/2addr v1, v4

    .line 1010
    const-wide/16 v4, 0x64

    .line 1011
    cmp-long v1, v1, v4

    .line 1013
    if-gez v1, :cond_42

    .line 1015
    const/4 v1, 0x0

    .line 1017
    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    .line 1018
    goto :goto_2b

    .line 1021
    :cond_42
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 1022
    if-ne v1, v12, :cond_43

    .line 1024
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1026
    move-result-wide v1

    .line 1029
    iget-wide v3, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->gestureInactiveTime:J

    .line 1030
    sub-long/2addr v1, v3

    .line 1032
    const-wide/16 v3, 0x190

    .line 1033
    cmp-long v1, v1, v3

    .line 1035
    if-gez v1, :cond_43

    .line 1037
    new-instance v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;

    .line 1039
    const/4 v2, 0x5

    .line 1041
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;I)V

    .line 1042
    const-wide/16 v2, 0x82

    .line 1045
    invoke-virtual {v10, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1047
    goto :goto_2b

    .line 1050
    :cond_43
    sget-object v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->COMMITTED:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 1051
    const/4 v5, 0x0

    .line 1053
    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    .line 1054
    goto :goto_2b

    .line 1057
    :pswitch_5
    const/4 v5, 0x0

    .line 1058
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 1059
    move-result v1

    .line 1062
    invoke-static {v0, v1}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->isFlungAwayFromEdge$default(Lcom/android/systemui/navigationbar/gestural/BackPanelController;F)Z

    .line 1063
    move-result v1

    .line 1066
    if-nez v1, :cond_45

    .line 1067
    iget v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousXTranslation:F

    .line 1069
    iget v2, v9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->staticTriggerThreshold:F

    .line 1071
    cmpl-float v1, v1, v2

    .line 1073
    if-lez v1, :cond_44

    .line 1075
    goto :goto_2a

    .line 1077
    :cond_44
    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    .line 1078
    goto :goto_2b

    .line 1081
    :cond_45
    :goto_2a
    invoke-virtual {v0, v3, v5}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    .line 1082
    goto :goto_2b

    .line 1085
    :pswitch_6
    const/4 v5, 0x0

    .line 1086
    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    .line 1087
    :goto_2b
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    .line 1090
    const/4 v7, 0x0

    .line 1092
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1093
    move-result v1

    .line 1096
    if-nez v1, :cond_46

    .line 1097
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    .line 1099
    if-eqz v1, :cond_46

    .line 1101
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 1103
    :cond_46
    iput-object v7, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    .line 1106
    goto/16 :goto_2f

    .line 1108
    :cond_47
    move-object v7, v8

    .line 1110
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->failsafeRunnable:Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;

    .line 1111
    invoke-virtual {v10, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1113
    check-cast v11, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 1116
    iget-object v1, v11, Lcom/android/systemui/navigationbar/gestural/BackPanel;->allAnimatedFloat:Ljava/util/Set;

    .line 1118
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1120
    move-result-object v1

    .line 1123
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1124
    move-result v4

    .line 1127
    if-eqz v4, :cond_48

    .line 1128
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1130
    move-result-object v4

    .line 1133
    check-cast v4, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 1134
    iget-object v4, v4, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->animation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1136
    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 1138
    goto :goto_2c

    .line 1141
    :cond_48
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->onEndSetCommittedStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    .line 1142
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;->runnable:Ljava/lang/Runnable;

    .line 1144
    invoke-virtual {v10, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1146
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->onEndSetGoneStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    .line 1149
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;->runnable:Ljava/lang/Runnable;

    .line 1151
    invoke-virtual {v10, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1153
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->onAlphaEndSetGoneStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    .line 1156
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;->runnable:Ljava/lang/Runnable;

    .line 1158
    invoke-virtual {v10, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1160
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 1163
    move-result v1

    .line 1166
    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->startX:F

    .line 1167
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 1169
    move-result v1

    .line 1172
    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->startY:F

    .line 1173
    const/4 v1, 0x0

    .line 1175
    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    .line 1176
    iget v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->startY:F

    .line 1179
    iget v2, v9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->fingerOffset:I

    .line 1181
    int-to-float v2, v2

    .line 1183
    sub-float/2addr v1, v2

    .line 1184
    iget v2, v9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->minArrowYPosition:I

    .line 1185
    int-to-float v2, v2

    .line 1187
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    .line 1188
    move-result v1

    .line 1191
    iget-object v2, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 1192
    if-nez v2, :cond_49

    .line 1194
    move-object v3, v7

    .line 1196
    goto :goto_2d

    .line 1197
    :cond_49
    move-object v3, v2

    .line 1198
    :goto_2d
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1199
    int-to-float v3, v3

    .line 1201
    const/high16 v4, 0x40000000    # 2.0f

    .line 1202
    div-float/2addr v3, v4

    .line 1204
    sub-float/2addr v1, v3

    .line 1205
    if-nez v2, :cond_4a

    .line 1206
    move-object v8, v7

    .line 1208
    goto :goto_2e

    .line 1209
    :cond_4a
    move-object v8, v2

    .line 1210
    :goto_2e
    float-to-int v1, v1

    .line 1211
    iget-object v2, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->displaySize:Landroid/graphics/Point;

    .line 1212
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 1214
    const/4 v3, 0x0

    .line 1216
    invoke-static {v1, v3, v2}, Landroid/util/MathUtils;->constrain(III)I

    .line 1217
    move-result v1

    .line 1220
    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1221
    iget-boolean v1, v11, Lcom/android/systemui/navigationbar/gestural/BackPanel;->isLeftPanel:Z

    .line 1223
    iput-boolean v3, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->hasPassedDragSlop:Z

    .line 1225
    iget-object v0, v11, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 1227
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1229
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapTo(F)V

    .line 1231
    iget-object v0, v11, Lcom/android/systemui/navigationbar/gestural/BackPanel;->verticalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 1234
    const/4 v2, 0x0

    .line 1236
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapTo(F)V

    .line 1237
    iget-object v0, v11, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scale:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 1240
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapTo(F)V

    .line 1242
    iget-object v0, v11, Lcom/android/systemui/navigationbar/gestural/BackPanel;->horizontalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 1245
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapToRestingPosition()V

    .line 1247
    iget-object v0, v11, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowLength:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 1250
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapToRestingPosition()V

    .line 1252
    iget-object v0, v11, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 1255
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapToRestingPosition()V

    .line 1257
    iget-object v0, v11, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 1260
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapToRestingPosition()V

    .line 1262
    iget-object v0, v11, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundWidth:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 1265
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapToRestingPosition()V

    .line 1267
    iget-object v0, v11, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 1270
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapToRestingPosition()V

    .line 1272
    iget-object v0, v11, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundEdgeCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 1275
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapToRestingPosition()V

    .line 1277
    iget-object v0, v11, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundFarCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 1280
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapToRestingPosition()V

    .line 1282
    :cond_4b
    :goto_2f
    return-void

    .line 1285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1286
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
    .line 1304
.end method

.method public final onViewAttached()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateConfiguration()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 5
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 7
    iget v1, v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->layoutDirection:I

    .line 9
    const/4 v2, 0x1

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    move v1, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 17
    check-cast v3, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 19
    invoke-virtual {v3, v1}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->setArrowsPointLeft(Z)V

    .line 21
    sget-object v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->GONE:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 24
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateRestingArrowDimens()V

    .line 29
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->configurationListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$configurationListener$1;

    .line 32
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 34
    return-void
    .line 37
.end method

.method public final onViewDetached()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->configurationListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$configurationListener$1;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 4
    check-cast p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 8
    return-void
    .line 11
.end method

.method public final playWithBackgroundWidthAnimation(Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    cmp-long v0, p2, v0

    .line 4
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->mainHandler:Landroid/os/Handler;

    .line 6
    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateRestingArrowDimens()V

    .line 10
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 13
    check-cast p2, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 15
    invoke-virtual {p2}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->getBackgroundWidth()Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 17
    move-result-object p3

    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    iget-object p2, p3, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->animation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 24
    iget-boolean p3, p2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 26
    if-eqz p3, :cond_0

    .line 28
    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 30
    const/4 p1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object p1, p1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;->runnable:Ljava/lang/Runnable;

    .line 35
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 37
    const/4 p1, 0x0

    .line 40
    :goto_0
    if-nez p1, :cond_2

    .line 41
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->failsafeRunnable:Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;

    .line 43
    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 45
    const-wide/16 p1, 0x15e

    .line 48
    invoke-virtual {v1, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    goto :goto_1

    .line 53
    :cond_1
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$playWithBackgroundWidthAnimation$$inlined$postDelayed$default$1;

    .line 54
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$playWithBackgroundWidthAnimation$$inlined$postDelayed$default$1;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;)V

    .line 56
    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    :cond_2
    :goto_1
    return-void
    .line 62
.end method

.method public final setBackCallback(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->backCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    .line 2
    return-void
    .line 4
.end method

.method public final setDisplaySize(Landroid/graphics/Point;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->displaySize:Landroid/graphics/Point;

    .line 2
    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 4
    iget v2, p1, Landroid/graphics/Point;->y:I

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 8
    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 11
    int-to-float p1, p1

    .line 13
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->params:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;

    .line 14
    iget v0, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->swipeProgressThreshold:F

    .line 16
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 18
    move-result p1

    .line 21
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->fullyStretchedThreshold:F

    .line 22
    return-void
.end method

.method public final setInsets(II)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setIsLeftPanel(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    check-cast v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->setLeftPanel(Z)V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 9
    if-nez p0, :cond_0

    .line 11
    const/4 p0, 0x0

    .line 13
    :cond_0
    if-eqz p1, :cond_1

    .line 14
    const/16 p1, 0x33

    .line 16
    goto :goto_0

    .line 18
    :cond_1
    const/16 p1, 0x35

    .line 19
    :goto_0
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 21
    return-void
    .line 23
.end method

.method public final setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->windowManager:Landroid/view/WindowManager;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 6
    invoke-interface {v0, p0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    return-void
    .line 11
.end method

.method public final updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V
    .locals 13

    .line 1
    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 4
    if-ne p2, p1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 9
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 11
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 15
    move-result p1

    .line 18
    sget-object p2, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->FLUNG:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 19
    const/4 v0, 0x0

    .line 21
    const/4 v1, 0x0

    .line 22
    packed-switch p1, :pswitch_data_0

    .line 23
    goto :goto_0

    .line 26
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->backCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    .line 27
    if-nez p1, :cond_1

    .line 29
    move-object p1, v0

    .line 31
    :cond_1
    invoke-interface {p1}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;->cancelBack()V

    .line 32
    goto :goto_0

    .line 35
    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 36
    if-eq p1, p2, :cond_5

    .line 38
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->backCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    .line 40
    if-nez p1, :cond_2

    .line 42
    move-object p1, v0

    .line 44
    :cond_2
    invoke-interface {p1}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;->triggerBack()V

    .line 45
    goto :goto_0

    .line 48
    :pswitch_2
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->backCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    .line 49
    if-nez p1, :cond_3

    .line 51
    move-object p1, v0

    .line 53
    :cond_3
    const/4 v2, 0x1

    .line 54
    invoke-interface {p1, v2}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;->setTriggerBack(Z)V

    .line 55
    goto :goto_0

    .line 58
    :pswitch_3
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->backCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    .line 59
    if-nez p1, :cond_4

    .line 61
    move-object p1, v0

    .line 63
    :cond_4
    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;->setTriggerBack(Z)V

    .line 64
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 67
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 69
    move-result p1

    .line 72
    const/4 v2, 0x0

    .line 73
    iget-object v3, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->onEndSetGoneStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    .line 74
    const/16 v4, 0x8

    .line 76
    const-wide/16 v5, 0xa

    .line 78
    iget-object v7, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 80
    iget-object v8, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->params:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;

    .line 82
    iget-object v9, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->mainHandler:Landroid/os/Handler;

    .line 84
    iget-object v10, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 86
    packed-switch p1, :pswitch_data_1

    .line 88
    goto/16 :goto_4

    .line 91
    :pswitch_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 93
    move-result-wide p1

    .line 96
    iget-wide v11, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->gestureEntryTime:J

    .line 97
    sub-long/2addr p1, v11

    .line 99
    const-wide/16 v11, 0xc8

    .line 100
    sub-long/2addr v11, p1

    .line 102
    const-wide/16 p1, 0x0

    .line 103
    invoke-static {p1, p2, v11, v12}, Ljava/lang/Math;->max(JJ)J

    .line 105
    move-result-wide p1

    .line 108
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->playWithBackgroundWidthAnimation(Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;J)V

    .line 109
    iget-object p1, v8, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->cancelledIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 112
    if-eqz p1, :cond_6

    .line 114
    goto :goto_1

    .line 116
    :cond_6
    move-object p1, v0

    .line 117
    :goto_1
    iget-object p1, p1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 118
    iget-object p1, p1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->alphaSpring:Lcom/android/systemui/navigationbar/gestural/Step;

    .line 120
    if-eqz p1, :cond_7

    .line 122
    invoke-virtual {p1, v2}, Lcom/android/systemui/navigationbar/gestural/Step;->get(F)Lcom/android/systemui/navigationbar/gestural/Step$Value;

    .line 124
    move-result-object p1

    .line 127
    if-eqz p1, :cond_7

    .line 128
    iget-object p1, p1, Lcom/android/systemui/navigationbar/gestural/Step$Value;->value:Ljava/lang/Object;

    .line 130
    move-object v0, p1

    .line 132
    check-cast v0, Landroidx/dynamicanimation/animation/SpringForce;

    .line 133
    :cond_7
    check-cast v10, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 135
    iget-object p1, v10, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 137
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 139
    move-result-object p2

    .line 142
    iget-object v1, p1, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->animation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 143
    if-eqz p2, :cond_8

    .line 145
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 147
    move-result p2

    .line 150
    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 151
    iput p2, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 154
    :cond_8
    if-eqz v0, :cond_9

    .line 156
    iput-object v0, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 158
    :cond_9
    iget p1, p1, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->restingPosition:F

    .line 160
    add-float/2addr p1, v2

    .line 162
    invoke-virtual {v1, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 163
    new-instance p1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;

    .line 166
    invoke-direct {p1, p0, v4}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;I)V

    .line 168
    invoke-virtual {v9, p1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 171
    goto/16 :goto_4

    .line 174
    :pswitch_5
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 176
    if-ne p1, p2, :cond_a

    .line 178
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateRestingArrowDimens()V

    .line 180
    iget-object p0, v3, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;->runnable:Ljava/lang/Runnable;

    .line 183
    const-wide/16 p1, 0x78

    .line 185
    invoke-virtual {v9, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 187
    goto/16 :goto_4

    .line 190
    :cond_a
    check-cast v10, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 192
    iget-object p1, v10, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scalePivotX:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 194
    iget-object p2, v10, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundWidth:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 196
    iget p2, p2, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    .line 198
    const/4 v0, 0x2

    .line 200
    int-to-float v0, v0

    .line 201
    div-float/2addr p2, v0

    .line 202
    invoke-virtual {p1, p2}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapTo(F)V

    .line 203
    iget-object p1, v10, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scale:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 206
    const/high16 p2, 0x40400000    # 3.0f

    .line 208
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 210
    move-result-object p2

    .line 213
    const/4 v0, 0x4

    .line 214
    invoke-static {p1, v2, p2, v0}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->stretchTo$default(Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;FLjava/lang/Float;I)V

    .line 215
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->onAlphaEndSetGoneStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    .line 218
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;->runnable:Ljava/lang/Runnable;

    .line 220
    const-wide/16 p1, 0x50

    .line 222
    invoke-virtual {v9, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 224
    goto/16 :goto_4

    .line 227
    :pswitch_6
    new-instance p1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;

    .line 229
    const/4 p2, 0x7

    .line 231
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;I)V

    .line 232
    const-wide/16 v0, 0x3c

    .line 235
    invoke-virtual {v9, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 237
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateRestingArrowDimens()V

    .line 240
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->onEndSetCommittedStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    .line 243
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;->runnable:Ljava/lang/Runnable;

    .line 245
    const-wide/16 p1, 0xa0

    .line 247
    invoke-virtual {v9, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 249
    goto :goto_4

    .line 252
    :pswitch_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 253
    move-result-wide p1

    .line 256
    iput-wide p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->gestureInactiveTime:J

    .line 257
    iget p1, v8, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->deactivationTriggerThreshold:F

    .line 259
    neg-float p1, p1

    .line 261
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaInactive:F

    .line 262
    check-cast v10, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 264
    const/high16 p1, -0x40400000    # -1.5f

    .line 266
    invoke-virtual {v10, p1}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->popOffEdge(F)V

    .line 268
    sget-object p1, Lcom/android/systemui/navigationbar/gestural/BackPanelControllerKt;->VIBRATE_DEACTIVATED_EFFECT:Landroid/os/VibrationEffect;

    .line 271
    invoke-virtual {v7, p1}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;)V

    .line 273
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateRestingArrowDimens()V

    .line 276
    goto :goto_4

    .line 279
    :pswitch_8
    iget p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousXTranslation:F

    .line 280
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousXTranslationOnActiveOffset:F

    .line 282
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateRestingArrowDimens()V

    .line 284
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/VibratorHelper;->hasVibrator()Z

    .line 287
    move-result p1

    .line 290
    if-nez p1, :cond_b

    .line 291
    goto :goto_2

    .line 293
    :cond_b
    iget-object p1, v7, Lcom/android/systemui/statusbar/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    .line 294
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    new-instance p2, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda2;

    .line 299
    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda2;-><init>(Landroid/os/Vibrator;)V

    .line 301
    iget-object p1, v7, Lcom/android/systemui/statusbar/VibratorHelper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 304
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 306
    :goto_2
    new-instance p1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;

    .line 309
    const/4 p2, 0x6

    .line 311
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;I)V

    .line 312
    invoke-virtual {v9, p1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 315
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 318
    sget-object p1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->INACTIVE:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 320
    if-ne p0, p1, :cond_c

    .line 322
    const p0, 0x40966666    # 4.7f

    .line 324
    goto :goto_3

    .line 327
    :cond_c
    const/high16 p0, 0x40900000    # 4.5f

    .line 328
    :goto_3
    check-cast v10, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 330
    invoke-virtual {v10, p0}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->popOffEdge(F)V

    .line 332
    goto :goto_4

    .line 335
    :pswitch_9
    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    .line 336
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateRestingArrowDimens()V

    .line 339
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 342
    move-result-wide p1

    .line 345
    iput-wide p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->gestureEntryTime:J

    .line 346
    goto :goto_4

    .line 348
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateRestingArrowDimens()V

    .line 349
    invoke-virtual {v10, v4}, Landroid/view/View;->setVisibility(I)V

    .line 352
    :goto_4
    return-void

    .line 355
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 356
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
    .line 372
.end method

.method public final updateConfiguration()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->params:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;

    .line 6
    invoke-virtual {v1, v0}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->update(Landroid/content/res/Resources;)V

    .line 8
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 11
    check-cast v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 13
    iget v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->arrowThickness:F

    .line 15
    iget-object v2, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowPaint:Landroid/graphics/Paint;

    .line 17
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 22
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 26
    move-result-object v1

    .line 29
    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 30
    and-int/lit8 v1, v1, 0x30

    .line 32
    const/16 v2, 0x20

    .line 34
    const/4 v3, 0x0

    .line 36
    if-ne v1, v2, :cond_0

    .line 37
    const/4 v1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v1, v3

    .line 41
    :goto_0
    iget-object v2, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowPaint:Landroid/graphics/Paint;

    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    move-result-object v4

    .line 47
    if-eqz v1, :cond_1

    .line 48
    const v5, 0x1120098    # @android:^attr-private/materialColorOnSecondaryFixed

    .line 50
    goto :goto_1

    .line 53
    :cond_1
    const v5, 0x1120099    # @android:^attr-private/materialColorOnSecondaryFixedVariant

    .line 54
    :goto_1
    invoke-static {v4, v5, v3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 57
    move-result v4

    .line 60
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v2, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowBackgroundPaint:Landroid/graphics/Paint;

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    move-result-object v0

    .line 69
    if-eqz v1, :cond_2

    .line 70
    const v1, 0x11200aa    # @android:^attr-private/materialColorSecondaryFixed

    .line 72
    goto :goto_2

    .line 75
    :cond_2
    const v1, 0x11200ac    # @android:^attr-private/materialColorSurface

    .line 76
    :goto_2
    invoke-static {v0, v1, v3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 79
    move-result v0

    .line 82
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->viewConfiguration:Landroid/view/ViewConfiguration;

    .line 86
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 88
    move-result v0

    .line 91
    mul-int/lit8 v0, v0, 0x3

    .line 92
    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->minFlingDistance:I

    .line 94
    return-void
    .line 96
.end method

.method public final updateRestingArrowDimens()V
    .locals 52

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    iget-object v3, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 11
    iget-object v4, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->params:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;

    .line 13
    packed-switch v1, :pswitch_data_0

    .line 15
    goto/16 :goto_1

    .line 18
    :pswitch_0
    move-object v5, v3

    .line 20
    check-cast v5, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 21
    const/4 v6, 0x0

    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v8, 0x0

    .line 25
    const/4 v9, 0x0

    .line 26
    const/4 v10, 0x0

    .line 27
    const/4 v11, 0x0

    .line 28
    iget-object v1, v4, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->cancelledIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 29
    if-eqz v1, :cond_0

    .line 31
    goto :goto_0

    .line 33
    :cond_0
    move-object v1, v2

    .line 34
    :goto_0
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 35
    iget-object v12, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->alphaSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 37
    const/4 v13, 0x0

    .line 39
    const/4 v14, 0x0

    .line 40
    const/4 v15, 0x0

    .line 41
    const/16 v16, 0x0

    .line 42
    const/16 v17, 0x7bf

    .line 44
    const/16 v18, 0x0

    .line 46
    invoke-static/range {v5 .. v18}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->setSpring$default(Lcom/android/systemui/navigationbar/gestural/BackPanel;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;ILjava/lang/Object;)V

    .line 48
    goto/16 :goto_1

    .line 51
    :pswitch_1
    move-object/from16 v19, v3

    .line 53
    check-cast v19, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 55
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getCommittedIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 57
    move-result-object v1

    .line 60
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 61
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->lengthSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 63
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getCommittedIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 65
    move-result-object v5

    .line 68
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 69
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->heightSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 71
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getCommittedIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 73
    move-result-object v6

    .line 76
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scaleSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 77
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getCommittedIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 79
    move-result-object v7

    .line 82
    iget-object v7, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 83
    iget-object v7, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->alphaSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 85
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getCommittedIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 87
    move-result-object v8

    .line 90
    iget-object v8, v8, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 91
    iget-object v8, v8, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->widthSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 93
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getCommittedIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 95
    move-result-object v9

    .line 98
    iget-object v9, v9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 99
    iget-object v9, v9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->heightSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 101
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getCommittedIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 103
    move-result-object v10

    .line 106
    iget-object v10, v10, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 107
    iget-object v10, v10, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->edgeCornerRadiusSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 109
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getCommittedIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 111
    move-result-object v11

    .line 114
    iget-object v11, v11, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 115
    iget-object v11, v11, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->farCornerRadiusSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 117
    const/16 v20, 0x0

    .line 119
    const/16 v21, 0x0

    .line 121
    const/16 v25, 0x0

    .line 123
    const/16 v31, 0x23

    .line 125
    const/16 v32, 0x0

    .line 127
    move-object/from16 v22, v6

    .line 129
    move-object/from16 v23, v1

    .line 131
    move-object/from16 v24, v5

    .line 133
    move-object/from16 v26, v7

    .line 135
    move-object/from16 v27, v11

    .line 137
    move-object/from16 v28, v10

    .line 139
    move-object/from16 v29, v8

    .line 141
    move-object/from16 v30, v9

    .line 143
    invoke-static/range {v19 .. v32}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->setSpring$default(Lcom/android/systemui/navigationbar/gestural/BackPanel;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;ILjava/lang/Object;)V

    .line 145
    goto/16 :goto_1

    .line 148
    :pswitch_2
    move-object/from16 v33, v3

    .line 150
    check-cast v33, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 152
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getFlungIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 154
    move-result-object v1

    .line 157
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 158
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->lengthSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 160
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getFlungIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 162
    move-result-object v5

    .line 165
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 166
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->heightSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 168
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getFlungIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 170
    move-result-object v6

    .line 173
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 174
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->widthSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 176
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getFlungIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 178
    move-result-object v7

    .line 181
    iget-object v7, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 182
    iget-object v7, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->heightSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 184
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getFlungIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 186
    move-result-object v8

    .line 189
    iget-object v8, v8, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 190
    iget-object v8, v8, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->edgeCornerRadiusSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 192
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getFlungIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 194
    move-result-object v9

    .line 197
    iget-object v9, v9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 198
    iget-object v9, v9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->farCornerRadiusSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 200
    const/16 v34, 0x0

    .line 202
    const/16 v35, 0x0

    .line 204
    const/16 v36, 0x0

    .line 206
    const/16 v39, 0x0

    .line 208
    const/16 v40, 0x0

    .line 210
    const/16 v45, 0x67

    .line 212
    const/16 v46, 0x0

    .line 214
    move-object/from16 v37, v1

    .line 216
    move-object/from16 v38, v5

    .line 218
    move-object/from16 v41, v9

    .line 220
    move-object/from16 v42, v8

    .line 222
    move-object/from16 v43, v6

    .line 224
    move-object/from16 v44, v7

    .line 226
    invoke-static/range {v33 .. v46}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->setSpring$default(Lcom/android/systemui/navigationbar/gestural/BackPanel;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;ILjava/lang/Object;)V

    .line 228
    goto/16 :goto_1

    .line 231
    :pswitch_3
    move-object v10, v3

    .line 233
    check-cast v10, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 234
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getPreThresholdIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 236
    move-result-object v1

    .line 239
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 240
    iget-object v14, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->lengthSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 242
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getPreThresholdIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 244
    move-result-object v1

    .line 247
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 248
    iget-object v15, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->heightSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 250
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getPreThresholdIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 252
    move-result-object v1

    .line 255
    iget-object v11, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->horizontalTranslationSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 256
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getPreThresholdIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 258
    move-result-object v1

    .line 261
    iget-object v13, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scaleSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 262
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getPreThresholdIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 264
    move-result-object v1

    .line 267
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 268
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->widthSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 270
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getPreThresholdIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 272
    move-result-object v5

    .line 275
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 276
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->heightSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 278
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getPreThresholdIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 280
    move-result-object v6

    .line 283
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 284
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->edgeCornerRadiusSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 286
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getPreThresholdIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 288
    move-result-object v7

    .line 291
    iget-object v7, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 292
    iget-object v7, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->farCornerRadiusSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 294
    const/4 v12, 0x0

    .line 296
    const/16 v16, 0x0

    .line 297
    const/16 v17, 0x0

    .line 299
    const/16 v22, 0x62

    .line 301
    const/16 v23, 0x0

    .line 303
    move-object/from16 v18, v7

    .line 305
    move-object/from16 v19, v6

    .line 307
    move-object/from16 v20, v1

    .line 309
    move-object/from16 v21, v5

    .line 311
    invoke-static/range {v10 .. v23}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->setSpring$default(Lcom/android/systemui/navigationbar/gestural/BackPanel;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;ILjava/lang/Object;)V

    .line 313
    goto/16 :goto_1

    .line 316
    :pswitch_4
    move-object/from16 v24, v3

    .line 318
    check-cast v24, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 320
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 322
    move-result-object v1

    .line 325
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 326
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->lengthSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 328
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 330
    move-result-object v5

    .line 333
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 334
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->heightSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 336
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 338
    move-result-object v6

    .line 341
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scaleSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 342
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 344
    move-result-object v7

    .line 347
    iget-object v7, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->horizontalTranslationSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 348
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 350
    move-result-object v8

    .line 353
    iget-object v8, v8, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 354
    iget-object v8, v8, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->widthSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 356
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 358
    move-result-object v9

    .line 361
    iget-object v9, v9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 362
    iget-object v9, v9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->heightSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 364
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 366
    move-result-object v10

    .line 369
    iget-object v10, v10, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 370
    iget-object v10, v10, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->edgeCornerRadiusSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 372
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 374
    move-result-object v11

    .line 377
    iget-object v11, v11, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 378
    iget-object v11, v11, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->farCornerRadiusSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 380
    const/16 v26, 0x0

    .line 382
    const/16 v30, 0x0

    .line 384
    const/16 v31, 0x0

    .line 386
    const/16 v36, 0x62

    .line 388
    const/16 v37, 0x0

    .line 390
    move-object/from16 v25, v7

    .line 392
    move-object/from16 v27, v6

    .line 394
    move-object/from16 v28, v1

    .line 396
    move-object/from16 v29, v5

    .line 398
    move-object/from16 v32, v11

    .line 400
    move-object/from16 v33, v10

    .line 402
    move-object/from16 v34, v8

    .line 404
    move-object/from16 v35, v9

    .line 406
    invoke-static/range {v24 .. v37}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->setSpring$default(Lcom/android/systemui/navigationbar/gestural/BackPanel;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;ILjava/lang/Object;)V

    .line 408
    goto :goto_1

    .line 411
    :pswitch_5
    move-object/from16 v38, v3

    .line 412
    check-cast v38, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 414
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 416
    move-result-object v1

    .line 419
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 420
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->lengthSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 422
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 424
    move-result-object v5

    .line 427
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 428
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->heightSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 430
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 432
    move-result-object v6

    .line 435
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scaleSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 436
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 438
    move-result-object v7

    .line 441
    iget-object v7, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->verticalTranslationSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 442
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 444
    move-result-object v8

    .line 447
    iget-object v8, v8, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->horizontalTranslationSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 448
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 450
    move-result-object v9

    .line 453
    iget-object v9, v9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 454
    iget-object v9, v9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->alphaSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 456
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 458
    move-result-object v10

    .line 461
    iget-object v10, v10, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 462
    iget-object v10, v10, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->widthSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 464
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 466
    move-result-object v11

    .line 469
    iget-object v11, v11, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 470
    iget-object v11, v11, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->heightSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 472
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 474
    move-result-object v12

    .line 477
    iget-object v12, v12, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 478
    iget-object v12, v12, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->edgeCornerRadiusSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 480
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 482
    move-result-object v13

    .line 485
    iget-object v13, v13, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 486
    iget-object v13, v13, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->farCornerRadiusSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 488
    const/16 v44, 0x0

    .line 490
    const/16 v50, 0x20

    .line 492
    const/16 v51, 0x0

    .line 494
    move-object/from16 v39, v8

    .line 496
    move-object/from16 v40, v7

    .line 498
    move-object/from16 v41, v6

    .line 500
    move-object/from16 v42, v1

    .line 502
    move-object/from16 v43, v5

    .line 504
    move-object/from16 v45, v9

    .line 506
    move-object/from16 v46, v13

    .line 508
    move-object/from16 v47, v12

    .line 510
    move-object/from16 v48, v10

    .line 512
    move-object/from16 v49, v11

    .line 514
    invoke-static/range {v38 .. v51}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->setSpring$default(Lcom/android/systemui/navigationbar/gestural/BackPanel;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;ILjava/lang/Object;)V

    .line 516
    :goto_1
    check-cast v3, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 519
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 521
    sget-object v5, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->FLUNG:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 523
    const/4 v6, 0x1

    .line 525
    if-eq v1, v5, :cond_1

    .line 526
    sget-object v5, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->COMMITTED:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 528
    if-eq v1, v5, :cond_1

    .line 530
    move v5, v6

    .line 532
    goto :goto_2

    .line 533
    :cond_1
    const/4 v5, 0x0

    .line 534
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 535
    move-result v1

    .line 538
    const/4 v7, 0x4

    .line 539
    const/4 v8, 0x2

    .line 540
    if-eq v1, v8, :cond_3

    .line 541
    if-eq v1, v7, :cond_3

    .line 543
    const/4 v9, 0x5

    .line 545
    if-eq v1, v9, :cond_2

    .line 546
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getPreThresholdIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 548
    move-result-object v1

    .line 551
    iget v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scale:F

    .line 552
    goto :goto_3

    .line 554
    :cond_2
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getCommittedIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 555
    move-result-object v1

    .line 558
    iget v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scale:F

    .line 559
    goto :goto_3

    .line 561
    :cond_3
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 562
    move-result-object v1

    .line 565
    iget v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scale:F

    .line 566
    :goto_3
    move v11, v1

    .line 568
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 569
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 571
    move-result v1

    .line 574
    packed-switch v1, :pswitch_data_1

    .line 575
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 578
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 580
    throw v0

    .line 583
    :pswitch_6
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getCommittedIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 584
    move-result-object v1

    .line 587
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scalePivotX:Ljava/lang/Float;

    .line 588
    goto :goto_4

    .line 590
    :pswitch_7
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 591
    move-result-object v1

    .line 594
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scalePivotX:Ljava/lang/Float;

    .line 595
    goto :goto_4

    .line 597
    :pswitch_8
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getPreThresholdIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 598
    move-result-object v1

    .line 601
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scalePivotX:Ljava/lang/Float;

    .line 602
    :goto_4
    move-object v12, v1

    .line 604
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 605
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 607
    move-result v1

    .line 610
    if-eqz v1, :cond_9

    .line 611
    if-eq v1, v6, :cond_8

    .line 613
    if-eq v1, v8, :cond_7

    .line 615
    const/4 v6, 0x3

    .line 617
    if-eq v1, v6, :cond_8

    .line 618
    if-eq v1, v7, :cond_6

    .line 620
    const/4 v6, 0x6

    .line 622
    if-eq v1, v6, :cond_4

    .line 623
    goto :goto_7

    .line 625
    :cond_4
    iget-object v1, v4, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->cancelledIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 626
    if-eqz v1, :cond_5

    .line 628
    goto :goto_5

    .line 630
    :cond_5
    move-object v1, v2

    .line 631
    :goto_5
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->horizontalTranslation:Ljava/lang/Float;

    .line 632
    goto :goto_6

    .line 634
    :cond_6
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 635
    move-result-object v1

    .line 638
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->horizontalTranslation:Ljava/lang/Float;

    .line 639
    goto :goto_6

    .line 641
    :cond_7
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 642
    move-result-object v1

    .line 645
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->horizontalTranslation:Ljava/lang/Float;

    .line 646
    goto :goto_6

    .line 648
    :cond_8
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 649
    move-result-object v1

    .line 652
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->horizontalTranslation:Ljava/lang/Float;

    .line 653
    goto :goto_6

    .line 655
    :cond_9
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 656
    move-result-object v1

    .line 659
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 660
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->width:Ljava/lang/Float;

    .line 662
    if-eqz v1, :cond_a

    .line 664
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 666
    move-result v1

    .line 669
    const/4 v6, -0x1

    .line 670
    int-to-float v6, v6

    .line 671
    mul-float/2addr v1, v6

    .line 672
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 673
    move-result-object v1

    .line 676
    :goto_6
    move-object v10, v1

    .line 677
    goto :goto_8

    .line 678
    :cond_a
    :goto_7
    move-object v10, v2

    .line 679
    :goto_8
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 680
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 682
    move-result v1

    .line 685
    packed-switch v1, :pswitch_data_2

    .line 686
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 689
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 691
    throw v0

    .line 694
    :pswitch_9
    iget-object v1, v4, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->cancelledIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 695
    if-eqz v1, :cond_b

    .line 697
    goto :goto_9

    .line 699
    :cond_b
    move-object v1, v2

    .line 700
    :goto_9
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 701
    goto :goto_a

    .line 703
    :pswitch_a
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getCommittedIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 704
    move-result-object v1

    .line 707
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 708
    goto :goto_a

    .line 710
    :pswitch_b
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getFlungIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 711
    move-result-object v1

    .line 714
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 715
    goto :goto_a

    .line 717
    :pswitch_c
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 718
    move-result-object v1

    .line 721
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 722
    goto :goto_a

    .line 724
    :pswitch_d
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 725
    move-result-object v1

    .line 728
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 729
    :goto_a
    move-object v13, v1

    .line 731
    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 732
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 734
    move-result v0

    .line 737
    packed-switch v0, :pswitch_data_3

    .line 738
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 741
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 743
    throw v0

    .line 746
    :pswitch_e
    iget-object v0, v4, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->cancelledIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 747
    if-eqz v0, :cond_c

    .line 749
    move-object v2, v0

    .line 751
    :cond_c
    iget-object v0, v2, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 752
    goto :goto_b

    .line 754
    :pswitch_f
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getCommittedIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 755
    move-result-object v0

    .line 758
    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 759
    goto :goto_b

    .line 761
    :pswitch_10
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 762
    move-result-object v0

    .line 765
    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 766
    goto :goto_b

    .line 768
    :pswitch_11
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 769
    move-result-object v0

    .line 772
    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 773
    goto :goto_b

    .line 775
    :pswitch_12
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 776
    move-result-object v0

    .line 779
    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 780
    :goto_b
    move-object v14, v0

    .line 782
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 783
    const/4 v15, 0x0

    .line 785
    const/16 v16, 0x0

    .line 786
    const/16 v17, 0xe0

    .line 788
    move-object v9, v0

    .line 790
    invoke-direct/range {v9 .. v17}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;-><init>(Ljava/lang/Float;FLjava/lang/Float;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;I)V

    .line 791
    invoke-virtual {v3, v0, v5}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->setRestingDimens$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;Z)V

    .line 794
    return-void

    .line 797
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 798
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_8
    .end packed-switch

    .line 816
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_d
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    .line 834
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_12
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch
    .line 852
.end method
