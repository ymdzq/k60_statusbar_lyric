.class public final Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$1:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

.field public final synthetic val$defaultSpringForceX:Landroidx/dynamicanimation/animation/SpringForce;

.field public final synthetic val$defaultSpringForceY:Landroidx/dynamicanimation/animation/SpringForce;

.field public final synthetic val$updatePhysicsAnims:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->this$1:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->val$defaultSpringForceX:Landroidx/dynamicanimation/animation/SpringForce;

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->val$defaultSpringForceY:Landroidx/dynamicanimation/animation/SpringForce;

    .line 6
    iput-object p4, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->val$updatePhysicsAnims:Ljava/lang/Runnable;

    .line 8
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->val$updatePhysicsAnims:Ljava/lang/Runnable;

    .line 2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 4
    return-void
    .line 7
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->this$1:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 4
    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 6
    iget-object v3, v1, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mView:Landroid/view/View;

    .line 8
    iget-object v4, v1, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mCurrentPointOnPath:Landroid/graphics/PointF;

    .line 10
    iget v4, v4, Landroid/graphics/PointF;->x:F

    .line 12
    iget v5, v1, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mDefaultStartVelocity:F

    .line 14
    const-wide/16 v6, 0x0

    .line 16
    iget v8, v1, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mStiffness:F

    .line 18
    const/4 v11, 0x0

    .line 20
    cmpl-float v9, v8, v11

    .line 21
    if-ltz v9, :cond_0

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    iget-object v8, v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->val$defaultSpringForceX:Landroidx/dynamicanimation/animation/SpringForce;

    .line 26
    invoke-virtual {v8}, Landroidx/dynamicanimation/animation/SpringForce;->getStiffness()F

    .line 28
    move-result v8

    .line 31
    :goto_0
    iget-object v9, v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->this$1:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 32
    iget v9, v9, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mDampingRatio:F

    .line 34
    cmpl-float v10, v9, v11

    .line 36
    if-ltz v10, :cond_1

    .line 38
    goto :goto_1

    .line 40
    :cond_1
    iget-object v9, v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->val$defaultSpringForceX:Landroidx/dynamicanimation/animation/SpringForce;

    .line 41
    invoke-virtual {v9}, Landroidx/dynamicanimation/animation/SpringForce;->getDampingRatio()F

    .line 43
    move-result v9

    .line 46
    :goto_1
    const/4 v12, 0x0

    .line 47
    new-array v10, v12, [Ljava/lang/Runnable;

    .line 48
    invoke-virtual/range {v1 .. v10}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->animateValueForChild(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;FFJFF[Ljava/lang/Runnable;)V

    .line 50
    iget-object v13, v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->this$1:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 53
    sget-object v14, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 55
    iget-object v15, v13, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mView:Landroid/view/View;

    .line 57
    iget-object v1, v13, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mCurrentPointOnPath:Landroid/graphics/PointF;

    .line 59
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 61
    iget v2, v13, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mDefaultStartVelocity:F

    .line 63
    const-wide/16 v18, 0x0

    .line 65
    iget v3, v13, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mStiffness:F

    .line 67
    cmpl-float v4, v3, v11

    .line 69
    if-ltz v4, :cond_2

    .line 71
    goto :goto_2

    .line 73
    :cond_2
    iget-object v3, v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->val$defaultSpringForceY:Landroidx/dynamicanimation/animation/SpringForce;

    .line 74
    invoke-virtual {v3}, Landroidx/dynamicanimation/animation/SpringForce;->getStiffness()F

    .line 76
    move-result v3

    .line 79
    :goto_2
    move/from16 v20, v3

    .line 80
    iget-object v3, v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->this$1:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 82
    iget v3, v3, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mDampingRatio:F

    .line 84
    cmpl-float v4, v3, v11

    .line 86
    if-ltz v4, :cond_3

    .line 88
    move/from16 v21, v3

    .line 90
    goto :goto_3

    .line 92
    :cond_3
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;->val$defaultSpringForceY:Landroidx/dynamicanimation/animation/SpringForce;

    .line 93
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringForce;->getDampingRatio()F

    .line 95
    move-result v0

    .line 98
    move/from16 v21, v0

    .line 99
    :goto_3
    new-array v0, v12, [Ljava/lang/Runnable;

    .line 101
    move/from16 v16, v1

    .line 103
    move/from16 v17, v2

    .line 105
    move-object/from16 v22, v0

    .line 107
    invoke-virtual/range {v13 .. v22}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->animateValueForChild(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;FFJFF[Ljava/lang/Runnable;)V

    .line 109
    return-void
    .line 112
.end method
