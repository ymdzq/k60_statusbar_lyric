.class public abstract Lkotlinx/coroutines/channels/AbstractChannel;
.super Lkotlinx/coroutines/channels/AbstractSendChannel;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlinx/coroutines/channels/Channel;


# virtual methods
.method public final cancel(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->isClosedForReceive()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    new-instance p1, Ljava/util/concurrent/CancellationException;

    .line 11
    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    const-string v1, " was cancelled"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 22
    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 23
    :cond_1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractSendChannel;->close(Ljava/lang/Throwable;)Z

    .line 26
    move-result p1

    .line 29
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->onCancelIdempotent(Z)V

    .line 30
    return-void
    .line 33
.end method

.method public enqueueReceiveInternal(Lkotlinx/coroutines/channels/Receive;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->isBufferAlwaysEmpty()Z

    .line 2
    move-result v0

    .line 5
    iget-object v1, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    .line 6
    const/4 v2, 0x1

    .line 8
    if-eqz v0, :cond_2

    .line 9
    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 11
    move-result-object p0

    .line 14
    instance-of v0, p0, Lkotlinx/coroutines/channels/Send;

    .line 15
    xor-int/2addr v0, v2

    .line 17
    if-nez v0, :cond_1

    .line 18
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->addNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListHead;)Z

    .line 21
    move-result p0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    goto :goto_2

    .line 27
    :cond_2
    new-instance v0, Lkotlinx/coroutines/channels/AbstractChannel$enqueueReceiveInternal$$inlined$addLastIfPrevAndIf$1;

    .line 28
    invoke-direct {v0, p1, p0}, Lkotlinx/coroutines/channels/AbstractChannel$enqueueReceiveInternal$$inlined$addLastIfPrevAndIf$1;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/channels/AbstractChannel;)V

    .line 30
    :goto_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 33
    move-result-object p0

    .line 36
    instance-of v3, p0, Lkotlinx/coroutines/channels/Send;

    .line 37
    xor-int/2addr v3, v2

    .line 39
    if-nez v3, :cond_3

    .line 40
    goto :goto_1

    .line 42
    :cond_3
    invoke-virtual {p0, p1, v1, v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->tryCondAddNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;)I

    .line 43
    move-result p0

    .line 46
    if-eq p0, v2, :cond_5

    .line 47
    const/4 v3, 0x2

    .line 49
    if-eq p0, v3, :cond_4

    .line 50
    goto :goto_0

    .line 52
    :cond_4
    :goto_1
    const/4 v2, 0x0

    .line 53
    :cond_5
    :goto_2
    return v2
    .line 54
.end method

.method public final getOnReceiveCatching()Lkotlinx/coroutines/selects/SelectClause1;
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/coroutines/channels/AbstractChannel$onReceiveCatching$1;

    .line 2
    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/AbstractChannel$onReceiveCatching$1;-><init>(Lkotlinx/coroutines/channels/AbstractChannel;)V

    .line 4
    return-object v0
    .line 7
.end method

.method public abstract isBufferAlwaysEmpty()Z
.end method

.method public abstract isBufferEmpty()Z
.end method

