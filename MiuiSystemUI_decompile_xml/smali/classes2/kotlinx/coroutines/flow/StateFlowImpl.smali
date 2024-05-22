.class public final Lkotlinx/coroutines/flow/StateFlowImpl;
.super Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlinx/coroutines/flow/MutableStateFlow;
.implements Lkotlinx/coroutines/flow/Flow;
.implements Lkotlinx/coroutines/flow/internal/FusibleFlow;


# instance fields
.field public final _state:Lkotlinx/atomicfu/AtomicRef;

.field public sequence:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;-><init>()V

    .line 2
    new-instance v0, Lkotlinx/atomicfu/AtomicRef;

    .line 5
    invoke-direct {v0, p1}, Lkotlinx/atomicfu/AtomicRef;-><init>(Ljava/lang/Object;)V

    .line 7
    iput-object v0, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    .line 1
    instance-of v0, p2, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    move-object v0, p2

    .line 6
    check-cast v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;

    .line 7
    iget v1, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->label:I

    .line 9
    const/high16 v2, -0x80000000

    .line 11
    and-int v3, v1, v2

    .line 13
    if-eqz v3, :cond_0

    .line 15
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->label:I

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;

    .line 21
    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;Lkotlin/coroutines/Continuation;)V

    .line 23
    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->result:Ljava/lang/Object;

    .line 26
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    iget v2, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->label:I

    .line 30
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x2

    .line 33
    const/4 v5, 0x3

    .line 34
    const/4 v6, 0x0

    .line 35
    if-eqz v2, :cond_4

    .line 36
    if-eq v2, v3, :cond_3

    .line 38
    if-eq v2, v4, :cond_2

    .line 40
    if-ne v2, v5, :cond_1

    .line 42
    iget-object p0, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$4:Ljava/lang/Object;

    .line 44
    iget-object p1, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    .line 46
    check-cast p1, Lkotlinx/coroutines/Job;

    .line 48
    iget-object v2, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    .line 50
    check-cast v2, Lkotlinx/coroutines/flow/StateFlowSlot;

    .line 52
    iget-object v7, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    .line 54
    check-cast v7, Lkotlinx/coroutines/flow/FlowCollector;

    .line 56
    iget-object v8, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    .line 58
    check-cast v8, Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 60
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    move-object p2, v1

    .line 65
    goto :goto_2

    .line 66
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 67
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 69
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    throw p0

    .line 74
    :cond_2
    iget-object p0, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$4:Ljava/lang/Object;

    .line 75
    iget-object p1, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    .line 77
    check-cast p1, Lkotlinx/coroutines/Job;

    .line 79
    iget-object v2, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    .line 81
    check-cast v2, Lkotlinx/coroutines/flow/StateFlowSlot;

    .line 83
    iget-object v7, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    .line 85
    check-cast v7, Lkotlinx/coroutines/flow/FlowCollector;

    .line 87
    iget-object v8, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    .line 89
    check-cast v8, Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 91
    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    move-object p2, v1

    .line 96
    goto/16 :goto_5

    .line 97
    :cond_3
    iget-object p0, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    .line 99
    check-cast p0, Lkotlinx/coroutines/flow/StateFlowSlot;

    .line 101
    iget-object p1, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    .line 103
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 105
    iget-object v2, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    .line 107
    check-cast v2, Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 109
    :try_start_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 111
    goto :goto_1

    .line 114
    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->allocateSlot()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    .line 118
    move-result-object p2

    .line 121
    check-cast p2, Lkotlinx/coroutines/flow/StateFlowSlot;

    .line 122
    move-object v2, p0

    .line 124
    move-object p0, p2

    .line 125
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 126
    move-result-object p2

    .line 129
    sget-object v7, Lkotlinx/coroutines/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/Job$Key;

    .line 130
    invoke-interface {p2, v7}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 132
    move-result-object p2

    .line 135
    check-cast p2, Lkotlinx/coroutines/Job;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 136
    move-object v7, p1

    .line 138
    move-object p1, p2

    .line 139
    move-object p2, v1

    .line 140
    move-object v8, v2

    .line 141
    move-object v2, p0

    .line 142
    move-object p0, v6

    .line 143
    :cond_5
    :goto_2
    :try_start_4
    iget-object v9, v8, Lkotlinx/coroutines/flow/StateFlowImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 144
    iget-object v9, v9, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 146
    if-eqz p1, :cond_7

    .line 148
    invoke-interface {p1}, Lkotlinx/coroutines/Job;->isActive()Z

    .line 150
    move-result v10

    .line 153
    if-eqz v10, :cond_6

    .line 154
    goto :goto_3

    .line 156
    :cond_6
    check-cast p1, Lkotlinx/coroutines/JobSupport;

    .line 157
    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport;->getCancellationException()Ljava/util/concurrent/CancellationException;

    .line 159
    move-result-object p0

    .line 162
    throw p0

    .line 163
    :catchall_0
    move-exception p0

    .line 164
    goto/16 :goto_7

    .line 165
    :cond_7
    :goto_3
    if-eqz p0, :cond_8

    .line 167
    invoke-static {p0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 169
    move-result v10

    .line 172
    if-nez v10, :cond_b

    .line 173
    :cond_8
    sget-object p0, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    .line 175
    if-ne v9, p0, :cond_9

    .line 177
    move-object p0, v6

    .line 179
    goto :goto_4

    .line 180
    :cond_9
    move-object p0, v9

    .line 181
    :goto_4
    iput-object v8, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    .line 182
    iput-object v7, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    .line 184
    iput-object v2, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    .line 186
    iput-object p1, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    .line 188
    iput-object v9, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$4:Ljava/lang/Object;

    .line 190
    iput v4, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->label:I

    .line 192
    invoke-interface {v7, p0, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 194
    move-result-object p0

    .line 197
    if-ne p0, v1, :cond_a

    .line 198
    return-object v1

    .line 200
    :cond_a
    move-object p0, v9

    .line 201
    :cond_b
    :goto_5
    sget-object v9, Lkotlinx/coroutines/flow/StateFlowKt;->NONE:Lkotlinx/coroutines/internal/Symbol;

    .line 202
    iget-object v10, v2, Lkotlinx/coroutines/flow/StateFlowSlot;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 204
    invoke-virtual {v10, v9}, Lkotlinx/atomicfu/AtomicRef;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    move-result-object v10

    .line 209
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 210
    sget-object v11, Lkotlinx/coroutines/flow/StateFlowKt;->PENDING:Lkotlinx/coroutines/internal/Symbol;

    .line 213
    if-ne v10, v11, :cond_c

    .line 215
    move v10, v3

    .line 217
    goto :goto_6

    .line 218
    :cond_c
    const/4 v10, 0x0

    .line 219
    :goto_6
    if-nez v10, :cond_5

    .line 220
    iput-object v8, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    .line 222
    iput-object v7, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    .line 224
    iput-object v2, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    .line 226
    iput-object p1, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    .line 228
    iput-object p0, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->L$4:Ljava/lang/Object;

    .line 230
    iput v5, v0, Lkotlinx/coroutines/flow/StateFlowImpl$collect$1;->label:I

    .line 232
    new-instance v10, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 234
    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 236
    move-result-object v11

    .line 239
    invoke-direct {v10, v3, v11}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 240
    invoke-virtual {v10}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 243
    iget-object v11, v2, Lkotlinx/coroutines/flow/StateFlowSlot;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 246
    invoke-virtual {v11, v9, v10}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 248
    move-result v9

    .line 251
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 252
    if-nez v9, :cond_d

    .line 254
    invoke-virtual {v10, v11}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 256
    :cond_d
    invoke-virtual {v10}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 259
    move-result-object v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 262
    if-ne v9, p2, :cond_e

    .line 263
    move-object v11, v9

    .line 265
    :cond_e
    if-ne v11, v1, :cond_5

    .line 266
    return-object v1

    .line 268
    :catchall_1
    move-exception p1

    .line 269
    move-object v8, v2

    .line 270
    move-object v2, p0

    .line 271
    move-object p0, p1

    .line 272
    :goto_7
    invoke-virtual {v8, v2}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->freeSlot(Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;)V

    .line 273
    throw p0
    .line 276
.end method

.method public final createSlot()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .locals 0

    .line 1
    new-instance p0, Lkotlinx/coroutines/flow/StateFlowSlot;

    .line 2
    invoke-direct {p0}, Lkotlinx/coroutines/flow/StateFlowSlot;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method

.method public final createSlotArray()[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    new-array p0, p0, [Lkotlinx/coroutines/flow/StateFlowSlot;

    .line 3
    return-object p0
    .line 5
.end method

.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    return-object p0
    .line 7
.end method

.method public final fuse(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/Flow;
    .locals 1

    .line 1
    if-ltz p2, :cond_0

    .line 2
    const/4 v0, 0x2

    .line 4
    if-ge p2, v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-nez v0, :cond_1

    .line 10
    const/4 v0, -0x2

    .line 12
    if-ne p2, v0, :cond_2

    .line 13
    :cond_1
    sget-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 15
    if-ne p3, v0, :cond_2

    .line 17
    goto :goto_1

    .line 19
    :cond_2
    if-eqz p2, :cond_3

    .line 20
    const/4 v0, -0x3

    .line 22
    if-ne p2, v0, :cond_4

    .line 23
    :cond_3
    sget-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 25
    if-ne p3, v0, :cond_4

    .line 27
    goto :goto_1

    .line 29
    :cond_4
    new-instance v0, Lkotlinx/coroutines/flow/internal/ChannelFlowOperatorImpl;

    .line 30
    invoke-direct {v0, p2, p1, p3, p0}, Lkotlinx/coroutines/flow/internal/ChannelFlowOperatorImpl;-><init>(ILkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/BufferOverflow;Lkotlinx/coroutines/flow/Flow;)V

    .line 32
    move-object p0, v0

    .line 35
    :goto_1
    return-object p0
    .line 36
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    .line 2
    iget-object p0, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 4
    iget-object p0, p0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 6
    if-ne p0, v0, :cond_0

    .line 8
    const/4 p0, 0x0

    .line 10
    :cond_0
    return-object p0
    .line 11
.end method

.method public final resetReplayCache()V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    const-string v0, "MutableStateFlow.resetReplayCache is not supported"

    .line 4
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    throw p0
    .line 9
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 9

    .line 1
    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    .line 4
    :cond_0
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 7
    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 9
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    if-eqz v0, :cond_1

    .line 15
    monitor-exit p0

    .line 17
    goto/16 :goto_3

    .line 18
    :cond_1
    :try_start_1
    iget-object v0, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 20
    invoke-virtual {v0, p1}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    .line 22
    iget p1, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->sequence:I

    .line 25
    and-int/lit8 v0, p1, 0x1

    .line 27
    if-nez v0, :cond_9

    .line 29
    add-int/lit8 p1, p1, 0x1

    .line 31
    iput p1, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->sequence:I

    .line 33
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35
    monitor-exit p0

    .line 37
    :goto_0
    check-cast v0, [Lkotlinx/coroutines/flow/StateFlowSlot;

    .line 38
    if-eqz v0, :cond_7

    .line 40
    array-length v1, v0

    .line 42
    const/4 v2, 0x0

    .line 43
    :goto_1
    if-ge v2, v1, :cond_7

    .line 44
    aget-object v3, v0, v2

    .line 46
    if-eqz v3, :cond_6

    .line 48
    iget-object v4, v3, Lkotlinx/coroutines/flow/StateFlowSlot;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 50
    :cond_2
    iget-object v5, v4, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 52
    if-nez v5, :cond_3

    .line 54
    goto :goto_2

    .line 56
    :cond_3
    sget-object v6, Lkotlinx/coroutines/flow/StateFlowKt;->PENDING:Lkotlinx/coroutines/internal/Symbol;

    .line 57
    if-ne v5, v6, :cond_4

    .line 59
    goto :goto_2

    .line 61
    :cond_4
    sget-object v7, Lkotlinx/coroutines/flow/StateFlowKt;->NONE:Lkotlinx/coroutines/internal/Symbol;

    .line 62
    if-ne v5, v7, :cond_5

    .line 64
    iget-object v7, v3, Lkotlinx/coroutines/flow/StateFlowSlot;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 66
    invoke-virtual {v7, v5, v6}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    move-result v5

    .line 71
    if-eqz v5, :cond_2

    .line 72
    goto :goto_2

    .line 74
    :cond_5
    iget-object v6, v3, Lkotlinx/coroutines/flow/StateFlowSlot;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 75
    invoke-virtual {v6, v5, v7}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    move-result v6

    .line 80
    if-eqz v6, :cond_2

    .line 81
    check-cast v5, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 83
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 85
    invoke-virtual {v5, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 87
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 90
    goto :goto_1

    .line 92
    :cond_7
    monitor-enter p0

    .line 93
    :try_start_2
    iget v0, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->sequence:I

    .line 94
    if-ne v0, p1, :cond_8

    .line 96
    add-int/lit8 p1, p1, 0x1

    .line 98
    iput p1, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->sequence:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    monitor-exit p0

    .line 102
    goto :goto_3

    .line 103
    :cond_8
    :try_start_3
    iget-object p1, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    monitor-exit p0

    .line 106
    move v8, v0

    .line 107
    move-object v0, p1

    .line 108
    move p1, v8

    .line 109
    goto :goto_0

    .line 110
    :catchall_0
    move-exception p1

    .line 111
    monitor-exit p0

    .line 112
    throw p1

    .line 113
    :cond_9
    add-int/lit8 p1, p1, 0x2

    .line 114
    :try_start_4
    iput p1, p0, Lkotlinx/coroutines/flow/StateFlowImpl;->sequence:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 116
    monitor-exit p0

    .line 118
    :goto_3
    return-void

    .line 119
    :catchall_1
    move-exception p1

    .line 120
    monitor-exit p0

    .line 121
    throw p1
    .line 122
.end method

.method public final tryEmit(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 2
    const/4 p0, 0x1

    .line 5
    return p0
    .line 6
.end method
