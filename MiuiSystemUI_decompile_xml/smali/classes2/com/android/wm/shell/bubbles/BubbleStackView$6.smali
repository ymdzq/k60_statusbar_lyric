.class public final Lcom/android/wm/shell/bubbles/BubbleStackView$6;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$6;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$6;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_1

    .line 8
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 9
    const/4 v2, 0x0

    .line 11
    iput-boolean v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsDraggingStack:Z

    .line 12
    iget-boolean v3, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 14
    if-nez v3, :cond_6

    .line 16
    iget-boolean v3, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsBubbleSwitchAnimating:Z

    .line 18
    if-eqz v3, :cond_0

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 23
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbleWithView(Landroid/view/View;)Lcom/android/wm/shell/bubbles/Bubble;

    .line 25
    move-result-object p1

    .line 28
    if-nez p1, :cond_1

    .line 29
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 32
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 34
    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 39
    iget-object v3, p1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 40
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v0

    .line 45
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 46
    iget-boolean v4, v3, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 48
    if-eqz v4, :cond_2

    .line 50
    iget-object v3, v3, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    .line 52
    iput-boolean v2, v3, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubbleDraggedOutEnough:Z

    .line 54
    iput-object v1, v3, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;

    .line 56
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    .line 58
    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 61
    iget-boolean v3, v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 63
    if-eqz v3, :cond_4

    .line 65
    if-nez v0, :cond_4

    .line 67
    iget-object p0, v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 69
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 71
    if-eq p1, v0, :cond_3

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    .line 75
    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setSelectedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    .line 79
    goto :goto_0

    .line 82
    :cond_4
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->maybeShowStackEdu()Z

    .line 83
    move-result p1

    .line 86
    if-nez p1, :cond_5

    .line 87
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 89
    iget-boolean v0, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowedUserEducationInTouchListenerActive:Z

    .line 91
    if-nez v0, :cond_5

    .line 93
    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 95
    iget-boolean v0, p1, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    .line 97
    xor-int/lit8 v0, v0, 0x1

    .line 99
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpanded(Z)V

    .line 101
    :cond_5
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 104
    iput-boolean v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowedUserEducationInTouchListenerActive:Z

    .line 106
    :cond_6
    :goto_0
    return-void

    .line 108
    :goto_1
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 109
    sget-boolean v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->ENABLE_FLING_TO_DISMISS_BUBBLE:Z

    .line 111
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->maybeShowStackEdu()Z

    .line 113
    move-result p1

    .line 116
    if-eqz p1, :cond_7

    .line 117
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 119
    iput-object v1, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleToExpandAfterFlyoutCollapse:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 121
    goto :goto_2

    .line 123
    :cond_7
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 124
    iget-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 126
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 128
    iput-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleToExpandAfterFlyoutCollapse:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 130
    :goto_2
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 132
    iget-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    .line 134
    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mHideFlyout:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    .line 136
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 138
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 141
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mHideFlyout:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    .line 143
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;->run()V

    .line 145
    return-void

    .line 148
    nop

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 150
.end method
