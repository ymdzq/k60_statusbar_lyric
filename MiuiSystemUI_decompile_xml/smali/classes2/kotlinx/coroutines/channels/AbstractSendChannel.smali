.class public abstract Lkotlinx/coroutines/channels/AbstractSendChannel;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlinx/coroutines/channels/SendChannel;


# instance fields
.field public final onCloseHandler:Lkotlinx/atomicfu/AtomicRef;

.field public final onUndeliveredElement:Lkotlin/jvm/functions/Function1;

.field public final queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 5
    new-instance p1, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    .line 7
    invoke-direct {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;-><init>()V

    .line 9
    iput-object p1, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    .line 12
    const/4 p1, 0x0

    .line 14
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    .line 15
    move-result-object p1

    .line 18
    iput-object p1, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->onCloseHandler:Lkotlinx/atomicfu/AtomicRef;

    .line 19
    return-void
    .line 21
.end method

.method public static final access$helpCloseAndResumeWithSendException(Lkotlinx/coroutines/channels/AbstractSendChannel;Lkotlinx/coroutines/CancellableContinuationImpl;Ljava/lang/Object;Lkotlinx/coroutines/channels/Closed;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {p3}, Lkotlinx/coroutines/channels/AbstractSendChannel;->helpClose(Lkotlinx/coroutines/channels/Closed;)V

    .line 5
    iget-object p3, p3, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    .line 8
    if-nez p3, :cond_0

    .line 10
    new-instance p3, Lkotlinx/coroutines/channels/ClosedSendChannelException;

    .line 12
    const-string v0, "Channel was closed"

    .line 14
    invoke-direct {p3, v0}, Lkotlinx/coroutines/channels/ClosedSendChannelException;-><init>(Ljava/lang/String;)V

    .line 16
    :cond_0
    iget-object p0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 19
    if-eqz p0, :cond_1

    .line 21
    const/4 v0, 0x0

    .line 23
    invoke-static {p0, p2, v0}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    .line 24
    move-result-object p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    invoke-static {p0, p3}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 30
    new-instance p2, Lkotlin/Result$Failure;

    .line 33
    invoke-direct {p2, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 35
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 38
    goto :goto_0

    .line 41
    :cond_1
    new-instance p0, Lkotlin/Result$Failure;

    .line 42
    invoke-direct {p0, p3}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 44
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 47
    :goto_0
    return-void
    .line 50
.end method

.method public static helpClose(Lkotlinx/coroutines/channels/Closed;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 4
    move-result-object v2

    .line 7
    instance-of v3, v2, Lkotlinx/coroutines/channels/Receive;

    .line 8
    if-eqz v3, :cond_0

    .line 10
    check-cast v2, Lkotlinx/coroutines/channels/Receive;

    .line 12
    goto :goto_1

    .line 14
    :cond_0
    move-object v2, v0

    .line 15
    :goto_1
    if-nez v2, :cond_3

    .line 16
    if-eqz v1, :cond_2

    .line 18
    instance-of v0, v1, Ljava/util/ArrayList;

    .line 20
    if-nez v0, :cond_1

    .line 22
    check-cast v1, Lkotlinx/coroutines/channels/Receive;

    .line 24
    invoke-virtual {v1, p0}, Lkotlinx/coroutines/channels/Receive;->resumeReceiveClosed(Lkotlinx/coroutines/channels/Closed;)V

    .line 26
    goto :goto_3

    .line 29
    :cond_1
    check-cast v1, Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result v0

    .line 35
    const/4 v2, -0x1

    .line 36
    add-int/2addr v0, v2

    .line 37
    :goto_2
    if-ge v2, v0, :cond_2

    .line 38
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 43
    check-cast v3, Lkotlinx/coroutines/channels/Receive;

    .line 44
    invoke-virtual {v3, p0}, Lkotlinx/coroutines/channels/Receive;->resumeReceiveClosed(Lkotlinx/coroutines/channels/Closed;)V

    .line 46
    add-int/lit8 v0, v0, -0x1

    .line 49
    goto :goto_2

    .line 51
    :cond_2
    :goto_3
    return-void

    .line 52
    :cond_3
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->remove$1()Z

    .line 53
    move-result v3

    .line 56
    if-nez v3, :cond_4

    .line 57
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    .line 59
    move-result-object v2

    .line 62
    check-cast v2, Lkotlinx/coroutines/internal/Removed;

    .line 63
    iget-object v2, v2, Lkotlinx/coroutines/internal/Removed;->ref:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 65
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->helpRemovePrev()V

    .line 67
    goto :goto_0

    .line 70
    :cond_4
    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/InlineList;->plus-FjFbRPM(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Ljava/lang/Object;

    .line 71
    move-result-object v1

    .line 74
    goto :goto_0
    .line 75
.end method


# virtual methods
.method public final close(Ljava/lang/Throwable;)Z
    .locals 5

    .line 1
    new-instance v0, Lkotlinx/coroutines/channels/Closed;

    .line 2
    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/Closed;-><init>(Ljava/lang/Throwable;)V

    .line 4
    iget-object v1, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    .line 7
    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 9
    move-result-object v2

    .line 12
    instance-of v3, v2, Lkotlinx/coroutines/channels/Closed;

    .line 13
    const/4 v4, 0x1

    .line 15
    xor-int/2addr v3, v4

    .line 16
    if-nez v3, :cond_1

    .line 17
    const/4 v1, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {v2, v0, v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->addNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListHead;)Z

    .line 21
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    move v1, v4

    .line 27
    :goto_0
    if-eqz v1, :cond_2

    .line 28
    goto :goto_1

    .line 30
    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    .line 31
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 33
    move-result-object v0

    .line 36
    check-cast v0, Lkotlinx/coroutines/channels/Closed;

    .line 37
    :goto_1
    invoke-static {v0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->helpClose(Lkotlinx/coroutines/channels/Closed;)V

    .line 39
    if-eqz v1, :cond_3

    .line 42
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->onCloseHandler:Lkotlinx/atomicfu/AtomicRef;

    .line 44
    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 46
    if-eqz v0, :cond_3

    .line 48
    sget-object v2, Lkotlinx/coroutines/channels/AbstractChannelKt;->HANDLER_INVOKED:Lkotlinx/coroutines/internal/Symbol;

    .line 50
    if-eq v0, v2, :cond_3

    .line 52
    iget-object p0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->onCloseHandler:Lkotlinx/atomicfu/AtomicRef;

    .line 54
    invoke-virtual {p0, v0, v2}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    move-result p0

    .line 59
    if-eqz p0, :cond_3

    .line 60
    invoke-static {v4, v0}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    .line 62
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 65
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_3
    return v1
    .line 70
.end method

.method public enqueueSend(Lkotlinx/coroutines/channels/SendElement;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->isBufferAlwaysFull()Z

    .line 2
    move-result v0

    .line 5
    iget-object v1, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    .line 6
    if-eqz v0, :cond_2

    .line 8
    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 10
    move-result-object p0

    .line 13
    instance-of v0, p0, Lkotlinx/coroutines/channels/ReceiveOrClosed;

    .line 14
    if-eqz v0, :cond_1

    .line 16
    return-object p0

    .line 18
    :cond_1
    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->addNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListHead;)Z

    .line 19
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    goto :goto_1

    .line 25
    :cond_2
    new-instance v0, Lkotlinx/coroutines/channels/AbstractSendChannel$enqueueSend$$inlined$addLastIfPrevAndIf$1;

    .line 26
    invoke-direct {v0, p1, p0}, Lkotlinx/coroutines/channels/AbstractSendChannel$enqueueSend$$inlined$addLastIfPrevAndIf$1;-><init>(Lkotlinx/coroutines/channels/SendElement;Lkotlinx/coroutines/channels/AbstractSendChannel;)V

    .line 28
    :goto_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 31
    move-result-object p0

    .line 34
    instance-of v2, p0, Lkotlinx/coroutines/channels/ReceiveOrClosed;

    .line 35
    if-eqz v2, :cond_3

    .line 37
    return-object p0

    .line 39
    :cond_3
    invoke-virtual {p0, p1, v1, v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->tryCondAddNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;)I

    .line 40
    move-result p0

    .line 43
    const/4 v2, 0x1

    .line 44
    if-eq p0, v2, :cond_5

    .line 45
    const/4 v2, 0x2

    .line 47
    if-eq p0, v2, :cond_4

    .line 48
    goto :goto_0

    .line 50
    :cond_4
    const/4 v2, 0x0

    .line 51
    :cond_5
    if-nez v2, :cond_6

    .line 52
    sget-object p0, Lkotlinx/coroutines/channels/AbstractChannelKt;->ENQUEUE_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 54
    return-object p0

    .line 56
    :cond_6
    :goto_1
    const/4 p0, 0x0

    .line 57
    return-object p0
    .line 58
.end method

.method public getBufferDebugString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    return-object p0
    .line 4
.end method

.method public final getClosedForSend()Lkotlinx/coroutines/channels/Closed;
    .locals 2

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 4
    move-result-object p0

    .line 7
    instance-of v0, p0, Lkotlinx/coroutines/channels/Closed;

    .line 8
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    check-cast p0, Lkotlinx/coroutines/channels/Closed;

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    move-object p0, v1

    .line 16
    :goto_0
    if-eqz p0, :cond_1

    .line 17
    invoke-static {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->helpClose(Lkotlinx/coroutines/channels/Closed;)V

    .line 19
    move-object v1, p0

    .line 22
    :cond_1
    return-object v1
    .line 23
.end method

.method public final invokeOnClose(Lkotlin/jvm/functions/Function1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->onCloseHandler:Lkotlinx/atomicfu/AtomicRef;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, p1}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5
    move-result v0

    .line 8
    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->HANDLER_INVOKED:Lkotlinx/coroutines/internal/Symbol;

    .line 9
    if-nez v0, :cond_1

    .line 11
    iget-object p0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->onCloseHandler:Lkotlinx/atomicfu/AtomicRef;

    .line 13
    iget-object p0, p0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 15
    if-ne p0, v1, :cond_0

    .line 17
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 19
    const-string p1, "Another handler was already registered and successfully invoked"

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p0

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    const-string v1, "Another handler was already registered: "

    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 42
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    throw p1

    .line 46
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    .line 47
    move-result-object v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    iget-object p0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->onCloseHandler:Lkotlinx/atomicfu/AtomicRef;

    .line 53
    invoke-virtual {p0, p1, v1}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    move-result p0

    .line 58
    if-eqz p0, :cond_2

    .line 59
    iget-object p0, v0, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    .line 61
    check-cast p1, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;

    .line 63
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_2
    return-void
    .line 68
.end method

.method public abstract isBufferAlwaysFull()Z
.end method

.method public abstract isBufferFull()Z
.end method

.method public final isClosedForSend()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
    .line 11
.end method

.method public offerInternal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->takeFirstReceiveOrPeekClosed()Lkotlinx/coroutines/channels/ReceiveOrClosed;

    .line 2
    move-result-object v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    sget-object p0, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 8
    return-object p0

    .line 10
    :cond_1
    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->tryResumeReceive(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Symbol;

    .line 11
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->completeResumeReceive(Ljava/lang/Object;)V

    .line 17
    invoke-interface {v0}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->getOfferResult()Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 23
    return-object p0
    .line 24
.end method

.method public final send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractSendChannel;->offerInternal(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    move-result-object v0

    .line 5
    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;

    .line 6
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    if-ne v0, v1, :cond_0

    .line 10
    return-object v2

    .line 12
    :cond_0
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    move-result-object p2

    .line 16
    invoke-static {p2}, Lkotlinx/coroutines/CancellableContinuationKt;->getOrCreateCancellableContinuation(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 17
    move-result-object p2

    .line 20
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    .line 21
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 23
    move-result-object v0

    .line 26
    instance-of v0, v0, Lkotlinx/coroutines/channels/ReceiveOrClosed;

    .line 27
    if-nez v0, :cond_2

    .line 29
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->isBufferFull()Z

    .line 31
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    const/4 v0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/4 v0, 0x0

    .line 39
    :goto_0
    if-eqz v0, :cond_7

    .line 40
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 42
    if-nez v0, :cond_3

    .line 44
    new-instance v0, Lkotlinx/coroutines/channels/SendElement;

    .line 46
    invoke-direct {v0, p1, p2}, Lkotlinx/coroutines/channels/SendElement;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    .line 48
    goto :goto_1

    .line 51
    :cond_3
    new-instance v3, Lkotlinx/coroutines/channels/SendElementWithUndeliveredHandler;

    .line 52
    invoke-direct {v3, p1, p2, v0}, Lkotlinx/coroutines/channels/SendElementWithUndeliveredHandler;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuationImpl;Lkotlin/jvm/functions/Function1;)V

    .line 54
    move-object v0, v3

    .line 57
    :goto_1
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->enqueueSend(Lkotlinx/coroutines/channels/SendElement;)Ljava/lang/Object;

    .line 58
    move-result-object v3

    .line 61
    if-nez v3, :cond_4

    .line 62
    new-instance p0, Lkotlinx/coroutines/RemoveOnCancel;

    .line 64
    invoke-direct {p0, v0}, Lkotlinx/coroutines/RemoveOnCancel;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    .line 66
    invoke-virtual {p2, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 69
    goto :goto_3

    .line 72
    :cond_4
    instance-of v0, v3, Lkotlinx/coroutines/channels/Closed;

    .line 73
    if-eqz v0, :cond_5

    .line 75
    check-cast v3, Lkotlinx/coroutines/channels/Closed;

    .line 77
    invoke-static {p0, p2, p1, v3}, Lkotlinx/coroutines/channels/AbstractSendChannel;->access$helpCloseAndResumeWithSendException(Lkotlinx/coroutines/channels/AbstractSendChannel;Lkotlinx/coroutines/CancellableContinuationImpl;Ljava/lang/Object;Lkotlinx/coroutines/channels/Closed;)V

    .line 79
    goto :goto_3

    .line 82
    :cond_5
    sget-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->ENQUEUE_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 83
    if-eq v3, v0, :cond_7

    .line 85
    instance-of v0, v3, Lkotlinx/coroutines/channels/Receive;

    .line 87
    if-eqz v0, :cond_6

    .line 89
    goto :goto_2

    .line 91
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    .line 94
    const-string p2, "enqueueSend returned "

    .line 96
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 108
    move-result-object p1

    .line 111
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 112
    throw p0

    .line 115
    :cond_7
    :goto_2
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractSendChannel;->offerInternal(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    move-result-object v0

    .line 119
    if-ne v0, v1, :cond_8

    .line 120
    invoke-virtual {p2, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 122
    goto :goto_3

    .line 125
    :cond_8
    sget-object v3, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 126
    if-eq v0, v3, :cond_1

    .line 128
    instance-of v1, v0, Lkotlinx/coroutines/channels/Closed;

    .line 130
    if-eqz v1, :cond_b

    .line 132
    check-cast v0, Lkotlinx/coroutines/channels/Closed;

    .line 134
    invoke-static {p0, p2, p1, v0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->access$helpCloseAndResumeWithSendException(Lkotlinx/coroutines/channels/AbstractSendChannel;Lkotlinx/coroutines/CancellableContinuationImpl;Ljava/lang/Object;Lkotlinx/coroutines/channels/Closed;)V

    .line 136
    :goto_3
    invoke-virtual {p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 139
    move-result-object p0

    .line 142
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 143
    if-ne p0, p1, :cond_9

    .line 145
    goto :goto_4

    .line 147
    :cond_9
    move-object p0, v2

    .line 148
    :goto_4
    if-ne p0, p1, :cond_a

    .line 149
    return-object p0

    .line 151
    :cond_a
    return-object v2

    .line 152
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    .line 155
    const-string p2, "offerInternal returned "

    .line 157
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    move-result-object p1

    .line 168
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 169
    move-result-object p1

    .line 172
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 173
    throw p0
    .line 176
.end method

.method public abstract takeFirstReceiveOrPeekClosed()Lkotlinx/coroutines/channels/ReceiveOrClosed;
.end method

.method public final takeFirstSendOrPeekClosed()Lkotlinx/coroutines/channels/Send;
    .locals 3

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
    const/4 v1, 0x0

    .line 10
    if-ne v0, p0, :cond_0

    .line 11
    :goto_1
    move-object v0, v1

    .line 13
    goto :goto_2

    .line 14
    :cond_0
    instance-of v2, v0, Lkotlinx/coroutines/channels/Send;

    .line 15
    if-nez v2, :cond_1

    .line 17
    goto :goto_1

    .line 19
    :cond_1
    move-object v1, v0

    .line 20
    check-cast v1, Lkotlinx/coroutines/channels/Send;

    .line 21
    instance-of v1, v1, Lkotlinx/coroutines/channels/Closed;

    .line 23
    if-eqz v1, :cond_2

    .line 25
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->isRemoved()Z

    .line 27
    move-result v1

    .line 30
    if-nez v1, :cond_2

    .line 31
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->removeOrNext()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 34
    move-result-object v1

    .line 37
    if-nez v1, :cond_3

    .line 38
    :goto_2
    check-cast v0, Lkotlinx/coroutines/channels/Send;

    .line 40
    return-object v0

    .line 42
    :cond_3
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->helpRemovePrev()V

    .line 43
    goto :goto_0
    .line 46
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 9
    iget-object v2, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    .line 10
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 12
    move-result-object v3

    .line 15
    if-ne v3, v2, :cond_0

    .line 16
    const-string v2, "EmptyQueue"

    .line 18
    goto/16 :goto_2

    .line 20
    :cond_0
    instance-of v4, v3, Lkotlinx/coroutines/channels/Closed;

    .line 22
    if-eqz v4, :cond_1

    .line 24
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->toString()Ljava/lang/String;

    .line 26
    move-result-object v4

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    instance-of v4, v3, Lkotlinx/coroutines/channels/Receive;

    .line 31
    if-eqz v4, :cond_2

    .line 33
    const-string v4, "ReceiveQueued"

    .line 35
    goto :goto_0

    .line 37
    :cond_2
    instance-of v4, v3, Lkotlinx/coroutines/channels/Send;

    .line 38
    if-eqz v4, :cond_3

    .line 40
    const-string v4, "SendQueued"

    .line 42
    goto :goto_0

    .line 44
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 45
    const-string v5, "UNEXPECTED:"

    .line 47
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v4

    .line 58
    :goto_0
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 59
    move-result-object v5

    .line 62
    if-eq v5, v3, :cond_5

    .line 63
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    .line 65
    move-result-object v3

    .line 68
    check-cast v3, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 69
    const/4 v6, 0x0

    .line 71
    :goto_1
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    move-result v7

    .line 75
    if-nez v7, :cond_4

    .line 76
    add-int/lit8 v6, v6, 0x1

    .line 78
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 80
    move-result-object v3

    .line 83
    goto :goto_1

    .line 84
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v3, ",queueSize="

    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v2

    .line 104
    instance-of v3, v5, Lkotlinx/coroutines/channels/Closed;

    .line 105
    if-eqz v3, :cond_6

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    .line 109
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v2, ",closedForSend="

    .line 117
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object v2

    .line 128
    goto :goto_2

    .line 129
    :cond_5
    move-object v2, v4

    .line 130
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getBufferDebugString()Ljava/lang/String;

    .line 131
    move-result-object p0

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    .line 135
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v0, "@"

    .line 143
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string/jumbo v0, "{"

    .line 151
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string/jumbo v0, "}"

    .line 160
    invoke-static {v3, v0, p0}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    move-result-object p0

    .line 166
    return-object p0
    .line 167
.end method

.method public final trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractSendChannel;->offerInternal(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    move-result-object p1

    .line 5
    sget-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;

    .line 6
    if-ne p1, v0, :cond_0

    .line 8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 10
    goto :goto_1

    .line 12
    :cond_0
    sget-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 13
    const-string v1, "Channel was closed"

    .line 15
    if-ne p1, v0, :cond_3

    .line 17
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    .line 19
    move-result-object p0

    .line 22
    if-nez p0, :cond_1

    .line 23
    sget-object p0, Lkotlinx/coroutines/channels/ChannelResult;->failed:Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 25
    return-object p0

    .line 27
    :cond_1
    invoke-static {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->helpClose(Lkotlinx/coroutines/channels/Closed;)V

    .line 28
    iget-object p0, p0, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    .line 31
    if-nez p0, :cond_2

    .line 33
    new-instance p0, Lkotlinx/coroutines/channels/ClosedSendChannelException;

    .line 35
    invoke-direct {p0, v1}, Lkotlinx/coroutines/channels/ClosedSendChannelException;-><init>(Ljava/lang/String;)V

    .line 37
    :cond_2
    new-instance p1, Lkotlinx/coroutines/channels/ChannelResult$Closed;

    .line 40
    invoke-direct {p1, p0}, Lkotlinx/coroutines/channels/ChannelResult$Closed;-><init>(Ljava/lang/Throwable;)V

    .line 42
    goto :goto_0

    .line 45
    :cond_3
    instance-of p0, p1, Lkotlinx/coroutines/channels/Closed;

    .line 46
    if-eqz p0, :cond_5

    .line 48
    check-cast p1, Lkotlinx/coroutines/channels/Closed;

    .line 50
    invoke-static {p1}, Lkotlinx/coroutines/channels/AbstractSendChannel;->helpClose(Lkotlinx/coroutines/channels/Closed;)V

    .line 52
    iget-object p0, p1, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    .line 55
    if-nez p0, :cond_4

    .line 57
    new-instance p0, Lkotlinx/coroutines/channels/ClosedSendChannelException;

    .line 59
    invoke-direct {p0, v1}, Lkotlinx/coroutines/channels/ClosedSendChannelException;-><init>(Ljava/lang/String;)V

    .line 61
    :cond_4
    new-instance p1, Lkotlinx/coroutines/channels/ChannelResult$Closed;

    .line 64
    invoke-direct {p1, p0}, Lkotlinx/coroutines/channels/ChannelResult$Closed;-><init>(Ljava/lang/Throwable;)V

    .line 66
    :goto_0
    move-object p0, p1

    .line 69
    :goto_1
    return-object p0

    .line 70
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    const-string/jumbo v1, "trySend returned "

    .line 75
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 91
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    throw p0
    .line 95
.end method
