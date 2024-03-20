.class public final Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;
.super Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;


# instance fields
.field public final chipbarAnimator:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarAnimator;

.field public final falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public loadingDetails:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$LoadingDetails;

.field public final swipeChipbarAwayGestureHandler:Lcom/android/systemui/temporarydisplay/chipbar/SwipeChipbarAwayGestureHandler;

.field public final vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field public final viewUtil:Lcom/android/systemui/util/view/ViewUtil;

.field public final windowLayoutParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x32

    .line 2
    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 8
    return-void
    .line 10
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/temporarydisplay/chipbar/ChipbarLogger;Landroid/view/WindowManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/dump/DumpManager;Landroid/os/PowerManager;Lcom/android/systemui/temporarydisplay/chipbar/ChipbarAnimator;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/temporarydisplay/chipbar/SwipeChipbarAwayGestureHandler;Lcom/android/systemui/util/view/ViewUtil;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/util/wakelock/WakeLock$Builder;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/temporarydisplay/TemporaryViewUiEventLogger;)V
    .locals 14

    .line 1
    move-object v13, p0

    .line 2
    const v9, 0x7f0d0062    # @layout/chipbar 'res/layout/chipbar.xml'

    .line 3
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object/from16 v2, p2

    .line 8
    move-object/from16 v3, p3

    .line 10
    move-object/from16 v4, p4

    .line 12
    move-object/from16 v5, p5

    .line 14
    move-object/from16 v6, p6

    .line 16
    move-object/from16 v7, p7

    .line 18
    move-object/from16 v8, p8

    .line 20
    move-object/from16 v10, p15

    .line 22
    move-object/from16 v11, p16

    .line 24
    move-object/from16 v12, p17

    .line 26
    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;-><init>(Landroid/content/Context;Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;Landroid/view/WindowManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/dump/DumpManager;Landroid/os/PowerManager;ILcom/android/systemui/util/wakelock/WakeLock$Builder;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/temporarydisplay/TemporaryViewUiEventLogger;)V

    .line 28
    move-object/from16 v0, p9

    .line 31
    iput-object v0, v13, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->chipbarAnimator:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarAnimator;

    .line 33
    move-object/from16 v0, p10

    .line 35
    iput-object v0, v13, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 37
    move-object/from16 v0, p11

    .line 39
    iput-object v0, v13, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 41
    move-object/from16 v0, p12

    .line 43
    iput-object v0, v13, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->swipeChipbarAwayGestureHandler:Lcom/android/systemui/temporarydisplay/chipbar/SwipeChipbarAwayGestureHandler;

    .line 45
    move-object/from16 v0, p13

    .line 47
    iput-object v0, v13, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->viewUtil:Lcom/android/systemui/util/view/ViewUtil;

    .line 49
    move-object/from16 v0, p14

    .line 51
    iput-object v0, v13, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 53
    iget-object v0, v13, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->commonWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 55
    const/16 v1, 0x31

    .line 57
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 59
    iput-object v0, v13, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 61
    return-void
    .line 63
.end method

