.class public Lkotlinx/coroutines/flow/SharedFlowImpl;
.super Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlinx/coroutines/flow/MutableSharedFlow;
.implements Lkotlinx/coroutines/flow/Flow;
.implements Lkotlinx/coroutines/flow/internal/FusibleFlow;


# instance fields
.field public buffer:[Ljava/lang/Object;

.field public final bufferCapacity:I

.field public bufferSize:I

.field public minCollectorIndex:J

.field public final onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

.field public queueSize:I

.field public final replay:I

.field public replayIndex:J


# direct methods
.method public constructor <init>(IILkotlinx/coroutines/channels/BufferOverflow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;-><init>()V

    .line 2
    iput p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replay:I

    .line 5
    iput p2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    .line 7
    iput-object p3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 9
    return-void
    .line 11
.end method

.method public static collect$suspendImpl(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;
    .locals 8

    .line 1
    instance-of v0, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    move-object v0, p2

    .line 6
    check-cast v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;

    .line 7
    iget v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    .line 9
    const/high16 v2, -0x80000000

    .line 11
    and-int v3, v1, v2

    .line 13
    if-eqz v3, :cond_0

    .line 15
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;

    .line 21
    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;-><init>(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlin/coroutines/Continuation;)V

    .line 23
    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->result:Ljava/lang/Object;

    .line 26
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    iget v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    .line 30
    const/4 v3, 0x2

    .line 32
    const/4 v4, 0x3

    .line 33
    if-eqz v2, :cond_5

    .line 34
    const/4 p0, 0x1

    .line 36
    if-eq v2, p0, :cond_4

    .line 37
    if-eq v2, v3, :cond_3

    .line 39
    if-ne v2, v4, :cond_2

    .line 41
    iget-object p0, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    .line 43
    check-cast p0, Lkotlinx/coroutines/Job;

    .line 45
    iget-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    .line 47
    check-cast p1, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 49
    iget-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    .line 51
    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .line 53
    iget-object v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    .line 55
    check-cast v5, Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 57
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_1
    move-object p2, p1

    .line 62
    move-object p1, v2

    .line 63
    move-object v2, p0

    .line 64
    move-object p0, v5

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 67
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 69
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    throw p0

    .line 74
    :cond_3
    iget-object p0, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    .line 75
    check-cast p0, Lkotlinx/coroutines/Job;

    .line 77
    iget-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    .line 79
    check-cast p1, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 81
    iget-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    .line 83
    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .line 85
    iget-object v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    .line 87
    check-cast v5, Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 89
    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    goto :goto_3

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    goto/16 :goto_5

    .line 96
    :cond_4
    iget-object p0, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    .line 98
    check-cast p0, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 100
    iget-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    .line 102
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 104
    iget-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    .line 106
    check-cast v2, Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 108
    :try_start_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    move-object p2, p0

    .line 113
    move-object p0, v2

    .line 114
    goto :goto_1

    .line 115
    :catchall_1
    move-exception p1

    .line 116
    goto :goto_6

    .line 117
    :cond_5
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 118
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->allocateSlot()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    .line 121
    move-result-object p2

    .line 124
    check-cast p2, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 125
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 127
    move-result-object v2

    .line 130
    sget-object v5, Lkotlinx/coroutines/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/Job$Key;

    .line 131
    invoke-interface {v2, v5}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 133
    move-result-object v2

    .line 136
    check-cast v2, Lkotlinx/coroutines/Job;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 137
    :goto_2
    move-object v5, p0

    .line 139
    move-object p0, v2

    .line 140
    move-object v2, p1

    .line 141
    move-object p1, p2

    .line 142
    :cond_6
    :goto_3
    :try_start_4
    invoke-virtual {v5, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryTakeValue(Lkotlinx/coroutines/flow/SharedFlowSlot;)Ljava/lang/Object;

    .line 143
    move-result-object p2

    .line 146
    sget-object v6, Lkotlinx/coroutines/flow/SharedFlowKt;->NO_VALUE:Lkotlinx/coroutines/internal/Symbol;

    .line 147
    if-ne p2, v6, :cond_7

    .line 149
    iput-object v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    .line 151
    iput-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    .line 153
    iput-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    .line 155
    iput-object p0, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    .line 157
    iput v3, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    .line 159
    invoke-virtual {v5, p1, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->awaitValue(Lkotlinx/coroutines/flow/SharedFlowSlot;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 161
    move-result-object p2

    .line 164
    if-ne p2, v1, :cond_6

    .line 165
    return-object v1

    .line 167
    :cond_7
    if-eqz p0, :cond_9

    .line 168
    invoke-interface {p0}, Lkotlinx/coroutines/Job;->isActive()Z

    .line 170
    move-result v6

    .line 173
    if-eqz v6, :cond_8

    .line 174
    goto :goto_4

    .line 176
    :cond_8
    check-cast p0, Lkotlinx/coroutines/JobSupport;

    .line 177
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getCancellationException()Ljava/util/concurrent/CancellationException;

    .line 179
    move-result-object p0

    .line 182
    throw p0

    .line 183
    :cond_9
    :goto_4
    iput-object v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    .line 184
    iput-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    .line 186
    iput-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    .line 188
    iput-object p0, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    .line 190
    iput v4, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    .line 192
    invoke-interface {v2, p2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 194
    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 197
    if-ne p2, v1, :cond_1

    .line 198
    return-object v1

    .line 200
    :goto_5
    move-object v2, v5

    .line 201
    move-object v7, p1

    .line 202
    move-object p1, p0

    .line 203
    move-object p0, v7

    .line 204
    goto :goto_6

    .line 205
    :catchall_2
    move-exception p1

    .line 206
    move-object v2, p0

    .line 207
    move-object p0, p2

    .line 208
    :goto_6
    invoke-virtual {v2, p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->freeSlot(Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;)V

    .line 209
    throw p1
    .line 212
.end method


# virtual methods
.method public final awaitValue(Lkotlinx/coroutines/flow/SharedFlowSlot;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 2
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 4
    move-result-object p2

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 12
    monitor-enter p0

    .line 15
    :try_start_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryPeekLocked(Lkotlinx/coroutines/flow/SharedFlowSlot;)J

    .line 16
    move-result-wide v1

    .line 19
    const-wide/16 v3, 0x0

    .line 20
    cmp-long p2, v1, v3

    .line 22
    if-gez p2, :cond_0

    .line 24
    iput-object v0, p1, Lkotlinx/coroutines/flow/SharedFlowSlot;->cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 29
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :goto_0
    monitor-exit p0

    .line 34
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 38
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 39
    if-ne p0, p1, :cond_1

    .line 41
    return-object p0

    .line 43
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 44
    return-object p0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    monitor-exit p0

    .line 48
    throw p1
    .line 49
.end method

.method public final cleanupTailLocked()V
    .locals 7

    .line 1
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    .line 6
    const/4 v1, 0x1

    .line 8
    if-gt v0, v1, :cond_0

    .line 9
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    :goto_0
    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    .line 17
    if-lez v1, :cond_1

    .line 19
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    .line 21
    move-result-wide v1

    .line 24
    iget v3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 25
    iget v4, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    .line 27
    add-int/2addr v3, v4

    .line 29
    int-to-long v5, v3

    .line 30
    add-long/2addr v1, v5

    .line 31
    const-wide/16 v5, 0x1

    .line 32
    sub-long/2addr v1, v5

    .line 34
    long-to-int v1, v1

    .line 35
    array-length v2, v0

    .line 36
    add-int/lit8 v2, v2, -0x1

    .line 37
    and-int/2addr v1, v2

    .line 39
    aget-object v1, v0, v1

    .line 40
    sget-object v2, Lkotlinx/coroutines/flow/SharedFlowKt;->NO_VALUE:Lkotlinx/coroutines/internal/Symbol;

    .line 42
    if-ne v1, v2, :cond_1

    .line 44
    add-int/lit8 v4, v4, -0x1

    .line 46
    iput v4, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    .line 48
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    .line 50
    move-result-wide v1

    .line 53
    iget v3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 54
    iget v4, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    .line 56
    add-int/2addr v3, v4

    .line 58
    int-to-long v3, v3

    .line 59
    add-long/2addr v1, v3

    .line 60
    long-to-int v1, v1

    .line 61
    array-length v2, v0

    .line 62
    add-int/lit8 v2, v2, -0x1

    .line 63
    and-int/2addr v1, v2

    .line 65
    const/4 v2, 0x0

    .line 66
    aput-object v2, v0, v1

    .line 67
    goto :goto_0

    .line 69
    :cond_1
    return-void
    .line 70
.end method

.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->collect$suspendImpl(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final createSlot()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .locals 0

    .line 1
    new-instance p0, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 2
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowSlot;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method

.method public final createSlotArray()[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    new-array p0, p0, [Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 3
    return-object p0
    .line 5
.end method

.method public final dropOldestLocked()V
    .locals 10

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    .line 7
    move-result-wide v1

    .line 10
    long-to-int v1, v1

    .line 11
    array-length v2, v0

    .line 12
    add-int/lit8 v2, v2, -0x1

    .line 13
    and-int/2addr v1, v2

    .line 15
    const/4 v2, 0x0

    .line 16
    aput-object v2, v0, v1

    .line 17
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 21
    iput v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 23
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    .line 25
    move-result-wide v0

    .line 28
    const-wide/16 v2, 0x1

    .line 29
    add-long/2addr v0, v2

    .line 31
    iget-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    .line 32
    cmp-long v2, v2, v0

    .line 34
    if-gez v2, :cond_0

    .line 36
    iput-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    .line 38
    :cond_0
    iget-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    .line 40
    cmp-long v2, v2, v0

    .line 42
    if-gez v2, :cond_3

    .line 44
    iget v2, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    .line 46
    if-eqz v2, :cond_2

    .line 48
    iget-object v2, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    .line 50
    if-eqz v2, :cond_2

    .line 52
    array-length v3, v2

    .line 54
    const/4 v4, 0x0

    .line 55
    :goto_0
    if-ge v4, v3, :cond_2

    .line 56
    aget-object v5, v2, v4

    .line 58
    if-eqz v5, :cond_1

    .line 60
    check-cast v5, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 62
    iget-wide v6, v5, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    .line 64
    const-wide/16 v8, 0x0

    .line 66
    cmp-long v8, v6, v8

    .line 68
    if-ltz v8, :cond_1

    .line 70
    cmp-long v6, v6, v0

    .line 72
    if-gez v6, :cond_1

    .line 74
    iput-wide v0, v5, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    .line 76
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 78
    goto :goto_0

    .line 80
    :cond_2
    iput-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    .line 81
    :cond_3
    return-void
    .line 83
.end method

.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmit(Ljava/lang/Object;)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    goto/16 :goto_3

    .line 10
    :cond_0
    new-instance v6, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 12
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 14
    move-result-object p2

    .line 17
    const/4 v7, 0x1

    .line 18
    invoke-direct {v6, v7, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 19
    invoke-virtual {v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 22
    sget-object p2, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->EMPTY_RESUMES:[Lkotlin/coroutines/Continuation;

    .line 25
    monitor-enter p0

    .line 27
    :try_start_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmitLocked(Ljava/lang/Object;)Z

    .line 28
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 34
    invoke-virtual {v6, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->findSlotsToResumeLocked([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    .line 39
    move-result-object p1

    .line 42
    const/4 p2, 0x0

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance v8, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;

    .line 45
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    .line 47
    move-result-wide v0

    .line 50
    iget v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 51
    iget v3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    .line 53
    add-int/2addr v2, v3

    .line 55
    int-to-long v2, v2

    .line 56
    add-long/2addr v2, v0

    .line 57
    move-object v0, v8

    .line 58
    move-object v1, p0

    .line 59
    move-object v4, p1

    .line 60
    move-object v5, v6

    .line 61
    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;-><init>(Lkotlinx/coroutines/flow/SharedFlowImpl;JLjava/lang/Object;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    .line 62
    invoke-virtual {p0, v8}, Lkotlinx/coroutines/flow/SharedFlowImpl;->enqueueLocked(Ljava/lang/Object;)V

    .line 65
    iget p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    .line 68
    add-int/2addr p1, v7

    .line 70
    iput p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    .line 71
    iget p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    .line 73
    if-nez p1, :cond_2

    .line 75
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->findSlotsToResumeLocked([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    .line 77
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_2
    move-object p1, p2

    .line 81
    move-object p2, v8

    .line 82
    :goto_0
    monitor-exit p0

    .line 83
    if-eqz p2, :cond_3

    .line 84
    new-instance p0, Lkotlinx/coroutines/DisposeOnCancel;

    .line 86
    invoke-direct {p0, p2}, Lkotlinx/coroutines/DisposeOnCancel;-><init>(Lkotlinx/coroutines/DisposableHandle;)V

    .line 88
    invoke-virtual {v6, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 91
    :cond_3
    array-length p0, p1

    .line 94
    const/4 p2, 0x0

    .line 95
    :goto_1
    if-ge p2, p0, :cond_5

    .line 96
    aget-object v0, p1, p2

    .line 98
    if-eqz v0, :cond_4

    .line 100
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 102
    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 104
    :cond_4
    add-int/lit8 p2, p2, 0x1

    .line 107
    goto :goto_1

    .line 109
    :cond_5
    invoke-virtual {v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 110
    move-result-object p0

    .line 113
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 114
    if-ne p0, p1, :cond_6

    .line 116
    goto :goto_2

    .line 118
    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 119
    :goto_2
    if-ne p0, p1, :cond_7

    .line 121
    goto :goto_3

    .line 123
    :cond_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 124
    :goto_3
    return-object p0

    .line 126
    :catchall_0
    move-exception p1

    .line 127
    monitor-exit p0

    .line 128
    throw p1
    .line 129
.end method

.method public final enqueueLocked(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 2
    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    .line 4
    add-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    .line 7
    const/4 v2, 0x2

    .line 9
    if-nez v1, :cond_0

    .line 10
    const/4 v1, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {p0, v3, v2, v1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->growBuffer(II[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    array-length v3, v1

    .line 19
    if-lt v0, v3, :cond_1

    .line 20
    array-length v3, v1

    .line 22
    mul-int/2addr v3, v2

    .line 23
    invoke-virtual {p0, v0, v3, v1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->growBuffer(II[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 27
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    .line 28
    move-result-wide v2

    .line 31
    int-to-long v4, v0

    .line 32
    add-long/2addr v2, v4

    .line 33
    long-to-int p0, v2

    .line 34
    array-length v0, v1

    .line 35
    add-int/lit8 v0, v0, -0x1

    .line 36
    and-int/2addr p0, v0

    .line 38
    aput-object p1, v1, p0

    .line 39
    return-void
    .line 41
.end method

.method public final findSlotsToResumeLocked([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;
    .locals 10

    .line 1
    array-length v0, p1

    .line 2
    iget v1, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    .line 3
    if-eqz v1, :cond_3

    .line 5
    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    .line 7
    if-eqz v1, :cond_3

    .line 9
    array-length v2, v1

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v2, :cond_3

    .line 13
    aget-object v4, v1, v3

    .line 15
    if-eqz v4, :cond_2

    .line 17
    check-cast v4, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 19
    iget-object v5, v4, Lkotlinx/coroutines/flow/SharedFlowSlot;->cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 21
    if-nez v5, :cond_0

    .line 23
    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {p0, v4}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryPeekLocked(Lkotlinx/coroutines/flow/SharedFlowSlot;)J

    .line 26
    move-result-wide v6

    .line 29
    const-wide/16 v8, 0x0

    .line 30
    cmp-long v6, v6, v8

    .line 32
    if-ltz v6, :cond_2

    .line 34
    array-length v6, p1

    .line 36
    if-lt v0, v6, :cond_1

    .line 37
    array-length v6, p1

    .line 39
    const/4 v7, 0x2

    .line 40
    mul-int/2addr v6, v7

    .line 41
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    .line 42
    move-result v6

    .line 45
    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 49
    :cond_1
    move-object v6, p1

    .line 50
    check-cast v6, [Lkotlin/coroutines/Continuation;

    .line 51
    add-int/lit8 v7, v0, 0x1

    .line 53
    aput-object v5, v6, v0

    .line 55
    const/4 v0, 0x0

    .line 57
    iput-object v0, v4, Lkotlinx/coroutines/flow/SharedFlowSlot;->cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 58
    move v0, v7

    .line 60
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 61
    goto :goto_0

    .line 63
    :cond_3
    check-cast p1, [Lkotlin/coroutines/Continuation;

    .line 64
    return-object p1
    .line 66
.end method

.method public final fuse(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/Flow;
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    const/4 v0, -0x3

    .line 4
    if-ne p2, v0, :cond_1

    .line 5
    :cond_0
    sget-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 7
    if-ne p3, v0, :cond_1

    .line 9
    goto :goto_0

    .line 11
    :cond_1
    new-instance v0, Lkotlinx/coroutines/flow/internal/ChannelFlowOperatorImpl;

    .line 12
    invoke-direct {v0, p2, p1, p3, p0}, Lkotlinx/coroutines/flow/internal/ChannelFlowOperatorImpl;-><init>(ILkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/BufferOverflow;Lkotlinx/coroutines/flow/Flow;)V

    .line 14
    move-object p0, v0

    .line 17
    :goto_0
    return-object p0
    .line 18
.end method

.method public final getHead()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    .line 2
    iget-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    .line 4
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 6
    move-result-wide v0

    .line 9
    return-wide v0
    .line 10
.end method

.method public final growBuffer(II[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-lez p2, :cond_0

    .line 3
    const/4 v1, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move v1, v0

    .line 7
    :goto_0
    if-eqz v1, :cond_3

    .line 8
    new-array v1, p2, [Ljava/lang/Object;

    .line 10
    iput-object v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    .line 12
    if-nez p3, :cond_1

    .line 14
    return-object v1

    .line 16
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    .line 17
    move-result-wide v2

    .line 20
    :goto_1
    if-ge v0, p1, :cond_2

    .line 21
    int-to-long v4, v0

    .line 23
    add-long/2addr v4, v2

    .line 24
    long-to-int p0, v4

    .line 25
    array-length v4, p3

    .line 26
    add-int/lit8 v4, v4, -0x1

    .line 27
    and-int/2addr v4, p0

    .line 29
    aget-object v4, p3, v4

    .line 30
    add-int/lit8 v5, p2, -0x1

    .line 32
    and-int/2addr p0, v5

    .line 34
    aput-object v4, v1, p0

    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 37
    goto :goto_1

    .line 39
    :cond_2
    return-object v1

    .line 40
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 41
    const-string p1, "Buffer size overflow"

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 48
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p0
    .line 52
.end method

.method public final resetReplayCache()V
    .locals 13

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    .line 3
    move-result-wide v0

    .line 6
    iget v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 7
    int-to-long v2, v2

    .line 9
    add-long v5, v0, v2

    .line 10
    iget-wide v7, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    .line 12
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    .line 14
    move-result-wide v0

    .line 17
    iget v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 18
    int-to-long v2, v2

    .line 20
    add-long v9, v0, v2

    .line 21
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    .line 23
    move-result-wide v0

    .line 26
    iget v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 27
    int-to-long v2, v2

    .line 29
    add-long/2addr v0, v2

    .line 30
    iget v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    .line 31
    int-to-long v2, v2

    .line 33
    add-long v11, v0, v2

    .line 34
    move-object v4, p0

    .line 36
    invoke-virtual/range {v4 .. v12}, Lkotlinx/coroutines/flow/SharedFlowImpl;->updateBufferLocked(JJJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    monitor-exit p0

    .line 43
    throw v0
    .line 44
.end method

.method public final tryEmit(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->EMPTY_RESUMES:[Lkotlin/coroutines/Continuation;

    .line 2
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmitLocked(Ljava/lang/Object;)Z

    .line 5
    move-result p1

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->findSlotsToResumeLocked([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    .line 12
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move p1, v1

    .line 18
    :goto_0
    monitor-exit p0

    .line 19
    array-length p0, v0

    .line 20
    :goto_1
    if-ge v1, p0, :cond_2

    .line 21
    aget-object v2, v0, v1

    .line 23
    if-eqz v2, :cond_1

    .line 25
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 27
    invoke-interface {v2, v3}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 29
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 32
    goto :goto_1

    .line 34
    :cond_2
    return p1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    monitor-exit p0

    .line 37
    throw p1
    .line 38
.end method

.method public final tryEmitLocked(Ljava/lang/Object;)Z
    .locals 12

    .line 1
    iget v1, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    .line 2
    iget v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replay:I

    .line 4
    const/4 v9, 0x1

    .line 6
    if-nez v1, :cond_2

    .line 7
    if-nez v2, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->enqueueLocked(Ljava/lang/Object;)V

    .line 12
    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 15
    add-int/2addr v1, v9

    .line 17
    iput v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 18
    if-le v1, v2, :cond_1

    .line 20
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->dropOldestLocked()V

    .line 22
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    .line 25
    move-result-wide v1

    .line 28
    iget v3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 29
    int-to-long v3, v3

    .line 31
    add-long/2addr v1, v3

    .line 32
    iput-wide v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    .line 33
    :goto_0
    return v9

    .line 35
    :cond_2
    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 36
    iget v3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    .line 38
    if-lt v1, v3, :cond_5

    .line 40
    iget-wide v4, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    .line 42
    iget-wide v6, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    .line 44
    cmp-long v1, v4, v6

    .line 46
    if-gtz v1, :cond_5

    .line 48
    iget-object v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 50
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 52
    move-result v1

    .line 55
    if-eqz v1, :cond_4

    .line 56
    const/4 v4, 0x2

    .line 58
    if-eq v1, v4, :cond_3

    .line 59
    goto :goto_1

    .line 61
    :cond_3
    return v9

    .line 62
    :cond_4
    const/4 v0, 0x0

    .line 63
    return v0

    .line 64
    :cond_5
    :goto_1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->enqueueLocked(Ljava/lang/Object;)V

    .line 65
    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 68
    add-int/2addr v1, v9

    .line 70
    iput v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 71
    if-le v1, v3, :cond_6

    .line 73
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->dropOldestLocked()V

    .line 75
    :cond_6
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    .line 78
    move-result-wide v3

    .line 81
    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 82
    int-to-long v5, v1

    .line 84
    add-long/2addr v3, v5

    .line 85
    iget-wide v5, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    .line 86
    sub-long/2addr v3, v5

    .line 88
    long-to-int v1, v3

    .line 89
    if-le v1, v2, :cond_7

    .line 90
    const-wide/16 v1, 0x1

    .line 92
    add-long/2addr v1, v5

    .line 94
    iget-wide v3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    .line 95
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    .line 97
    move-result-wide v5

    .line 100
    iget v7, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 101
    int-to-long v7, v7

    .line 103
    add-long/2addr v5, v7

    .line 104
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    .line 105
    move-result-wide v7

    .line 108
    iget v10, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 109
    int-to-long v10, v10

    .line 111
    add-long/2addr v7, v10

    .line 112
    iget v10, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    .line 113
    int-to-long v10, v10

    .line 115
    add-long/2addr v7, v10

    .line 116
    move-object v0, p0

    .line 117
    invoke-virtual/range {v0 .. v8}, Lkotlinx/coroutines/flow/SharedFlowImpl;->updateBufferLocked(JJJJ)V

    .line 118
    :cond_7
    return v9
    .line 121
.end method

.method public final tryPeekLocked(Lkotlinx/coroutines/flow/SharedFlowSlot;)J
    .locals 6

    .line 1
    iget-wide v0, p1, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    .line 4
    move-result-wide v2

    .line 7
    iget p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 8
    int-to-long v4, p1

    .line 10
    add-long/2addr v2, v4

    .line 11
    cmp-long p1, v0, v2

    .line 12
    if-gez p1, :cond_0

    .line 14
    return-wide v0

    .line 16
    :cond_0
    iget p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    .line 17
    const-wide/16 v2, -0x1

    .line 19
    if-lez p1, :cond_1

    .line 21
    return-wide v2

    .line 23
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    .line 24
    move-result-wide v4

    .line 27
    cmp-long p1, v0, v4

    .line 28
    if-lez p1, :cond_2

    .line 30
    return-wide v2

    .line 32
    :cond_2
    iget p0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    .line 33
    if-nez p0, :cond_3

    .line 35
    return-wide v2

    .line 37
    :cond_3
    return-wide v0
    .line 38
.end method

.method public final tryTakeValue(Lkotlinx/coroutines/flow/SharedFlowSlot;)Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->EMPTY_RESUMES:[Lkotlin/coroutines/Continuation;

    .line 2
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryPeekLocked(Lkotlinx/coroutines/flow/SharedFlowSlot;)J

    .line 5
    move-result-wide v1

    .line 8
    const-wide/16 v3, 0x0

    .line 9
    cmp-long v3, v1, v3

    .line 11
    if-gez v3, :cond_0

    .line 13
    sget-object p1, Lkotlinx/coroutines/flow/SharedFlowKt;->NO_VALUE:Lkotlinx/coroutines/internal/Symbol;

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    iget-wide v3, p1, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    .line 18
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    .line 20
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 22
    long-to-int v5, v1

    .line 25
    array-length v6, v0

    .line 26
    add-int/lit8 v6, v6, -0x1

    .line 27
    and-int/2addr v5, v6

    .line 29
    aget-object v0, v0, v5

    .line 30
    instance-of v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;

    .line 32
    if-eqz v5, :cond_1

    .line 34
    check-cast v0, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;

    .line 36
    iget-object v0, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;->value:Ljava/lang/Object;

    .line 38
    :cond_1
    const-wide/16 v5, 0x1

    .line 40
    add-long/2addr v1, v5

    .line 42
    iput-wide v1, p1, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    .line 43
    invoke-virtual {p0, v3, v4}, Lkotlinx/coroutines/flow/SharedFlowImpl;->updateCollectorIndexLocked$external__kotlinx_coroutines__android_common__kotlinx_coroutines(J)[Lkotlin/coroutines/Continuation;

    .line 45
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    move-object v7, v0

    .line 49
    move-object v0, p1

    .line 50
    move-object p1, v7

    .line 51
    :goto_0
    monitor-exit p0

    .line 52
    array-length p0, v0

    .line 53
    const/4 v1, 0x0

    .line 54
    :goto_1
    if-ge v1, p0, :cond_3

    .line 55
    aget-object v2, v0, v1

    .line 57
    if-eqz v2, :cond_2

    .line 59
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 61
    invoke-interface {v2, v3}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 63
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 66
    goto :goto_1

    .line 68
    :cond_3
    return-object p1

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    monitor-exit p0

    .line 71
    throw p1
    .line 72
.end method

.method public final updateBufferLocked(JJJJ)V
    .locals 7

    .line 1
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 2
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    .line 6
    move-result-wide v2

    .line 9
    :goto_0
    cmp-long v4, v2, v0

    .line 10
    if-gez v4, :cond_0

    .line 12
    iget-object v4, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    .line 14
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 16
    long-to-int v5, v2

    .line 19
    array-length v6, v4

    .line 20
    add-int/lit8 v6, v6, -0x1

    .line 21
    and-int/2addr v5, v6

    .line 23
    const/4 v6, 0x0

    .line 24
    aput-object v6, v4, v5

    .line 25
    const-wide/16 v4, 0x1

    .line 27
    add-long/2addr v2, v4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iput-wide p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    .line 31
    iput-wide p3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    .line 33
    sub-long p1, p5, v0

    .line 35
    long-to-int p1, p1

    .line 37
    iput p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 38
    sub-long/2addr p7, p5

    .line 40
    long-to-int p1, p7

    .line 41
    iput p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    .line 42
    return-void
    .line 44
.end method

.method public final updateCollectorIndexLocked$external__kotlinx_coroutines__android_common__kotlinx_coroutines(J)[Lkotlin/coroutines/Continuation;
    .locals 22

    .line 1
    move-object/from16 v9, p0

    .line 2
    iget-wide v0, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    .line 4
    cmp-long v0, p1, v0

    .line 6
    sget-object v1, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->EMPTY_RESUMES:[Lkotlin/coroutines/Continuation;

    .line 8
    if-lez v0, :cond_0

    .line 10
    return-object v1

    .line 12
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    .line 13
    move-result-wide v2

    .line 16
    iget v0, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 17
    int-to-long v4, v0

    .line 19
    add-long/2addr v4, v2

    .line 20
    const-wide/16 v6, 0x1

    .line 21
    iget v0, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    .line 23
    if-nez v0, :cond_1

    .line 25
    iget v8, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    .line 27
    if-lez v8, :cond_1

    .line 29
    add-long/2addr v4, v6

    .line 31
    :cond_1
    iget v8, v9, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    .line 32
    if-eqz v8, :cond_3

    .line 34
    iget-object v8, v9, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    .line 36
    if-eqz v8, :cond_3

    .line 38
    array-length v11, v8

    .line 40
    const/4 v12, 0x0

    .line 41
    :goto_0
    if-ge v12, v11, :cond_3

    .line 42
    aget-object v13, v8, v12

    .line 44
    if-eqz v13, :cond_2

    .line 46
    check-cast v13, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 48
    iget-wide v13, v13, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    .line 50
    const-wide/16 v15, 0x0

    .line 52
    cmp-long v15, v13, v15

    .line 54
    if-ltz v15, :cond_2

    .line 56
    cmp-long v15, v13, v4

    .line 58
    if-gez v15, :cond_2

    .line 60
    move-wide v4, v13

    .line 62
    :cond_2
    add-int/lit8 v12, v12, 0x1

    .line 63
    goto :goto_0

    .line 65
    :cond_3
    iget-wide v11, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    .line 66
    cmp-long v8, v4, v11

    .line 68
    if-gtz v8, :cond_4

    .line 70
    return-object v1

    .line 72
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    .line 73
    move-result-wide v11

    .line 76
    iget v8, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 77
    int-to-long v13, v8

    .line 79
    add-long/2addr v11, v13

    .line 80
    iget v8, v9, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    .line 81
    if-lez v8, :cond_5

    .line 83
    sub-long v13, v11, v4

    .line 85
    long-to-int v8, v13

    .line 87
    iget v13, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    .line 88
    sub-int v8, v0, v8

    .line 90
    invoke-static {v13, v8}, Ljava/lang/Math;->min(II)I

    .line 92
    move-result v8

    .line 95
    goto :goto_1

    .line 96
    :cond_5
    iget v8, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    .line 97
    :goto_1
    iget v13, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    .line 99
    int-to-long v13, v13

    .line 101
    add-long/2addr v13, v11

    .line 102
    sget-object v15, Lkotlinx/coroutines/flow/SharedFlowKt;->NO_VALUE:Lkotlinx/coroutines/internal/Symbol;

    .line 103
    if-lez v8, :cond_9

    .line 105
    new-array v1, v8, [Lkotlin/coroutines/Continuation;

    .line 107
    iget-object v10, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    .line 109
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 111
    move-wide v6, v11

    .line 114
    const/16 v17, 0x0

    .line 115
    :goto_2
    cmp-long v18, v11, v13

    .line 117
    if-gez v18, :cond_7

    .line 119
    move-wide/from16 v18, v4

    .line 121
    long-to-int v4, v11

    .line 123
    array-length v5, v10

    .line 124
    add-int/lit8 v5, v5, -0x1

    .line 125
    and-int/2addr v5, v4

    .line 127
    aget-object v5, v10, v5

    .line 128
    if-eq v5, v15, :cond_6

    .line 130
    check-cast v5, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;

    .line 132
    move-wide/from16 v20, v13

    .line 134
    add-int/lit8 v13, v17, 0x1

    .line 136
    iget-object v14, v5, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;->cont:Lkotlin/coroutines/Continuation;

    .line 138
    aput-object v14, v1, v17

    .line 140
    array-length v14, v10

    .line 142
    add-int/lit8 v14, v14, -0x1

    .line 143
    and-int/2addr v4, v14

    .line 145
    aput-object v15, v10, v4

    .line 146
    long-to-int v4, v6

    .line 148
    array-length v14, v10

    .line 149
    add-int/lit8 v14, v14, -0x1

    .line 150
    and-int/2addr v4, v14

    .line 152
    iget-object v5, v5, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;->value:Ljava/lang/Object;

    .line 153
    aput-object v5, v10, v4

    .line 155
    const-wide/16 v4, 0x1

    .line 157
    add-long/2addr v6, v4

    .line 159
    if-ge v13, v8, :cond_8

    .line 160
    move/from16 v17, v13

    .line 162
    goto :goto_3

    .line 164
    :cond_6
    move-wide/from16 v20, v13

    .line 165
    const-wide/16 v4, 0x1

    .line 167
    :goto_3
    add-long/2addr v11, v4

    .line 169
    move-wide/from16 v4, v18

    .line 170
    move-wide/from16 v13, v20

    .line 172
    goto :goto_2

    .line 174
    :cond_7
    move-wide/from16 v18, v4

    .line 175
    move-wide/from16 v20, v13

    .line 177
    :cond_8
    move-wide v11, v6

    .line 179
    goto :goto_4

    .line 180
    :cond_9
    move-wide/from16 v18, v4

    .line 181
    move-wide/from16 v20, v13

    .line 183
    :goto_4
    move-object v10, v1

    .line 185
    sub-long v1, v11, v2

    .line 186
    long-to-int v1, v1

    .line 188
    iget v2, v9, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    .line 189
    if-nez v2, :cond_a

    .line 191
    move-wide v3, v11

    .line 193
    goto :goto_5

    .line 194
    :cond_a
    move-wide/from16 v3, v18

    .line 195
    :goto_5
    iget-wide v5, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    .line 197
    iget v2, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->replay:I

    .line 199
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 201
    move-result v1

    .line 204
    int-to-long v1, v1

    .line 205
    sub-long v1, v11, v1

    .line 206
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 208
    move-result-wide v1

    .line 211
    if-nez v0, :cond_b

    .line 212
    cmp-long v0, v1, v20

    .line 214
    if-gez v0, :cond_b

    .line 216
    iget-object v0, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    .line 218
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 220
    long-to-int v5, v1

    .line 223
    array-length v6, v0

    .line 224
    add-int/lit8 v6, v6, -0x1

    .line 225
    and-int/2addr v5, v6

    .line 227
    aget-object v0, v0, v5

    .line 228
    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 230
    move-result v0

    .line 233
    if-eqz v0, :cond_b

    .line 234
    const-wide/16 v5, 0x1

    .line 236
    add-long/2addr v11, v5

    .line 238
    add-long/2addr v1, v5

    .line 239
    :cond_b
    move-wide v5, v11

    .line 240
    move-object/from16 v0, p0

    .line 241
    move-wide/from16 v7, v20

    .line 243
    invoke-virtual/range {v0 .. v8}, Lkotlinx/coroutines/flow/SharedFlowImpl;->updateBufferLocked(JJJJ)V

    .line 245
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->cleanupTailLocked()V

    .line 248
    array-length v0, v10

    .line 251
    const/4 v1, 0x1

    .line 252
    if-nez v0, :cond_c

    .line 253
    move v0, v1

    .line 255
    goto :goto_6

    .line 256
    :cond_c
    const/4 v0, 0x0

    .line 257
    :goto_6
    xor-int/2addr v0, v1

    .line 258
    if-eqz v0, :cond_d

    .line 259
    invoke-virtual {v9, v10}, Lkotlinx/coroutines/flow/SharedFlowImpl;->findSlotsToResumeLocked([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    .line 261
    move-result-object v10

    .line 264
    :cond_d
    return-object v10
    .line 265
.end method
