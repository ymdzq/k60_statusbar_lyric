.class public final Lcom/android/wm/shell/bubbles/animation/StackAnimationController;
.super Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mAnimateOutSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

.field public mAnimatingToBounds:Landroid/graphics/Rect;

.field public final mBubbleCountSupplier:Ljava/util/function/IntSupplier;

.field public mBubblePaddingTop:I

.field public mBubbleSize:I

.field public mElevation:I

.field public mFirstBubbleSpringingToTouch:Z

.field public final mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

.field public mIsMovingFromFlinging:Z

.field public mMagnetizedStack:Lcom/android/wm/shell/bubbles/animation/StackAnimationController$2;

.field public mMaxBubbles:I

.field public final mOnBubbleAnimatedOutAction:Ljava/lang/Runnable;

.field public final mOnStackAnimationFinished:Ljava/lang/Runnable;

.field public final mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field public mPreImeY:F

.field public mSpringToTouchOnNextMotionEvent:Z

.field public final mStackFloatingContent:Lcom/android/wm/shell/bubbles/animation/StackAnimationController$1;

.field public mStackMovedToStartPosition:Z

.field public mStackOffset:F

.field public final mStackPosition:Landroid/graphics/PointF;

.field public final mStackPositionAnimations:Ljava/util/HashMap;

.field public mSwapAnimationOffset:F


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/FloatingContentCoordinator;Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda16;Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;Lcom/android/wm/shell/bubbles/BubblePositioner;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;-><init>()V

    .line 2
    new-instance v0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 5
    const/high16 v1, 0x442f0000    # 700.0f

    .line 7
    const/high16 v2, 0x3f800000    # 1.0f

    .line 9
    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    .line 11
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mAnimateOutSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 14
    new-instance v0, Landroid/graphics/PointF;

    .line 16
    const/high16 v1, -0x40800000    # -1.0f

    .line 18
    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 20
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    .line 25
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mAnimatingToBounds:Landroid/graphics/Rect;

    .line 30
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackMovedToStartPosition:Z

    .line 33
    const v1, -0x7fffffff

    .line 35
    iput v1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mPreImeY:F

    .line 38
    new-instance v1, Ljava/util/HashMap;

    .line 40
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPositionAnimations:Ljava/util/HashMap;

    .line 45
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mIsMovingFromFlinging:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mFirstBubbleSpringingToTouch:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mSpringToTouchOnNextMotionEvent:Z

    .line 51
    new-instance v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$1;

    .line 53
    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$1;-><init>(Lcom/android/wm/shell/bubbles/animation/StackAnimationController;)V

    .line 55
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackFloatingContent:Lcom/android/wm/shell/bubbles/animation/StackAnimationController$1;

    .line 58
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

    .line 60
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mBubbleCountSupplier:Ljava/util/function/IntSupplier;

    .line 62
    iput-object p3, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mOnBubbleAnimatedOutAction:Ljava/lang/Runnable;

    .line 64
    iput-object p4, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mOnStackAnimationFinished:Ljava/lang/Runnable;

    .line 66
    iput-object p5, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 68
    return-void
    .line 70
.end method


