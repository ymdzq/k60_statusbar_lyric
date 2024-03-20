.class public abstract synthetic Lkotlinx/coroutines/flow/FlowKt__ShareKt;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static final configureSharing$FlowKt__ShareKt(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/SharingConfig;
    .locals 7

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/Channel;->Factory:Lkotlinx/coroutines/channels/Channel$Factory;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget v0, Lkotlinx/coroutines/channels/Channel$Factory;->CHANNEL_DEFAULT_CAPACITY:I

    .line 7
    if-ge p1, v0, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    move v0, p1

    .line 12
    :goto_0
    sub-int/2addr v0, p1

    .line 13
    instance-of v1, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow;

    .line 14
    sget-object v2, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 16
    if-eqz v1, :cond_5

    .line 18
    move-object v1, p0

    .line 20
    check-cast v1, Lkotlinx/coroutines/flow/internal/ChannelFlow;

    .line 21
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/internal/ChannelFlow;->dropChannelOperators()Lkotlinx/coroutines/flow/Flow;

    .line 23
    move-result-object v3

    .line 26
    if-eqz v3, :cond_5

    .line 27
    new-instance p0, Lkotlinx/coroutines/flow/SharingConfig;

    .line 29
    iget v4, v1, Lkotlinx/coroutines/flow/internal/ChannelFlow;->capacity:I

    .line 31
    const/4 v5, -0x3

    .line 33
    if-eq v4, v5, :cond_1

    .line 34
    const/4 v5, -0x2

    .line 36
    if-eq v4, v5, :cond_1

    .line 37
    if-eqz v4, :cond_1

    .line 39
    move v0, v4

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    iget-object v5, v1, Lkotlinx/coroutines/flow/internal/ChannelFlow;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 43
    const/4 v6, 0x0

    .line 45
    if-ne v5, v2, :cond_2

    .line 46
    if-nez v4, :cond_4

    .line 48
    goto :goto_1

    .line 50
    :cond_2
    if-nez p1, :cond_3

    .line 51
    const/4 v0, 0x1

    .line 53
    goto :goto_2

    .line 54
    :cond_3
    :goto_1
    move v0, v6

    .line 55
    :cond_4
    :goto_2
    iget-object p1, v1, Lkotlinx/coroutines/flow/internal/ChannelFlow;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 56
    iget-object v1, v1, Lkotlinx/coroutines/flow/internal/ChannelFlow;->context:Lkotlin/coroutines/CoroutineContext;

    .line 58
    invoke-direct {p0, v0, v1, p1, v3}, Lkotlinx/coroutines/flow/SharingConfig;-><init>(ILkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/BufferOverflow;Lkotlinx/coroutines/flow/Flow;)V

    .line 60
    return-object p0

    .line 63
    :cond_5
    new-instance p1, Lkotlinx/coroutines/flow/SharingConfig;

    .line 64
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 66
    invoke-direct {p1, v0, v1, v2, p0}, Lkotlinx/coroutines/flow/SharingConfig;-><init>(ILkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/BufferOverflow;Lkotlinx/coroutines/flow/Flow;)V

    .line 68
    return-object p1
    .line 71
.end method

.method public static final launchSharing$FlowKt__ShareKt(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/StandaloneCoroutine;
    .locals 8

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    .line 2
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 13
    :goto_0
    new-instance v7, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;

    .line 15
    const/4 v6, 0x0

    .line 17
    move-object v1, v7

    .line 18
    move-object v2, p4

    .line 19
    move-object v3, p2

    .line 20
    move-object v4, p3

    .line 21
    move-object v5, p5

    .line 22
    invoke-direct/range {v1 .. v6}, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;-><init>(Lkotlinx/coroutines/flow/SharingStarted;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/MutableSharedFlow;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 23
    invoke-static {p0, p1, v0, v7}, Lkotlinx/coroutines/BuildersKt;->launch(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 26
    move-result-object p0

    .line 29
    return-object p0
    .line 30
.end method
