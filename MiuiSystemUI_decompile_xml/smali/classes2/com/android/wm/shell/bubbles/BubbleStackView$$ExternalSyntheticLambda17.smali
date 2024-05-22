.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubbleStackView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda17;->f$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda17;->f$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 2
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 4
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->update()V

    .line 6
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->onDisplaySizeChanged()V

    .line 9
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    .line 12
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->updateResources()V

    .line 14
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 17
    iget-object p2, p1, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 19
    if-eqz p2, :cond_0

    .line 21
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 23
    move-result-object p2

    .line 26
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object p2

    .line 30
    const p3, 0x7f070166    # @dimen/bubble_padding_top '16.0dp'

    .line 31
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 34
    move-result p2

    .line 37
    iput p2, p1, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mBubblePaddingTop:I

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    .line 40
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->updateResources()V

    .line 42
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->isStackEduVisible()Z

    .line 45
    move-result p1

    .line 48
    if-nez p1, :cond_2

    .line 49
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mRelativeStackPositionBeforeRotation:Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;

    .line 51
    if-eqz p1, :cond_2

    .line 53
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 55
    iget-object p3, p2, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 57
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->getBubbleCount()I

    .line 59
    move-result p4

    .line 62
    invoke-virtual {p3, p4}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAllowableStackPositionRegion(I)Landroid/graphics/RectF;

    .line 63
    move-result-object p3

    .line 66
    new-instance p4, Landroid/graphics/PointF;

    .line 67
    iget-boolean p5, p1, Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;->mOnLeft:Z

    .line 69
    if-eqz p5, :cond_1

    .line 71
    iget p5, p3, Landroid/graphics/RectF;->left:F

    .line 73
    goto :goto_0

    .line 75
    :cond_1
    iget p5, p3, Landroid/graphics/RectF;->right:F

    .line 76
    :goto_0
    iget p6, p3, Landroid/graphics/RectF;->top:F

    .line 78
    iget p1, p1, Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;->mVerticalOffsetPercent:F

    .line 80
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    .line 82
    move-result p3

    .line 85
    mul-float/2addr p3, p1

    .line 86
    add-float/2addr p3, p6

    .line 87
    invoke-direct {p4, p5, p3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 88
    invoke-virtual {p2, p4}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->setStackPosition(Landroid/graphics/PointF;)V

    .line 91
    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mRelativeStackPositionBeforeRotation:Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;

    .line 95
    :cond_2
    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 97
    if-eqz p1, :cond_4

    .line 99
    const/4 p1, 0x1

    .line 101
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 102
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->hideFlyoutImmediate()V

    .line 104
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateExpandedBubble()V

    .line 107
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateExpandedView()V

    .line 110
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateOverflowVisibility()V

    .line 113
    const/4 p1, 0x0

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updatePointerPosition(Z)V

    .line 117
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    .line 120
    new-instance p2, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    .line 122
    const/16 p3, 0x10

    .line 124
    invoke-direct {p2, p0, p3}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 126
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->expandFromStack(Ljava/lang/Runnable;)V

    .line 129
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 132
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 134
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleIndex(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)I

    .line 136
    move-result p2

    .line 139
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getState()Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;

    .line 140
    move-result-object p3

    .line 143
    invoke-virtual {p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedBubbleXY(ILcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;)Landroid/graphics/PointF;

    .line 144
    move-result-object p1

    .line 147
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 148
    iget-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 150
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    .line 152
    move-result p4

    .line 155
    if-eqz p4, :cond_3

    .line 156
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 158
    goto :goto_1

    .line 160
    :cond_3
    iget p1, p1, Landroid/graphics/PointF;->x:F

    .line 161
    :goto_1
    invoke-virtual {p2, p3, p1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewY(Lcom/android/wm/shell/bubbles/BubbleViewProvider;F)F

    .line 163
    move-result p1

    .line 166
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    .line 167
    const/4 p3, 0x0

    .line 169
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 170
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    .line 173
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 175
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    .line 178
    const/high16 p2, 0x3f800000    # 1.0f

    .line 180
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 182
    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mOrientationChangedListener:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda17;

    .line 185
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 187
    return-void
    .line 190
.end method
