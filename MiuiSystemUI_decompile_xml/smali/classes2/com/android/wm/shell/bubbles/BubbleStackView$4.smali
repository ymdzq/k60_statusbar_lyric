.class public final Lcom/android/wm/shell/bubbles/BubbleStackView$4;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagnetListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$4;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$4;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onMove(F)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$4;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->isManageEduVisible()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_7

    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->isStackEduVisible()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    goto/16 :goto_1

    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowingManage:Z

    .line 18
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->showManageMenu(Z)V

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 26
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 27
    move-result p1

    .line 30
    neg-float p1, p1

    .line 31
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

    .line 32
    float-to-int v3, p1

    .line 34
    int-to-float v3, v3

    .line 35
    iget-object v4, v2, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 36
    if-eqz v4, :cond_5

    .line 38
    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getContentHeight()I

    .line 40
    move-result v4

    .line 43
    invoke-static {v3, v0}, Ljava/lang/Float;->compare(FF)I

    .line 44
    move-result v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    move v0, v1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    int-to-float v0, v4

    .line 52
    div-float/2addr v3, v0

    .line 53
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 54
    move-result v4

    .line 57
    div-float v4, v3, v4

    .line 58
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 60
    move-result v3

    .line 63
    const/high16 v5, 0x3f800000    # 1.0f

    .line 64
    sub-float/2addr v3, v5

    .line 66
    mul-float v6, v3, v3

    .line 67
    mul-float/2addr v6, v3

    .line 69
    add-float/2addr v6, v5

    .line 70
    mul-float/2addr v6, v4

    .line 71
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 72
    move-result v3

    .line 75
    cmpl-float v3, v3, v5

    .line 76
    if-ltz v3, :cond_3

    .line 78
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 80
    move-result v3

    .line 83
    div-float/2addr v6, v3

    .line 84
    :cond_3
    const v3, 0x3d8f5c29    # 0.07f

    .line 85
    mul-float/2addr v6, v3

    .line 88
    mul-float/2addr v6, v0

    .line 89
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 90
    move-result v0

    .line 93
    :goto_0
    iput v0, v2, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mDraggedAmount:I

    .line 94
    int-to-float v0, v0

    .line 96
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->setCollapsedAmount(F)V

    .line 97
    iget-boolean v0, v2, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mNotifiedAboutThreshold:Z

    .line 100
    if-nez v0, :cond_5

    .line 102
    iget-object v0, v2, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 104
    const/4 v3, 0x1

    .line 106
    if-eqz v0, :cond_4

    .line 107
    iget v4, v2, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mDraggedAmount:I

    .line 109
    int-to-float v4, v4

    .line 111
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getContentHeight()I

    .line 112
    move-result v0

    .line 115
    int-to-float v0, v0

    .line 116
    const v5, 0x3ca3d70a    # 0.02f

    .line 117
    mul-float/2addr v0, v5

    .line 120
    cmpl-float v0, v4, v0

    .line 121
    if-lez v0, :cond_4

    .line 123
    move v1, v3

    .line 125
    :cond_4
    if-eqz v1, :cond_5

    .line 126
    iput-boolean v3, v2, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mNotifiedAboutThreshold:Z

    .line 128
    iget-object v0, v2, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 130
    if-eqz v0, :cond_5

    .line 132
    const/16 v1, 0xb

    .line 134
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->performHapticFeedback(I)Z

    .line 136
    :cond_5
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScrimAnimating:Z

    .line 139
    if-nez v0, :cond_7

    .line 141
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScrim:Landroid/view/View;

    .line 143
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 145
    const v2, 0x3f19999a    # 0.6f

    .line 147
    if-eqz v1, :cond_6

    .line 150
    invoke-interface {v1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 152
    move-result-object v1

    .line 155
    if-eqz v1, :cond_6

    .line 156
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 158
    invoke-interface {p0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 160
    move-result-object p0

    .line 163
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getContentHeight()I

    .line 164
    move-result p0

    .line 167
    int-to-float p0, p0

    .line 168
    div-float/2addr p1, p0

    .line 169
    const p0, 0x3eccccce    # 0.40000004f

    .line 170
    mul-float/2addr p1, p0

    .line 173
    sub-float/2addr v2, p1

    .line 174
    const p0, 0x3e4ccccd    # 0.2f

    .line 175
    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    .line 178
    move-result v2

    .line 181
    :cond_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 182
    :cond_7
    :goto_1
    return-void
    .line 185
.end method

.method public final onReleasedInTarget()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$4;->$r8$classId:I

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$4;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_2

    .line 9
    :pswitch_0
    iget-object p0, v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    .line 10
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->getDraggedOutBubble()Landroid/view/View;

    .line 12
    move-result-object p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    goto :goto_1

    .line 18
    :cond_0
    iget-object p0, v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    .line 19
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->getDraggedOutBubble()Landroid/view/View;

    .line 21
    move-result-object v0

    .line 24
    iget-object v2, v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 25
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    .line 27
    move-result v2

    .line 30
    int-to-float v2, v2

    .line 31
    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    .line 32
    const/16 v4, 0x13

    .line 34
    invoke-direct {v3, v1, v4}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 36
    if-nez v0, :cond_1

    .line 39
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 42
    move-result-object v4

    .line 45
    const v5, 0x461c4000    # 10000.0f

    .line 46
    iput v5, v4, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mStiffness:F

    .line 49
    const/4 v5, 0x0

    .line 51
    new-array v6, v5, [Ljava/lang/Runnable;

    .line 52
    sget-object v7, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 54
    const/4 v8, 0x0

    .line 56
    invoke-virtual {v4, v7, v8, v6}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->property(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F[Ljava/lang/Runnable;)V

    .line 57
    new-array v6, v5, [Ljava/lang/Runnable;

    .line 60
    sget-object v7, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 62
    invoke-virtual {v4, v7, v8, v6}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->property(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F[Ljava/lang/Runnable;)V

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    .line 67
    move-result v0

    .line 70
    add-float/2addr v0, v2

    .line 71
    new-array v2, v5, [Ljava/lang/Runnable;

    .line 72
    invoke-virtual {v4, v0, v2}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(F[Ljava/lang/Runnable;)V

    .line 74
    filled-new-array {v3}, [Ljava/lang/Runnable;

    .line 77
    move-result-object v0

    .line 80
    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 81
    invoke-virtual {v4, v2, v8, v0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->property(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F[Ljava/lang/Runnable;)V

    .line 83
    new-array v0, v5, [Ljava/lang/Runnable;

    .line 86
    invoke-virtual {v4, v0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    .line 91
    :goto_0
    iget-object p0, v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 94
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/DismissView;->hide()V

    .line 96
    :goto_1
    return-void

    .line 99
    :goto_2
    iget-object v0, v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 100
    iget-object v2, v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 102
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    .line 104
    move-result v2

    .line 107
    int-to-float v2, v2

    .line 108
    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda12;

    .line 109
    const/4 v4, 0x1

    .line 111
    invoke-direct {v3, v4, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda12;-><init>(ILjava/lang/Object;)V

    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    new-instance p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda3;

    .line 118
    invoke-direct {p0, v0, v2}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/bubbles/animation/StackAnimationController;F)V

    .line 120
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationsForChildrenFromIndex(Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$ChildAnimationConfigurator;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$$ExternalSyntheticLambda0;

    .line 123
    move-result-object p0

    .line 126
    filled-new-array {v3}, [Ljava/lang/Runnable;

    .line 127
    move-result-object v0

    .line 130
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$$ExternalSyntheticLambda0;->startAll([Ljava/lang/Runnable;)V

    .line 131
    iget-object p0, v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 134
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/DismissView;->hide()V

    .line 136
    return-void

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 140
.end method

.method public final onStuckToTarget()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$4;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$4;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 7
    goto :goto_1

    .line 10
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    .line 11
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->getDraggedOutBubble()Landroid/view/View;

    .line 13
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    .line 20
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->getDraggedOutBubble()Landroid/view/View;

    .line 22
    move-result-object v0

    .line 25
    invoke-static {p0, v0, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->-$$Nest$manimateDismissBubble(Lcom/android/wm/shell/bubbles/BubbleStackView;Landroid/view/View;Z)V

    .line 26
    :goto_0
    return-void

    .line 29
    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 30
    invoke-static {p0, v0, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->-$$Nest$manimateDismissBubble(Lcom/android/wm/shell/bubbles/BubbleStackView;Landroid/view/View;Z)V

    .line 32
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 36
.end method

.method public final onUnstuckFromTarget(FFZ)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$4;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$4;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 8
    goto :goto_1

    .line 11
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    .line 12
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->getDraggedOutBubble()Landroid/view/View;

    .line 14
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    .line 21
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->getDraggedOutBubble()Landroid/view/View;

    .line 23
    move-result-object v0

    .line 26
    invoke-static {p0, v0, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->-$$Nest$manimateDismissBubble(Lcom/android/wm/shell/bubbles/BubbleStackView;Landroid/view/View;Z)V

    .line 27
    if-eqz p3, :cond_1

    .line 30
    iget-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    .line 32
    invoke-virtual {p3}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->getDraggedOutBubble()Landroid/view/View;

    .line 34
    move-result-object v0

    .line 37
    invoke-virtual {p3, v0, p1, p2}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->snapBubbleBack(Landroid/view/View;FF)V

    .line 38
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 41
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/DismissView;->hide()V

    .line 43
    goto :goto_0

    .line 46
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    .line 47
    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mSpringToTouchOnNextMotionEvent:Z

    .line 49
    :goto_0
    return-void

    .line 51
    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 52
    invoke-static {p0, v0, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->-$$Nest$manimateDismissBubble(Lcom/android/wm/shell/bubbles/BubbleStackView;Landroid/view/View;Z)V

    .line 54
    if-eqz p3, :cond_2

    .line 57
    iget-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 59
    iget-object v0, p3, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    .line 61
    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 63
    invoke-virtual {p3, v0, p1, p2}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->flingStackThenSpringToEdge(FFF)F

    .line 65
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 68
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/DismissView;->hide()V

    .line 70
    goto :goto_2

    .line 73
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 74
    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mSpringToTouchOnNextMotionEvent:Z

    .line 76
    :goto_2
    return-void

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 80
.end method

.method public final onUp(F)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$4;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

    .line 4
    const/4 v1, 0x0

    .line 6
    cmpg-float v2, p1, v1

    .line 7
    if-gez v2, :cond_0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 14
    move-result p1

    .line 17
    iput p1, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mSwipeUpVelocity:F

    .line 18
    iput v1, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mSwipeDownVelocity:F

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    iput v1, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mSwipeUpVelocity:F

    .line 23
    iput p1, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mSwipeDownVelocity:F

    .line 25
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

    .line 27
    iget v0, p1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mSwipeDownVelocity:F

    .line 29
    iget v1, p1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mMinFlingVelocity:I

    .line 31
    int-to-float v1, v1

    .line 33
    cmpl-float v0, v0, v1

    .line 34
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x1

    .line 37
    if-lez v0, :cond_1

    .line 38
    goto :goto_3

    .line 40
    :cond_1
    iget v0, p1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mSwipeUpVelocity:F

    .line 41
    cmpl-float v0, v0, v1

    .line 43
    if-lez v0, :cond_2

    .line 45
    goto :goto_2

    .line 47
    :cond_2
    iget-object v0, p1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 48
    if-eqz v0, :cond_3

    .line 50
    iget p1, p1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mDraggedAmount:I

    .line 52
    int-to-float p1, p1

    .line 54
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getContentHeight()I

    .line 55
    move-result v0

    .line 58
    int-to-float v0, v0

    .line 59
    const v1, 0x3ca3d70a    # 0.02f

    .line 60
    mul-float/2addr v0, v1

    .line 63
    cmpl-float p1, p1, v0

    .line 64
    if-lez p1, :cond_3

    .line 66
    move p1, v3

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    move p1, v2

    .line 70
    :goto_1
    if-eqz p1, :cond_4

    .line 71
    :goto_2
    move p1, v3

    .line 73
    goto :goto_4

    .line 74
    :cond_4
    :goto_3
    move p1, v2

    .line 75
    :goto_4
    if-eqz p1, :cond_5

    .line 76
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 78
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpanded(Z)V

    .line 80
    goto :goto_5

    .line 83
    :cond_5
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

    .line 84
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->animateBackToExpanded()V

    .line 86
    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScrimAnimating:Z

    .line 89
    if-nez p1, :cond_6

    .line 91
    const/4 p1, 0x0

    .line 93
    invoke-virtual {p0, v3, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->showScrim(ZLcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda8;)V

    .line 94
    :cond_6
    :goto_5
    return-void
    .line 97
.end method