# virtual methods
.method public final animateInBubble(ILandroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->isActiveController()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 9
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->getOffsetForChainedPropertyAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;I)F

    .line 12
    move-result v0

    .line 15
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    .line 16
    iget v3, v2, Landroid/graphics/PointF;->y:F

    .line 18
    int-to-float p1, p1

    .line 20
    mul-float/2addr v0, p1

    .line 21
    add-float/2addr v0, v3

    .line 22
    iget p1, v2, Landroid/graphics/PointF;->x:F

    .line 23
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 25
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    .line 27
    move-result v4

    .line 30
    const/high16 v5, 0x42c80000    # 100.0f

    .line 31
    if-eqz v4, :cond_2

    .line 33
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 35
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    .line 38
    move-result p0

    .line 41
    if-eqz p0, :cond_1

    .line 42
    sub-float p0, p1, v5

    .line 44
    goto :goto_0

    .line 46
    :cond_1
    add-float p0, p1, v5

    .line 47
    :goto_0
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationX(F)V

    .line 49
    goto :goto_1

    .line 52
    :cond_2
    iget p0, v2, Landroid/graphics/PointF;->x:F

    .line 53
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationX(F)V

    .line 55
    add-float/2addr v5, v0

    .line 58
    invoke-virtual {p2, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 59
    :goto_1
    const/high16 p0, 0x3f000000    # 0.5f

    .line 62
    invoke-virtual {p2, p0}, Landroid/view/View;->setScaleX(F)V

    .line 64
    invoke-virtual {p2, p0}, Landroid/view/View;->setScaleY(F)V

    .line 67
    const/4 p0, 0x0

    .line 70
    invoke-virtual {p2, p0}, Landroid/view/View;->setAlpha(F)V

    .line 71
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 74
    move-result-object p0

    .line 77
    const/high16 v2, 0x3f800000    # 1.0f

    .line 78
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 80
    move-result-object p0

    .line 83
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 84
    move-result-object p0

    .line 87
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 88
    move-result-object p0

    .line 91
    const-wide/16 v4, 0x12c

    .line 92
    invoke-virtual {p0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 94
    move-result-object p0

    .line 97
    new-instance v2, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda0;

    .line 98
    invoke-direct {v2, v1, p2}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 100
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 103
    move-result-object p0

    .line 106
    const v1, 0x7f0a0797    # @id/reorder_animator_tag

    .line 107
    invoke-virtual {p2, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 110
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    .line 113
    move-result p2

    .line 116
    if-eqz p2, :cond_3

    .line 117
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 119
    goto :goto_2

    .line 122
    :cond_3
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 123
    :goto_2
    return-void
    .line 126
.end method

.method public final cancelStackPositionAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPositionAnimations:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 13
    check-cast p0, Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 14
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public final flingStackThenSpringToEdge(FFF)F
    .locals 14

    .line 1
    move-object v6, p0

    .line 2
    move/from16 v0, p2

    .line 3
    iget v1, v6, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mBubbleSize:I

    .line 5
    div-int/lit8 v1, v1, 0x2

    .line 7
    int-to-float v1, v1

    .line 9
    sub-float v1, p1, v1

    .line 10
    iget-object v2, v6, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 12
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    .line 14
    move-result v2

    .line 17
    div-int/lit8 v2, v2, 0x2

    .line 18
    int-to-float v2, v2

    .line 20
    cmpg-float v1, v1, v2

    .line 21
    const/4 v7, 0x1

    .line 23
    const/4 v8, 0x0

    .line 24
    if-gez v1, :cond_0

    .line 25
    move v1, v7

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v1, v8

    .line 29
    :goto_0
    if-eqz v1, :cond_1

    .line 30
    const v1, 0x443b8000    # 750.0f

    .line 32
    cmpg-float v1, v0, v1

    .line 35
    if-gez v1, :cond_2

    .line 37
    goto :goto_1

    .line 39
    :cond_1
    const v1, -0x3bc48000    # -750.0f

    .line 40
    cmpg-float v1, v0, v1

    .line 43
    if-gez v1, :cond_2

    .line 45
    :goto_1
    move v1, v7

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move v1, v8

    .line 49
    :goto_2
    iget-object v2, v6, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 50
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->getBubbleCount()I

    .line 52
    move-result v3

    .line 55
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAllowableStackPositionRegion(I)Landroid/graphics/RectF;

    .line 56
    move-result-object v2

    .line 59
    if-eqz v1, :cond_3

    .line 60
    iget v3, v2, Landroid/graphics/RectF;->left:F

    .line 62
    goto :goto_3

    .line 64
    :cond_3
    iget v3, v2, Landroid/graphics/RectF;->right:F

    .line 65
    :goto_3
    move v9, v3

    .line 67
    iget-object v3, v6, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 68
    if-eqz v3, :cond_6

    .line 70
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 72
    move-result v3

    .line 75
    if-nez v3, :cond_4

    .line 76
    goto/16 :goto_5

    .line 78
    :cond_4
    iget-object v3, v6, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 80
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 82
    move-result-object v3

    .line 85
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 86
    move-result-object v3

    .line 89
    const-string v4, "bubble_stiffness"

    .line 90
    const/high16 v5, 0x442f0000    # 700.0f

    .line 92
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 94
    move-result v10

    .line 97
    const-string v4, "bubble_damping"

    .line 98
    const v5, 0x3f59999a    # 0.85f

    .line 100
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 103
    move-result v11

    .line 106
    const-string v4, "bubble_friction"

    .line 107
    const v5, 0x3ff33333    # 1.9f

    .line 109
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 112
    move-result v12

    .line 115
    sub-float v3, v9, p1

    .line 116
    const v4, 0x40866666    # 4.2f

    .line 118
    mul-float/2addr v4, v12

    .line 121
    mul-float/2addr v3, v4

    .line 122
    iget-object v5, v6, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    .line 123
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 125
    iget v13, v2, Landroid/graphics/RectF;->top:F

    .line 127
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 129
    div-float v4, p3, v4

    .line 131
    add-float/2addr v4, v5

    .line 133
    invoke-static {v13, v4}, Ljava/lang/Math;->max(FF)F

    .line 134
    move-result v4

    .line 137
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    .line 138
    move-result v2

    .line 141
    invoke-virtual {p0, v9, v2}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->notifyFloatingCoordinatorStackAnimatingTo(FF)V

    .line 142
    if-eqz v1, :cond_5

    .line 145
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    .line 147
    move-result v0

    .line 150
    goto :goto_4

    .line 151
    :cond_5
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    .line 152
    move-result v0

    .line 155
    :goto_4
    move v2, v0

    .line 156
    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 157
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    .line 159
    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 161
    invoke-virtual {v0, v10}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 164
    move-result-object v0

    .line 167
    invoke-virtual {v0, v11}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 168
    move-result-object v4

    .line 171
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 172
    move-result-object v5

    .line 175
    move-object v0, p0

    .line 176
    move v3, v12

    .line 177
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->flingThenSpringFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$1;FFLandroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Float;)V

    .line 178
    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 181
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    .line 183
    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 185
    invoke-virtual {v0, v10}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 188
    move-result-object v0

    .line 191
    invoke-virtual {v0, v11}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 192
    move-result-object v4

    .line 195
    const/4 v5, 0x0

    .line 196
    move-object v0, p0

    .line 197
    move/from16 v2, p3

    .line 198
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->flingThenSpringFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$1;FFLandroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Float;)V

    .line 200
    iput-boolean v8, v6, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mFirstBubbleSpringingToTouch:Z

    .line 203
    iput-boolean v7, v6, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mIsMovingFromFlinging:Z

    .line 205
    :cond_6
    :goto_5
    return v9
    .line 207
.end method

.method public final flingThenSpringFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$1;FFLandroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Float;)V
    .locals 11

    .line 1
    move-object v7, p0

    .line 2
    move-object v8, p1

    .line 3
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->isActiveController()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    invoke-static {p1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->getReadablePropertyName(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 14
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 18
    const-string v1, "Flinging %s."

    .line 19
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 24
    const-string v1, "Bubbs.StackCtrl"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$StackPositionProperty;

    .line 30
    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$StackPositionProperty;-><init>(Lcom/android/wm/shell/bubbles/animation/StackAnimationController;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    .line 32
    iget-object v1, v7, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 35
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 37
    move-result v1

    .line 40
    if-lez v1, :cond_1

    .line 41
    iget-object v1, v7, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 43
    const/4 v2, 0x0

    .line 45
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 46
    move-result-object v1

    .line 49
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$StackPositionProperty;->mProperty:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 50
    invoke-virtual {v2, v1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    .line 52
    move-result v1

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/4 v1, 0x0

    .line 57
    :goto_0
    iget-object v2, v7, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 58
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->getBubbleCount()I

    .line 60
    move-result v3

    .line 63
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAllowableStackPositionRegion(I)Landroid/graphics/RectF;

    .line 64
    move-result-object v2

    .line 67
    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 68
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v4

    .line 73
    if-eqz v4, :cond_2

    .line 74
    iget v4, v2, Landroid/graphics/RectF;->left:F

    .line 76
    goto :goto_1

    .line 78
    :cond_2
    iget v4, v2, Landroid/graphics/RectF;->top:F

    .line 79
    :goto_1
    move v5, v4

    .line 81
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v3

    .line 85
    if-eqz v3, :cond_3

    .line 86
    iget v2, v2, Landroid/graphics/RectF;->right:F

    .line 88
    goto :goto_2

    .line 90
    :cond_3
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 91
    :goto_2
    move v6, v2

    .line 93
    new-instance v9, Landroidx/dynamicanimation/animation/FlingAnimation;

    .line 94
    invoke-direct {v9, v0, p0}, Landroidx/dynamicanimation/animation/FlingAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;)V

    .line 96
    move v0, p3

    .line 99
    invoke-virtual {v9, p3}, Landroidx/dynamicanimation/animation/FlingAnimation;->setFriction(F)V

    .line 100
    move v0, p2

    .line 103
    iput v0, v9, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 104
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    .line 106
    move-result v0

    .line 109
    iput v0, v9, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    .line 110
    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    .line 112
    move-result v0

    .line 115
    iput v0, v9, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    .line 116
    new-instance v10, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda2;

    .line 118
    move-object v0, v10

    .line 120
    move-object v1, p0

    .line 121
    move-object v2, p1

    .line 122
    move-object v3, p4

    .line 123
    move-object/from16 v4, p5

    .line 124
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/bubbles/animation/StackAnimationController;Landroidx/dynamicanimation/animation/DynamicAnimation$1;Landroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Float;FF)V

    .line 126
    invoke-virtual {v9, v10}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->cancelStackPositionAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    .line 132
    iget-object v0, v7, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPositionAnimations:Ljava/util/HashMap;

    .line 135
    invoke-virtual {v0, p1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-virtual {v9}, Landroidx/dynamicanimation/animation/DynamicAnimation;->start()V

    .line 140
    return-void
    .line 143
.end method

.method public final getAnimatedProperties()Ljava/util/Set;
    .locals 4

    .line 1
    sget-object p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 2
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 4
    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 6
    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 8
    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 10
    filled-new-array {p0, v0, v1, v2, v3}, [Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 12
    move-result-object p0

    .line 15
    invoke-static {p0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    .line 16
    move-result-object p0

    .line 19
    return-object p0
    .line 20
.end method

.method public final getBubbleCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mBubbleCountSupplier:Ljava/util/function/IntSupplier;

    .line 2
    invoke-interface {p0}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getNextAnimationInChain(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;I)I
    .locals 0

    .line 1
    sget-object p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result p0

    .line 7
    if-nez p0, :cond_1

    .line 8
    sget-object p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 10
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, -0x1

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    add-int/lit8 p2, p2, 0x1

    .line 21
    return p2
    .line 23
.end method

.method public final getOffsetForChainedPropertyAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;I)F
    .locals 1

    .line 1
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->isStackStuckToTarget()Z

    .line 11
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    return v0

    .line 17
    :cond_0
    const/4 p1, 0x1

    .line 18
    if-le p2, p1, :cond_1

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    iget v0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackOffset:F

    .line 22
    :cond_2
    :goto_0
    return v0
    .line 24
.end method

.method public final getSpringForce()Landroidx/dynamicanimation/animation/SpringForce;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object p0

    .line 11
    const-string v0, "bubble_damping"

    .line 12
    const v1, 0x3f666666    # 0.9f

    .line 14
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 17
    move-result p0

    .line 20
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    .line 21
    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 23
    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 26
    move-result-object p0

    .line 29
    const/high16 v0, 0x44480000    # 800.0f

    .line 30
    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 32
    move-result-object p0

    .line 35
    return-object p0
    .line 36
.end method

.method public final isStackOnLeftSide()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_3

    .line 5
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackMovedToStartPosition:Z

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto :goto_1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    .line 12
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 14
    if-nez v0, :cond_1

    .line 16
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getRestingPosition()Landroid/graphics/PointF;

    .line 18
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    :goto_0
    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 26
    float-to-int v0, v0

    .line 28
    iget v2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    .line 29
    div-int/lit8 v2, v2, 0x2

    .line 31
    add-int/2addr v2, v0

    .line 33
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mScreenRect:Landroid/graphics/Rect;

    .line 34
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 36
    move-result p0

    .line 39
    div-int/lit8 p0, p0, 0x2

    .line 40
    if-ge v2, p0, :cond_2

    .line 42
    goto :goto_1

    .line 44
    :cond_2
    const/4 v1, 0x0

    .line 45
    :cond_3
    :goto_1
    return v1
    .line 46
.end method

.method public final isStackStuckToTarget()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mMagnetizedStack:Lcom/android/wm/shell/bubbles/animation/StackAnimationController$2;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->getObjectStuckToTarget()Z

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

.method public final moveFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F)V
    .locals 3

    .line 1
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iput p2, v1, Landroid/graphics/PointF;->x:F

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    iput p2, v1, Landroid/graphics/PointF;->y:F

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 25
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 27
    move-result v0

    .line 30
    if-lez v0, :cond_2

    .line 31
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 33
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 36
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0, p2}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->setValue(Ljava/lang/Object;F)V

    .line 40
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 43
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 45
    move-result v0

    .line 48
    const/4 v2, 0x1

    .line 49
    if-le v0, v2, :cond_2

    .line 50
    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->getOffsetForChainedPropertyAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;I)F

    .line 52
    move-result v0

    .line 55
    add-float/2addr v0, p2

    .line 56
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 57
    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 59
    move-result-object p2

    .line 62
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 63
    move-result-object p0

    .line 66
    new-array p2, v1, [Ljava/lang/Runnable;

    .line 67
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->property(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F[Ljava/lang/Runnable;)V

    .line 69
    new-array p1, v1, [Ljava/lang/Runnable;

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    .line 74
    :cond_2
    return-void
    .line 77
.end method

.method public final moveToFinalIndex(Landroid/view/View;ILjava/lang/Runnable;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    .line 6
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 8
    const/4 v2, 0x1

    .line 10
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    .line 11
    move-result p2

    .line 14
    int-to-float p2, p2

    .line 15
    iget p0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackOffset:F

    .line 16
    mul-float/2addr p2, p0

    .line 18
    add-float/2addr p2, v1

    .line 19
    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 20
    move-result-object p0

    .line 23
    const-wide/16 v0, 0x12c

    .line 24
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 26
    move-result-object p0

    .line 29
    new-instance p2, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda4;

    .line 30
    invoke-direct {p2, v2, p1, p3}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 35
    move-result-object p0

    .line 38
    const p2, 0x7f0a0797    # @id/reorder_animator_tag

    .line 39
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 42
    return-void
    .line 45
.end method

.method public final notifyFloatingCoordinatorStackAnimatingTo(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackFloatingContent:Lcom/android/wm/shell/bubbles/animation/StackAnimationController$1;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$1;->getFloatingBoundsOnScreen()Landroid/graphics/Rect;

    .line 4
    move-result-object v1

    .line 7
    float-to-int p1, p1

    .line 8
    float-to-int p2, p2

    .line 9
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 10
    iput-object v1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mAnimatingToBounds:Landroid/graphics/Rect;

    .line 13
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/FloatingContentCoordinator;->onContentMoved(Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;)V

    .line 17
    return-void
    .line 20
.end method

.method public final onActiveControllerForLayout(Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 6
    iget v1, v0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mStackOffset:I

    .line 8
    int-to-float v1, v1

    .line 10
    iput v1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackOffset:F

    .line 11
    const v1, 0x7f070171    # @dimen/bubble_swap_animation_offset '15.0dp'

    .line 13
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    move-result v1

    .line 19
    int-to-float v1, v1

    .line 20
    iput v1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mSwapAnimationOffset:F

    .line 21
    const v1, 0x7f0b0013    # @integer/bubbles_max_rendered '5'

    .line 23
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 26
    move-result v1

    .line 29
    iput v1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mMaxBubbles:I

    .line 30
    const v1, 0x7f070138    # @dimen/bubble_elevation '1.0dp'

    .line 32
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 35
    move-result p1

    .line 38
    iput p1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mElevation:I

    .line 39
    iget p1, v0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    .line 41
    iput p1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mBubbleSize:I

    .line 43
    iget p1, v0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubblePaddingTop:I

    .line 45
    iput p1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mBubblePaddingTop:I

    .line 47
    return-void
    .line 49
.end method

.method public final onChildAdded(ILandroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->isStackStuckToTarget()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->getBubbleCount()I

    .line 9
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 16
    const/4 p2, 0x4

    .line 18
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 22
    new-instance p2, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda0;

    .line 24
    invoke-direct {p2, v1, p0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 26
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 29
    goto :goto_0

    .line 32
    :cond_1
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackMovedToStartPosition:Z

    .line 33
    if-eqz v0, :cond_2

    .line 35
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 37
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    .line 39
    move-result v0

    .line 42
    if-nez v0, :cond_2

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->animateInBubble(ILandroid/view/View;)V

    .line 45
    goto :goto_0

    .line 48
    :cond_2
    const/high16 p0, 0x3f800000    # 1.0f

    .line 49
    invoke-virtual {p2, p0}, Landroid/view/View;->setAlpha(F)V

    .line 51
    invoke-virtual {p2, p0}, Landroid/view/View;->setScaleX(F)V

    .line 54
    invoke-virtual {p2, p0}, Landroid/view/View;->setScaleY(F)V

    .line 57
    :goto_0
    return-void
    .line 60
.end method

.method public final onChildRemoved(Landroid/view/View;Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$$ExternalSyntheticLambda1;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/wm/shell/animation/PhysicsAnimator;->instanceConstructor:Lkotlin/jvm/functions/Function1;

    .line 2
    invoke-static {p1}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 4
    move-result-object p1

    .line 7
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 8
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/DynamicAnimation$1;F)V

    .line 11
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 14
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mAnimateOutSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 16
    invoke-virtual {p1, v0, v1, v1, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 18
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 21
    invoke-virtual {p1, v0, v1, v1, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 23
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mOnBubbleAnimatedOutAction:Ljava/lang/Runnable;

    .line 26
    filled-new-array {p2, v0}, [Ljava/lang/Runnable;

    .line 28
    move-result-object p2

    .line 31
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)V

    .line 32
    invoke-virtual {p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    .line 35
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->getBubbleCount()I

    .line 38
    move-result p1

    .line 41
    if-lez p1, :cond_0

    .line 42
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 44
    const/4 p2, 0x0

    .line 46
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 47
    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 51
    move-result-object p1

    .line 54
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    .line 55
    iget p0, p0, Landroid/graphics/PointF;->x:F

    .line 57
    new-array v0, p2, [Ljava/lang/Runnable;

    .line 59
    const/4 v1, 0x0

    .line 61
    iput-object v1, p1, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    .line 62
    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 64
    invoke-virtual {p1, v1, p0, v0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->property(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F[Ljava/lang/Runnable;)V

    .line 66
    new-array p0, p2, [Ljava/lang/Runnable;

    .line 69
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    .line 71
    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 75
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getRestingPosition()Landroid/graphics/PointF;

    .line 77
    move-result-object p2

    .line 80
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/BubblePositioner;->setRestingPosition(Landroid/graphics/PointF;)V

    .line 81
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

    .line 84
    iget-object p1, p1, Lcom/android/wm/shell/common/FloatingContentCoordinator;->allContentBounds:Ljava/util/Map;

    .line 86
    check-cast p1, Ljava/util/HashMap;

    .line 88
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackFloatingContent:Lcom/android/wm/shell/bubbles/animation/StackAnimationController$1;

    .line 90
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :goto_0
    return-void
    .line 95
.end method

.method public final onChildReordered()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setStackPosition(Landroid/graphics/PointF;)V
    .locals 7

    .line 1
    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    move-result-object v0

    .line 7
    iget v1, p1, Landroid/graphics/PointF;->y:F

    .line 8
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 10
    move-result-object v1

    .line 13
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    const-string v1, "Setting position to (%f, %f)."

    .line 18
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 23
    const-string v1, "Bubbs.StackCtrl"

    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    .line 29
    iget v1, p1, Landroid/graphics/PointF;->x:F

    .line 31
    iget v2, p1, Landroid/graphics/PointF;->y:F

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 35
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 38
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->setRestingPosition(Landroid/graphics/PointF;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->isActiveController()Z

    .line 43
    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 49
    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 51
    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 53
    filled-new-array {v1, v2}, [Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 55
    move-result-object v3

    .line 58
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->cancelAllAnimationsOfProperties([Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    .line 59
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->cancelStackPositionAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    .line 62
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->cancelStackPositionAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    .line 65
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 68
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->mEndActionForProperty:Ljava/util/HashMap;

    .line 70
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 75
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->mEndActionForProperty:Ljava/util/HashMap;

    .line 77
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->getOffsetForChainedPropertyAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;I)F

    .line 83
    move-result v1

    .line 86
    invoke-virtual {p0, v2, v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->getOffsetForChainedPropertyAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;I)F

    .line 87
    move-result v2

    .line 90
    :goto_0
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 91
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 93
    move-result v3

    .line 96
    if-ge v0, v3, :cond_0

    .line 97
    const/4 v3, 0x1

    .line 99
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 100
    move-result v3

    .line 103
    int-to-float v3, v3

    .line 104
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 105
    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 107
    move-result-object v4

    .line 110
    iget v5, p1, Landroid/graphics/PointF;->x:F

    .line 111
    mul-float v6, v3, v1

    .line 113
    add-float/2addr v6, v5

    .line 115
    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 116
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 119
    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 121
    move-result-object v4

    .line 124
    iget v5, p1, Landroid/graphics/PointF;->y:F

    .line 125
    mul-float/2addr v3, v2

    .line 127
    add-float/2addr v3, v5

    .line 128
    invoke-virtual {v4, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 129
    add-int/lit8 v0, v0, 0x1

    .line 132
    goto :goto_0

    .line 134
    :cond_0
    return-void
    .line 135
.end method

.method public final varargs springFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/SpringForce;FF[Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->isActiveController()Z

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->getReadablePropertyName(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 20
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 21
    move-result-object v1

    .line 24
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 28
    const-string v1, "Springing %s to final position %f."

    .line 29
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 34
    const-string v1, "Bubbs.StackCtrl"

    .line 35
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mSpringToTouchOnNextMotionEvent:Z

    .line 40
    new-instance v1, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$StackPositionProperty;

    .line 42
    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$StackPositionProperty;-><init>(Lcom/android/wm/shell/bubbles/animation/StackAnimationController;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    .line 44
    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 47
    invoke-direct {v2, v1, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;)V

    .line 49
    iput-object p2, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 52
    new-instance p2, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda1;

    .line 54
    invoke-direct {p2, p0, v0, p5}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/bubbles/animation/StackAnimationController;Z[Ljava/lang/Runnable;)V

    .line 56
    invoke-virtual {v2, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 59
    iput p3, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->cancelStackPositionAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    .line 64
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPositionAnimations:Ljava/util/HashMap;

    .line 67
    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-virtual {v2, p4}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 72
    :cond_1
    :goto_0
    return-void
    .line 75
.end method

.method public final springStack(FFF)V
    .locals 15

    .line 1
    move/from16 v0, p3

    .line 2
    invoke-virtual/range {p0 .. p2}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->notifyFloatingCoordinatorStackAnimatingTo(FF)V

    .line 4
    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 7
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    .line 9
    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 11
    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 14
    move-result-object v1

    .line 17
    const v7, 0x3f59999a    # 0.85f

    .line 18
    invoke-virtual {v1, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 21
    move-result-object v3

    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v8, 0x0

    .line 26
    new-array v6, v8, [Ljava/lang/Runnable;

    .line 27
    move-object v1, p0

    .line 29
    move/from16 v5, p1

    .line 30
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->springFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/SpringForce;FF[Ljava/lang/Runnable;)V

    .line 32
    sget-object v10, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 35
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    .line 37
    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 39
    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 42
    move-result-object v0

    .line 45
    invoke-virtual {v0, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 46
    move-result-object v11

    .line 49
    const/4 v12, 0x0

    .line 50
    new-array v14, v8, [Ljava/lang/Runnable;

    .line 51
    move-object v9, p0

    .line 53
    move/from16 v13, p2

    .line 54
    invoke-virtual/range {v9 .. v14}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->springFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/SpringForce;FF[Ljava/lang/Runnable;)V

    .line 56
    return-void
    .line 59
.end method
