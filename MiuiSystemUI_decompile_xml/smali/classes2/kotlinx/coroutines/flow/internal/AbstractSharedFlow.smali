.class public abstract Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public _subscriptionCount:Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;

.field public nCollectors:I

.field public nextIndex:I

.field public slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;


# virtual methods
.method public final allocateSlot()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->createSlotArray()[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    .line 7
    move-result-object v0

    .line 10
    iput-object v0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    iget v1, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    .line 14
    array-length v2, v0

    .line 16
    if-lt v1, v2, :cond_1

    .line 17
    array-length v1, v0

    .line 19
    mul-int/lit8 v1, v1, 0x2

    .line 20
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 25
    move-object v1, v0

    .line 26
    check-cast v1, [Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    .line 27
    iput-object v1, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    .line 29
    check-cast v0, [Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    .line 31
    :cond_1
    :goto_0
    iget v1, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nextIndex:I

    .line 33
    :cond_2
    aget-object v2, v0, v1

    .line 35
    if-nez v2, :cond_3

    .line 37
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->createSlot()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    .line 39
    move-result-object v2

    .line 42
    aput-object v2, v0, v1

    .line 43
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 45
    array-length v3, v0

    .line 47
    if-lt v1, v3, :cond_4

    .line 48
    const/4 v1, 0x0

    .line 50
    :cond_4
    invoke-virtual {v2, p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;->allocateLocked(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)Z

    .line 51
    move-result v3

    .line 54
    if-eqz v3, :cond_2

    .line 55
    iput v1, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nextIndex:I

    .line 57
    iget v0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 61
    iput v0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    .line 63
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->_subscriptionCount:Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 65
    monitor-exit p0

    .line 67
    if-eqz v0, :cond_5

    .line 68
    monitor-enter v0

    .line 70
    :try_start_1
    iget-object p0, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    .line 71
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 73
    iget-wide v3, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    .line 76
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    .line 78
    move-result-wide v5

    .line 81
    iget v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 82
    int-to-long v7, v1

    .line 84
    add-long/2addr v5, v7

    .line 85
    iget-wide v7, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    .line 86
    sub-long/2addr v5, v7

    .line 88
    long-to-int v1, v5

    .line 89
    int-to-long v5, v1

    .line 90
    add-long/2addr v3, v5

    .line 91
    const-wide/16 v5, 0x1

    .line 92
    sub-long/2addr v3, v5

    .line 94
    long-to-int v1, v3

    .line 95
    array-length v3, p0

    .line 96
    add-int/lit8 v3, v3, -0x1

    .line 97
    and-int/2addr v1, v3

    .line 99
    aget-object p0, p0, v1

    .line 100
    check-cast p0, Ljava/lang/Number;

    .line 102
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 104
    move-result p0

    .line 107
    add-int/lit8 p0, p0, 0x1

    .line 108
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    move-result-object p0

    .line 113
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmit(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    monitor-exit v0

    .line 117
    goto :goto_1

    .line 118
    :catchall_0
    move-exception p0

    .line 119
    monitor-exit v0

    .line 120
    throw p0

    .line 121
    :cond_5
    :goto_1
    return-object v2

    .line 122
    :catchall_1
    move-exception v0

    .line 123
    monitor-exit p0

    .line 124
    throw v0
    .line 125
.end method

.method public abstract createSlot()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
.end method

.method public abstract createSlotArray()[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
.end method

.method public final freeSlot(Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 5
    iput v0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    .line 7
    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->_subscriptionCount:Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;

    .line 9
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    iput v2, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nextIndex:I

    .line 14
    :cond_0
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;->freeLocked(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)[Lkotlin/coroutines/Continuation;

    .line 16
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    monitor-exit p0

    .line 20
    array-length p0, p1

    .line 21
    :goto_0
    if-ge v2, p0, :cond_2

    .line 22
    aget-object v0, p1, v2

    .line 24
    if-eqz v0, :cond_1

    .line 26
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 28
    invoke-interface {v0, v3}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 30
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 33
    goto :goto_0

    .line 35
    :cond_2
    if-eqz v1, :cond_3

    .line 36
    monitor-enter v1

    .line 38
    :try_start_1
    iget-object p0, v1, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    .line 39
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 41
    iget-wide v2, v1, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    .line 44
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    .line 46
    move-result-wide v4

    .line 49
    iget p1, v1, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 50
    int-to-long v6, p1

    .line 52
    add-long/2addr v4, v6

    .line 53
    iget-wide v6, v1, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    .line 54
    sub-long/2addr v4, v6

    .line 56
    long-to-int p1, v4

    .line 57
    int-to-long v4, p1

    .line 58
    add-long/2addr v2, v4

    .line 59
    const-wide/16 v4, 0x1

    .line 60
    sub-long/2addr v2, v4

    .line 62
    long-to-int p1, v2

    .line 63
    array-length v0, p0

    .line 64
    add-int/lit8 v0, v0, -0x1

    .line 65
    and-int/2addr p1, v0

    .line 67
    aget-object p0, p0, p1

    .line 68
    check-cast p0, Ljava/lang/Number;

    .line 70
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 72
    move-result p0

    .line 75
    add-int/lit8 p0, p0, -0x1

    .line 76
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    move-result-object p0

    .line 81
    invoke-virtual {v1, p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmit(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    monitor-exit v1

    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    monitor-exit v1

    .line 88
    throw p0

    .line 89
    :cond_3
    :goto_1
    return-void

    .line 90
    :catchall_1
    move-exception p1

    .line 91
    monitor-exit p0

    .line 92
    throw p1
    .line 93
.end method