.method public isClosedForReceive()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    .line 2
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 4
    move-result-object v0

    .line 7
    instance-of v1, v0, Lkotlinx/coroutines/channels/Closed;

    .line 8
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    check-cast v0, Lkotlinx/coroutines/channels/Closed;

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v2

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    invoke-static {v0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->helpClose(Lkotlinx/coroutines/channels/Closed;)V

    .line 19
    move-object v2, v0

    .line 22
    :cond_1
    if-eqz v2, :cond_2

    .line 23
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->isBufferEmpty()Z

    .line 25
    move-result p0

    .line 28
    if-eqz p0, :cond_2

    .line 29
    const/4 p0, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    const/4 p0, 0x0

    .line 33
    :goto_1
    return p0
    .line 34
.end method

.method public onCancelIdempotent(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    .line 2
    move-result-object p1

    .line 5
    if-eqz p1, :cond_2

    .line 6
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 9
    move-result-object v1

    .line 12
    instance-of v2, v1, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    .line 13
    if-eqz v2, :cond_0

    .line 15
    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->onCancelIdempotentList-w-w6eGU(Ljava/lang/Object;Lkotlinx/coroutines/channels/Closed;)V

    .line 17
    return-void

    .line 20
    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->remove$1()Z

    .line 21
    move-result v2

    .line 24
    if-nez v2, :cond_1

    .line 25
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 30
    check-cast v1, Lkotlinx/coroutines/internal/Removed;

    .line 31
    iget-object v1, v1, Lkotlinx/coroutines/internal/Removed;->ref:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 33
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->helpRemovePrev()V

    .line 35
    goto :goto_0

    .line 38
    :cond_1
    check-cast v1, Lkotlinx/coroutines/channels/Send;

    .line 39
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/InlineList;->plus-FjFbRPM(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 46
    const-string p1, "Cannot happen"

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p0
    .line 57
.end method

.method public onCancelIdempotentList-w-w6eGU(Ljava/lang/Object;Lkotlinx/coroutines/channels/Closed;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    instance-of p0, p1, Ljava/util/ArrayList;

    .line 4
    if-nez p0, :cond_0

    .line 6
    check-cast p1, Lkotlinx/coroutines/channels/Send;

    .line 8
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/Send;->resumeSendClosed(Lkotlinx/coroutines/channels/Closed;)V

    .line 10
    goto :goto_1

    .line 13
    :cond_0
    check-cast p1, Ljava/util/ArrayList;

    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result p0

    .line 19
    const/4 v0, -0x1

    .line 20
    add-int/2addr p0, v0

    .line 21
    :goto_0
    if-ge v0, p0, :cond_1

    .line 22
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 27
    check-cast v1, Lkotlinx/coroutines/channels/Send;

    .line 28
    invoke-virtual {v1, p2}, Lkotlinx/coroutines/channels/Send;->resumeSendClosed(Lkotlinx/coroutines/channels/Closed;)V

    .line 30
    add-int/lit8 p0, p0, -0x1

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    :goto_1
    return-void
    .line 36
.end method

.method public pollInternal()Ljava/lang/Object;
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->takeFirstSendOrPeekClosed()Lkotlinx/coroutines/channels/Send;

    .line 2
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    sget-object p0, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 8
    return-object p0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/Send;->tryResumeSend(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;

    .line 12
    move-result-object v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/Send;->completeResumeSend()V

    .line 18
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/Send;->getPollResult()Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/Send;->undeliveredElement()V

    .line 26
    goto :goto_0
    .line 29
.end method

.method public pollSelectInternal(Lkotlinx/coroutines/selects/SelectBuilderImpl;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;

    .line 2
    iget-object p0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    .line 4
    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListHead;)V

    .line 6
    new-instance p0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;

    .line 9
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;-><init>(Lkotlinx/coroutines/selects/SelectBuilderImpl;Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;)V

    .line 11
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/AtomicOp;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    return-object p0

    .line 21
    :cond_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;->_affectedNode:Lkotlinx/atomicfu/AtomicRef;

    .line 22
    iget-object p0, p0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 24
    check-cast p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 26
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 28
    check-cast p0, Lkotlinx/coroutines/channels/Send;

    .line 31
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/Send;->completeResumeSend()V

    .line 33
    iget-object p0, v0, Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;->_affectedNode:Lkotlinx/atomicfu/AtomicRef;

    .line 36
    iget-object p0, p0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 38
    check-cast p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 40
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 42
    check-cast p0, Lkotlinx/coroutines/channels/Send;

    .line 45
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/Send;->getPollResult()Ljava/lang/Object;

    .line 47
    move-result-object p0

    .line 50
    return-object p0
    .line 51
.end method

.method public final receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->pollInternal()Ljava/lang/Object;

    .line 2
    move-result-object v0

    .line 5
    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 6
    if-eq v0, v1, :cond_0

    .line 8
    instance-of v1, v0, Lkotlinx/coroutines/channels/Closed;

    .line 10
    if-nez v1, :cond_0

    .line 12
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    check-cast p1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 16
    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->receiveSuspend(ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 21
    return-object p0
    .line 22
.end method

.method public final receiveCatching-JP2dKIU(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/channels/AbstractChannel$receiveCatching$1;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    move-object v0, p1

    .line 6
    check-cast v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveCatching$1;

    .line 7
    iget v1, v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveCatching$1;->label:I

    .line 9
    const/high16 v2, -0x80000000

    .line 11
    and-int v3, v1, v2

    .line 13
    if-eqz v3, :cond_0

    .line 15
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveCatching$1;->label:I

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveCatching$1;

    .line 21
    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel$receiveCatching$1;-><init>(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlin/coroutines/Continuation;)V

    .line 23
    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveCatching$1;->result:Ljava/lang/Object;

    .line 26
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    iget v2, v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveCatching$1;->label:I

    .line 30
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    if-ne v2, v3, :cond_1

    .line 35
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    goto :goto_1

    .line 40
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 41
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p0

    .line 48
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->pollInternal()Ljava/lang/Object;

    .line 52
    move-result-object p1

    .line 55
    sget-object v2, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 56
    if-eq p1, v2, :cond_4

    .line 58
    instance-of p0, p1, Lkotlinx/coroutines/channels/Closed;

    .line 60
    if-eqz p0, :cond_3

    .line 62
    check-cast p1, Lkotlinx/coroutines/channels/Closed;

    .line 64
    iget-object p0, p1, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    .line 66
    new-instance p1, Lkotlinx/coroutines/channels/ChannelResult$Closed;

    .line 68
    invoke-direct {p1, p0}, Lkotlinx/coroutines/channels/ChannelResult$Closed;-><init>(Ljava/lang/Throwable;)V

    .line 70
    :cond_3
    return-object p1

    .line 73
    :cond_4
    iput v3, v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveCatching$1;->label:I

    .line 74
    invoke-virtual {p0, v3, v0}, Lkotlinx/coroutines/channels/AbstractChannel;->receiveSuspend(ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 76
    move-result-object p1

    .line 79
    if-ne p1, v1, :cond_5

    .line 80
    return-object v1

    .line 82
    :cond_5
    :goto_1
    check-cast p1, Lkotlinx/coroutines/channels/ChannelResult;

    .line 83
    iget-object p0, p1, Lkotlinx/coroutines/channels/ChannelResult;->holder:Ljava/lang/Object;

    .line 85
    return-object p0
    .line 87
.end method

.method public final receiveSuspend(ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 2
    move-result-object p2

    .line 5
    invoke-static {p2}, Lkotlinx/coroutines/CancellableContinuationKt;->getOrCreateCancellableContinuation(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 6
    move-result-object p2

    .line 9
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 10
    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;

    .line 14
    invoke-direct {v0, p2, p1}, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;I)V

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElementWithUndeliveredHandler;

    .line 20
    invoke-direct {v1, p2, p1, v0}, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElementWithUndeliveredHandler;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;ILkotlin/jvm/functions/Function1;)V

    .line 22
    move-object v0, v1

    .line 25
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/AbstractChannel;->enqueueReceiveInternal(Lkotlinx/coroutines/channels/Receive;)Z

    .line 26
    move-result p1

    .line 29
    if-eqz p1, :cond_2

    .line 30
    new-instance p1, Lkotlinx/coroutines/channels/AbstractChannel$RemoveReceiveOnCancel;

    .line 32
    invoke-direct {p1, p0, v0}, Lkotlinx/coroutines/channels/AbstractChannel$RemoveReceiveOnCancel;-><init>(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;)V

    .line 34
    invoke-virtual {p2, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 37
    goto :goto_2

    .line 40
    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->pollInternal()Ljava/lang/Object;

    .line 41
    move-result-object p1

    .line 44
    instance-of v1, p1, Lkotlinx/coroutines/channels/Closed;

    .line 45
    if-eqz v1, :cond_3

    .line 47
    check-cast p1, Lkotlinx/coroutines/channels/Closed;

    .line 49
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;->resumeReceiveClosed(Lkotlinx/coroutines/channels/Closed;)V

    .line 51
    goto :goto_2

    .line 54
    :cond_3
    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 55
    if-eq p1, v1, :cond_1

    .line 57
    iget p0, v0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;->receiveMode:I

    .line 59
    const/4 v1, 0x1

    .line 61
    if-ne p0, v1, :cond_4

    .line 62
    new-instance p0, Lkotlinx/coroutines/channels/ChannelResult;

    .line 64
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/ChannelResult;-><init>(Ljava/lang/Object;)V

    .line 66
    goto :goto_1

    .line 69
    :cond_4
    move-object p0, p1

    .line 70
    :goto_1
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/channels/Receive;->resumeOnCancellationFun(Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;

    .line 71
    move-result-object p1

    .line 74
    iget v0, p2, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    .line 75
    invoke-virtual {p2, p0, v0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeImpl(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V

    .line 77
    :goto_2
    invoke-virtual {p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 80
    move-result-object p0

    .line 83
    return-object p0
    .line 84
.end method

.method public final takeFirstReceiveOrPeekClosed()Lkotlinx/coroutines/channels/ReceiveOrClosed;
    .locals 2

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    .line 2
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 8
    if-ne v0, p0, :cond_0

    .line 10
    goto :goto_1

    .line 12
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/channels/ReceiveOrClosed;

    .line 13
    if-nez v1, :cond_1

    .line 15
    :goto_1
    const/4 v0, 0x0

    .line 17
    goto :goto_2

    .line 18
    :cond_1
    move-object v1, v0

    .line 19
    check-cast v1, Lkotlinx/coroutines/channels/ReceiveOrClosed;

    .line 20
    instance-of v1, v1, Lkotlinx/coroutines/channels/Closed;

    .line 22
    if-eqz v1, :cond_2

    .line 24
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->isRemoved()Z

    .line 26
    move-result v1

    .line 29
    if-nez v1, :cond_2

    .line 30
    goto :goto_2

    .line 32
    :cond_2
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->removeOrNext()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 33
    move-result-object v1

    .line 36
    if-nez v1, :cond_4

    .line 37
    :goto_2
    check-cast v0, Lkotlinx/coroutines/channels/ReceiveOrClosed;

    .line 39
    if-eqz v0, :cond_3

    .line 41
    instance-of p0, v0, Lkotlinx/coroutines/channels/Closed;

    .line 43
    :cond_3
    return-object v0

    .line 45
    :cond_4
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->helpRemovePrev()V

    .line 46
    goto :goto_0
    .line 49
.end method

.method public final tryReceive-PtdJZtk()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->pollInternal()Ljava/lang/Object;

    .line 2
    move-result-object p0

    .line 5
    sget-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 6
    if-ne p0, v0, :cond_0

    .line 8
    sget-object p0, Lkotlinx/coroutines/channels/ChannelResult;->failed:Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 10
    return-object p0

    .line 12
    :cond_0
    instance-of v0, p0, Lkotlinx/coroutines/channels/Closed;

    .line 13
    if-eqz v0, :cond_1

    .line 15
    check-cast p0, Lkotlinx/coroutines/channels/Closed;

    .line 17
    iget-object p0, p0, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    .line 19
    new-instance v0, Lkotlinx/coroutines/channels/ChannelResult$Closed;

    .line 21
    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/ChannelResult$Closed;-><init>(Ljava/lang/Throwable;)V

    .line 23
    return-object v0

    .line 26
    :cond_1
    return-object p0
    .line 27
.end method
