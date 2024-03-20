.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubbleController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda15;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda15;->f$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .line 1
    iget p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda15;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda15;->f$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 8
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWindowInsets:Landroid/view/WindowInsets;

    .line 10
    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 15
    if-nez p1, :cond_1

    .line 16
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWindowInsets:Landroid/view/WindowInsets;

    .line 18
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 20
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->update()V

    .line 22
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    .line 25
    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mIsExpanded:Z

    .line 27
    if-eqz p1, :cond_1

    .line 29
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    .line 31
    if-eqz p1, :cond_1

    .line 33
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 35
    iget v0, p1, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewPadding:I

    .line 37
    iget v1, p1, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewLargeScreenWidth:I

    .line 39
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewHeightForBubbleBar()I

    .line 41
    move-result p1

    .line 44
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    .line 45
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 47
    move-result-object v2

    .line 50
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 51
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 53
    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 55
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    .line 57
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    .line 62
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 64
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    .line 66
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 68
    move-result v2

    .line 71
    sub-int/2addr v2, v1

    .line 72
    sub-int/2addr v2, v0

    .line 73
    int-to-float v1, v2

    .line 74
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setX(F)V

    .line 75
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    .line 78
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 80
    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubblePositioner;->mInsets:Landroid/graphics/Insets;

    .line 82
    iget v1, v1, Landroid/graphics/Insets;->top:I

    .line 84
    add-int/2addr v1, v0

    .line 86
    int-to-float v0, v1

    .line 87
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setY(F)V

    .line 88
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    .line 91
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 93
    if-nez p0, :cond_0

    .line 95
    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskView;->onLocationChanged()V

    .line 98
    :cond_1
    :goto_0
    return-object p2

    .line 101
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda15;->f$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 102
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWindowInsets:Landroid/view/WindowInsets;

    .line 104
    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    .line 106
    move-result p1

    .line 109
    if-nez p1, :cond_2

    .line 110
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWindowInsets:Landroid/view/WindowInsets;

    .line 112
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 114
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->update()V

    .line 116
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 119
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->onDisplaySizeChanged()V

    .line 121
    :cond_2
    return-object p2

    .line 124
    nop

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 126
.end method
