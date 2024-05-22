.class public final synthetic Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask;

.field public final synthetic f$1:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask$BubbleViewInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask;Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask$BubbleViewInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask$BubbleViewInfo;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask$BubbleViewInfo;

    .line 4
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask;->mBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 6
    iget-object v2, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->mIconView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 8
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v2, :cond_0

    .line 12
    move v2, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v2, v4

    .line 16
    :goto_0
    if-nez v2, :cond_1

    .line 17
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask$BubbleViewInfo;->imageView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 19
    iput-object v2, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->mIconView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 21
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask$BubbleViewInfo;->bubbleMessageView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;

    .line 23
    iput-object v2, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->mMessageView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;

    .line 25
    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask$BubbleViewInfo;->flyoutMessage:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;

    .line 27
    iput-object v2, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->mFlyoutMessage:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;

    .line 29
    iget-object v2, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->mIconView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 31
    if-eqz v2, :cond_2

    .line 33
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask$BubbleViewInfo;->appIconBitmap:Landroid/graphics/Bitmap;

    .line 35
    invoke-virtual {v2, v1, p0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->setRenderedBubble(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;Landroid/graphics/Bitmap;)V

    .line 37
    :cond_2
    iget-object p0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask;->mCallback:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$$ExternalSyntheticLambda0;

    .line 40
    if-eqz p0, :cond_6

    .line 42
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask;->mContext:Ljava/lang/ref/WeakReference;

    .line 44
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 49
    check-cast v1, Landroid/content/Context;

    .line 50
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask;->mBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 52
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 59
    iget v1, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->key:I

    .line 61
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;->getBubbleInStackWithKey(I)Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 63
    move-result-object v1

    .line 66
    if-nez v1, :cond_4

    .line 67
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 69
    iget v1, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->key:I

    .line 71
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;->mController:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;

    .line 73
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mPinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

    .line 75
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->hasFreeFormTaskInfo(I)Z

    .line 77
    move-result v1

    .line 80
    if-nez v1, :cond_3

    .line 81
    move v3, v4

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;->mBubbles:Ljava/util/List;

    .line 85
    check-cast v1, Ljava/util/ArrayList;

    .line 87
    invoke-virtual {v1, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 89
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;->mStateChange:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData$Update;

    .line 92
    iput-object v0, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData$Update;->addedBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 94
    :goto_1
    if-nez v3, :cond_5

    .line 96
    goto :goto_2

    .line 98
    :cond_4
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;->mStateChange:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData$Update;

    .line 99
    iput-object v0, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData$Update;->updatedBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 101
    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;->dispatchPendingChanges()V

    .line 103
    :cond_6
    :goto_2
    return-void
    .line 106
.end method
