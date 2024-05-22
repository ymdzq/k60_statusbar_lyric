.class public final Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mAnimatedProperties:Ljava/util/Map;

.field public mAssociatedController:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

.field public final mCurrentPointOnPath:Landroid/graphics/PointF;

.field public final mCurrentPointOnPathXProperty:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$1;

.field public final mCurrentPointOnPathYProperty:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$1;

.field public mDampingRatio:F

.field public mDefaultStartVelocity:F

.field public final mEndActionsForProperty:Ljava/util/Map;

.field public final mInitialPropertyValues:Ljava/util/Map;

.field public mPathAnimator:Landroid/animation/ObjectAnimator;

.field public mPositionEndActions:[Ljava/lang/Runnable;

.field public final mPositionStartVelocities:Ljava/util/Map;

.field public mStartDelay:J

.field public mStiffness:F

.field public final mView:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;Landroid/view/View;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->this$0:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const p1, -0x800001

    .line 7
    iput p1, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mDefaultStartVelocity:F

    .line 10
    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mStartDelay:J

    .line 14
    const/high16 p1, -0x40800000    # -1.0f

    .line 16
    iput p1, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mDampingRatio:F

    .line 18
    iput p1, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mStiffness:F

    .line 20
    new-instance p1, Ljava/util/HashMap;

    .line 22
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mEndActionsForProperty:Ljava/util/Map;

    .line 27
    new-instance p1, Ljava/util/HashMap;

    .line 29
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPositionStartVelocities:Ljava/util/Map;

    .line 34
    new-instance p1, Ljava/util/HashMap;

    .line 36
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mAnimatedProperties:Ljava/util/Map;

    .line 41
    new-instance p1, Ljava/util/HashMap;

    .line 43
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mInitialPropertyValues:Ljava/util/Map;

    .line 48
    new-instance p1, Landroid/graphics/PointF;

    .line 50
    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mCurrentPointOnPath:Landroid/graphics/PointF;

    .line 55
    new-instance p1, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$1;

    .line 57
    const-string v0, "PathX"

    .line 59
    const/4 v1, 0x0

    .line 61
    invoke-direct {p1, p0, v0, v1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$1;-><init>(Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;Ljava/lang/String;I)V

    .line 62
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mCurrentPointOnPathXProperty:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$1;

    .line 65
    new-instance p1, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$1;

    .line 67
    const-string v0, "PathY"

    .line 69
    const/4 v1, 0x1

    .line 71
    invoke-direct {p1, p0, v0, v1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$1;-><init>(Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;Ljava/lang/String;I)V

    .line 72
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mCurrentPointOnPathYProperty:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$1;

    .line 75
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mView:Landroid/view/View;

    .line 77
    return-void
    .line 79
.end method


# virtual methods
.method public final varargs animateValueForChild(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;FFJFF[Ljava/lang/Runnable;)V
    .locals 12

    .line 1
    move-object v0, p2

    .line 2
    move-wide/from16 v1, p5

    .line 3
    move-object/from16 v3, p9

    .line 5
    if-eqz v0, :cond_4

    .line 7
    sget v4, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->$r8$clinit:I

    .line 9
    move-object v4, p0

    .line 11
    iget-object v4, v4, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->this$0:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 12
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {p1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->getTagIdForProperty(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)I

    .line 17
    move-result v5

    .line 20
    invoke-virtual {p2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 24
    move-object v10, v0

    .line 25
    check-cast v10, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 26
    if-nez v10, :cond_0

    .line 28
    return-void

    .line 30
    :cond_0
    if-eqz v3, :cond_1

    .line 31
    new-instance v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$4;

    .line 33
    invoke-direct {v0, v3}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$4;-><init>([Ljava/lang/Runnable;)V

    .line 35
    invoke-virtual {v10, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 38
    :cond_1
    iget-object v6, v10, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 41
    if-nez v6, :cond_2

    .line 43
    return-void

    .line 45
    :cond_2
    new-instance v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda3;

    .line 46
    move-object v5, v0

    .line 48
    move/from16 v7, p7

    .line 49
    move/from16 v8, p8

    .line 51
    move/from16 v9, p4

    .line 53
    move v11, p3

    .line 55
    invoke-direct/range {v5 .. v11}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda3;-><init>(Landroidx/dynamicanimation/animation/SpringForce;FFFLandroidx/dynamicanimation/animation/SpringAnimation;F)V

    .line 56
    const-wide/16 v5, 0x0

    .line 59
    cmp-long v3, v1, v5

    .line 61
    if-lez v3, :cond_3

    .line 63
    invoke-virtual {v4, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda3;->run()V

    .line 69
    :cond_4
    :goto_0
    return-void
    .line 72
.end method

.method public final clearAnimator()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mInitialPropertyValues:Ljava/util/Map;

    .line 2
    check-cast v0, Ljava/util/HashMap;

    .line 4
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mAnimatedProperties:Ljava/util/Map;

    .line 9
    check-cast v0, Ljava/util/HashMap;

    .line 11
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 13
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPositionStartVelocities:Ljava/util/Map;

    .line 16
    check-cast v0, Ljava/util/HashMap;

    .line 18
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 20
    const v0, -0x800001

    .line 23
    iput v0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mDefaultStartVelocity:F

    .line 26
    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mStartDelay:J

    .line 30
    const/high16 v0, -0x40800000    # -1.0f

    .line 32
    iput v0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mStiffness:F

    .line 34
    iput v0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mDampingRatio:F

    .line 36
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mEndActionsForProperty:Ljava/util/Map;

    .line 38
    check-cast v0, Ljava/util/HashMap;

    .line 40
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 42
    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    .line 46
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPositionEndActions:[Ljava/lang/Runnable;

    .line 48
    return-void
    .line 50
.end method

.method public final varargs property(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F[Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mAnimatedProperties:Ljava/util/Map;

    .line 2
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    move-result-object p2

    .line 7
    check-cast v0, Ljava/util/HashMap;

    .line 8
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mEndActionsForProperty:Ljava/util/Map;

    .line 13
    check-cast p0, Ljava/util/HashMap;

    .line 15
    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    return-void
    .line 20
.end method

.method public final varargs start([Ljava/lang/Runnable;)V
    .locals 18

    .line 1
    move-object/from16 v10, p0

    .line 2
    move-object/from16 v0, p1

    .line 4
    iget-object v1, v10, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mAssociatedController:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    .line 6
    iget-object v11, v10, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->this$0:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 8
    iget-object v2, v11, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    .line 10
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    if-ne v2, v1, :cond_0

    .line 14
    move v1, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v1, v4

    .line 18
    :goto_0
    if-nez v1, :cond_1

    .line 19
    const-string v0, "Bubbs.PAL"

    .line 21
    const-string v1, "Only the active animation controller is allowed to start animations. Use PhysicsAnimationLayout#setActiveController to set the active animation controller."

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-void

    .line 28
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    .line 29
    iget-object v12, v10, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mAnimatedProperties:Ljava/util/Map;

    .line 31
    move-object v2, v12

    .line 33
    check-cast v2, Ljava/util/HashMap;

    .line 34
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 36
    move-result-object v2

    .line 39
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 40
    iget-object v2, v10, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    .line 43
    sget-object v13, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 45
    sget-object v14, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 47
    if-eqz v2, :cond_2

    .line 49
    invoke-virtual {v1, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {v1, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_2
    array-length v2, v0

    .line 57
    if-lez v2, :cond_3

    .line 58
    new-array v2, v4, [Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 60
    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 62
    move-result-object v2

    .line 65
    check-cast v2, [Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 66
    iget-object v5, v10, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mAssociatedController:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    .line 68
    new-instance v6, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda0;

    .line 70
    invoke-direct {v6, v4, v0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 72
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    new-instance v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda1;

    .line 78
    invoke-direct {v0, v5, v2, v3, v6}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 80
    array-length v3, v2

    .line 83
    move v6, v4

    .line 84
    :goto_1
    if-ge v6, v3, :cond_3

    .line 85
    aget-object v7, v2, v6

    .line 87
    iget-object v8, v5, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 89
    iget-object v8, v8, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->mEndActionForProperty:Ljava/util/HashMap;

    .line 91
    invoke-virtual {v8, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    add-int/lit8 v6, v6, 0x1

    .line 96
    goto :goto_1

    .line 98
    :cond_3
    iget-object v0, v10, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPositionEndActions:[Ljava/lang/Runnable;

    .line 99
    iget-object v15, v10, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mEndActionsForProperty:Ljava/util/Map;

    .line 101
    iget-object v9, v10, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mView:Landroid/view/View;

    .line 103
    if-eqz v0, :cond_4

    .line 105
    invoke-static {v14, v9}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->getSpringAnimationFromView(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 107
    move-result-object v0

    .line 110
    invoke-static {v13, v9}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->getSpringAnimationFromView(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 111
    move-result-object v2

    .line 114
    new-instance v3, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda1;

    .line 115
    invoke-direct {v3, v10, v0, v4, v2}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 117
    filled-new-array {v3}, [Ljava/lang/Runnable;

    .line 120
    move-result-object v0

    .line 123
    move-object v2, v15

    .line 124
    check-cast v2, Ljava/util/HashMap;

    .line 125
    invoke-virtual {v2, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    filled-new-array {v3}, [Ljava/lang/Runnable;

    .line 130
    move-result-object v0

    .line 133
    invoke-virtual {v2, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_4
    iget-object v0, v10, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    .line 137
    if-eqz v0, :cond_8

    .line 139
    iget-object v0, v11, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    .line 141
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->getSpringForce()Landroidx/dynamicanimation/animation/SpringForce;

    .line 143
    move-result-object v0

    .line 146
    iget-object v2, v11, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    .line 147
    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->getSpringForce()Landroidx/dynamicanimation/animation/SpringForce;

    .line 149
    move-result-object v2

    .line 152
    iget-wide v3, v10, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mStartDelay:J

    .line 153
    const-wide/16 v5, 0x0

    .line 155
    cmp-long v5, v3, v5

    .line 157
    if-lez v5, :cond_5

    .line 159
    iget-object v5, v10, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    .line 161
    invoke-virtual {v5, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 163
    :cond_5
    new-instance v3, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda0;

    .line 166
    const/4 v4, 0x2

    .line 168
    invoke-direct {v3, v4, v10}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 169
    iget-object v4, v10, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    .line 172
    new-instance v5, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda2;

    .line 174
    invoke-direct {v5, v3}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda0;)V

    .line 176
    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 179
    iget-object v4, v10, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    .line 182
    new-instance v5, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;

    .line 184
    invoke-direct {v5, v10, v0, v2, v3}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$5;-><init>(Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$$ExternalSyntheticLambda0;)V

    .line 186
    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 189
    const v0, 0x7f0a0963    # @id/target_animator_tag

    .line 192
    if-nez v9, :cond_6

    .line 195
    const/4 v2, 0x0

    .line 197
    goto :goto_2

    .line 198
    :cond_6
    invoke-virtual {v9, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 199
    move-result-object v2

    .line 202
    check-cast v2, Landroid/animation/ObjectAnimator;

    .line 203
    :goto_2
    if-eqz v2, :cond_7

    .line 205
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 207
    :cond_7
    iget-object v2, v10, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    .line 210
    invoke-virtual {v9, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 212
    iget-object v0, v10, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    .line 215
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 217
    :cond_8
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 220
    move-result-object v16

    .line 223
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    move-result v0

    .line 227
    if-eqz v0, :cond_e

    .line 228
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    move-result-object v0

    .line 233
    move-object v1, v0

    .line 234
    check-cast v1, Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 235
    iget-object v0, v10, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    .line 237
    if-eqz v0, :cond_a

    .line 239
    invoke-virtual {v1, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 241
    move-result v0

    .line 244
    if-nez v0, :cond_9

    .line 245
    invoke-virtual {v1, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 247
    move-result v0

    .line 250
    if-eqz v0, :cond_a

    .line 251
    :cond_9
    return-void

    .line 253
    :cond_a
    iget-object v0, v10, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mInitialPropertyValues:Ljava/util/Map;

    .line 254
    check-cast v0, Ljava/util/HashMap;

    .line 256
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 258
    move-result v2

    .line 261
    if-eqz v2, :cond_b

    .line 262
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    move-result-object v0

    .line 267
    check-cast v0, Ljava/lang/Float;

    .line 268
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 270
    move-result v0

    .line 273
    invoke-virtual {v1, v9, v0}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->setValue(Ljava/lang/Object;F)V

    .line 274
    :cond_b
    iget-object v0, v11, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->mController:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;

    .line 277
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->getSpringForce()Landroidx/dynamicanimation/animation/SpringForce;

    .line 279
    move-result-object v0

    .line 282
    iget-object v2, v10, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mView:Landroid/view/View;

    .line 283
    move-object v3, v12

    .line 285
    check-cast v3, Ljava/util/HashMap;

    .line 286
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    move-result-object v3

    .line 291
    check-cast v3, Ljava/lang/Float;

    .line 292
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 294
    move-result v3

    .line 297
    iget-object v4, v10, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPositionStartVelocities:Ljava/util/Map;

    .line 298
    iget v5, v10, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mDefaultStartVelocity:F

    .line 300
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 302
    move-result-object v5

    .line 305
    check-cast v4, Ljava/util/HashMap;

    .line 306
    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    move-result-object v4

    .line 311
    check-cast v4, Ljava/lang/Float;

    .line 312
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 314
    move-result v4

    .line 317
    iget-wide v5, v10, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mStartDelay:J

    .line 318
    iget v7, v10, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mStiffness:F

    .line 320
    const/4 v8, 0x0

    .line 322
    cmpl-float v17, v7, v8

    .line 323
    if-ltz v17, :cond_c

    .line 325
    goto :goto_4

    .line 327
    :cond_c
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringForce;->getStiffness()F

    .line 328
    move-result v7

    .line 331
    :goto_4
    move-object/from16 v17, v9

    .line 332
    iget v9, v10, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mDampingRatio:F

    .line 334
    cmpl-float v8, v9, v8

    .line 336
    if-ltz v8, :cond_d

    .line 338
    move v8, v9

    .line 340
    goto :goto_5

    .line 341
    :cond_d
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringForce;->getDampingRatio()F

    .line 342
    move-result v0

    .line 345
    move v8, v0

    .line 346
    :goto_5
    move-object v0, v15

    .line 347
    check-cast v0, Ljava/util/HashMap;

    .line 348
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    move-result-object v0

    .line 353
    move-object v9, v0

    .line 354
    check-cast v9, [Ljava/lang/Runnable;

    .line 355
    move-object/from16 v0, p0

    .line 357
    invoke-virtual/range {v0 .. v9}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->animateValueForChild(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;FFJFF[Ljava/lang/Runnable;)V

    .line 359
    move-object/from16 v9, v17

    .line 362
    goto/16 :goto_3

    .line 364
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->clearAnimator()V

    .line 366
    return-void
    .line 369
.end method

.method public final varargs translationY(F[Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    .line 3
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 5
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->property(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F[Ljava/lang/Runnable;)V

    .line 7
    return-void
    .line 10
.end method

.method public final updateValueForChild(Landroidx/dynamicanimation/animation/DynamicAnimation$1;Landroid/view/View;F)V
    .locals 1

    .line 1
    if-eqz p2, :cond_2

    .line 2
    sget v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->$r8$clinit:I

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->this$0:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {p1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->getTagIdForProperty(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)I

    .line 11
    move-result p0

    .line 14
    invoke-virtual {p2, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 18
    check-cast p0, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 19
    if-nez p0, :cond_0

    .line 21
    return-void

    .line 23
    :cond_0
    iget-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 24
    if-nez p1, :cond_1

    .line 26
    return-void

    .line 28
    :cond_1
    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 29
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 32
    :cond_2
    return-void
    .line 35
.end method
