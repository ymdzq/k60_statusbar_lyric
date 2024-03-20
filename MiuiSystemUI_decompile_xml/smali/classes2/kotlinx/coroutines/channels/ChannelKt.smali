.class public abstract Lkotlinx/coroutines/channels/ChannelKt;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/channels/AbstractChannel;
    .locals 4

    .line 1
    and-int/lit8 v0, p2, 0x1

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    move p0, v1

    .line 7
    :cond_0
    and-int/lit8 p2, p2, 0x2

    .line 8
    sget-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 10
    if-eqz p2, :cond_1

    .line 12
    move-object p1, v0

    .line 14
    :cond_1
    const/4 p2, -0x2

    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eq p0, p2, :cond_9

    .line 18
    const/4 p2, -0x1

    .line 20
    if-eq p0, p2, :cond_6

    .line 21
    if-eqz p0, :cond_4

    .line 23
    const p2, 0x7fffffff

    .line 25
    if-eq p0, p2, :cond_3

    .line 28
    if-ne p0, v2, :cond_2

    .line 30
    sget-object p2, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 32
    if-ne p1, p2, :cond_2

    .line 34
    new-instance p0, Lkotlinx/coroutines/channels/ConflatedChannel;

    .line 36
    invoke-direct {p0, v3}, Lkotlinx/coroutines/channels/ConflatedChannel;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 38
    goto :goto_0

    .line 41
    :cond_2
    new-instance p2, Lkotlinx/coroutines/channels/ArrayChannel;

    .line 42
    invoke-direct {p2, p0, p1, v3}, Lkotlinx/coroutines/channels/ArrayChannel;-><init>(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;)V

    .line 44
    move-object p0, p2

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    new-instance p0, Lkotlinx/coroutines/channels/LinkedListChannel;

    .line 49
    invoke-direct {p0, v3}, Lkotlinx/coroutines/channels/LinkedListChannel;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 51
    goto :goto_0

    .line 54
    :cond_4
    if-ne p1, v0, :cond_5

    .line 55
    new-instance p0, Lkotlinx/coroutines/channels/RendezvousChannel;

    .line 57
    invoke-direct {p0, v3}, Lkotlinx/coroutines/channels/RendezvousChannel;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 59
    goto :goto_0

    .line 62
    :cond_5
    new-instance p0, Lkotlinx/coroutines/channels/ArrayChannel;

    .line 63
    invoke-direct {p0, v2, p1, v3}, Lkotlinx/coroutines/channels/ArrayChannel;-><init>(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;)V

    .line 65
    goto :goto_0

    .line 68
    :cond_6
    if-ne p1, v0, :cond_7

    .line 69
    move v1, v2

    .line 71
    :cond_7
    if-eqz v1, :cond_8

    .line 72
    new-instance p0, Lkotlinx/coroutines/channels/ConflatedChannel;

    .line 74
    invoke-direct {p0, v3}, Lkotlinx/coroutines/channels/ConflatedChannel;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 76
    goto :goto_0

    .line 79
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 80
    const-string p1, "CONFLATED capacity cannot be used with non-default onBufferOverflow"

    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 87
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    throw p0

    .line 91
    :cond_9
    new-instance p0, Lkotlinx/coroutines/channels/ArrayChannel;

    .line 92
    if-ne p1, v0, :cond_a

    .line 94
    sget-object p2, Lkotlinx/coroutines/channels/Channel;->Factory:Lkotlinx/coroutines/channels/Channel$Factory;

    .line 96
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    sget v2, Lkotlinx/coroutines/channels/Channel$Factory;->CHANNEL_DEFAULT_CAPACITY:I

    .line 101
    :cond_a
    invoke-direct {p0, v2, p1, v3}, Lkotlinx/coroutines/channels/ArrayChannel;-><init>(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;)V

    .line 103
    :goto_0
    return-object p0
    .line 106
.end method
