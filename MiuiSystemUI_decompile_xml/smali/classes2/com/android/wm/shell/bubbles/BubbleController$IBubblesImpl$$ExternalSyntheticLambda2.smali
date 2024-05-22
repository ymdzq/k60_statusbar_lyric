.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;

    .line 5
    iput-boolean p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$$ExternalSyntheticLambda2;->f$1:Z

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;

    .line 2
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$$ExternalSyntheticLambda2;->f$1:Z

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    .line 6
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 8
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 10
    iput-boolean v1, v2, Lcom/android/wm/shell/bubbles/BubblePositioner;->mShowingInBubbleBar:Z

    .line 12
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 14
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 16
    invoke-virtual {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleData;->getAnyBubbleWithkey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    .line 18
    move-result-object v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    goto/16 :goto_1

    .line 24
    :cond_0
    iget-object v3, v2, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 26
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/bubbles/BubbleData;->hasBubbleInStackWithKey(Ljava/lang/String;)Z

    .line 28
    move-result v4

    .line 31
    const-string v5, "Bubbles"

    .line 32
    if-eqz v4, :cond_4

    .line 34
    const/4 p0, 0x1

    .line 36
    iput-boolean p0, v1, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    .line 37
    iget-object v4, v1, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 39
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/bubbles/Bubble;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v4

    .line 44
    if-eqz v4, :cond_1

    .line 45
    goto :goto_0

    .line 47
    :cond_1
    const-string v4, "Overflow"

    .line 48
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v3

    .line 53
    iget-object v4, v1, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    .line 54
    move-object v6, v4

    .line 56
    check-cast v6, Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 59
    move-result v6

    .line 62
    if-nez v6, :cond_2

    .line 63
    iget-object v6, v1, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    .line 65
    check-cast v6, Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 69
    move-result v6

    .line 72
    if-nez v6, :cond_2

    .line 73
    if-nez v3, :cond_2

    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    .line 77
    const-string v1, "Cannot select bubble which doesn\'t exist! ("

    .line 79
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, ") bubbles="

    .line 87
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object p0

    .line 98
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    goto :goto_0

    .line 102
    :cond_2
    if-nez v3, :cond_3

    .line 103
    iget-object v3, v1, Lcom/android/wm/shell/bubbles/BubbleData;->mTimeSource:Lcom/android/wm/shell/bubbles/BubbleData$TimeSource;

    .line 105
    check-cast v3, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda3;

    .line 107
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 112
    move-result-wide v3

    .line 115
    iput-wide v3, v2, Lcom/android/wm/shell/bubbles/Bubble;->mLastAccessed:J

    .line 116
    invoke-virtual {v2, p0}, Lcom/android/wm/shell/bubbles/Bubble;->setSuppressNotification(Z)V

    .line 118
    const/4 p0, 0x0

    .line 121
    invoke-virtual {v2, p0}, Lcom/android/wm/shell/bubbles/Bubble;->setShowDot(Z)V

    .line 122
    :cond_3
    iput-object v2, v1, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 125
    :goto_0
    iget-object p0, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    .line 127
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->showExpandedView(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    .line 129
    goto :goto_1

    .line 132
    :cond_4
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/bubbles/BubbleData;->hasOverflowBubbleWithKey(Ljava/lang/String;)Z

    .line 133
    move-result v0

    .line 136
    if-eqz v0, :cond_5

    .line 137
    goto :goto_1

    .line 139
    :cond_5
    const-string v0, "didn\'t add bubble from launcher: "

    .line 140
    invoke-static {v0, p0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_1
    return-void
    .line 145
.end method
