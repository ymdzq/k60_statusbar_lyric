.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

.field public final synthetic f$1:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/BubbleViewProvider;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda8;->f$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 4
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda8;->f$1:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 6
    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda8;->f$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 9
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda8;->f$1:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 11
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    .line 13
    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 15
    sget-boolean v3, Lcom/android/wm/shell/bubbles/BubbleStackView;->ENABLE_FLING_TO_DISMISS_BUBBLE:Z

    .line 17
    if-eqz v2, :cond_0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-interface {v2}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->setTaskViewVisibility()V

    .line 24
    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateExpandedBubble()V

    .line 27
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->requestUpdate()V

    .line 30
    const/4 v3, 0x4

    .line 33
    invoke-virtual {v0, v2, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    .line 34
    const/4 v3, 0x3

    .line 37
    invoke-virtual {v0, p0, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    .line 38
    iget-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;

    .line 41
    if-eqz v3, :cond_1

    .line 43
    if-eqz v2, :cond_1

    .line 45
    invoke-interface {v2}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 50
    invoke-interface {v3, v2, v1}, Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;->onBubbleExpandChanged(Ljava/lang/String;Z)V

    .line 51
    :cond_1
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;

    .line 54
    if-eqz v0, :cond_2

    .line 56
    if-eqz p0, :cond_2

    .line 58
    invoke-interface {p0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 63
    const/4 v1, 0x1

    .line 64
    invoke-interface {v0, p0, v1}, Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;->onBubbleExpandChanged(Ljava/lang/String;Z)V

    .line 65
    :cond_2
    return-void

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda8;->f$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 69
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda8;->f$1:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 71
    check-cast v2, Lcom/android/wm/shell/bubbles/Bubble;

    .line 73
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    .line 75
    check-cast p0, Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 77
    iput-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mRemovingLastBubbleWhileExpanded:Z

    .line 79
    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/Bubble;->cleanupExpandedView()V

    .line 81
    if-eqz p0, :cond_3

    .line 84
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 86
    invoke-virtual {v1, p0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->removeView(Landroid/view/View;)V

    .line 88
    :cond_3
    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/Bubble;->cleanupExpandedView()V

    .line 91
    const/4 p0, 0x0

    .line 94
    iput-object p0, v2, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 95
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateExpandedView()V

    .line 97
    return-void

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 102
.end method
