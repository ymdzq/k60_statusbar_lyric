.class public final Lcom/android/wm/shell/bubbles/BubbleData;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final BUBBLES_BY_SORT_KEY_DESCENDING:Ljava/util/Comparator;


# instance fields
.field public mBubbleMetadataFlagListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;

.field public final mBubbles:Ljava/util/List;

.field public mCancelledListener:Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;

.field public mCurrentUserId:I

.field public mExpanded:Z

.field public mListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

.field public final mLogger:Lcom/android/wm/shell/bubbles/BubbleLogger;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public mMaxBubbles:I

.field public mMaxOverflowBubbles:I

.field public mNeedsTrimming:Z

.field public final mOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

.field public final mOverflowBubbles:Ljava/util/List;

.field public final mPendingBubbles:Ljava/util/HashMap;

.field public final mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field public mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

.field public mShowingOverflow:Z

.field public mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

.field public final mSuppressedBubbles:Landroid/util/ArrayMap;

.field public final mSuppressedGroupKeys:Ljava/util/HashMap;

.field public mTimeSource:Lcom/android/wm/shell/bubbles/BubbleData$TimeSource;

.field public final mVisibleLocusIds:Landroid/util/ArraySet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda1;

    .line 2
    invoke-direct {v0}, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda1;-><init>()V

    .line 4
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 7
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    .line 11
    move-result-object v0

    .line 14
    sput-object v0, Lcom/android/wm/shell/bubbles/BubbleData;->BUBBLES_BY_SORT_KEY_DESCENDING:Ljava/util/Comparator;

    .line 15
    return-void
    .line 17
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleLogger;Lcom/android/wm/shell/bubbles/BubblePositioner;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedBubbles:Landroid/util/ArrayMap;

    .line 10
    new-instance v0, Landroid/util/ArraySet;

    .line 12
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mVisibleLocusIds:Landroid/util/ArraySet;

    .line 17
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda3;

    .line 19
    invoke-direct {v0}, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda3;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mTimeSource:Lcom/android/wm/shell/bubbles/BubbleData$TimeSource;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    .line 26
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    .line 31
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mLogger:Lcom/android/wm/shell/bubbles/BubbleLogger;

    .line 33
    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 35
    iput-object p4, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 37
    new-instance p2, Lcom/android/wm/shell/bubbles/BubbleOverflow;

    .line 39
    invoke-direct {p2, p1, p3}, Lcom/android/wm/shell/bubbles/BubbleOverflow;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubblePositioner;)V

    .line 41
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    .line 44
    new-instance p2, Ljava/util/ArrayList;

    .line 46
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    .line 51
    new-instance p4, Ljava/util/ArrayList;

    .line 53
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 55
    iput-object p4, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    .line 60
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    .line 65
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;

    .line 67
    invoke-direct {v0, p2, p4}, Lcom/android/wm/shell/bubbles/BubbleData$Update;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 69
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    .line 72
    iget p2, p3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mMaxBubbles:I

    .line 74
    iput p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mMaxBubbles:I

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 78
    move-result-object p1

    .line 81
    const p2, 0x7f0b0012    # @integer/bubbles_max_overflow '16'

    .line 82
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 85
    move-result p1

    .line 88
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mMaxOverflowBubbles:I

    .line 89
    return-void
    .line 91
.end method

