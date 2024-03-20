.class public abstract synthetic Lkotlinx/coroutines/flow/FlowKt__ChannelsKt;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static final emitAllImpl$FlowKt__ChannelsKt(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p3, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    move-object v0, p3

    .line 6
    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;

    .line 7
    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->label:I

    .line 9
    const/high16 v2, -0x80000000

    .line 11
    and-int v3, v1, v2

    .line 13
    if-eqz v3, :cond_0

    .line 15
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->label:I

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;

    .line 21
    invoke-direct {v0, p3}, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->result:Ljava/lang/Object;

    .line 26
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    iget v2, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->label:I

    .line 30
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    const/4 v5, 0x2

    .line 34
    if-eqz v2, :cond_4

    .line 35
    if-eq v2, v4, :cond_3

    .line 37
    if-ne v2, v5, :cond_2

    .line 39
    iget-boolean p0, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->Z$0:Z

    .line 41
    iget-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$1:Ljava/lang/Object;

    .line 43
    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    .line 45
    iget-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$0:Ljava/lang/Object;

    .line 47
    check-cast p2, Lkotlinx/coroutines/flow/FlowCollector;

    .line 49
    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    move-object v6, p2

    .line 54
    move p2, p0

    .line 55
    move-object p0, v6

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 58
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 60
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    throw p0

    .line 65
    :cond_3
    iget-boolean p0, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->Z$0:Z

    .line 66
    iget-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$1:Ljava/lang/Object;

    .line 68
    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    .line 70
    iget-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$0:Ljava/lang/Object;

    .line 72
    check-cast p2, Lkotlinx/coroutines/flow/FlowCollector;

    .line 74
    :try_start_1
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 76
    check-cast p3, Lkotlinx/coroutines/channels/ChannelResult;

    .line 79
    iget-object p3, p3, Lkotlinx/coroutines/channels/ChannelResult;->holder:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    goto :goto_2

    .line 83
    :catchall_0
    move-exception p2

    .line 84
    goto :goto_3

    .line 85
    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 86
    :goto_1
    :try_start_2
    iput-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$0:Ljava/lang/Object;

    .line 89
    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$1:Ljava/lang/Object;

    .line 91
    iput-boolean p2, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->Z$0:Z

    .line 93
    iput v4, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->label:I

    .line 95
    invoke-interface {p1, v0}, Lkotlinx/coroutines/channels/ReceiveChannel;->receiveCatching-JP2dKIU(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 97
    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 100
    if-ne p3, v1, :cond_5

    .line 101
    return-object v1

    .line 103
    :cond_5
    move v6, p2

    .line 104
    move-object p2, p0

    .line 105
    move p0, v6

    .line 106
    :goto_2
    :try_start_3
    instance-of v2, p3, Lkotlinx/coroutines/channels/ChannelResult$Closed;

    .line 107
    if-eqz v2, :cond_8

    .line 109
    invoke-static {p3}, Lkotlinx/coroutines/channels/ChannelResult;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 111
    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 114
    if-nez p2, :cond_7

    .line 115
    if-eqz p0, :cond_6

    .line 117
    invoke-interface {p1, v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 119
    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 122
    return-object p0

    .line 124
    :cond_7
    :try_start_4
    throw p2

    .line 125
    :cond_8
    instance-of v2, p3, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 126
    if-nez v2, :cond_9

    .line 128
    iput-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$0:Ljava/lang/Object;

    .line 130
    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$1:Ljava/lang/Object;

    .line 132
    iput-boolean p0, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->Z$0:Z

    .line 134
    iput v5, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->label:I

    .line 136
    invoke-interface {p2, p3, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 138
    move-result-object p3

    .line 141
    if-ne p3, v1, :cond_1

    .line 142
    return-object v1

    .line 144
    :cond_9
    instance-of p2, p3, Lkotlinx/coroutines/channels/ChannelResult$Closed;

    .line 145
    if-eqz p2, :cond_a

    .line 147
    move-object p2, p3

    .line 149
    check-cast p2, Lkotlinx/coroutines/channels/ChannelResult$Closed;

    .line 150
    iget-object p2, p2, Lkotlinx/coroutines/channels/ChannelResult$Closed;->cause:Ljava/lang/Throwable;

    .line 152
    if-eqz p2, :cond_a

    .line 154
    throw p2

    .line 156
    :cond_a
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    .line 159
    const-string v1, "Trying to call \'getOrThrow\' on a failed channel result: "

    .line 161
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object p3

    .line 172
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 173
    move-result-object p3

    .line 176
    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 177
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 180
    :catchall_1
    move-exception p0

    .line 181
    move v6, p2

    .line 182
    move-object p2, p0

    .line 183
    move p0, v6

    .line 184
    :goto_3
    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 185
    :catchall_2
    move-exception p3

    .line 186
    if-eqz p0, :cond_d

    .line 187
    instance-of p0, p2, Ljava/util/concurrent/CancellationException;

    .line 189
    if-eqz p0, :cond_b

    .line 191
    move-object v3, p2

    .line 193
    check-cast v3, Ljava/util/concurrent/CancellationException;

    .line 194
    :cond_b
    if-nez v3, :cond_c

    .line 196
    new-instance v3, Ljava/util/concurrent/CancellationException;

    .line 198
    const-string p0, "Channel was consumed, consumer had failed"

    .line 200
    invoke-direct {v3, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v3, p2}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 205
    :cond_c
    invoke-interface {p1, v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 208
    :cond_d
    throw p3
    .line 211
.end method
