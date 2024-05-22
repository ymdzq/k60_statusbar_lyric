.class public final Lcom/android/systemui/dreams/DreamOverlayContainerViewController;
.super Lcom/android/systemui/util/ViewController;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mBlurUtils:Lcom/android/systemui/statusbar/BlurUtils;

.field public mBouncerAnimating:Z

.field public final mBouncerExpansionCallback:Lcom/android/systemui/dreams/DreamOverlayContainerViewController$2;

.field public final mBurnInProtectionUpdateInterval:J

.field public final mComplicationHostViewController:Lcom/android/systemui/complication/ComplicationHostViewController;

.field public final mDreamOverlayAnimationsController:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

.field public final mDreamOverlayContentView:Landroid/view/ViewGroup;

.field public final mDreamOverlayMaxTranslationY:I

.field public final mDreamOverlayStateCallback:Lcom/android/systemui/dreams/DreamOverlayContainerViewController$3;

.field public mExitingLowLight:Z

.field public final mHandler:Landroid/os/Handler;

.field public mJitterStartTimeMillis:J

.field public final mLowLightTransitionCoordinator:Lcom/android/dream/lowlight/LowLightTransitionCoordinator;

.field public final mMaxBurnInOffset:I

.field public final mMillisUntilFullJitter:J

.field public final mPrimaryBouncerCallbackInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;

.field public final mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

.field public final mStatusBarViewController:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;

.field public mWakingUpFromSwipe:Z


