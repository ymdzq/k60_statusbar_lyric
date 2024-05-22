.class public final Landroidx/recyclerview/widget/AdapterHelper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mCallback:Landroidx/recyclerview/widget/RecyclerView$4;

.field public mExistingUpdateTypes:I

.field public final mOpReorderer:Landroidx/recyclerview/widget/OpReorderer;

.field public final mPendingUpdates:Ljava/util/ArrayList;

.field public final mPostponedList:Ljava/util/ArrayList;

.field public final mUpdateOpPool:Landroidx/core/util/Pools$SimplePool;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$4;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/core/util/Pools$SimplePool;

    .line 5
    const/16 v1, 0x1e

    .line 7
    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    .line 9
    iput-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Landroidx/core/util/Pools$SimplePool;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iput-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 26
    const/4 v0, 0x0

    .line 28
    iput v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 29
    iput-object p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/RecyclerView$4;

    .line 31
    new-instance p1, Landroidx/recyclerview/widget/OpReorderer;

    .line 33
    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/OpReorderer;-><init>(Landroidx/recyclerview/widget/AdapterHelper;)V

    .line 35
    iput-object p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mOpReorderer:Landroidx/recyclerview/widget/OpReorderer;

    .line 38
    return-void
    .line 40
.end method


# virtual methods
.method public final canFindInPreLayout(I)Z
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_3

    .line 10
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v4

    .line 15
    check-cast v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 16
    iget v5, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 18
    const/16 v6, 0x8

    .line 20
    const/4 v7, 0x1

    .line 22
    if-ne v5, v6, :cond_0

    .line 23
    iget v4, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 25
    add-int/lit8 v5, v3, 0x1

    .line 27
    invoke-virtual {p0, v4, v5}, Landroidx/recyclerview/widget/AdapterHelper;->findPositionOffset(II)I

    .line 29
    move-result v4

    .line 32
    if-ne v4, p1, :cond_2

    .line 33
    return v7

    .line 35
    :cond_0
    if-ne v5, v7, :cond_2

    .line 36
    iget v5, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 38
    iget v4, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 40
    add-int/2addr v4, v5

    .line 42
    :goto_1
    if-ge v5, v4, :cond_2

    .line 43
    add-int/lit8 v6, v3, 0x1

    .line 45
    invoke-virtual {p0, v5, v6}, Landroidx/recyclerview/widget/AdapterHelper;->findPositionOffset(II)I

    .line 47
    move-result v6

    .line 50
    if-ne v6, p1, :cond_1

    .line 51
    return v7

    .line 53
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 54
    goto :goto_1

    .line 56
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 57
    goto :goto_0

    .line 59
    :cond_3
    return v2
    .line 60
.end method

