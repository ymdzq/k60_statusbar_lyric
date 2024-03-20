.class public final Lkotlinx/coroutines/channels/LinkedListChannel;
.super Lkotlinx/coroutines/channels/AbstractChannel;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# virtual methods
.method public final isBufferAlwaysEmpty()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final isBufferAlwaysFull()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final isBufferEmpty()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final isBufferFull()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final offerInternal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    :cond_0
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/AbstractSendChannel;->offerInternal(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    move-result-object v0

    .line 5
    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;

    .line 6
    if-ne v0, v1, :cond_1

    .line 8
    return-object v1

    .line 10
    :cond_1
    sget-object v2, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 11
    if-ne v0, v2, :cond_5

    .line 13
    iget-object v2, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    .line 15
    new-instance v3, Lkotlinx/coroutines/channels/AbstractSendChannel$SendBuffered;

    .line 17
    invoke-direct {v3, p1}, Lkotlinx/coroutines/channels/AbstractSendChannel$SendBuffered;-><init>(Ljava/lang/Object;)V

    .line 19
    :cond_2
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 22
    move-result-object v0

    .line 25
    instance-of v4, v0, Lkotlinx/coroutines/channels/ReceiveOrClosed;

    .line 26
    if-eqz v4, :cond_3

    .line 28
    check-cast v0, Lkotlinx/coroutines/channels/ReceiveOrClosed;

    .line 30
    goto :goto_0

    .line 32
    :cond_3
    invoke-virtual {v0, v3, v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->addNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListHead;)Z

    .line 33
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    const/4 v0, 0x0

    .line 39
    :goto_0
    if-nez v0, :cond_4

    .line 40
    return-object v1

    .line 42
    :cond_4
    instance-of v1, v0, Lkotlinx/coroutines/channels/Closed;

    .line 43
    if-eqz v1, :cond_0

    .line 45
    return-object v0

    .line 47
    :cond_5
    instance-of p0, v0, Lkotlinx/coroutines/channels/Closed;

    .line 48
    if-eqz p0, :cond_6

    .line 50
    return-object v0

    .line 52
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    const-string v1, "Invalid offerInternal result "

    .line 57
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 72
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    throw p0
    .line 76
.end method

.method public final onCancelIdempotentList-w-w6eGU(Ljava/lang/Object;Lkotlinx/coroutines/channels/Closed;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_5

    .line 3
    instance-of v1, p1, Ljava/util/ArrayList;

    .line 5
    iget-object p0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 7
    if-nez v1, :cond_1

    .line 9
    check-cast p1, Lkotlinx/coroutines/channels/Send;

    .line 11
    instance-of v1, p1, Lkotlinx/coroutines/channels/AbstractSendChannel$SendBuffered;

    .line 13
    if-eqz v1, :cond_0

    .line 15
    if-eqz p0, :cond_5

    .line 17
    check-cast p1, Lkotlinx/coroutines/channels/AbstractSendChannel$SendBuffered;

    .line 19
    iget-object p1, p1, Lkotlinx/coroutines/channels/AbstractSendChannel$SendBuffered;->element:Ljava/lang/Object;

    .line 21
    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    .line 23
    move-result-object v0

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/Send;->resumeSendClosed(Lkotlinx/coroutines/channels/Closed;)V

    .line 28
    goto :goto_2

    .line 31
    :cond_1
    check-cast p1, Ljava/util/ArrayList;

    .line 32
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 34
    move-result v1

    .line 37
    const/4 v2, -0x1

    .line 38
    add-int/2addr v1, v2

    .line 39
    move-object v3, v0

    .line 40
    :goto_0
    if-ge v2, v1, :cond_4

    .line 41
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v4

    .line 46
    check-cast v4, Lkotlinx/coroutines/channels/Send;

    .line 47
    instance-of v5, v4, Lkotlinx/coroutines/channels/AbstractSendChannel$SendBuffered;

    .line 49
    if-eqz v5, :cond_3

    .line 51
    if-eqz p0, :cond_2

    .line 53
    check-cast v4, Lkotlinx/coroutines/channels/AbstractSendChannel$SendBuffered;

    .line 55
    iget-object v4, v4, Lkotlinx/coroutines/channels/AbstractSendChannel$SendBuffered;->element:Ljava/lang/Object;

    .line 57
    invoke-static {p0, v4, v3}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    .line 59
    move-result-object v3

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    move-object v3, v0

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-virtual {v4, p2}, Lkotlinx/coroutines/channels/Send;->resumeSendClosed(Lkotlinx/coroutines/channels/Closed;)V

    .line 66
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 69
    goto :goto_0

    .line 71
    :cond_4
    move-object v0, v3

    .line 72
    :cond_5
    :goto_2
    if-nez v0, :cond_6

    .line 73
    return-void

    .line 75
    :cond_6
    throw v0
    .line 76
.end method