# direct methods
.method public static $r8$lambda$7fQChniGqN2SW5ngNLqKLDVuFIU(Lcom/android/systemui/dreams/DreamOverlayContainerViewController;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    move-result-wide v0

    .line 8
    iget-wide v2, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mJitterStartTimeMillis:J

    .line 9
    sub-long/2addr v0, v2

    .line 11
    iget-wide v2, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mMillisUntilFullJitter:J

    .line 12
    cmp-long v4, v0, v2

    .line 14
    iget v5, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mMaxBurnInOffset:I

    .line 16
    if-gez v4, :cond_0

    .line 18
    long-to-float v0, v0

    .line 20
    long-to-float v1, v2

    .line 21
    div-float/2addr v0, v1

    .line 22
    const/4 v1, 0x0

    .line 23
    int-to-float v2, v5

    .line 24
    invoke-static {v1, v2, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 25
    move-result v0

    .line 28
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 29
    move-result v5

    .line 32
    :cond_0
    div-int/lit8 v0, v5, 0x2

    .line 33
    const/4 v1, 0x1

    .line 35
    invoke-static {v5, v1}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    .line 36
    move-result v1

    .line 39
    sub-int/2addr v1, v0

    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-static {v5, v2}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    .line 42
    move-result v2

    .line 45
    sub-int/2addr v2, v0

    .line 46
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 47
    check-cast v0, Lcom/android/systemui/dreams/DreamOverlayContainerView;

    .line 49
    int-to-float v1, v1

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 52
    int-to-float v1, v2

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 56
    new-instance v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$$ExternalSyntheticLambda0;

    .line 59
    const/4 v1, 0x2

    .line 61
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/dreams/DreamOverlayContainerViewController;I)V

    .line 62
    iget-wide v1, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mBurnInProtectionUpdateInterval:J

    .line 65
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mHandler:Landroid/os/Handler;

    .line 67
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 69
    return-void
    .line 72
.end method

.method public static -$$Nest$mupdateTransitionState(Lcom/android/systemui/dreams/DreamOverlayContainerViewController;F)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    const/4 v0, 0x1

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v2

    .line 14
    filled-new-array {v1, v2}, [Ljava/lang/Integer;

    .line 15
    move-result-object v1

    .line 18
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    move-result-object v1

    .line 22
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v1

    .line 26
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v2

    .line 30
    const/4 v3, 0x0

    .line 31
    const/high16 v4, 0x3f800000    # 1.0f

    .line 32
    if-eqz v2, :cond_4

    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 39
    check-cast v2, Ljava/lang/Integer;

    .line 40
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 42
    move-result v2

    .line 45
    sget-object v5, Lcom/android/app/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 46
    const/4 v6, 0x0

    .line 48
    const v7, 0x3cf5c28f    # 0.03f

    .line 49
    if-ne v2, v0, :cond_0

    .line 52
    const v8, 0x3f70a3d7    # 0.94f

    .line 54
    sub-float v8, p1, v8

    .line 57
    const v9, 0x3d75c28f    # 0.06f

    .line 59
    div-float/2addr v8, v9

    .line 62
    invoke-static {v8, v6, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 63
    move-result v8

    .line 66
    goto :goto_1

    .line 67
    :cond_0
    add-float v8, p1, v7

    .line 68
    invoke-static {v8}, Lcom/android/keyguard/BouncerPanelExpansionCalculator;->aboutToShowBouncerProgress(F)F

    .line 70
    move-result v8

    .line 73
    :goto_1
    check-cast v5, Landroid/view/animation/PathInterpolator;

    .line 74
    invoke-virtual {v5, v8}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 76
    move-result v8

    .line 79
    if-ne v2, v0, :cond_3

    .line 80
    const v7, 0x3f7ae148    # 0.98f

    .line 82
    cmpl-float v7, p1, v7

    .line 85
    if-ltz v7, :cond_1

    .line 87
    goto :goto_2

    .line 89
    :cond_1
    float-to-double v9, p1

    .line 90
    const-wide v11, 0x3fedc28f5c28f5c3L    # 0.93

    .line 91
    cmpg-double v4, v9, v11

    .line 96
    if-gez v4, :cond_2

    .line 98
    move v4, v6

    .line 100
    goto :goto_2

    .line 101
    :cond_2
    const v4, 0x3f6e147b    # 0.93f

    .line 102
    sub-float v4, p1, v4

    .line 105
    const v6, 0x3d4ccccd    # 0.05f

    .line 107
    div-float/2addr v4, v6

    .line 110
    goto :goto_2

    .line 111
    :cond_3
    add-float/2addr v7, p1

    .line 112
    invoke-static {v7}, Lcom/android/keyguard/BouncerPanelExpansionCalculator;->aboutToShowBouncerProgress(F)F

    .line 113
    move-result v4

    .line 116
    :goto_2
    invoke-virtual {v5, v4}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 117
    move-result v4

    .line 120
    iget v5, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mDreamOverlayMaxTranslationY:I

    .line 121
    neg-int v5, v5

    .line 123
    invoke-static {v5, v3, v4}, Landroid/util/MathUtils;->lerp(IIF)F

    .line 124
    move-result v3

    .line 127
    iget-object v4, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mComplicationHostViewController:Lcom/android/systemui/complication/ComplicationHostViewController;

    .line 128
    invoke-virtual {v4, v2}, Lcom/android/systemui/complication/ComplicationHostViewController;->getViewsAtPosition(I)Ljava/util/List;

    .line 130
    move-result-object v2

    .line 133
    new-instance v4, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$$ExternalSyntheticLambda1;

    .line 134
    invoke-direct {v4, v8, v3}, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$$ExternalSyntheticLambda1;-><init>(FF)V

    .line 136
    invoke-interface {v2, v4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 139
    goto :goto_0

    .line 142
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 143
    check-cast v0, Lcom/android/systemui/dreams/DreamOverlayContainerView;

    .line 145
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 147
    move-result-object v0

    .line 150
    invoke-static {p1}, Lcom/android/keyguard/BouncerPanelExpansionCalculator;->aboutToShowBouncerProgress(F)F

    .line 151
    move-result p1

    .line 154
    sub-float/2addr v4, p1

    .line 155
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mBlurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    .line 156
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/BlurUtils;->blurRadiusOfRatio(F)F

    .line 158
    move-result p1

    .line 161
    float-to-int p1, p1

    .line 162
    invoke-virtual {p0, v0, p1, v3}, Lcom/android/systemui/statusbar/BlurUtils;->applyBlur(Landroid/view/ViewRootImpl;IZ)V

    .line 163
    return-void
    .line 166
.end method

.method public constructor <init>(Lcom/android/systemui/dreams/DreamOverlayContainerView;Lcom/android/systemui/complication/ComplicationHostViewController;Landroid/view/ViewGroup;Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;Lcom/android/dream/lowlight/LowLightTransitionCoordinator;Lcom/android/systemui/statusbar/BlurUtils;Landroid/os/Handler;Landroid/content/res/Resources;IJJLcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;Lcom/android/systemui/dreams/DreamOverlayAnimationsController;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController;)V
    .locals 7

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p2

    .line 3
    move-object v2, p3

    .line 4
    move-object/from16 v3, p17

    .line 5
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 7
    new-instance v4, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$1;

    .line 10
    invoke-direct {v4, p0}, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$1;-><init>(Lcom/android/systemui/dreams/DreamOverlayContainerViewController;)V

    .line 12
    new-instance v5, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$2;

    .line 15
    invoke-direct {v5, p0}, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$2;-><init>(Lcom/android/systemui/dreams/DreamOverlayContainerViewController;)V

    .line 17
    iput-object v5, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mBouncerExpansionCallback:Lcom/android/systemui/dreams/DreamOverlayContainerViewController$2;

    .line 20
    new-instance v5, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$3;

    .line 22
    invoke-direct {v5, p0}, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$3;-><init>(Lcom/android/systemui/dreams/DreamOverlayContainerViewController;)V

    .line 24
    iput-object v5, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mDreamOverlayStateCallback:Lcom/android/systemui/dreams/DreamOverlayContainerViewController$3;

    .line 27
    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mDreamOverlayContentView:Landroid/view/ViewGroup;

    .line 29
    move-object v5, p4

    .line 31
    iput-object v5, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mStatusBarViewController:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;

    .line 32
    move-object v5, p6

    .line 34
    iput-object v5, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mBlurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    .line 35
    move-object/from16 v5, p15

    .line 37
    iput-object v5, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mDreamOverlayAnimationsController:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 39
    move-object/from16 v5, p16

    .line 41
    iput-object v5, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 43
    move-object v5, p5

    .line 45
    iput-object v5, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mLowLightTransitionCoordinator:Lcom/android/dream/lowlight/LowLightTransitionCoordinator;

    .line 46
    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    new-instance v5, Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda0;

    .line 51
    const/4 v6, 0x0

    .line 53
    invoke-direct {v5, v3, v4, v6}, Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController;Ljava/lang/Object;I)V

    .line 54
    iget-object v3, v3, Lcom/android/systemui/dreams/touch/scrim/BouncerlessScrimController;->mExecutor:Ljava/util/concurrent/Executor;

    .line 57
    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 59
    iput-object v1, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mComplicationHostViewController:Lcom/android/systemui/complication/ComplicationHostViewController;

    .line 62
    const v3, 0x7f07032b    # @dimen/dream_overlay_y_offset '80.0dp'

    .line 64
    move-object v4, p8

    .line 67
    invoke-virtual {p8, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 68
    move-result v3

    .line 71
    iput v3, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mDreamOverlayMaxTranslationY:I

    .line 72
    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 74
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 76
    const/4 v4, -0x1

    .line 78
    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 79
    invoke-virtual {p3, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    move-object v1, p7

    .line 85
    iput-object v1, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mHandler:Landroid/os/Handler;

    .line 86
    move/from16 v1, p9

    .line 88
    iput v1, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mMaxBurnInOffset:I

    .line 90
    move-wide/from16 v1, p10

    .line 92
    iput-wide v1, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mBurnInProtectionUpdateInterval:J

    .line 94
    move-wide/from16 v1, p12

    .line 96
    iput-wide v1, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mMillisUntilFullJitter:J

    .line 98
    move-object/from16 v1, p14

    .line 100
    iput-object v1, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mPrimaryBouncerCallbackInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;

    .line 102
    return-void
    .line 104
.end method


# virtual methods
.method public final onInit()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mDreamOverlayStateCallback:Lcom/android/systemui/dreams/DreamOverlayContainerViewController$3;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 4
    invoke-virtual {v1, v0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->addCallback(Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mStatusBarViewController:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;

    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 11
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mComplicationHostViewController:Lcom/android/systemui/complication/ComplicationHostViewController;

    .line 14
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 16
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mDreamOverlayAnimationsController:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 19
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 21
    iput-object v1, v0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->view:Landroid/view/View;

    .line 23
    new-instance v2, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;

    .line 25
    const/4 v3, 0x0

    .line 27
    invoke-direct {v2, v0, v1, v3}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;-><init>(Lcom/android/systemui/dreams/DreamOverlayAnimationsController;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    .line 28
    invoke-static {v1, v2}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    .line 31
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mLowLightTransitionCoordinator:Lcom/android/dream/lowlight/LowLightTransitionCoordinator;

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    return-void
    .line 39
.end method

.method public final onViewAttached()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mWakingUpFromSwipe:Z

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    move-result-wide v2

    .line 10
    iput-wide v2, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mJitterStartTimeMillis:J

    .line 11
    new-instance v2, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$$ExternalSyntheticLambda0;

    .line 13
    invoke-direct {v2, v0, v1}, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/dreams/DreamOverlayContainerViewController;I)V

    .line 15
    iget-wide v3, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mBurnInProtectionUpdateInterval:J

    .line 18
    iget-object v5, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mHandler:Landroid/os/Handler;

    .line 20
    invoke-virtual {v5, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    iget-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mPrimaryBouncerCallbackInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;

    .line 25
    iget-object v2, v2, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;->expansionCallbacks:Ljava/util/ArrayList;

    .line 27
    iget-object v3, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mBouncerExpansionCallback:Lcom/android/systemui/dreams/DreamOverlayContainerViewController$2;

    .line 29
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 31
    move-result v4

    .line 34
    if-nez v4, :cond_0

    .line 35
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_0
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    .line 40
    move-result-object v2

    .line 43
    iget-object v3, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 44
    check-cast v3, Lcom/android/systemui/dreams/DreamOverlayContainerView;

    .line 46
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    .line 48
    move-result-object v3

    .line 51
    invoke-interface {v3, v2}, Landroid/view/AttachedSurfaceControl;->setTouchableRegion(Landroid/graphics/Region;)V

    .line 52
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 55
    iget-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 58
    const/4 v3, 0x2

    .line 60
    invoke-virtual {v2, v3}, Lcom/android/systemui/dreams/DreamOverlayStateController;->containsState(I)Z

    .line 61
    move-result v2

    .line 64
    if-nez v2, :cond_4

    .line 65
    iget-boolean v2, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mExitingLowLight:Z

    .line 67
    sget-object v4, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$startEntryAnimations$1;->INSTANCE:Lcom/android/systemui/dreams/DreamOverlayAnimationsController$startEntryAnimations$1;

    .line 69
    iget-object v5, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mDreamOverlayAnimationsController:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 71
    iget-object v6, v5, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mAnimator:Landroid/animation/Animator;

    .line 73
    if-eqz v6, :cond_1

    .line 75
    invoke-virtual {v6}, Landroid/animation/Animator;->cancel()V

    .line 77
    :cond_1
    const/4 v6, 0x0

    .line 80
    iput-object v6, v5, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mAnimator:Landroid/animation/Animator;

    .line 81
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    new-instance v4, Landroid/animation/AnimatorSet;

    .line 86
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 88
    const/4 v7, 0x3

    .line 91
    new-array v8, v7, [Landroid/animation/Animator;

    .line 92
    iget-object v9, v5, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->view:Landroid/view/View;

    .line 94
    if-nez v9, :cond_2

    .line 96
    goto :goto_0

    .line 98
    :cond_2
    move-object v6, v9

    .line 99
    :goto_0
    iget v9, v5, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mDreamBlurRadius:I

    .line 100
    int-to-float v9, v9

    .line 102
    sget-object v10, Lcom/android/app/animation/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    .line 103
    new-array v11, v3, [F

    .line 105
    aput v9, v11, v1

    .line 107
    const/4 v9, 0x1

    .line 109
    const/4 v12, 0x0

    .line 110
    aput v12, v11, v9

    .line 111
    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 113
    move-result-object v11

    .line 116
    iget-wide v13, v5, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mDreamInBlurAnimDurationMs:J

    .line 117
    invoke-virtual {v11, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 119
    const-wide/16 v13, 0x0

    .line 122
    invoke-virtual {v11, v13, v14}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 124
    invoke-virtual {v11, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 127
    new-instance v15, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$blurAnimator$1$1;

    .line 130
    invoke-direct {v15, v5, v6}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$blurAnimator$1$1;-><init>(Lcom/android/systemui/dreams/DreamOverlayAnimationsController;Landroid/view/View;)V

    .line 132
    invoke-virtual {v11, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 135
    aput-object v11, v8, v1

    .line 138
    sget-object v6, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 140
    new-array v11, v3, [F

    .line 142
    fill-array-data v11, :array_0

    .line 144
    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 147
    move-result-object v11

    .line 150
    move-object/from16 v16, v4

    .line 151
    iget-wide v3, v5, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mDreamInComplicationsAnimDurationMs:J

    .line 153
    invoke-virtual {v11, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 155
    invoke-virtual {v11, v13, v14}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 158
    invoke-virtual {v11, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 161
    new-instance v3, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$alphaAnimator$1$1;

    .line 164
    invoke-direct {v3, v7, v5}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$alphaAnimator$1$1;-><init>(ILcom/android/systemui/dreams/DreamOverlayAnimationsController;)V

    .line 166
    invoke-virtual {v11, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 169
    aput-object v11, v8, v9

    .line 172
    iget v3, v5, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mDreamInTranslationYDistance:I

    .line 174
    int-to-float v3, v3

    .line 176
    if-eqz v2, :cond_3

    .line 177
    const/4 v2, -0x1

    .line 179
    goto :goto_1

    .line 180
    :cond_3
    move v2, v9

    .line 181
    :goto_1
    int-to-float v2, v2

    .line 182
    mul-float/2addr v3, v2

    .line 183
    const/4 v2, 0x2

    .line 184
    new-array v4, v2, [F

    .line 185
    aput v3, v4, v1

    .line 187
    aput v12, v4, v9

    .line 189
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 191
    move-result-object v3

    .line 194
    iget-wide v11, v5, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mDreamInTranslationYDurationMs:J

    .line 195
    invoke-virtual {v3, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 197
    invoke-virtual {v3, v13, v14}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 200
    invoke-virtual {v3, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 203
    new-instance v4, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$translationYAnimator$1$1;

    .line 206
    invoke-direct {v4, v7, v5}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$translationYAnimator$1$1;-><init>(ILcom/android/systemui/dreams/DreamOverlayAnimationsController;)V

    .line 208
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 211
    aput-object v3, v8, v2

    .line 214
    move-object/from16 v2, v16

    .line 216
    invoke-virtual {v2, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 218
    new-instance v3, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$startEntryAnimations$lambda$2$$inlined$doOnEnd$1;

    .line 221
    invoke-direct {v3, v1, v5}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$startEntryAnimations$lambda$2$$inlined$doOnEnd$1;-><init>(ILcom/android/systemui/dreams/DreamOverlayAnimationsController;)V

    .line 223
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 226
    new-instance v3, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$startEntryAnimations$lambda$2$$inlined$doOnEnd$1;

    .line 229
    invoke-direct {v3, v9, v5}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$startEntryAnimations$lambda$2$$inlined$doOnEnd$1;-><init>(ILcom/android/systemui/dreams/DreamOverlayAnimationsController;)V

    .line 231
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 234
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 237
    const-string v3, "Dream overlay entry animations started."

    .line 240
    iget-object v4, v5, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mLogger:Lcom/android/systemui/dreams/DreamLogger;

    .line 242
    invoke-virtual {v4, v3}, Lcom/android/systemui/dreams/DreamLogger;->d(Ljava/lang/String;)V

    .line 244
    iput-object v2, v5, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mAnimator:Landroid/animation/Animator;

    .line 247
    iput-boolean v1, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mExitingLowLight:Z

    .line 249
    :cond_4
    return-void

    .line 251
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 252
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$$ExternalSyntheticLambda0;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/dreams/DreamOverlayContainerViewController;I)V

    .line 5
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mHandler:Landroid/os/Handler;

    .line 8
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mPrimaryBouncerCallbackInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;

    .line 13
    iget-object v0, v0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;->expansionCallbacks:Ljava/util/ArrayList;

    .line 15
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mBouncerExpansionCallback:Lcom/android/systemui/dreams/DreamOverlayContainerViewController$2;

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mDreamOverlayAnimationsController:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 22
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mAnimator:Landroid/animation/Animator;

    .line 24
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mAnimator:Landroid/animation/Animator;

    .line 32
    return-void
    .line 34
.end method
