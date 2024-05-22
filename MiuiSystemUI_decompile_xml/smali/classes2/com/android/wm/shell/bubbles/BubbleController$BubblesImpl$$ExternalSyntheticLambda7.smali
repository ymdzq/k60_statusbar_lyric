.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

.field public final synthetic f$1:Lcom/android/wm/shell/bubbles/BubbleEntry;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/util/function/IntConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/BubbleEntry;Ljava/util/List;Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda7;->f$0:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda7;->f$1:Lcom/android/wm/shell/bubbles/BubbleEntry;

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda7;->f$2:Ljava/util/List;

    .line 9
    iput-object p4, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda7;->f$3:Ljava/util/function/IntConsumer;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda7;->f$0:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda7;->f$1:Lcom/android/wm/shell/bubbles/BubbleEntry;

    .line 4
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda7;->f$2:Ljava/util/List;

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda7;->f$3:Ljava/util/function/IntConsumer;

    .line 8
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleController;->isSummaryOfBubbles(Lcom/android/wm/shell/bubbles/BubbleEntry;)Z

    .line 12
    move-result v3

    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v5, 0x0

    .line 17
    iget-object v6, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 18
    if-eqz v3, :cond_3

    .line 20
    if-eqz v2, :cond_2

    .line 22
    move v3, v5

    .line 24
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 25
    move-result v7

    .line 28
    if-ge v3, v7, :cond_2

    .line 29
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v7

    .line 34
    check-cast v7, Lcom/android/wm/shell/bubbles/BubbleEntry;

    .line 35
    invoke-virtual {v7}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    .line 37
    move-result-object v8

    .line 40
    invoke-virtual {v6, v8}, Lcom/android/wm/shell/bubbles/BubbleData;->hasAnyBubbleWithKey(Ljava/lang/String;)Z

    .line 41
    move-result v8

    .line 44
    if-eqz v8, :cond_0

    .line 45
    invoke-virtual {v7}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    .line 47
    move-result-object v7

    .line 50
    invoke-virtual {v6, v7}, Lcom/android/wm/shell/bubbles/BubbleData;->getAnyBubbleWithkey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    .line 51
    move-result-object v7

    .line 54
    if-eqz v7, :cond_1

    .line 55
    invoke-virtual {v7, v4}, Lcom/android/wm/shell/bubbles/Bubble;->setSuppressNotification(Z)V

    .line 57
    invoke-virtual {v7, v5}, Lcom/android/wm/shell/bubbles/Bubble;->setShowDot(Z)V

    .line 60
    goto :goto_1

    .line 63
    :cond_0
    invoke-interface {p0, v3}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 64
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 67
    goto :goto_0

    .line 69
    :cond_2
    const/4 v2, -0x1

    .line 70
    invoke-interface {p0, v2}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 71
    iget-object p0, v1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 74
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 79
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 83
    iget-object v2, v6, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    .line 84
    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v1, v6, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    .line 89
    iput-boolean v4, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedSummaryChanged:Z

    .line 91
    iput-object p0, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedSummaryGroup:Ljava/lang/String;

    .line 93
    invoke-virtual {v6}, Lcom/android/wm/shell/bubbles/BubbleData;->dispatchPendingChanges()V

    .line 95
    goto :goto_2

    .line 98
    :cond_3
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    .line 99
    move-result-object p0

    .line 102
    invoke-virtual {v6, p0}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    .line 103
    move-result-object p0

    .line 106
    if-eqz p0, :cond_4

    .line 107
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->isBubble()Z

    .line 109
    move-result v2

    .line 112
    if-nez v2, :cond_5

    .line 113
    :cond_4
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    .line 115
    move-result-object p0

    .line 118
    invoke-virtual {v6, p0}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    .line 119
    move-result-object p0

    .line 122
    :cond_5
    if-nez p0, :cond_6

    .line 123
    move v4, v5

    .line 125
    goto :goto_3

    .line 126
    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/wm/shell/bubbles/Bubble;->setSuppressNotification(Z)V

    .line 127
    invoke-virtual {p0, v5}, Lcom/android/wm/shell/bubbles/Bubble;->setShowDot(Z)V

    .line 130
    :goto_2
    iget-object p0, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$4;

    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    new-instance v0, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda2;

    .line 138
    const-string v1, "BubbleController.handleDismissalInterception"

    .line 140
    invoke-direct {v0, p0, v1, v4}, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wmshell/BubblesManager$4;Ljava/lang/Object;I)V

    .line 142
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager$4;->val$sysuiMainExecutor:Ljava/util/concurrent/Executor;

    .line 145
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 147
    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 150
    move-result-object p0

    .line 153
    return-object p0
    .line 154
.end method
