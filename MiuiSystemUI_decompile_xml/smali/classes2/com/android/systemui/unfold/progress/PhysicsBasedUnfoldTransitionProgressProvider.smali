.class public final Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;
.implements Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public cannedAnimator:Landroid/animation/ValueAnimator;

.field public final emphasizedInterpolator:Landroid/view/animation/Interpolator;

.field public final foldStateProvider:Lcom/android/systemui/unfold/updates/FoldStateProvider;

.field public isAnimatedCancelRunning:Z

.field public isTransitionRunning:Z

.field public final listeners:Ljava/util/List;

.field public final springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public transitionProgress:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/unfold/updates/FoldStateProvider;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->foldStateProvider:Lcom/android/systemui/unfold/updates/FoldStateProvider;

    .line 5
    const v0, 0x10c001a    # @android:interpolator/fast_out_extra_slow_in

    .line 7
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 10
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->emphasizedInterpolator:Landroid/view/animation/Interpolator;

    .line 14
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 16
    sget-object v0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider$AnimationProgressProperty;->INSTANCE:Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider$AnimationProgressProperty;

    .line 18
    new-instance v1, Landroidx/dynamicanimation/animation/FloatPropertyCompat$1;

    .line 20
    invoke-virtual {v0}, Landroid/util/FloatProperty;->getName()Ljava/lang/String;

    .line 22
    invoke-direct {v1, v0}, Landroidx/dynamicanimation/animation/FloatPropertyCompat$1;-><init>(Landroid/util/FloatProperty;)V

    .line 25
    invoke-direct {p1, v1, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;)V

    .line 28
    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 31
    iput-object p1, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    .line 36
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->listeners:Ljava/util/List;

    .line 41
    check-cast p2, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    .line 43
    invoke-virtual {p2, p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->addCallback(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p2}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->start()V

    .line 48
    return-void
    .line 51
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->listeners:Ljava/util/List;

    .line 4
    check-cast p0, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    return-void
    .line 11
.end method

.method public final cancelTransition(FZ)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->isTransitionRunning:Z

    .line 2
    iget-object v1, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->listeners:Ljava/util/List;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 7
    const/4 v4, 0x0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    if-eqz p2, :cond_3

    .line 12
    const/high16 p2, 0x3f800000    # 1.0f

    .line 14
    cmpg-float p1, p1, p2

    .line 16
    const/4 v0, 0x1

    .line 18
    if-nez p1, :cond_0

    .line 19
    move p1, v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move p1, v4

    .line 23
    :goto_0
    if-eqz p1, :cond_1

    .line 24
    iget-boolean p1, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->isAnimatedCancelRunning:Z

    .line 26
    if-nez p1, :cond_1

    .line 28
    check-cast v1, Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object p1

    .line 35
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v1

    .line 45
    check-cast v1, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;

    .line 46
    invoke-interface {v1}, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;->onTransitionFinishing()V

    .line 48
    goto :goto_1

    .line 51
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->isAnimatedCancelRunning:Z

    .line 52
    iget-object p1, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->cannedAnimator:Landroid/animation/ValueAnimator;

    .line 54
    if-eqz p1, :cond_2

    .line 56
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 58
    :cond_2
    iput-object v2, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->cannedAnimator:Landroid/animation/ValueAnimator;

    .line 61
    invoke-virtual {v3, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 63
    invoke-virtual {v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 66
    invoke-virtual {v3, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 69
    sget-object p1, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider$AnimationProgressProperty;->INSTANCE:Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider$AnimationProgressProperty;

    .line 72
    const/4 v1, 0x2

    .line 74
    new-array v1, v1, [F

    .line 75
    iget v2, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->transitionProgress:F

    .line 77
    aput v2, v1, v4

    .line 79
    aput p2, v1, v0

    .line 81
    invoke-static {p0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 83
    move-result-object p1

    .line 86
    new-instance v0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider$CannedAnimationListener;

    .line 87
    invoke-direct {v0, p0}, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider$CannedAnimationListener;-><init>(Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;)V

    .line 89
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 92
    iget v0, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->transitionProgress:F

    .line 95
    sub-float/2addr p2, v0

    .line 97
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 98
    mul-float/2addr p2, v0

    .line 100
    float-to-long v0, p2

    .line 101
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 102
    iget-object p2, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->emphasizedInterpolator:Landroid/view/animation/Interpolator;

    .line 105
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 107
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 110
    iput-object p1, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->cannedAnimator:Landroid/animation/ValueAnimator;

    .line 113
    goto :goto_3

    .line 115
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->setTransitionProgress(F)V

    .line 116
    iput-boolean v4, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->isAnimatedCancelRunning:Z

    .line 119
    iput-boolean v4, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->isTransitionRunning:Z

    .line 121
    invoke-virtual {v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 123
    iget-object p1, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->cannedAnimator:Landroid/animation/ValueAnimator;

    .line 126
    if-eqz p1, :cond_4

    .line 128
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 130
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->cannedAnimator:Landroid/animation/ValueAnimator;

    .line 133
    if-eqz p1, :cond_5

    .line 135
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 137
    :cond_5
    iput-object v2, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->cannedAnimator:Landroid/animation/ValueAnimator;

    .line 140
    check-cast v1, Ljava/util/ArrayList;

    .line 142
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 144
    move-result-object p0

    .line 147
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    move-result p1

    .line 151
    if-eqz p1, :cond_6

    .line 152
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    move-result-object p1

    .line 157
    check-cast p1, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;

    .line 158
    invoke-interface {p1}, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;->onTransitionFinished()V

    .line 160
    goto :goto_2

    .line 163
    :cond_6
    const-string p0, "PhysicsBasedUnfoldTransitionProgressProvider"

    .line 164
    const-string p1, "onTransitionFinished"

    .line 166
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_3
    return-void
    .line 171
.end method

.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->isAnimatedCancelRunning:Z

    .line 2
    if-eqz p1, :cond_0

    .line 4
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p3, p1}, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->cancelTransition(FZ)V

    .line 7
    :cond_0
    return-void
    .line 10
.end method

.method public final onFoldUpdate(I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/high16 v2, 0x3f800000    # 1.0f

    .line 4
    if-eq p1, v1, :cond_2

    .line 6
    const/4 v3, 0x2

    .line 8
    if-eq p1, v3, :cond_1

    .line 9
    const/4 v3, 0x3

    .line 11
    if-eq p1, v3, :cond_1

    .line 12
    const/4 v1, 0x4

    .line 14
    if-eq p1, v1, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->cancelTransition(FZ)V

    .line 19
    goto :goto_0

    .line 22
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->isTransitionRunning:Z

    .line 23
    if-eqz v0, :cond_6

    .line 25
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->cancelTransition(FZ)V

    .line 27
    goto :goto_0

    .line 30
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->isTransitionRunning:Z

    .line 31
    if-eqz v1, :cond_5

    .line 33
    iget-boolean v1, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->isAnimatedCancelRunning:Z

    .line 35
    if-eqz v1, :cond_6

    .line 37
    iput-boolean v0, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->isAnimatedCancelRunning:Z

    .line 39
    iget-object v0, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 41
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 43
    iget-object v0, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->cannedAnimator:Landroid/animation/ValueAnimator;

    .line 46
    if-eqz v0, :cond_3

    .line 48
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 50
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->cannedAnimator:Landroid/animation/ValueAnimator;

    .line 53
    if-eqz v0, :cond_4

    .line 55
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 57
    :cond_4
    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->cannedAnimator:Landroid/animation/ValueAnimator;

    .line 61
    goto :goto_0

    .line 63
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->startTransition(F)V

    .line 64
    :cond_6
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProviderKt;->name(I)Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 70
    const-string v0, "onFoldUpdate = "

    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 76
    const-string v0, "PhysicsBasedUnfoldTransitionProgressProvider"

    .line 77
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string p0, "fold_update"

    .line 82
    int-to-long v0, p1

    .line 84
    invoke-static {p0, v0, v1}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    .line 85
    return-void
    .line 88
.end method

.method public final onHingeAngleUpdate(F)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->isTransitionRunning:Z

    .line 2
    if-eqz v0, :cond_3

    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->isAnimatedCancelRunning:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    goto :goto_2

    .line 10
    :cond_0
    const/high16 v0, 0x43250000    # 165.0f

    .line 11
    div-float/2addr p1, v0

    .line 13
    const/4 v0, 0x0

    .line 14
    cmpg-float v1, p1, v0

    .line 15
    if-gez v1, :cond_1

    .line 17
    :goto_0
    move p1, v0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    cmpl-float v1, p1, v0

    .line 23
    if-lez v1, :cond_2

    .line 25
    goto :goto_0

    .line 27
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 28
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 30
    :cond_3
    :goto_2
    return-void
    .line 33
.end method

.method public final onUnfoldedScreenAvailable()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->startTransition(F)V

    .line 3
    iget-object v0, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->foldStateProvider:Lcom/android/systemui/unfold/updates/FoldStateProvider;

    .line 6
    check-cast v0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    .line 8
    iget-boolean v1, v0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isFolded:Z

    .line 10
    const/4 v2, 0x1

    .line 12
    if-nez v1, :cond_3

    .line 13
    iget-object v1, v0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastFoldUpdate:Ljava/lang/Integer;

    .line 15
    if-nez v1, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result v1

    .line 23
    const/4 v3, 0x3

    .line 24
    if-eq v1, v3, :cond_2

    .line 25
    :goto_0
    iget-object v0, v0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastFoldUpdate:Ljava/lang/Integer;

    .line 27
    if-nez v0, :cond_1

    .line 29
    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 32
    move-result v0

    .line 35
    const/4 v1, 0x2

    .line 36
    if-ne v0, v1, :cond_3

    .line 37
    :cond_2
    move v0, v2

    .line 39
    goto :goto_2

    .line 40
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 41
    :goto_2
    if-eqz v0, :cond_4

    .line 42
    const/high16 v0, 0x3f800000    # 1.0f

    .line 44
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->cancelTransition(FZ)V

    .line 46
    :cond_4
    return-void
    .line 49
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->listeners:Ljava/util/List;

    .line 4
    check-cast p0, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    return-void
    .line 11
.end method

.method public final setTransitionProgress(F)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->isTransitionRunning:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->listeners:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;

    .line 22
    invoke-interface {v1, p1}, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;->onTransitionProgress(F)V

    .line 24
    goto :goto_0

    .line 27
    :cond_0
    iput p1, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->transitionProgress:F

    .line 28
    return-void
    .line 30
.end method

.method public final startTransition(F)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->isTransitionRunning:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_1

    .line 5
    const-string v0, "PhysicsBasedUnfoldTransitionProgressProvider#onStartTransition"

    .line 7
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->listeners:Ljava/util/List;

    .line 12
    check-cast v0, Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 29
    check-cast v2, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;

    .line 30
    invoke-interface {v2}, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;->onTransitionStarted()V

    .line 32
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 36
    iput-boolean v1, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->isTransitionRunning:Z

    .line 39
    const-string v0, "PhysicsBasedUnfoldTransitionProgressProvider"

    .line 41
    const-string v2, "onTransitionStarted"

    .line 43
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_1
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    .line 48
    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 50
    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 53
    const/high16 v2, 0x3f800000    # 1.0f

    .line 56
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 58
    const/high16 v3, 0x44160000    # 600.0f

    .line 61
    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 63
    iget-object p0, p0, Lcom/android/systemui/unfold/progress/PhysicsBasedUnfoldTransitionProgressProvider;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 66
    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 68
    const v0, 0x3a83126f    # 0.001f

    .line 70
    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)V

    .line 73
    iput p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 76
    iput-boolean v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 78
    const/4 p1, 0x0

    .line 80
    iput p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    .line 81
    iput v2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    .line 83
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 85
    return-void
    .line 88
.end method
