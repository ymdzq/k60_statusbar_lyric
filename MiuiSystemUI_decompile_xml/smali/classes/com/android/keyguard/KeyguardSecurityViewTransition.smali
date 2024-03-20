.class public final Lcom/android/keyguard/KeyguardSecurityViewTransition;
.super Landroid/transition/Transition;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static captureValues(Landroid/transition/TransitionValues;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    iget-object v1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 9
    move-result v1

    .line 12
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 13
    iget-object v1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 17
    move-result v1

    .line 20
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 21
    iget-object v1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 25
    move-result v1

    .line 28
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 29
    iget-object v1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 33
    move-result v1

    .line 36
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 37
    iget-object p0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 39
    const-string/jumbo v1, "securityViewLocation:bounds"

    .line 41
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
    .line 47
.end method


# virtual methods
.method public final captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecurityViewTransition;->captureValues(Landroid/transition/TransitionValues;)V

    .line 4
    :cond_0
    return-void
    .line 7
.end method

.method public final captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecurityViewTransition;->captureValues(Landroid/transition/TransitionValues;)V

    .line 4
    :cond_0
    return-void
    .line 7
.end method

.method public final createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 11

    .line 1
    const/4 p0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    if-eqz p2, :cond_3

    .line 5
    if-nez p3, :cond_0

    .line 7
    goto/16 :goto_1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 14
    const v1, 0x10c001a    # @android:interpolator/fast_out_extra_slow_in

    .line 15
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 18
    move-result-object v3

    .line 21
    sget-object v7, Lcom/android/app/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 22
    sget-object v10, Lcom/android/app/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 24
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 26
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 28
    const/4 v1, 0x2

    .line 31
    new-array v2, v1, [F

    .line 32
    fill-array-data v2, :array_0

    .line 34
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 37
    move-result-object v2

    .line 40
    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 41
    move-object v4, v2

    .line 43
    check-cast v4, Landroid/animation/ValueAnimator;

    .line 44
    const-wide/16 v4, 0x1f4

    .line 46
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 48
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 51
    check-cast v2, Landroid/animation/ValueAnimator;

    .line 53
    sget-object v4, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 55
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 57
    iget-object v2, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 60
    const-string/jumbo v4, "securityViewLocation:bounds"

    .line 62
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-result-object v2

    .line 68
    move-object v6, v2

    .line 69
    check-cast v6, Landroid/graphics/Rect;

    .line 70
    iget-object p3, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 72
    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-result-object p3

    .line 77
    move-object v5, p3

    .line 78
    check-cast v5, Landroid/graphics/Rect;

    .line 79
    iget-object v8, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 81
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 83
    move-result-object p1

    .line 86
    const p2, 0x7f07106f    # @dimen/security_shift_animation_translation '120.0dp'

    .line 87
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 90
    move-result p1

    .line 93
    float-to-int v4, p1

    .line 94
    invoke-virtual {v8}, Landroid/view/View;->hasOverlappingRendering()Z

    .line 95
    move-result p1

    .line 98
    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {v8}, Landroid/view/View;->getLayerType()I

    .line 101
    move-result p1

    .line 104
    if-eq p1, v1, :cond_1

    .line 105
    const/4 p1, 0x1

    .line 107
    goto :goto_0

    .line 108
    :cond_1
    const/4 p1, 0x0

    .line 109
    :goto_0
    if-eqz p1, :cond_2

    .line 110
    invoke-virtual {v8, v1, p0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 112
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    .line 115
    move-result v9

    .line 118
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 119
    check-cast p0, Landroid/animation/ValueAnimator;

    .line 121
    new-instance p2, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$1;

    .line 123
    invoke-direct {p2, v0, p1, v8}, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;ZLandroid/view/View;)V

    .line 125
    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 128
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 131
    check-cast p0, Landroid/animation/ValueAnimator;

    .line 133
    new-instance p1, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;

    .line 135
    move-object v2, p1

    .line 137
    invoke-direct/range {v2 .. v10}, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;-><init>(Landroid/view/animation/Interpolator;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/animation/Interpolator;Landroid/view/View;FLandroid/view/animation/Interpolator;)V

    .line 138
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 141
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 144
    check-cast p0, Landroid/animation/ValueAnimator;

    .line 146
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 148
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 151
    check-cast p0, Landroid/animation/Animator;

    .line 153
    :cond_3
    :goto_1
    return-object p0

    .line 155
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 156
.end method

.method public final getTransitionProperties()[Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "securityViewLocation:bounds"

    .line 2
    filled-new-array {p0}, [Ljava/lang/String;

    .line 5
    move-result-object p0

    .line 8
    return-object p0
    .line 9
.end method