.method public static synthetic getLoadingDetails$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static maybeGetAccessibilityFocus(Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->endItem:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem;

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    instance-of p0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Button;

    .line 8
    const v0, 0x7f0a01e9    # @id/chipbar_inner

    .line 10
    if-eqz p0, :cond_1

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 15
    move-result-object p0

    .line 18
    check-cast p0, Landroid/view/ViewGroup;

    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestAccessibilityFocus()Z

    .line 21
    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 25
    move-result-object p0

    .line 28
    check-cast p0, Landroid/view/ViewGroup;

    .line 29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearAccessibilityFocus()V

    .line 31
    :goto_1
    return-void
    .line 34
.end method


# virtual methods
.method public final animateViewIn$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Landroid/view/ViewGroup;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    new-instance v9, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$animateViewIn$onAnimationEnd$1;

    .line 6
    const/4 v10, 0x0

    .line 8
    invoke-direct {v9, v0, v1, v10}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$animateViewIn$onAnimationEnd$1;-><init>(Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;Ljava/lang/Object;I)V

    .line 9
    const v11, 0x7f0a01e9    # @id/chipbar_inner

    .line 12
    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 15
    move-result-object v2

    .line 18
    move-object v12, v2

    .line 19
    check-cast v12, Landroid/view/ViewGroup;

    .line 20
    iget-object v2, v0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->chipbarAnimator:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarAnimator;

    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    sget-object v2, Lcom/android/systemui/animation/ViewHierarchyAnimator;->Companion:Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;

    .line 27
    sget-object v6, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    .line 29
    sget-object v5, Lcom/android/app/animation/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    .line 31
    sget-object v19, Lcom/android/systemui/animation/ViewHierarchyAnimator;->DEFAULT_FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 33
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    .line 35
    move-result v2

    .line 38
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    .line 39
    move-result v3

    .line 42
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    .line 43
    move-result v4

    .line 46
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    .line 47
    move-result v7

    .line 50
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    .line 51
    move-result v8

    .line 54
    const/16 v13, 0x8

    .line 55
    const/4 v14, 0x1

    .line 57
    if-eq v2, v13, :cond_0

    .line 58
    if-eq v3, v7, :cond_0

    .line 60
    if-eq v4, v8, :cond_0

    .line 62
    move v2, v14

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    move v2, v10

    .line 66
    :goto_0
    if-eqz v2, :cond_1

    .line 67
    goto :goto_2

    .line 69
    :cond_1
    const/4 v8, 0x0

    .line 70
    const-wide/16 v3, 0x1f4

    .line 71
    new-instance v13, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;

    .line 73
    move-object v2, v13

    .line 75
    move-object v7, v9

    .line 76
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;-><init>(JLandroid/view/animation/Interpolator;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Ljava/lang/Runnable;Z)V

    .line 77
    invoke-static {v12, v13, v14}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->addListener(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;Z)V

    .line 80
    const/4 v2, 0x6

    .line 83
    int-to-long v2, v2

    .line 84
    const-wide/16 v15, 0x1f4

    .line 85
    div-long v20, v15, v2

    .line 87
    const-wide/16 v6, 0x0

    .line 89
    move-object v3, v12

    .line 91
    move-wide/from16 v4, v20

    .line 92
    move-object/from16 v8, v19

    .line 94
    invoke-static/range {v3 .. v8}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->createAndStartFadeInAnimator(Landroid/view/View;JJLandroid/view/animation/Interpolator;)V

    .line 96
    const/4 v2, 0x3

    .line 99
    int-to-long v2, v2

    .line 100
    div-long v2, v15, v2

    .line 101
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    .line 103
    move-result v4

    .line 106
    :goto_1
    if-ge v10, v4, :cond_2

    .line 107
    invoke-virtual {v12, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 109
    move-result-object v13

    .line 112
    move v5, v14

    .line 113
    move-wide v14, v2

    .line 114
    move-wide/from16 v16, v20

    .line 115
    move-object/from16 v18, v19

    .line 117
    invoke-static/range {v13 .. v18}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->createAndStartFadeInAnimator(Landroid/view/View;JJLandroid/view/animation/Interpolator;)V

    .line 119
    add-int/lit8 v10, v10, 0x1

    .line 122
    move v14, v5

    .line 124
    goto :goto_1

    .line 125
    :cond_2
    move v5, v14

    .line 126
    move v10, v5

    .line 127
    :goto_2
    if-nez v10, :cond_3

    .line 128
    iget-object v0, v0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    .line 130
    check-cast v0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarLogger;

    .line 132
    invoke-virtual {v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->logAnimateInFailure()V

    .line 134
    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 137
    move-result-object v0

    .line 140
    check-cast v0, Landroid/view/ViewGroup;

    .line 141
    invoke-static {v0}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarAnimator;->forceDisplayView(Landroid/view/View;)V

    .line 143
    invoke-virtual {v9}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$animateViewIn$onAnimationEnd$1;->run()V

    .line 146
    :cond_3
    return-void
    .line 149
.end method

.method public final animateViewOut$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Landroid/view/ViewGroup;Ljava/lang/String;Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$removeViewFromWindow$1;)V
    .locals 1

    .line 1
    const p2, 0x7f0a01e9    # @id/chipbar_inner

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 5
    move-result-object p1

    .line 8
    check-cast p1, Landroid/view/ViewGroup;

    .line 9
    const/4 p2, 0x0

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAccessibilityLiveRegion(I)V

    .line 12
    new-instance p2, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$animateViewIn$onAnimationEnd$1;

    .line 15
    const/4 v0, 0x1

    .line 17
    invoke-direct {p2, p0, p3, v0}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$animateViewIn$onAnimationEnd$1;-><init>(Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;Ljava/lang/Object;I)V

    .line 18
    iget-object p3, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->chipbarAnimator:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarAnimator;

    .line 21
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    sget-object p3, Lcom/android/systemui/animation/ViewHierarchyAnimator;->Companion:Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;

    .line 26
    sget-object p3, Lcom/android/app/animation/Interpolators;->EMPHASIZED_ACCELERATE:Landroid/view/animation/Interpolator;

    .line 28
    invoke-static {p1, p3, p2}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animateRemoval(Landroid/view/View;Landroid/view/animation/Interpolator;Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$animateViewIn$onAnimationEnd$1;)Z

    .line 30
    move-result p1

    .line 33
    if-nez p1, :cond_0

    .line 34
    iget-object p1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    .line 36
    check-cast p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarLogger;

    .line 38
    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->logAnimateOutFailure()V

    .line 40
    invoke-virtual {p2}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$animateViewIn$onAnimationEnd$1;->run()V

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->updateGestureListening()V

    .line 46
    return-void
    .line 49
.end method

.method public final getTouchableRegion(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->viewUtil:Lcom/android/systemui/util/view/ViewUtil;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 p0, 0x2

    .line 7
    new-array p0, p0, [I

    .line 8
    invoke-virtual {p2, p0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 10
    const/4 v0, 0x0

    .line 13
    aget v0, p0, v0

    .line 14
    const/4 v1, 0x1

    .line 16
    aget p0, p0, v1

    .line 17
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 19
    move-result v1

    .line 22
    add-int/2addr v1, v0

    .line 23
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 24
    move-result p2

    .line 27
    add-int/2addr p2, p0

    .line 28
    invoke-virtual {p1, v0, p0, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 29
    return-void
    .line 32
.end method

.method public final getWindowLayoutParams$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 2
    return-object p0
    .line 4
.end method

.method public final updateGestureListening()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->swipeChipbarAwayGestureHandler:Lcom/android/systemui/temporarydisplay/chipbar/SwipeChipbarAwayGestureHandler;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    .line 7
    const/4 v2, 0x0

    .line 9
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;

    .line 14
    const-string v2, "ChipbarCoordinator"

    .line 16
    if-eqz v1, :cond_1

    .line 18
    iget-object v3, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    .line 20
    check-cast v3, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;

    .line 22
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    new-instance v3, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$updateGestureListening$1;

    .line 27
    invoke-direct {v3, v1}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$updateGestureListening$1;-><init>(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;)V

    .line 29
    iput-object v3, v0, Lcom/android/systemui/temporarydisplay/chipbar/SwipeChipbarAwayGestureHandler;->viewFetcher:Lkotlin/jvm/functions/Function0;

    .line 32
    new-instance v1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$updateGestureListening$2;

    .line 34
    invoke-direct {v1, p0}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$updateGestureListening$2;-><init>(Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;)V

    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->addOnGestureDetectedCallback(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 39
    goto :goto_0

    .line 42
    :cond_1
    sget-object p0, Lcom/android/systemui/temporarydisplay/chipbar/SwipeChipbarAwayGestureHandler$resetViewFetcher$1;->INSTANCE:Lcom/android/systemui/temporarydisplay/chipbar/SwipeChipbarAwayGestureHandler$resetViewFetcher$1;

    .line 43
    iput-object p0, v0, Lcom/android/systemui/temporarydisplay/chipbar/SwipeChipbarAwayGestureHandler;->viewFetcher:Lkotlin/jvm/functions/Function0;

    .line 45
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->removeOnGestureDetectedCallback(Ljava/lang/String;)V

    .line 47
    :goto_0
    return-void
    .line 50
.end method

.method public final updateView(Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;Landroid/view/ViewGroup;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 4
    move-object/from16 v2, p1

    .line 6
    check-cast v2, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->updateGestureListening()V

    .line 10
    iget-object v3, v0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    .line 13
    check-cast v3, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarLogger;

    .line 15
    iget-object v4, v2, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->text:Lcom/android/systemui/common/shared/model/Text;

    .line 17
    iget-object v5, v0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->context:Landroid/content/Context;

    .line 19
    invoke-static {v4, v5}, Lcom/android/systemui/common/shared/model/Text$Companion;->loadText(Lcom/android/systemui/common/shared/model/Text;Landroid/content/Context;)Ljava/lang/String;

    .line 21
    move-result-object v6

    .line 24
    iget-object v7, v2, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->endItem:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem;

    .line 25
    if-nez v7, :cond_0

    .line 27
    const-string v8, "null"

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    instance-of v8, v7, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Loading;

    .line 32
    if-eqz v8, :cond_1

    .line 34
    const-string v8, "loading"

    .line 36
    goto :goto_0

    .line 38
    :cond_1
    instance-of v8, v7, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Error;

    .line 39
    if-eqz v8, :cond_2

    .line 41
    const-string v8, "error"

    .line 43
    goto :goto_0

    .line 45
    :cond_2
    instance-of v8, v7, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Button;

    .line 46
    if-eqz v8, :cond_12

    .line 48
    move-object v8, v7

    .line 50
    check-cast v8, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Button;

    .line 51
    iget-object v8, v8, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Button;->text:Lcom/android/systemui/common/shared/model/Text;

    .line 53
    invoke-static {v8, v5}, Lcom/android/systemui/common/shared/model/Text$Companion;->loadText(Lcom/android/systemui/common/shared/model/Text;Landroid/content/Context;)Ljava/lang/String;

    .line 55
    move-result-object v8

    .line 58
    const-string v9, "button("

    .line 59
    const-string v10, ")"

    .line 61
    invoke-static {v9, v8, v10}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object v8

    .line 66
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    sget-object v9, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 70
    sget-object v10, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarLogger$logViewUpdate$2;->INSTANCE:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarLogger$logViewUpdate$2;

    .line 72
    iget-object v11, v3, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 74
    iget-object v3, v3, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->tag:Ljava/lang/String;

    .line 76
    const/4 v12, 0x0

    .line 78
    invoke-virtual {v11, v3, v9, v10, v12}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 79
    move-result-object v3

    .line 82
    const-string v9, "Media Transfer Chip View (Sender)"

    .line 83
    invoke-interface {v3, v9}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 85
    invoke-interface {v3, v6}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 88
    invoke-interface {v3, v8}, Lcom/android/systemui/log/LogMessage;->setStr3(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v11, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 94
    const v3, 0x7f0a094a    # @id/tag_chipbar_info

    .line 97
    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 100
    const v3, 0x7f0a01ea    # @id/chipbar_root_view

    .line 103
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 106
    move-result-object v3

    .line 109
    check-cast v3, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarRootView;

    .line 110
    new-instance v6, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$updateView$1;

    .line 112
    invoke-direct {v6, v0}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$updateView$1;-><init>(Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;)V

    .line 114
    invoke-virtual {v3, v6}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarRootView;->setTouchHandler(Lcom/android/systemui/Gefingerpoken;)V

    .line 117
    const v3, 0x7f0a08cd    # @id/start_icon

    .line 120
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 123
    move-result-object v3

    .line 126
    check-cast v3, Lcom/android/internal/widget/CachingIconView;

    .line 127
    iget-object v6, v2, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->startIcon:Lcom/android/systemui/common/shared/model/TintedIcon;

    .line 129
    iget-object v8, v6, Lcom/android/systemui/common/shared/model/TintedIcon;->icon:Lcom/android/systemui/common/shared/model/Icon;

    .line 131
    invoke-static {v8, v3}, Lcom/android/systemui/common/ui/binder/IconViewBinder;->bind(Lcom/android/systemui/common/shared/model/Icon;Landroid/widget/ImageView;)V

    .line 133
    iget-object v8, v6, Lcom/android/systemui/common/shared/model/TintedIcon;->tint:Ljava/lang/Integer;

    .line 136
    if-eqz v8, :cond_3

    .line 138
    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 140
    move-result-object v9

    .line 143
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 144
    move-result v8

    .line 147
    invoke-static {v8, v9}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 148
    move-result-object v8

    .line 151
    goto :goto_1

    .line 152
    :cond_3
    move-object v8, v12

    .line 153
    :goto_1
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 154
    const v3, 0x7f0a0966    # @id/text

    .line 157
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 160
    move-result-object v3

    .line 163
    check-cast v3, Landroid/widget/TextView;

    .line 164
    invoke-static {v3, v4}, Lcom/android/systemui/common/ui/binder/TextViewBinder;->bind(Landroid/widget/TextView;Lcom/android/systemui/common/shared/model/Text;)V

    .line 166
    invoke-virtual {v3}, Landroid/widget/TextView;->requestLayout()V

    .line 169
    sget-object v3, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Loading;->INSTANCE:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Loading;

    .line 172
    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 174
    move-result v3

    .line 177
    const v8, 0x7f0a0505    # @id/loading

    .line 178
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 181
    move-result-object v8

    .line 184
    check-cast v8, Landroid/widget/ImageView;

    .line 185
    const/4 v9, 0x0

    .line 187
    const/16 v10, 0x8

    .line 188
    if-eqz v3, :cond_4

    .line 190
    move v11, v9

    .line 192
    goto :goto_2

    .line 193
    :cond_4
    move v11, v10

    .line 194
    :goto_2
    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    const/4 v11, 0x2

    .line 198
    if-eqz v3, :cond_7

    .line 199
    iget-object v3, v0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->loadingDetails:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$LoadingDetails;

    .line 201
    if-eqz v3, :cond_5

    .line 203
    iget-object v3, v3, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$LoadingDetails;->loadingView:Landroid/view/View;

    .line 205
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 207
    move-result v3

    .line 210
    if-nez v3, :cond_9

    .line 211
    :cond_5
    sget-object v3, Landroid/view/View;->ROTATION:Landroid/util/Property;

    .line 213
    new-array v12, v11, [F

    .line 215
    fill-array-data v12, :array_0

    .line 217
    invoke-static {v8, v3, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 220
    move-result-object v3

    .line 223
    const-wide/16 v12, 0x3e8

    .line 224
    invoke-virtual {v3, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 226
    const/4 v12, -0x1

    .line 229
    invoke-virtual {v3, v12}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 230
    sget-object v12, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 233
    invoke-virtual {v3, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 235
    new-instance v12, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$LoadingDetails;

    .line 238
    invoke-direct {v12, v8, v3}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$LoadingDetails;-><init>(Landroid/view/View;Landroid/animation/ObjectAnimator;)V

    .line 240
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 243
    iget-object v3, v0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->loadingDetails:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$LoadingDetails;

    .line 246
    if-eqz v3, :cond_6

    .line 248
    iget-object v3, v3, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$LoadingDetails;->animator:Landroid/animation/ObjectAnimator;

    .line 250
    if-eqz v3, :cond_6

    .line 252
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 254
    :cond_6
    iput-object v12, v0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->loadingDetails:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$LoadingDetails;

    .line 257
    goto :goto_3

    .line 259
    :cond_7
    iget-object v3, v0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->loadingDetails:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$LoadingDetails;

    .line 260
    if-eqz v3, :cond_8

    .line 262
    iget-object v3, v3, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$LoadingDetails;->animator:Landroid/animation/ObjectAnimator;

    .line 264
    if-eqz v3, :cond_8

    .line 266
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 268
    :cond_8
    iput-object v12, v0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->loadingDetails:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$LoadingDetails;

    .line 271
    :cond_9
    :goto_3
    const v3, 0x7f0a033d    # @id/error

    .line 273
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 276
    move-result-object v3

    .line 279
    sget-object v8, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Error;->INSTANCE:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Error;

    .line 280
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 282
    move-result v8

    .line 285
    if-eqz v8, :cond_a

    .line 286
    move v8, v9

    .line 288
    goto :goto_4

    .line 289
    :cond_a
    move v8, v10

    .line 290
    :goto_4
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 291
    const v3, 0x7f0a0329    # @id/end_button

    .line 294
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 297
    move-result-object v3

    .line 300
    check-cast v3, Landroid/widget/TextView;

    .line 301
    instance-of v8, v7, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Button;

    .line 303
    if-eqz v8, :cond_b

    .line 305
    move-object v10, v7

    .line 307
    check-cast v10, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Button;

    .line 308
    iget-object v10, v10, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Button;->text:Lcom/android/systemui/common/shared/model/Text;

    .line 310
    invoke-static {v3, v10}, Lcom/android/systemui/common/ui/binder/TextViewBinder;->bind(Landroid/widget/TextView;Lcom/android/systemui/common/shared/model/Text;)V

    .line 312
    new-instance v10, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$updateView$onClickListener$1;

    .line 315
    invoke-direct {v10, v0, v2}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$updateView$onClickListener$1;-><init>(Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;)V

    .line 317
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    goto :goto_5

    .line 326
    :cond_b
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 327
    :goto_5
    const v3, 0x7f0a01e9    # @id/chipbar_inner

    .line 330
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 333
    move-result-object v9

    .line 336
    check-cast v9, Landroid/view/ViewGroup;

    .line 337
    if-eqz v8, :cond_c

    .line 339
    const v8, 0x7f07019b    # @dimen/chipbar_outer_padding_half '8.0dp'

    .line 341
    goto :goto_6

    .line 344
    :cond_c
    const v8, 0x7f07019a    # @dimen/chipbar_outer_padding '16.0dp'

    .line 345
    :goto_6
    invoke-virtual {v9}, Landroid/view/View;->getPaddingStart()I

    .line 348
    move-result v10

    .line 351
    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    .line 352
    move-result v12

    .line 355
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 356
    move-result-object v13

    .line 359
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 360
    move-result-object v13

    .line 363
    invoke-virtual {v13, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 364
    move-result v8

    .line 367
    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    .line 368
    move-result v13

    .line 371
    invoke-virtual {v9, v10, v12, v8, v13}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 372
    iget-object v6, v6, Lcom/android/systemui/common/shared/model/TintedIcon;->icon:Lcom/android/systemui/common/shared/model/Icon;

    .line 375
    invoke-virtual {v6}, Lcom/android/systemui/common/shared/model/Icon;->getContentDescription()Lcom/android/systemui/common/shared/model/ContentDescription;

    .line 377
    move-result-object v6

    .line 380
    const-string v8, ""

    .line 381
    if-eqz v6, :cond_f

    .line 383
    instance-of v9, v6, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    .line 385
    if-eqz v9, :cond_d

    .line 387
    check-cast v6, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    .line 389
    iget-object v6, v6, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;->description:Ljava/lang/String;

    .line 391
    goto :goto_7

    .line 393
    :cond_d
    instance-of v9, v6, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    .line 394
    if-eqz v9, :cond_e

    .line 396
    check-cast v6, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    .line 398
    iget v6, v6, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;->res:I

    .line 400
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 402
    move-result-object v6

    .line 405
    :goto_7
    const-string v9, " "

    .line 406
    invoke-static {v6, v9}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 408
    move-result-object v6

    .line 411
    goto :goto_8

    .line 412
    :cond_e
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 413
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 415
    throw v0

    .line 418
    :cond_f
    move-object v6, v8

    .line 419
    :goto_8
    instance-of v7, v7, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Loading;

    .line 420
    if-eqz v7, :cond_10

    .line 422
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 424
    move-result-object v7

    .line 427
    const v8, 0x7f130721    # @string/media_transfer_loading 'Loading'

    .line 428
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 431
    move-result-object v7

    .line 434
    const-string v8, ". "

    .line 435
    const-string v9, "."

    .line 437
    invoke-static {v8, v7, v9}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 439
    move-result-object v8

    .line 442
    :cond_10
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 443
    move-result-object v3

    .line 446
    check-cast v3, Landroid/view/ViewGroup;

    .line 447
    invoke-static {v4, v5}, Lcom/android/systemui/common/shared/model/Text$Companion;->loadText(Lcom/android/systemui/common/shared/model/Text;Landroid/content/Context;)Ljava/lang/String;

    .line 449
    move-result-object v4

    .line 452
    new-instance v7, Ljava/lang/StringBuilder;

    .line 453
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    move-result-object v4

    .line 470
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 471
    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->setAccessibilityLiveRegion(I)V

    .line 474
    invoke-static {v2, v1}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->maybeGetAccessibilityFocus(Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;Landroid/view/ViewGroup;)V

    .line 477
    iget-object v15, v2, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->vibrationEffect:Landroid/os/VibrationEffect;

    .line 480
    if-eqz v15, :cond_11

    .line 482
    iget-object v12, v0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 484
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 486
    move-result v13

    .line 489
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 490
    move-result-object v0

    .line 493
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 494
    move-result-object v14

    .line 497
    const-string v16, "Media Transfer Chip View (Sender)"

    .line 498
    sget-object v17, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 500
    invoke-virtual/range {v12 .. v17}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 502
    :cond_11
    return-void

    .line 505
    :cond_12
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 506
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 508
    throw v0

    .line 511
    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
    .line 512
.end method