.method public final consumePostponedUpdates()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_0

    .line 10
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v4

    .line 15
    check-cast v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 16
    iget-object v5, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/RecyclerView$4;

    .line 18
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView$4;->dispatchUpdate(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 20
    add-int/lit8 v3, v3, 0x1

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 26
    iput v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 29
    return-void
    .line 31
.end method

.method public final consumeUpdatesInOnePass()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/AdapterHelper;->consumePostponedUpdates()V

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v1, :cond_4

    .line 13
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v4

    .line 18
    check-cast v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 19
    iget v5, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 21
    const/4 v6, 0x1

    .line 23
    iget-object v7, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/RecyclerView$4;

    .line 24
    if-eq v5, v6, :cond_3

    .line 26
    const/4 v8, 0x2

    .line 28
    if-eq v5, v8, :cond_2

    .line 29
    const/4 v6, 0x4

    .line 31
    if-eq v5, v6, :cond_1

    .line 32
    const/16 v6, 0x8

    .line 34
    if-eq v5, v6, :cond_0

    .line 36
    goto :goto_1

    .line 38
    :cond_0
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/RecyclerView$4;->dispatchUpdate(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 39
    iget v5, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 42
    iget v4, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 44
    invoke-virtual {v7, v5, v4}, Landroidx/recyclerview/widget/RecyclerView$4;->offsetPositionsForMove(II)V

    .line 46
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/RecyclerView$4;->dispatchUpdate(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 50
    iget v5, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 53
    iget v6, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 55
    iget-object v4, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 57
    invoke-virtual {v7, v5, v6, v4}, Landroidx/recyclerview/widget/RecyclerView$4;->markViewHoldersUpdated(IILjava/lang/Object;)V

    .line 59
    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/RecyclerView$4;->dispatchUpdate(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 63
    iget v5, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 66
    iget v4, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 68
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$4;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    invoke-virtual {v7, v5, v4, v6}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 72
    iput-boolean v6, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 75
    iget-object v5, v7, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 77
    iget v6, v5, Landroidx/recyclerview/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 79
    add-int/2addr v6, v4

    .line 81
    iput v6, v5, Landroidx/recyclerview/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 82
    goto :goto_1

    .line 84
    :cond_3
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/RecyclerView$4;->dispatchUpdate(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 85
    iget v5, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 88
    iget v4, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 90
    invoke-virtual {v7, v5, v4}, Landroidx/recyclerview/widget/RecyclerView$4;->offsetPositionsForAdd(II)V

    .line 92
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 95
    goto :goto_0

    .line 97
    :cond_4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 98
    iput v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 101
    return-void
    .line 103
.end method

.method public final dispatchAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 14

    .line 1
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_9

    .line 5
    const/16 v2, 0x8

    .line 7
    if-eq v0, v2, :cond_9

    .line 9
    iget v2, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 11
    invoke-virtual {p0, v2, v0}, Landroidx/recyclerview/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    .line 13
    move-result v0

    .line 16
    iget v2, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 17
    iget v3, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 19
    const/4 v4, 0x2

    .line 21
    const/4 v5, 0x4

    .line 22
    const/4 v6, 0x0

    .line 23
    if-eq v3, v4, :cond_1

    .line 24
    if-ne v3, v5, :cond_0

    .line 26
    move v3, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    const-string v1, "op should be remove or update."

    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 45
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p0

    .line 49
    :cond_1
    move v3, v6

    .line 50
    :goto_0
    move v7, v1

    .line 51
    move v8, v7

    .line 52
    :goto_1
    iget v9, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 53
    iget-object v10, p0, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Landroidx/core/util/Pools$SimplePool;

    .line 55
    const/4 v11, 0x0

    .line 57
    if-ge v7, v9, :cond_7

    .line 58
    iget v9, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 60
    mul-int v12, v3, v7

    .line 62
    add-int/2addr v12, v9

    .line 64
    iget v9, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 65
    invoke-virtual {p0, v12, v9}, Landroidx/recyclerview/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    .line 67
    move-result v9

    .line 70
    iget v12, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 71
    if-eq v12, v4, :cond_3

    .line 73
    if-eq v12, v5, :cond_2

    .line 75
    goto :goto_3

    .line 77
    :cond_2
    add-int/lit8 v13, v0, 0x1

    .line 78
    if-ne v9, v13, :cond_4

    .line 80
    goto :goto_2

    .line 82
    :cond_3
    if-ne v9, v0, :cond_4

    .line 83
    :goto_2
    move v13, v1

    .line 85
    goto :goto_4

    .line 86
    :cond_4
    :goto_3
    move v13, v6

    .line 87
    :goto_4
    if-eqz v13, :cond_5

    .line 88
    add-int/lit8 v8, v8, 0x1

    .line 90
    goto :goto_5

    .line 92
    :cond_5
    iget-object v13, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 93
    invoke-virtual {p0, v13, v12, v0, v8}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 95
    move-result-object v0

    .line 98
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;I)V

    .line 99
    iput-object v11, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 102
    invoke-virtual {v10, v0}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 104
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 107
    if-ne v0, v5, :cond_6

    .line 109
    add-int/2addr v2, v8

    .line 111
    :cond_6
    move v8, v1

    .line 112
    move v0, v9

    .line 113
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 114
    goto :goto_1

    .line 116
    :cond_7
    iget-object v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 117
    iput-object v11, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 119
    invoke-virtual {v10, p1}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 121
    if-lez v8, :cond_8

    .line 124
    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 126
    invoke-virtual {p0, v1, p1, v0, v8}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 128
    move-result-object p1

    .line 131
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;I)V

    .line 132
    iput-object v11, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 135
    invoke-virtual {v10, p1}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 137
    :cond_8
    return-void

    .line 140
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 141
    const-string/jumbo p1, "should not dispatch add or move for pre layout"

    .line 143
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 146
    throw p0
    .line 149
.end method

.method public final dispatchFirstPassAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;I)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/RecyclerView$4;

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$4;->dispatchUpdate(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 4
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 7
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    const/4 v1, 0x4

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 15
    iget-object p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 17
    invoke-virtual {p0, p2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$4;->markViewHoldersUpdated(IILjava/lang/Object;)V

    .line 19
    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 23
    const-string p1, "only remove and update ops can be dispatched in first pass"

    .line 25
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p0

    .line 30
    :cond_1
    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 31
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$4;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 36
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 39
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 41
    iget p2, p0, Landroidx/recyclerview/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 43
    add-int/2addr p2, p1

    .line 45
    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 46
    :goto_0
    return-void
    .line 48
.end method

.method public final findPositionOffset(II)I
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    :goto_0
    if-ge p2, v0, :cond_6

    .line 8
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 13
    check-cast v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 14
    iget v2, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 16
    const/16 v3, 0x8

    .line 18
    if-ne v2, v3, :cond_2

    .line 20
    iget v2, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 22
    if-ne v2, p1, :cond_0

    .line 24
    iget p1, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 26
    goto :goto_1

    .line 28
    :cond_0
    if-ge v2, p1, :cond_1

    .line 29
    add-int/lit8 p1, p1, -0x1

    .line 31
    :cond_1
    iget v1, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 33
    if-gt v1, p1, :cond_5

    .line 35
    add-int/lit8 p1, p1, 0x1

    .line 37
    goto :goto_1

    .line 39
    :cond_2
    iget v3, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 40
    if-gt v3, p1, :cond_5

    .line 42
    const/4 v4, 0x2

    .line 44
    if-ne v2, v4, :cond_4

    .line 45
    iget v1, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 47
    add-int/2addr v3, v1

    .line 49
    if-ge p1, v3, :cond_3

    .line 50
    const/4 p0, -0x1

    .line 52
    return p0

    .line 53
    :cond_3
    sub-int/2addr p1, v1

    .line 54
    goto :goto_1

    .line 55
    :cond_4
    const/4 v3, 0x1

    .line 56
    if-ne v2, v3, :cond_5

    .line 57
    iget v1, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 59
    add-int/2addr p1, v1

    .line 61
    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 62
    goto :goto_0

    .line 64
    :cond_6
    return p1
    .line 65
.end method

.method public final hasPendingUpdates()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result p0

    .line 7
    if-lez p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public final obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Landroidx/core/util/Pools$SimplePool;

    .line 2
    invoke-virtual {p0}, Landroidx/core/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 8
    if-nez p0, :cond_0

    .line 10
    new-instance p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;-><init>(Ljava/lang/Object;III)V

    .line 14
    goto :goto_0

    .line 17
    :cond_0
    iput p2, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 18
    iput p3, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 20
    iput p4, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 22
    iput-object p1, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 24
    :goto_0
    return-object p0
    .line 26
.end method

.method public final postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 7
    const/4 v1, 0x1

    .line 9
    iget-object p0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/RecyclerView$4;

    .line 10
    if-eq v0, v1, :cond_3

    .line 12
    const/4 v2, 0x2

    .line 14
    if-eq v0, v2, :cond_2

    .line 15
    const/4 v1, 0x4

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    const/16 v1, 0x8

    .line 20
    if-ne v0, v1, :cond_0

    .line 22
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 24
    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 26
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$4;->offsetPositionsForMove(II)V

    .line 28
    goto :goto_0

    .line 31
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    const-string v1, "Unknown update op type for "

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 47
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p0

    .line 51
    :cond_1
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 52
    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 54
    iget-object p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 56
    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$4;->markViewHoldersUpdated(IILjava/lang/Object;)V

    .line 58
    goto :goto_0

    .line 61
    :cond_2
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 62
    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 64
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$4;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    const/4 v2, 0x0

    .line 68
    invoke-virtual {p0, v0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 69
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 72
    goto :goto_0

    .line 74
    :cond_3
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 75
    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 77
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$4;->offsetPositionsForAdd(II)V

    .line 79
    :goto_0
    return-void
    .line 82
.end method

.method public final preProcess()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 4
    iget-object v2, v0, Landroidx/recyclerview/widget/AdapterHelper;->mOpReorderer:Landroidx/recyclerview/widget/OpReorderer;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v3

    .line 14
    const/4 v4, 0x1

    .line 15
    sub-int/2addr v3, v4

    .line 16
    const/4 v6, 0x0

    .line 17
    :goto_1
    const/16 v7, 0x8

    .line 18
    const/4 v8, -0x1

    .line 20
    if-ltz v3, :cond_3

    .line 21
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v9

    .line 26
    check-cast v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 27
    iget v9, v9, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 29
    if-ne v9, v7, :cond_1

    .line 31
    if-eqz v6, :cond_2

    .line 33
    goto :goto_2

    .line 35
    :cond_1
    move v6, v4

    .line 36
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 37
    goto :goto_1

    .line 39
    :cond_3
    move v3, v8

    .line 40
    :goto_2
    const/4 v6, 0x4

    .line 41
    const/4 v9, 0x2

    .line 42
    const/4 v10, 0x0

    .line 43
    if-eq v3, v8, :cond_22

    .line 44
    add-int/lit8 v7, v3, 0x1

    .line 46
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object v11

    .line 51
    check-cast v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 52
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object v12

    .line 57
    check-cast v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 58
    iget v13, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 60
    if-eq v13, v4, :cond_1d

    .line 62
    iget-object v8, v2, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/AdapterHelper;

    .line 64
    if-eq v13, v9, :cond_b

    .line 66
    if-eq v13, v6, :cond_4

    .line 68
    goto :goto_0

    .line 70
    :cond_4
    iget v5, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 71
    iget v9, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 73
    if-ge v5, v9, :cond_5

    .line 75
    add-int/lit8 v9, v9, -0x1

    .line 77
    iput v9, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 79
    goto :goto_3

    .line 81
    :cond_5
    iget v13, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 82
    add-int/2addr v9, v13

    .line 84
    if-ge v5, v9, :cond_6

    .line 85
    add-int/lit8 v13, v13, -0x1

    .line 87
    iput v13, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 89
    iget v5, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 91
    iget-object v9, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 93
    invoke-virtual {v8, v9, v6, v5, v4}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 95
    move-result-object v4

    .line 98
    goto :goto_4

    .line 99
    :cond_6
    :goto_3
    move-object v4, v10

    .line 100
    :goto_4
    iget v5, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 101
    iget v9, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 103
    if-gt v5, v9, :cond_7

    .line 105
    add-int/lit8 v9, v9, 0x1

    .line 107
    iput v9, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 109
    goto :goto_5

    .line 111
    :cond_7
    iget v13, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 112
    add-int/2addr v9, v13

    .line 114
    if-ge v5, v9, :cond_8

    .line 115
    sub-int/2addr v9, v5

    .line 117
    add-int/lit8 v5, v5, 0x1

    .line 118
    iget-object v13, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 120
    invoke-virtual {v8, v13, v6, v5, v9}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 122
    move-result-object v5

    .line 125
    iget v6, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 126
    sub-int/2addr v6, v9

    .line 128
    iput v6, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 129
    goto :goto_6

    .line 131
    :cond_8
    :goto_5
    move-object v5, v10

    .line 132
    :goto_6
    invoke-virtual {v1, v7, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget v6, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 136
    if-lez v6, :cond_9

    .line 138
    invoke-virtual {v1, v3, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 140
    goto :goto_7

    .line 143
    :cond_9
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 144
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    iput-object v10, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 150
    iget-object v6, v8, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Landroidx/core/util/Pools$SimplePool;

    .line 152
    invoke-virtual {v6, v12}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 154
    :goto_7
    if-eqz v4, :cond_a

    .line 157
    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 159
    :cond_a
    if-eqz v5, :cond_0

    .line 162
    invoke-virtual {v1, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 164
    goto/16 :goto_0

    .line 167
    :cond_b
    iget v6, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 169
    iget v13, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 171
    if-ge v6, v13, :cond_d

    .line 173
    iget v14, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 175
    if-ne v14, v6, :cond_c

    .line 177
    iget v14, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 179
    sub-int v6, v13, v6

    .line 181
    if-ne v14, v6, :cond_c

    .line 183
    move v5, v4

    .line 185
    const/4 v6, 0x0

    .line 186
    goto :goto_9

    .line 187
    :cond_c
    const/4 v5, 0x0

    .line 188
    goto :goto_8

    .line 189
    :cond_d
    iget v14, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 190
    add-int/lit8 v15, v13, 0x1

    .line 192
    if-ne v14, v15, :cond_e

    .line 194
    iget v14, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 196
    sub-int/2addr v6, v13

    .line 198
    if-ne v14, v6, :cond_e

    .line 199
    move v5, v4

    .line 201
    :goto_8
    move v6, v5

    .line 202
    goto :goto_9

    .line 203
    :cond_e
    move v6, v4

    .line 204
    const/4 v5, 0x0

    .line 205
    :goto_9
    iget v14, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 206
    if-ge v13, v14, :cond_f

    .line 208
    add-int/lit8 v14, v14, -0x1

    .line 210
    iput v14, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 212
    goto :goto_a

    .line 214
    :cond_f
    iget v15, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 215
    add-int/2addr v14, v15

    .line 217
    if-ge v13, v14, :cond_10

    .line 218
    add-int/lit8 v15, v15, -0x1

    .line 220
    iput v15, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 222
    iput v9, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 224
    iput v4, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 226
    iget v3, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 228
    if-nez v3, :cond_0

    .line 230
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 232
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    iput-object v10, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 238
    iget-object v3, v8, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Landroidx/core/util/Pools$SimplePool;

    .line 240
    invoke-virtual {v3, v12}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 242
    goto/16 :goto_0

    .line 245
    :cond_10
    :goto_a
    iget v4, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 247
    iget v13, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 249
    if-gt v4, v13, :cond_11

    .line 251
    add-int/lit8 v13, v13, 0x1

    .line 253
    iput v13, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 255
    goto :goto_b

    .line 257
    :cond_11
    iget v14, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 258
    add-int/2addr v13, v14

    .line 260
    if-ge v4, v13, :cond_12

    .line 261
    sub-int/2addr v13, v4

    .line 263
    add-int/lit8 v4, v4, 0x1

    .line 264
    invoke-virtual {v8, v10, v9, v4, v13}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 266
    move-result-object v4

    .line 269
    iget v9, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 270
    iget v13, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 272
    sub-int/2addr v9, v13

    .line 274
    iput v9, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 275
    goto :goto_c

    .line 277
    :cond_12
    :goto_b
    move-object v4, v10

    .line 278
    :goto_c
    if-eqz v5, :cond_13

    .line 279
    invoke-virtual {v1, v3, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 284
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 287
    iput-object v10, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 290
    iget-object v3, v8, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Landroidx/core/util/Pools$SimplePool;

    .line 292
    invoke-virtual {v3, v11}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 294
    goto/16 :goto_0

    .line 297
    :cond_13
    if-eqz v6, :cond_17

    .line 299
    if-eqz v4, :cond_15

    .line 301
    iget v5, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 303
    iget v6, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 305
    if-le v5, v6, :cond_14

    .line 307
    iget v6, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 309
    sub-int/2addr v5, v6

    .line 311
    iput v5, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 312
    :cond_14
    iget v5, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 314
    iget v6, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 316
    if-le v5, v6, :cond_15

    .line 318
    iget v6, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 320
    sub-int/2addr v5, v6

    .line 322
    iput v5, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 323
    :cond_15
    iget v5, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 325
    iget v6, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 327
    if-le v5, v6, :cond_16

    .line 329
    iget v6, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 331
    sub-int/2addr v5, v6

    .line 333
    iput v5, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 334
    :cond_16
    iget v5, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 336
    iget v6, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 338
    if-le v5, v6, :cond_1b

    .line 340
    iget v6, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 342
    sub-int/2addr v5, v6

    .line 344
    iput v5, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 345
    goto :goto_d

    .line 347
    :cond_17
    if-eqz v4, :cond_19

    .line 348
    iget v5, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 350
    iget v6, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 352
    if-lt v5, v6, :cond_18

    .line 354
    iget v6, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 356
    sub-int/2addr v5, v6

    .line 358
    iput v5, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 359
    :cond_18
    iget v5, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 361
    iget v6, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 363
    if-lt v5, v6, :cond_19

    .line 365
    iget v6, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 367
    sub-int/2addr v5, v6

    .line 369
    iput v5, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 370
    :cond_19
    iget v5, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 372
    iget v6, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 374
    if-lt v5, v6, :cond_1a

    .line 376
    iget v6, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 378
    sub-int/2addr v5, v6

    .line 380
    iput v5, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 381
    :cond_1a
    iget v5, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 383
    iget v6, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 385
    if-lt v5, v6, :cond_1b

    .line 387
    iget v6, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 389
    sub-int/2addr v5, v6

    .line 391
    iput v5, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 392
    :cond_1b
    :goto_d
    invoke-virtual {v1, v3, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget v5, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 397
    iget v6, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 399
    if-eq v5, v6, :cond_1c

    .line 401
    invoke-virtual {v1, v7, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 403
    goto :goto_e

    .line 406
    :cond_1c
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 407
    :goto_e
    if-eqz v4, :cond_0

    .line 410
    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 412
    goto/16 :goto_0

    .line 415
    :cond_1d
    iget v4, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 417
    iget v6, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 419
    if-ge v4, v6, :cond_1e

    .line 421
    move v5, v8

    .line 423
    goto :goto_f

    .line 424
    :cond_1e
    const/4 v5, 0x0

    .line 425
    :goto_f
    iget v8, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 426
    if-ge v8, v6, :cond_1f

    .line 428
    add-int/lit8 v5, v5, 0x1

    .line 430
    :cond_1f
    if-gt v6, v8, :cond_20

    .line 432
    iget v6, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 434
    add-int/2addr v8, v6

    .line 436
    iput v8, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 437
    :cond_20
    iget v6, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 439
    if-gt v6, v4, :cond_21

    .line 441
    iget v8, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 443
    add-int/2addr v4, v8

    .line 445
    iput v4, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 446
    :cond_21
    add-int/2addr v6, v5

    .line 448
    iput v6, v12, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 449
    invoke-virtual {v1, v3, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 451
    invoke-virtual {v1, v7, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 454
    goto/16 :goto_0

    .line 457
    :cond_22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 459
    move-result v2

    .line 462
    const/4 v3, 0x0

    .line 463
    :goto_10
    if-ge v3, v2, :cond_36

    .line 464
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 466
    move-result-object v11

    .line 469
    check-cast v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 470
    iget v12, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 472
    if-eq v12, v4, :cond_35

    .line 474
    iget-object v13, v0, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Landroidx/core/util/Pools$SimplePool;

    .line 476
    iget-object v14, v0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/RecyclerView$4;

    .line 478
    if-eq v12, v9, :cond_2c

    .line 480
    if-eq v12, v6, :cond_24

    .line 482
    if-eq v12, v7, :cond_23

    .line 484
    goto/16 :goto_1a

    .line 486
    :cond_23
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 488
    goto/16 :goto_1a

    .line 491
    :cond_24
    iget v12, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 493
    iget v15, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 495
    add-int/2addr v15, v12

    .line 497
    move v5, v12

    .line 498
    const/4 v7, 0x0

    .line 499
    :goto_11
    if-ge v12, v15, :cond_29

    .line 500
    invoke-virtual {v14, v12}, Landroidx/recyclerview/widget/RecyclerView$4;->findViewHolder(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 502
    move-result-object v16

    .line 505
    if-nez v16, :cond_27

    .line 506
    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/AdapterHelper;->canFindInPreLayout(I)Z

    .line 508
    move-result v16

    .line 511
    if-eqz v16, :cond_25

    .line 512
    goto :goto_12

    .line 514
    :cond_25
    if-ne v8, v4, :cond_26

    .line 515
    iget-object v8, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 517
    invoke-virtual {v0, v8, v6, v5, v7}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 519
    move-result-object v5

    .line 522
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 523
    move v5, v12

    .line 526
    const/4 v7, 0x0

    .line 527
    :cond_26
    const/4 v8, 0x0

    .line 528
    goto :goto_13

    .line 529
    :cond_27
    :goto_12
    if-nez v8, :cond_28

    .line 530
    iget-object v8, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 532
    invoke-virtual {v0, v8, v6, v5, v7}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 534
    move-result-object v5

    .line 537
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 538
    move v5, v12

    .line 541
    const/4 v7, 0x0

    .line 542
    :cond_28
    move v8, v4

    .line 543
    :goto_13
    add-int/2addr v7, v4

    .line 544
    add-int/lit8 v12, v12, 0x1

    .line 545
    goto :goto_11

    .line 547
    :cond_29
    iget v12, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 548
    if-eq v7, v12, :cond_2a

    .line 550
    iget-object v12, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 552
    iput-object v10, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 554
    invoke-virtual {v13, v11}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 556
    invoke-virtual {v0, v12, v6, v5, v7}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 559
    move-result-object v11

    .line 562
    :cond_2a
    if-nez v8, :cond_2b

    .line 563
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 565
    goto/16 :goto_1a

    .line 568
    :cond_2b
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 570
    goto :goto_1a

    .line 573
    :cond_2c
    iget v5, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 574
    iget v7, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 576
    add-int/2addr v7, v5

    .line 578
    move v8, v5

    .line 579
    const/4 v12, 0x0

    .line 580
    const/4 v15, -0x1

    .line 581
    :goto_14
    if-ge v8, v7, :cond_32

    .line 582
    invoke-virtual {v14, v8}, Landroidx/recyclerview/widget/RecyclerView$4;->findViewHolder(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 584
    move-result-object v16

    .line 587
    if-nez v16, :cond_2f

    .line 588
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/AdapterHelper;->canFindInPreLayout(I)Z

    .line 590
    move-result v16

    .line 593
    if-eqz v16, :cond_2d

    .line 594
    goto :goto_16

    .line 596
    :cond_2d
    if-ne v15, v4, :cond_2e

    .line 597
    invoke-virtual {v0, v10, v9, v5, v12}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 599
    move-result-object v15

    .line 602
    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 603
    move v15, v4

    .line 606
    goto :goto_15

    .line 607
    :cond_2e
    const/4 v15, 0x0

    .line 608
    :goto_15
    const/16 v16, 0x0

    .line 609
    goto :goto_18

    .line 611
    :cond_2f
    :goto_16
    if-nez v15, :cond_30

    .line 612
    invoke-virtual {v0, v10, v9, v5, v12}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 614
    move-result-object v15

    .line 617
    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 618
    move v15, v4

    .line 621
    goto :goto_17

    .line 622
    :cond_30
    const/4 v15, 0x0

    .line 623
    :goto_17
    move/from16 v16, v4

    .line 624
    :goto_18
    if-eqz v15, :cond_31

    .line 626
    sub-int/2addr v8, v12

    .line 628
    sub-int/2addr v7, v12

    .line 629
    move v12, v4

    .line 630
    goto :goto_19

    .line 631
    :cond_31
    add-int/lit8 v12, v12, 0x1

    .line 632
    :goto_19
    add-int/2addr v8, v4

    .line 634
    move/from16 v15, v16

    .line 635
    goto :goto_14

    .line 637
    :cond_32
    iget v7, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 638
    if-eq v12, v7, :cond_33

    .line 640
    iput-object v10, v11, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 642
    invoke-virtual {v13, v11}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 644
    invoke-virtual {v0, v10, v9, v5, v12}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 647
    move-result-object v11

    .line 650
    :cond_33
    if-nez v15, :cond_34

    .line 651
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 653
    goto :goto_1a

    .line 656
    :cond_34
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 657
    goto :goto_1a

    .line 660
    :cond_35
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 661
    :goto_1a
    add-int/lit8 v3, v3, 0x1

    .line 664
    const/16 v7, 0x8

    .line 666
    const/4 v8, -0x1

    .line 668
    goto/16 :goto_10

    .line 669
    :cond_36
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 671
    return-void
    .line 674
.end method

.method public final recycleUpdateOpsAndClearList(Ljava/util/List;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 14
    check-cast v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 15
    const/4 v3, 0x0

    .line 17
    iput-object v3, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 18
    iget-object v3, p0, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Landroidx/core/util/Pools$SimplePool;

    .line 20
    invoke-virtual {v3, v2}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 28
    return-void
    .line 31
.end method

.method public final updatePositionWithPostponed(II)I
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    :goto_0
    const/16 v3, 0x8

    .line 10
    if-ltz v1, :cond_d

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v4

    .line 17
    check-cast v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 18
    iget v5, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 20
    const/4 v6, 0x2

    .line 22
    if-ne v5, v3, :cond_8

    .line 23
    iget v3, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 25
    iget v5, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 27
    if-ge v3, v5, :cond_0

    .line 29
    move v7, v3

    .line 31
    move v8, v5

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    move v8, v3

    .line 34
    move v7, v5

    .line 35
    :goto_1
    if-lt p1, v7, :cond_6

    .line 36
    if-gt p1, v8, :cond_6

    .line 38
    if-ne v7, v3, :cond_3

    .line 40
    if-ne p2, v2, :cond_1

    .line 42
    add-int/lit8 v5, v5, 0x1

    .line 44
    iput v5, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 46
    goto :goto_2

    .line 48
    :cond_1
    if-ne p2, v6, :cond_2

    .line 49
    add-int/lit8 v5, v5, -0x1

    .line 51
    iput v5, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 53
    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 55
    goto :goto_4

    .line 57
    :cond_3
    if-ne p2, v2, :cond_4

    .line 58
    add-int/lit8 v3, v3, 0x1

    .line 60
    iput v3, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 62
    goto :goto_3

    .line 64
    :cond_4
    if-ne p2, v6, :cond_5

    .line 65
    add-int/lit8 v3, v3, -0x1

    .line 67
    iput v3, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 69
    :cond_5
    :goto_3
    add-int/lit8 p1, p1, -0x1

    .line 71
    goto :goto_4

    .line 73
    :cond_6
    if-ge p1, v3, :cond_c

    .line 74
    if-ne p2, v2, :cond_7

    .line 76
    add-int/lit8 v3, v3, 0x1

    .line 78
    iput v3, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 80
    add-int/lit8 v5, v5, 0x1

    .line 82
    iput v5, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 84
    goto :goto_4

    .line 86
    :cond_7
    if-ne p2, v6, :cond_c

    .line 87
    add-int/lit8 v3, v3, -0x1

    .line 89
    iput v3, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 91
    add-int/lit8 v5, v5, -0x1

    .line 93
    iput v5, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 95
    goto :goto_4

    .line 97
    :cond_8
    iget v3, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 98
    if-gt v3, p1, :cond_a

    .line 100
    if-ne v5, v2, :cond_9

    .line 102
    iget v3, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 104
    sub-int/2addr p1, v3

    .line 106
    goto :goto_4

    .line 107
    :cond_9
    if-ne v5, v6, :cond_c

    .line 108
    iget v3, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 110
    add-int/2addr p1, v3

    .line 112
    goto :goto_4

    .line 113
    :cond_a
    if-ne p2, v2, :cond_b

    .line 114
    add-int/lit8 v3, v3, 0x1

    .line 116
    iput v3, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 118
    goto :goto_4

    .line 120
    :cond_b
    if-ne p2, v6, :cond_c

    .line 121
    add-int/lit8 v3, v3, -0x1

    .line 123
    iput v3, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 125
    :cond_c
    :goto_4
    add-int/lit8 v1, v1, -0x1

    .line 127
    goto :goto_0

    .line 129
    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 130
    move-result p2

    .line 133
    sub-int/2addr p2, v2

    .line 134
    :goto_5
    if-ltz p2, :cond_11

    .line 135
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 137
    move-result-object v1

    .line 140
    check-cast v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 141
    iget v2, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 143
    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Landroidx/core/util/Pools$SimplePool;

    .line 145
    const/4 v5, 0x0

    .line 147
    if-ne v2, v3, :cond_f

    .line 148
    iget v2, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 150
    iget v6, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 152
    if-eq v2, v6, :cond_e

    .line 154
    if-gez v2, :cond_10

    .line 156
    :cond_e
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 158
    iput-object v5, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 161
    invoke-virtual {v4, v1}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 163
    goto :goto_6

    .line 166
    :cond_f
    iget v2, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 167
    if-gtz v2, :cond_10

    .line 169
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 171
    iput-object v5, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 174
    invoke-virtual {v4, v1}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 176
    :cond_10
    :goto_6
    add-int/lit8 p2, p2, -0x1

    .line 179
    goto :goto_5

    .line 181
    :cond_11
    return p1
    .line 182
.end method
