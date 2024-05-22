.class public final Lkotlinx/coroutines/channels/ConflatedChannel;
.super Lkotlinx/coroutines/channels/AbstractChannel;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 7
    iput-object p1, p0, Lkotlinx/coroutines/channels/ConflatedChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    sget-object p1, Lkotlinx/coroutines/channels/AbstractChannelKt;->EMPTY:Lkotlinx/coroutines/internal/Symbol;

    .line 12
    iput-object p1, p0, Lkotlinx/coroutines/channels/ConflatedChannel;->value:Ljava/lang/Object;

    .line 14
    return-void
    .line 16
.end method


# virtual methods
.method public final enqueueReceiveInternal(Lkotlinx/coroutines/channels/Receive;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/ConflatedChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    :try_start_0
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->enqueueReceiveInternal(Lkotlinx/coroutines/channels/Receive;)Z

    .line 7
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 11
    return p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 16
    throw p0
    .line 19
.end method

.method public final getBufferDebugString()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "(value="

    .line 2
    iget-object v1, p0, Lkotlinx/coroutines/channels/ConflatedChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 6
    :try_start_0
    iget-object p0, p0, Lkotlinx/coroutines/channels/ConflatedChannel;->value:Ljava/lang/Object;

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string p0, ")"

    .line 19
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 28
    return-object p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 33
    throw p0
    .line 36
.end method

.method public final isBufferAlwaysEmpty()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

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
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/ConflatedChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    :try_start_0
    iget-object p0, p0, Lkotlinx/coroutines/channels/ConflatedChannel;->value:Ljava/lang/Object;

    .line 7
    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->EMPTY:Lkotlinx/coroutines/internal/Symbol;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    if-ne p0, v1, :cond_0

    .line 11
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 16
    return p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 21
    throw p0
    .line 24
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
    .locals 4

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/ConflatedChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    .line 7
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 13
    return-object v1

    .line 16
    :cond_0
    :try_start_1
    iget-object v1, p0, Lkotlinx/coroutines/channels/ConflatedChannel;->value:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    sget-object v2, Lkotlinx/coroutines/channels/AbstractChannelKt;->EMPTY:Lkotlinx/coroutines/internal/Symbol;

    .line 19
    if-ne v1, v2, :cond_4

    .line 21
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->takeFirstReceiveOrPeekClosed()Lkotlinx/coroutines/channels/ReceiveOrClosed;

    .line 23
    move-result-object v1

    .line 26
    if-nez v1, :cond_2

    .line 27
    goto :goto_0

    .line 29
    :cond_2
    instance-of v3, v1, Lkotlinx/coroutines/channels/Closed;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    if-eqz v3, :cond_3

    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 34
    return-object v1

    .line 37
    :cond_3
    :try_start_3
    invoke-interface {v1, p1}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->tryResumeReceive(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Symbol;

    .line 38
    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    if-eqz v3, :cond_1

    .line 42
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 44
    invoke-interface {v1, p1}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->completeResumeReceive(Ljava/lang/Object;)V

    .line 47
    invoke-interface {v1}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->getOfferResult()Ljava/lang/Object;

    .line 50
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_4
    :goto_0
    :try_start_4
    iget-object v1, p0, Lkotlinx/coroutines/channels/ConflatedChannel;->value:Ljava/lang/Object;

    .line 55
    const/4 v3, 0x0

    .line 57
    if-ne v1, v2, :cond_5

    .line 58
    goto :goto_1

    .line 60
    :cond_5
    iget-object v2, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 61
    if-eqz v2, :cond_6

    .line 63
    invoke-static {v2, v1, v3}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    .line 65
    move-result-object v3

    .line 68
    :cond_6
    :goto_1
    iput-object p1, p0, Lkotlinx/coroutines/channels/ConflatedChannel;->value:Ljava/lang/Object;

    .line 69
    if-nez v3, :cond_7

    .line 71
    sget-object p0, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 73
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 75
    return-object p0

    .line 78
    :cond_7
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 81
    throw p0
    .line 84
.end method

.method public final onCancelIdempotent(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/ConflatedChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    :try_start_0
    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->EMPTY:Lkotlinx/coroutines/internal/Symbol;

    .line 7
    iget-object v2, p0, Lkotlinx/coroutines/channels/ConflatedChannel;->value:Ljava/lang/Object;

    .line 9
    const/4 v3, 0x0

    .line 11
    if-ne v2, v1, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    iget-object v4, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 15
    if-eqz v4, :cond_1

    .line 17
    invoke-static {v4, v2, v3}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    .line 19
    move-result-object v3

    .line 22
    :cond_1
    :goto_0
    iput-object v1, p0, Lkotlinx/coroutines/channels/ConflatedChannel;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 25
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->onCancelIdempotent(Z)V

    .line 28
    if-nez v3, :cond_2

    .line 31
    return-void

    .line 33
    :cond_2
    throw v3

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 36
    throw p0
    .line 39
.end method

.method public final pollInternal()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/ConflatedChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    :try_start_0
    iget-object v1, p0, Lkotlinx/coroutines/channels/ConflatedChannel;->value:Ljava/lang/Object;

    .line 7
    sget-object v2, Lkotlinx/coroutines/channels/AbstractChannelKt;->EMPTY:Lkotlinx/coroutines/internal/Symbol;

    .line 9
    if-ne v1, v2, :cond_1

    .line 11
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    .line 13
    move-result-object p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    sget-object p0, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 21
    return-object p0

    .line 24
    :cond_1
    :try_start_1
    iput-object v2, p0, Lkotlinx/coroutines/channels/ConflatedChannel;->value:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 27
    return-object v1

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 32
    throw p0
    .line 35
.end method

.method public final pollSelectInternal(Lkotlinx/coroutines/selects/SelectBuilderImpl;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/ConflatedChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    :try_start_0
    iget-object v1, p0, Lkotlinx/coroutines/channels/ConflatedChannel;->value:Ljava/lang/Object;

    .line 7
    sget-object v2, Lkotlinx/coroutines/channels/AbstractChannelKt;->EMPTY:Lkotlinx/coroutines/internal/Symbol;

    .line 9
    if-ne v1, v2, :cond_1

    .line 11
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    .line 13
    move-result-object p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    sget-object p0, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 21
    return-object p0

    .line 24
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->trySelect()Z

    .line 25
    move-result p1

    .line 28
    if-nez p1, :cond_2

    .line 29
    sget-object p0, Lkotlinx/coroutines/selects/SelectKt;->ALREADY_SELECTED:Lkotlinx/coroutines/internal/Symbol;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 33
    return-object p0

    .line 36
    :cond_2
    :try_start_2
    iget-object p1, p0, Lkotlinx/coroutines/channels/ConflatedChannel;->value:Ljava/lang/Object;

    .line 37
    iput-object v2, p0, Lkotlinx/coroutines/channels/ConflatedChannel;->value:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 41
    return-object p1

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 46
    throw p0
    .line 49
.end method