.method public static performActionOnBubblesMatching(Ljava/util/List;Ljava/util/function/Predicate;Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda6;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 21
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 23
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object p0

    .line 36
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result p1

    .line 40
    if-eqz p1, :cond_2

    .line 41
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object p1

    .line 46
    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 47
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda6;->accept(Ljava/lang/Object;)V

    .line 49
    goto :goto_1

    .line 52
    :cond_2
    return-void
    .line 53
.end method


# virtual methods
.method public final dismissAll(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedBubbles:Landroid/util/ArrayMap;

    .line 10
    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 14
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    return-void

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpandedInternal(Z)V

    .line 22
    const/4 v3, 0x0

    .line 25
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    .line 26
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 29
    move-result v3

    .line 32
    if-nez v3, :cond_1

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 38
    check-cast v3, Lcom/android/wm/shell/bubbles/Bubble;

    .line 39
    iget-object v3, v3, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 41
    invoke-virtual {p0, p1, v3}, Lcom/android/wm/shell/bubbles/BubbleData;->doRemove(ILjava/lang/String;)V

    .line 43
    goto :goto_0

    .line 46
    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 47
    move-result v0

    .line 50
    if-nez v0, :cond_2

    .line 51
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 56
    check-cast v0, Lcom/android/wm/shell/bubbles/Bubble;

    .line 57
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 59
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->doRemove(ILjava/lang/String;)V

    .line 61
    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->dispatchPendingChanges()V

    .line 65
    return-void
    .line 68
.end method

.method public final dismissBubbleWithKey(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->doRemove(ILjava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->dispatchPendingChanges()V

    .line 5
    return-void
    .line 8
.end method

.method public final dispatchPendingChanges()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

    .line 2
    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    .line 6
    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expandedChanged:Z

    .line 8
    if-nez v1, :cond_1

    .line 10
    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectionChanged:Z

    .line 12
    if-nez v1, :cond_1

    .line 14
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->addedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 16
    if-nez v1, :cond_1

    .line 18
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->updatedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 20
    if-nez v1, :cond_1

    .line 22
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->removedBubbles:Ljava/util/List;

    .line 24
    check-cast v1, Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->addedOverflowBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 34
    if-nez v1, :cond_1

    .line 36
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->removedOverflowBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 38
    if-nez v1, :cond_1

    .line 40
    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    .line 42
    if-nez v1, :cond_1

    .line 44
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 46
    if-nez v1, :cond_1

    .line 48
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->unsuppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 50
    if-nez v1, :cond_1

    .line 52
    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedSummaryChanged:Z

    .line 54
    if-nez v1, :cond_1

    .line 56
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedSummaryGroup:Ljava/lang/String;

    .line 58
    if-eqz v0, :cond_0

    .line 60
    goto :goto_0

    .line 62
    :cond_0
    const/4 v0, 0x0

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 65
    :goto_1
    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

    .line 68
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    .line 70
    invoke-interface {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleData$Listener;->applyUpdate(Lcom/android/wm/shell/bubbles/BubbleData$Update;)V

    .line 72
    :cond_2
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;

    .line 75
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    .line 77
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    .line 79
    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/bubbles/BubbleData$Update;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 81
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    .line 84
    return-void
    .line 86
.end method

.method public final doRemove(ILjava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x4

    .line 15
    const/4 v3, 0x7

    .line 16
    const/16 v4, 0x9

    .line 17
    const/4 v5, 0x5

    .line 19
    if-eq p1, v5, :cond_2

    .line 20
    if-eq p1, v4, :cond_2

    .line 22
    if-eq p1, v3, :cond_2

    .line 24
    if-eq p1, v2, :cond_2

    .line 26
    const/16 v6, 0xc

    .line 28
    if-eq p1, v6, :cond_2

    .line 30
    const/16 v6, 0xd

    .line 32
    if-eq p1, v6, :cond_2

    .line 34
    const/16 v6, 0x8

    .line 36
    if-eq p1, v6, :cond_2

    .line 38
    const/16 v6, 0x10

    .line 40
    if-ne p1, v6, :cond_1

    .line 42
    goto :goto_0

    .line 44
    :cond_1
    move v6, v0

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    :goto_0
    move v6, v1

    .line 47
    :goto_1
    move v7, v0

    .line 48
    :goto_2
    iget-object v8, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    .line 49
    check-cast v8, Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 53
    move-result v9

    .line 56
    const/4 v10, -0x1

    .line 57
    if-ge v7, v9, :cond_4

    .line 58
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v9

    .line 63
    check-cast v9, Lcom/android/wm/shell/bubbles/Bubble;

    .line 64
    iget-object v9, v9, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 66
    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v9

    .line 71
    if-eqz v9, :cond_3

    .line 72
    goto :goto_3

    .line 74
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 75
    goto :goto_2

    .line 77
    :cond_4
    move v7, v10

    .line 78
    :goto_3
    if-ne v7, v10, :cond_e

    .line 79
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->hasOverflowBubbleWithKey(Ljava/lang/String;)Z

    .line 81
    move-result v7

    .line 84
    if-eqz v7, :cond_b

    .line 85
    if-eqz v6, :cond_b

    .line 87
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    .line 89
    move-result-object v7

    .line 92
    if-eqz v7, :cond_6

    .line 93
    iget-object v8, v7, Lcom/android/wm/shell/bubbles/Bubble;->mInflationTask:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;

    .line 95
    if-nez v8, :cond_5

    .line 97
    goto :goto_4

    .line 99
    :cond_5
    invoke-virtual {v8, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 100
    :cond_6
    :goto_4
    iget-object v8, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mLogger:Lcom/android/wm/shell/bubbles/BubbleLogger;

    .line 103
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    if-ne p1, v5, :cond_7

    .line 108
    sget-object v2, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_CANCEL:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    .line 110
    invoke-virtual {v8, v7, v2}, Lcom/android/wm/shell/bubbles/BubbleLogger;->log(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/BubbleLogger$Event;)V

    .line 112
    goto :goto_5

    .line 115
    :cond_7
    if-ne p1, v4, :cond_8

    .line 116
    sget-object v2, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_GROUP_CANCEL:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    .line 118
    invoke-virtual {v8, v7, v2}, Lcom/android/wm/shell/bubbles/BubbleLogger;->log(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/BubbleLogger$Event;)V

    .line 120
    goto :goto_5

    .line 123
    :cond_8
    if-ne p1, v3, :cond_9

    .line 124
    sget-object v2, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_NO_LONGER_BUBBLE:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    .line 126
    invoke-virtual {v8, v7, v2}, Lcom/android/wm/shell/bubbles/BubbleLogger;->log(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/BubbleLogger$Event;)V

    .line 128
    goto :goto_5

    .line 131
    :cond_9
    if-ne p1, v2, :cond_a

    .line 132
    sget-object v2, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_BLOCKED:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    .line 134
    invoke-virtual {v8, v7, v2}, Lcom/android/wm/shell/bubbles/BubbleLogger;->log(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/BubbleLogger$Event;)V

    .line 136
    :cond_a
    :goto_5
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    .line 139
    check-cast v2, Ljava/util/ArrayList;

    .line 141
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 143
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    .line 146
    invoke-virtual {v2, p1, v7}, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbleRemoved(ILcom/android/wm/shell/bubbles/Bubble;)V

    .line 148
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    .line 151
    iput-object v7, v2, Lcom/android/wm/shell/bubbles/BubbleData$Update;->removedOverflowBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 153
    :cond_b
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedBubbles:Landroid/util/ArrayMap;

    .line 155
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 157
    move-result-object v3

    .line 160
    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 161
    move-result-object v3

    .line 164
    new-instance v4, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda2;

    .line 165
    invoke-direct {v4, v0, p2}, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 167
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 170
    move-result v0

    .line 173
    if-eqz v0, :cond_d

    .line 174
    if-eqz v6, :cond_d

    .line 176
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->getSuppressedBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    .line 178
    move-result-object p2

    .line 181
    if-eqz p2, :cond_d

    .line 182
    iget-object v0, p2, Lcom/android/wm/shell/bubbles/Bubble;->mLocusId:Landroid/content/LocusId;

    .line 184
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p2, Lcom/android/wm/shell/bubbles/Bubble;->mInflationTask:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;

    .line 189
    if-nez v0, :cond_c

    .line 191
    goto :goto_6

    .line 193
    :cond_c
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 194
    :goto_6
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    .line 197
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbleRemoved(ILcom/android/wm/shell/bubbles/Bubble;)V

    .line 199
    :cond_d
    return-void

    .line 202
    :cond_e
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 203
    move-result-object p2

    .line 206
    check-cast p2, Lcom/android/wm/shell/bubbles/Bubble;

    .line 207
    iget-object v2, p2, Lcom/android/wm/shell/bubbles/Bubble;->mInflationTask:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;

    .line 209
    if-nez v2, :cond_f

    .line 211
    goto :goto_7

    .line 213
    :cond_f
    invoke-virtual {v2, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 214
    :goto_7
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->overflowBubble(ILcom/android/wm/shell/bubbles/Bubble;)V

    .line 217
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 220
    move-result v2

    .line 223
    if-ne v2, v1, :cond_10

    .line 224
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpandedInternal(Z)V

    .line 226
    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 230
    :cond_10
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 232
    move-result v0

    .line 235
    sub-int/2addr v0, v1

    .line 236
    if-ge v7, v0, :cond_11

    .line 237
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    .line 239
    iput-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    .line 241
    :cond_11
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 243
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    .line 246
    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbleRemoved(ILcom/android/wm/shell/bubbles/Bubble;)V

    .line 248
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    .line 251
    if-nez v0, :cond_12

    .line 253
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    .line 255
    iget-boolean v2, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    .line 257
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->repackAll()Z

    .line 259
    move-result v3

    .line 262
    or-int/2addr v2, v3

    .line 263
    iput-boolean v2, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    .line 264
    :cond_12
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 266
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 268
    move-result v0

    .line 271
    if-eqz v0, :cond_13

    .line 272
    invoke-virtual {p0, v7}, Lcom/android/wm/shell/bubbles/BubbleData;->setNewSelectedIndex(I)V

    .line 274
    :cond_13
    if-eq p1, v1, :cond_14

    .line 277
    goto :goto_8

    .line 279
    :cond_14
    iget-object p0, p2, Lcom/android/wm/shell/bubbles/Bubble;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 280
    if-nez p0, :cond_15

    .line 282
    goto :goto_8

    .line 284
    :cond_15
    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    goto :goto_8

    .line 288
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 289
    const-string p1, "Failed to send delete intent for bubble with key: "

    .line 291
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    iget-object p1, p2, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 296
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    move-result-object p0

    .line 304
    const-string p1, "Bubbles"

    .line 305
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :goto_8
    return-void
    .line 310
.end method

.method public final doSuppress(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    .line 2
    iput-object p1, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 4
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/Bubble;->setSuppressBubble(Z)V

    .line 7
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    .line 10
    move-object v2, v1

    .line 12
    check-cast v2, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 15
    move-result v2

    .line 18
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    .line 19
    move-object v4, v1

    .line 21
    check-cast v4, Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 24
    move-result v4

    .line 27
    sub-int/2addr v4, v0

    .line 28
    const/4 v5, 0x0

    .line 29
    if-eq v4, v2, :cond_0

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    move v0, v5

    .line 33
    :goto_0
    iput-boolean v0, v3, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    .line 34
    move-object v0, v1

    .line 36
    check-cast v0, Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 42
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    move-result p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    check-cast v1, Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 52
    move-result p1

    .line 55
    if-eqz p1, :cond_1

    .line 56
    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 59
    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/wm/shell/bubbles/BubbleData;->setNewSelectedIndex(I)V

    .line 62
    :cond_2
    :goto_1
    return-void
    .line 65
.end method

.method public final doUnsuppress(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/Bubble;->setSuppressBubble(Z)V

    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    .line 6
    iput-object p1, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->unsuppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    .line 10
    move-object v2, v1

    .line 12
    check-cast v2, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    move-object v2, v1

    .line 18
    check-cast v2, Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 21
    move-result v2

    .line 24
    const/4 v3, 0x1

    .line 25
    if-le v2, v3, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->repackAll()Z

    .line 28
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    .line 31
    iput-boolean v3, v2, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    .line 33
    :cond_0
    check-cast v1, Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 40
    if-ne v1, p1, :cond_1

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->setNewSelectedIndex(I)V

    .line 43
    :cond_1
    return-void
    .line 46
.end method

.method public getAnyBubbleWithkey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    .line 2
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    .line 8
    move-result-object v0

    .line 11
    :cond_0
    if-nez v0, :cond_1

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->getSuppressedBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    .line 14
    move-result-object v0

    .line 17
    :cond_1
    return-object v0
    .line 18
.end method

.method public getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    .line 3
    move-object v2, v1

    .line 5
    check-cast v2, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v2

    .line 11
    if-ge v0, v2, :cond_1

    .line 12
    check-cast v1, Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 20
    iget-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 31
    goto :goto_0

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    return-object p0
    .line 35
.end method

.method public final getBubbleWithView(Landroid/view/View;)Lcom/android/wm/shell/bubbles/Bubble;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    .line 3
    move-object v2, v1

    .line 5
    check-cast v2, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v2

    .line 11
    if-ge v0, v2, :cond_1

    .line 12
    check-cast v1, Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 20
    iget-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 22
    if-eqz v2, :cond_0

    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    return-object v1

    .line 32
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    return-object p0
    .line 37
.end method

.method public getBubbles()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    .line 2
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getOrCreateBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;Lcom/android/wm/shell/bubbles/Bubble;)Lcom/android/wm/shell/bubbles/Bubble;
    .locals 4

    .line 1
    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p2, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 10
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    .line 11
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    .line 15
    if-nez v1, :cond_3

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    .line 19
    move-result-object v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    .line 25
    check-cast p0, Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 29
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 33
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object p0

    .line 42
    move-object p2, p0

    .line 43
    check-cast p2, Lcom/android/wm/shell/bubbles/Bubble;

    .line 44
    goto :goto_2

    .line 46
    :cond_2
    if-eqz p1, :cond_4

    .line 47
    new-instance p2, Lcom/android/wm/shell/bubbles/Bubble;

    .line 49
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbleMetadataFlagListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;

    .line 51
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mCancelledListener:Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;

    .line 53
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 55
    invoke-direct {p2, p1, v1, v3, p0}, Lcom/android/wm/shell/bubbles/Bubble;-><init>(Lcom/android/wm/shell/bubbles/BubbleEntry;Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;Ljava/util/concurrent/Executor;)V

    .line 57
    goto :goto_2

    .line 60
    :cond_3
    :goto_1
    move-object p2, v1

    .line 61
    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    .line 62
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/bubbles/Bubble;->setEntry(Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    .line 64
    :cond_5
    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-object p2
    .line 70
.end method

.method public getOverflowBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    .line 3
    move-object v2, v1

    .line 5
    check-cast v2, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v2

    .line 11
    if-ge v0, v2, :cond_1

    .line 12
    check-cast v1, Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 20
    iget-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 31
    goto :goto_0

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    return-object p0
    .line 35
.end method

.method public getOverflowBubbles()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    .line 2
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getPendingBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/wm/shell/bubbles/Bubble;

    .line 22
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    return-object v0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    return-object p0
    .line 34
.end method

.method public getSuppressedBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedBubbles:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 4
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/wm/shell/bubbles/Bubble;

    .line 22
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    return-object v0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    return-object p0
    .line 34
.end method

.method public final hasAnyBubbleWithKey(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->hasBubbleInStackWithKey(Ljava/lang/String;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->hasOverflowBubbleWithKey(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedBubbles:Landroid/util/ArrayMap;

    .line 14
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 16
    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 20
    move-result-object p0

    .line 23
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda2;

    .line 24
    const/4 v1, 0x0

    .line 26
    invoke-direct {v0, v1, p1}, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 27
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 30
    move-result p0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    :cond_0
    const/4 v1, 0x1

    .line 36
    :cond_1
    return v1
    .line 37
.end method

.method public final hasBubbleInStackWithKey(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
    .line 11
.end method

.method public final hasOverflowBubbleWithKey(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
    .line 11
.end method

.method public isSummarySuppressed(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final overflowBubble(ILcom/android/wm/shell/bubbles/Bubble;)V
    .locals 4

    .line 1
    iget-boolean v0, p2, Lcom/android/wm/shell/bubbles/Bubble;->mPendingIntentCanceled:Z

    .line 2
    if-nez v0, :cond_6

    .line 4
    const/4 v0, 0x1

    .line 6
    const/16 v1, 0xf

    .line 7
    const/4 v2, 0x2

    .line 9
    if-eq p1, v2, :cond_0

    .line 10
    if-eq p1, v0, :cond_0

    .line 12
    if-ne p1, v1, :cond_6

    .line 14
    :cond_0
    iget-boolean v3, p2, Lcom/android/wm/shell/bubbles/Bubble;->mIsAppBubble:Z

    .line 16
    if-eqz v3, :cond_1

    .line 18
    goto :goto_2

    .line 20
    :cond_1
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mLogger:Lcom/android/wm/shell/bubbles/BubbleLogger;

    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    if-ne p1, v2, :cond_2

    .line 26
    sget-object p1, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_ADD_AGED:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    .line 28
    invoke-virtual {v3, p2, p1}, Lcom/android/wm/shell/bubbles/BubbleLogger;->log(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/BubbleLogger$Event;)V

    .line 30
    goto :goto_0

    .line 33
    :cond_2
    if-ne p1, v0, :cond_3

    .line 34
    sget-object p1, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_ADD_USER_GESTURE:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    .line 36
    invoke-virtual {v3, p2, p1}, Lcom/android/wm/shell/bubbles/BubbleLogger;->log(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/BubbleLogger$Event;)V

    .line 38
    goto :goto_0

    .line 41
    :cond_3
    if-ne p1, v1, :cond_4

    .line 42
    sget-object p1, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_RECOVER:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    .line 44
    invoke-virtual {v3, p2, p1}, Lcom/android/wm/shell/bubbles/BubbleLogger;->log(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/BubbleLogger$Event;)V

    .line 46
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    .line 49
    check-cast p1, Ljava/util/ArrayList;

    .line 51
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 53
    const/4 v1, 0x0

    .line 56
    invoke-virtual {p1, v1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 57
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    .line 60
    iput-object p2, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->addedOverflowBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 62
    iget-object v1, p2, Lcom/android/wm/shell/bubbles/Bubble;->mInflationTask:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;

    .line 64
    if-nez v1, :cond_5

    .line 66
    goto :goto_1

    .line 68
    :cond_5
    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 69
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 72
    move-result v1

    .line 75
    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mMaxOverflowBubbles:I

    .line 76
    add-int/2addr v2, v0

    .line 78
    if-ne v1, v2, :cond_6

    .line 79
    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/CascadingMenuPopup$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 81
    move-result-object v0

    .line 84
    check-cast v0, Lcom/android/wm/shell/bubbles/Bubble;

    .line 85
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    .line 87
    const/16 v2, 0xb

    .line 89
    invoke-virtual {v1, v2, v0}, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbleRemoved(ILcom/android/wm/shell/bubbles/Bubble;)V

    .line 91
    sget-object v1, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_MAX_REACHED:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    .line 94
    invoke-virtual {v3, p2, v1}, Lcom/android/wm/shell/bubbles/BubbleLogger;->log(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/BubbleLogger$Event;)V

    .line 96
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 99
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    .line 102
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->removedOverflowBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 104
    :cond_6
    :goto_2
    return-void
    .line 106
.end method

.method public final repackAll()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    .line 2
    move-object v0, p0

    .line 4
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    return v1

    .line 14
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    move-object v2, p0

    .line 17
    check-cast v2, Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 20
    move-result v2

    .line 23
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 27
    move-result-object v2

    .line 30
    sget-object v3, Lcom/android/wm/shell/bubbles/BubbleData;->BUBBLES_BY_SORT_KEY_DESCENDING:Ljava/util/Comparator;

    .line 31
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    .line 33
    move-result-object v2

    .line 36
    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda0;

    .line 37
    invoke-direct {v3, v1, v0}, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 39
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    .line 42
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    return v1

    .line 51
    :cond_1
    move-object v1, p0

    .line 52
    check-cast v1, Ljava/util/ArrayList;

    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 55
    check-cast p0, Ljava/util/ArrayList;

    .line 58
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 60
    const/4 p0, 0x1

    .line 63
    return p0
    .line 64
.end method

.method public final setExpanded(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpandedInternal(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->dispatchPendingChanges()V

    .line 5
    return-void
    .line 8
.end method

.method public final setExpandedInternal(Z)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    .line 7
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz p1, :cond_5

    .line 11
    check-cast v0, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    move-result v3

    .line 18
    const-string v4, "Bubbles"

    .line 19
    if-eqz v3, :cond_1

    .line 21
    iget-boolean v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mShowingOverflow:Z

    .line 23
    if-nez v3, :cond_1

    .line 25
    const-string p0, "Attempt to expand stack when empty!"

    .line 27
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void

    .line 32
    :cond_1
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 33
    if-nez v3, :cond_2

    .line 35
    const-string p0, "Attempt to expand stack without selected bubble!"

    .line 37
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void

    .line 42
    :cond_2
    invoke-interface {v3}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 46
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    .line 47
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    const-string v4, "Overflow"

    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v3

    .line 57
    if-eqz v3, :cond_3

    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 60
    move-result v3

    .line 63
    if-nez v3, :cond_3

    .line 64
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    move-result-object v0

    .line 69
    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 70
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 75
    instance-of v3, v0, Lcom/android/wm/shell/bubbles/Bubble;

    .line 77
    if-eqz v3, :cond_4

    .line 79
    check-cast v0, Lcom/android/wm/shell/bubbles/Bubble;

    .line 81
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mTimeSource:Lcom/android/wm/shell/bubbles/BubbleData$TimeSource;

    .line 83
    check-cast v3, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda3;

    .line 85
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 90
    move-result-wide v3

    .line 93
    iput-wide v3, v0, Lcom/android/wm/shell/bubbles/Bubble;->mLastAccessed:J

    .line 94
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/bubbles/Bubble;->setSuppressNotification(Z)V

    .line 96
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/Bubble;->setShowDot(Z)V

    .line 99
    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    .line 102
    iget-boolean v3, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    .line 104
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->repackAll()Z

    .line 106
    move-result v4

    .line 109
    or-int/2addr v3, v4

    .line 110
    iput-boolean v3, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    .line 111
    goto :goto_0

    .line 113
    :cond_5
    check-cast v0, Ljava/util/ArrayList;

    .line 114
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 116
    move-result v3

    .line 119
    if-nez v3, :cond_6

    .line 120
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    .line 122
    iget-boolean v4, v3, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    .line 124
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->repackAll()Z

    .line 126
    move-result v5

    .line 129
    or-int/2addr v4, v5

    .line 130
    iput-boolean v4, v3, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    .line 131
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 133
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 135
    move-result v3

    .line 138
    if-lez v3, :cond_6

    .line 139
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 141
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 143
    move-result v3

    .line 146
    if-eqz v3, :cond_6

    .line 147
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 149
    check-cast v3, Lcom/android/wm/shell/bubbles/Bubble;

    .line 151
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 153
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 156
    check-cast v3, Lcom/android/wm/shell/bubbles/Bubble;

    .line 158
    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    .line 163
    iput-boolean v2, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    .line 165
    :cond_6
    :goto_0
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mNeedsTrimming:Z

    .line 167
    if-eqz v0, :cond_7

    .line 169
    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mNeedsTrimming:Z

    .line 171
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->trim()V

    .line 173
    :cond_7
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    .line 176
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    .line 178
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expanded:Z

    .line 180
    iput-boolean v2, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expandedChanged:Z

    .line 182
    return-void
    .line 184
.end method

.method public setMaxOverflowBubbles(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mMaxOverflowBubbles:I

    .line 2
    return-void
    .line 4
.end method

.method public final setNewSelectedIndex(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    .line 2
    move-object v1, v0

    .line 4
    check-cast v1, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    const-string p0, "Bubbles list empty when attempting to select index: "

    .line 13
    const-string v0, "Bubbles"

    .line 15
    invoke-static {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    return-void

    .line 20
    :cond_0
    move-object v1, v0

    .line 21
    check-cast v1, Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 24
    move-result v1

    .line 27
    add-int/lit8 v1, v1, -0x1

    .line 28
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 30
    move-result p1

    .line 33
    check-cast v0, Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 39
    check-cast p1, Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    .line 42
    return-void
    .line 45
.end method

.method public final setSelectedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->dispatchPendingChanges()V

    .line 5
    return-void
    .line 8
.end method

.method public final setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    const-string v2, "Overflow"

    .line 15
    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    .line 17
    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    move v2, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v2, v0

    .line 29
    :goto_0
    if-eqz p1, :cond_2

    .line 30
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    .line 32
    move-object v4, v3

    .line 34
    check-cast v4, Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 37
    move-result v4

    .line 40
    if-nez v4, :cond_2

    .line 41
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    .line 43
    check-cast v4, Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 47
    move-result v4

    .line 50
    if-nez v4, :cond_2

    .line 51
    if-nez v2, :cond_2

    .line 53
    new-instance p0, Ljava/lang/StringBuilder;

    .line 55
    const-string v0, "Cannot select bubble which doesn\'t exist! ("

    .line 57
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    const-string p1, ") bubbles="

    .line 65
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 76
    const-string p1, "Bubbles"

    .line 77
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void

    .line 82
    :cond_2
    iget-boolean v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    .line 83
    if-eqz v3, :cond_3

    .line 85
    if-eqz p1, :cond_3

    .line 87
    if-nez v2, :cond_3

    .line 89
    move-object v2, p1

    .line 91
    check-cast v2, Lcom/android/wm/shell/bubbles/Bubble;

    .line 92
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mTimeSource:Lcom/android/wm/shell/bubbles/BubbleData$TimeSource;

    .line 94
    check-cast v3, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda3;

    .line 96
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 101
    move-result-wide v3

    .line 104
    iput-wide v3, v2, Lcom/android/wm/shell/bubbles/Bubble;->mLastAccessed:J

    .line 105
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/bubbles/Bubble;->setSuppressNotification(Z)V

    .line 107
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/bubbles/Bubble;->setShowDot(Z)V

    .line 110
    :cond_3
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 113
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    .line 115
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 117
    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectionChanged:Z

    .line 119
    return-void
    .line 121
.end method

.method public setTimeSource(Lcom/android/wm/shell/bubbles/BubbleData$TimeSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mTimeSource:Lcom/android/wm/shell/bubbles/BubbleData$TimeSource;

    .line 2
    return-void
    .line 4
.end method

.method public final trim()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    .line 2
    move-object v1, v0

    .line 4
    check-cast v1, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v1

    .line 10
    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mMaxBubbles:I

    .line 11
    if-le v1, v2, :cond_0

    .line 13
    move-object v1, v0

    .line 15
    check-cast v1, Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v1

    .line 21
    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mMaxBubbles:I

    .line 22
    sub-int/2addr v1, v2

    .line 24
    new-instance v2, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 30
    move-result-object v0

    .line 33
    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda4;

    .line 34
    invoke-direct {v3}, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda4;-><init>()V

    .line 36
    invoke-static {v3}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    .line 39
    move-result-object v3

    .line 42
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    .line 43
    move-result-object v0

    .line 46
    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda2;

    .line 47
    const/4 v4, 0x2

    .line 49
    invoke-direct {v3, v4, p0}, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 50
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 53
    move-result-object v0

    .line 56
    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda6;

    .line 57
    invoke-direct {v3, v2, v1, v4}, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;II)V

    .line 59
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    .line 62
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda0;

    .line 65
    const/4 v1, 0x1

    .line 67
    invoke-direct {v0, v1, p0}, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 68
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 71
    :cond_0
    return-void
    .line 74
.end method
