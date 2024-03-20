.class public abstract Lkotlinx/coroutines/channels/ChannelsKt;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static final trySendBlocking(Lkotlinx/coroutines/channels/ProducerScope;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 2
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 8
    if-nez v1, :cond_0

    .line 10
    check-cast v0, Lkotlin/Unit;

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__ChannelsKt$trySendBlocking$2;

    .line 15
    const/4 v1, 0x0

    .line 17
    invoke-direct {v0, p0, p1, v1}, Lkotlinx/coroutines/channels/ChannelsKt__ChannelsKt$trySendBlocking$2;-><init>(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 18
    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 21
    invoke-static {p0, v0}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 26
    check-cast p0, Lkotlinx/coroutines/channels/ChannelResult;

    .line 27
    iget-object p0, p0, Lkotlinx/coroutines/channels/ChannelResult;->holder:Ljava/lang/Object;

    .line 29
    :goto_0
    return-void
    .line 31
.end method
