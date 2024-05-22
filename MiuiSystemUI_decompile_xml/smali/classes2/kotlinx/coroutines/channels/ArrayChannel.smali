.class public final Lkotlinx/coroutines/channels/ArrayChannel;
.super Lkotlinx/coroutines/channels/AbstractChannel;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public buffer:[Ljava/lang/Object;

.field public final capacity:I

.field public head:I

.field public final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field public final onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

.field public final size:Lkotlinx/atomicfu/AtomicInt;


# direct methods
.method public constructor <init>(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    invoke-direct {p0, p3}, Lkotlinx/coroutines/channels/AbstractChannel;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 2
    iput p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    .line 5
    iput-object p2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 7
    const/4 p2, 0x0

    .line 9
    const/4 p3, 0x1

    .line 10
    if-lt p1, p3, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    move p3, p2

    .line 14
    :goto_0
    if-eqz p3, :cond_1

    .line 15
    new-instance p3, Ljava/util/concurrent/locks/ReentrantLock;

    .line 17
    invoke-direct {p3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 19
    iput-object p3, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 22
    const/16 p3, 0x8

    .line 24
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    .line 26
    move-result p1

    .line 29
    new-array p3, p1, [Ljava/lang/Object;

    .line 30
    sget-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->EMPTY:Lkotlinx/coroutines/internal/Symbol;

    .line 32
    invoke-static {p3, p2, p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 34
    iput-object p3, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 37
    new-instance p1, Lkotlinx/atomicfu/AtomicInt;

    .line 39
    invoke-direct {p1}, Lkotlinx/atomicfu/AtomicInt;-><init>()V

    .line 41
    iput-object p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 44
    return-void

    .line 46
    :cond_1
    const-string p0, "ArrayChannel capacity must be at least 1, but "

    .line 47
    const-string p2, " was specified"

    .line 49
    invoke-static {p0, p1, p2}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 54
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 60
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    throw p1
    .line 64
.end method


# virtual methods
.method public final enqueueElement(ILjava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    .line 2
    if-ge p1, v0, :cond_2

    .line 4
    iget-object v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 6
    array-length v2, v1

    .line 8
    if-lt p1, v2, :cond_1

    .line 9
    array-length v1, v1

    .line 11
    mul-int/lit8 v1, v1, 0x2

    .line 12
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 14
    move-result v0

    .line 17
    new-array v1, v0, [Ljava/lang/Object;

    .line 18
    const/4 v2, 0x0

    .line 20
    move v3, v2

    .line 21
    :goto_0
    if-ge v3, p1, :cond_0

    .line 22
    iget-object v4, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 24
    iget v5, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 26
    add-int/2addr v5, v3

    .line 28
    array-length v6, v4

    .line 29
    rem-int/2addr v5, v6

    .line 30
    aget-object v4, v4, v5

    .line 31
    aput-object v4, v1, v3

    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 35
    goto :goto_0

    .line 37
    :cond_0
    sget-object v3, Lkotlinx/coroutines/channels/AbstractChannelKt;->EMPTY:Lkotlinx/coroutines/internal/Symbol;

    .line 38
    invoke-static {v1, p1, v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 40
    iput-object v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 43
    iput v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 45
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 47
    iget p0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 49
    add-int/2addr p0, p1

    .line 51
    array-length p1, v0

    .line 52
    rem-int/2addr p0, p1

    .line 53
    aput-object p2, v0, p0

    .line 54
    goto :goto_1

    .line 56
    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 57
    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 59
    array-length v2, v0

    .line 61
    rem-int v2, v1, v2

    .line 62
    const/4 v3, 0x0

    .line 64
    aput-object v3, v0, v2

    .line 65
    add-int/2addr p1, v1

    .line 67
    array-length v2, v0

    .line 68
    rem-int/2addr p1, v2

    .line 69
    aput-object p2, v0, p1

    .line 70
    add-int/lit8 v1, v1, 0x1

    .line 72
    array-length p1, v0

    .line 74
    rem-int/2addr v1, p1

    .line 75
    iput v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 76
    :goto_1
    return-void
    .line 78
.end method

.method public final enqueueReceiveInternal(Lkotlinx/coroutines/channels/Receive;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

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

.method public final enqueueSend(Lkotlinx/coroutines/channels/SendElement;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    :try_start_0
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/AbstractSendChannel;->enqueueSend(Lkotlinx/coroutines/channels/SendElement;)Ljava/lang/Object;

    .line 7
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 11
    return-object p0

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
    .locals 4

    .line 1
    iget v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    .line 2
    iget-object p0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 4
    iget p0, p0, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 6
    const-string v1, "(buffer:capacity="

    .line 8
    const-string v2, ",size="

    .line 10
    const-string v3, ")"

    .line 12
    invoke-static {v1, v0, v2, p0, v3}, Landroidx/room/RoomOpenHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
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
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 2
    iget p0, p0, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 4
    if-nez p0, :cond_0

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

.method public final isBufferFull()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 2
    iget v0, v0, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 4
    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    .line 6
    if-ne v0, v1, :cond_0

    .line 8
    iget-object p0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 10
    sget-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 12
    if-ne p0, v0, :cond_0

    .line 14
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
    .line 19
.end method

.method public final isClosedForReceive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    :try_start_0
    invoke-super {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->isClosedForReceive()Z

    .line 7
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 11
    return p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 16
    throw p0
    .line 19
.end method

.method public final offerInternal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    :try_start_0
    iget-object v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 7
    iget v1, v1, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 9
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    .line 11
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-eqz v2, :cond_0

    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 17
    return-object v2

    .line 20
    :cond_0
    :try_start_1
    iget v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    sget-object v3, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;

    .line 23
    if-ge v1, v2, :cond_1

    .line 25
    :try_start_2
    iget-object v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 27
    add-int/lit8 v4, v1, 0x1

    .line 29
    invoke-virtual {v2, v4}, Lkotlinx/atomicfu/AtomicInt;->setValue(I)V

    .line 31
    goto :goto_0

    .line 34
    :cond_1
    iget-object v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 35
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 37
    move-result v2

    .line 40
    if-eqz v2, :cond_4

    .line 41
    const/4 v4, 0x1

    .line 43
    if-eq v2, v4, :cond_3

    .line 44
    const/4 v4, 0x2

    .line 46
    if-ne v2, v4, :cond_2

    .line 47
    move-object v2, v3

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 51
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 53
    throw p0

    .line 56
    :cond_3
    :goto_0
    const/4 v2, 0x0

    .line 57
    goto :goto_1

    .line 58
    :cond_4
    sget-object v2, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_FAILED:Lkotlinx/coroutines/internal/Symbol;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    :goto_1
    if-eqz v2, :cond_5

    .line 61
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 63
    return-object v2

    .line 66
    :cond_5
    if-nez v1, :cond_9

    .line 67
    :cond_6
    :try_start_3
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->takeFirstReceiveOrPeekClosed()Lkotlinx/coroutines/channels/ReceiveOrClosed;

    .line 69
    move-result-object v2

    .line 72
    if-nez v2, :cond_7

    .line 73
    goto :goto_2

    .line 75
    :cond_7
    instance-of v4, v2, Lkotlinx/coroutines/channels/Closed;

    .line 76
    if-eqz v4, :cond_8

    .line 78
    iget-object p0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 80
    invoke-virtual {p0, v1}, Lkotlinx/atomicfu/AtomicInt;->setValue(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 85
    return-object v2

    .line 88
    :cond_8
    :try_start_4
    invoke-interface {v2, p1}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->tryResumeReceive(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Symbol;

    .line 89
    move-result-object v4

    .line 92
    if-eqz v4, :cond_6

    .line 93
    iget-object p0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 95
    invoke-virtual {p0, v1}, Lkotlinx/atomicfu/AtomicInt;->setValue(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 97
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 100
    invoke-interface {v2, p1}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->completeResumeReceive(Ljava/lang/Object;)V

    .line 103
    invoke-interface {v2}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->getOfferResult()Ljava/lang/Object;

    .line 106
    move-result-object p0

    .line 109
    return-object p0

    .line 110
    :cond_9
    :goto_2
    :try_start_5
    invoke-virtual {p0, v1, p1}, Lkotlinx/coroutines/channels/ArrayChannel;->enqueueElement(ILjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 111
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 114
    return-object v3

    .line 117
    :catchall_0
    move-exception p0

    .line 118
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 119
    throw p0
    .line 122
.end method

.method public final onCancelIdempotent(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 2
    iget-object v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 6
    :try_start_0
    iget-object v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 9
    iget v2, v2, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 11
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    move v5, v3

    .line 15
    :goto_0
    if-ge v5, v2, :cond_1

    .line 16
    iget-object v6, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 18
    iget v7, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 20
    aget-object v6, v6, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    sget-object v7, Lkotlinx/coroutines/channels/AbstractChannelKt;->EMPTY:Lkotlinx/coroutines/internal/Symbol;

    .line 24
    if-eqz v0, :cond_0

    .line 26
    if-eq v6, v7, :cond_0

    .line 28
    :try_start_1
    invoke-static {v0, v6, v4}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    .line 30
    move-result-object v4

    .line 33
    :cond_0
    iget-object v6, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 34
    iget v8, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 36
    aput-object v7, v6, v8

    .line 38
    add-int/lit8 v8, v8, 0x1

    .line 40
    array-length v6, v6

    .line 42
    rem-int/2addr v8, v6

    .line 43
    iput v8, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 44
    add-int/lit8 v5, v5, 0x1

    .line 46
    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 49
    invoke-virtual {v0, v3}, Lkotlinx/atomicfu/AtomicInt;->setValue(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 54
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->onCancelIdempotent(Z)V

    .line 57
    if-nez v4, :cond_2

    .line 60
    return-void

    .line 62
    :cond_2
    throw v4

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 65
    throw p0
    .line 68
.end method

.method public final pollInternal()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    :try_start_0
    iget-object v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 7
    iget v1, v1, Lkotlinx/atomicfu/AtomicInt;->value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    sget-object v2, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 11
    if-nez v1, :cond_1

    .line 13
    :try_start_1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    .line 15
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    if-nez p0, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    move-object v2, p0

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 23
    return-object v2

    .line 26
    :cond_1
    :try_start_2
    iget-object v3, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 27
    iget v4, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 29
    aget-object v5, v3, v4

    .line 31
    const/4 v6, 0x0

    .line 33
    aput-object v6, v3, v4

    .line 34
    iget-object v3, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 36
    add-int/lit8 v4, v1, -0x1

    .line 38
    invoke-virtual {v3, v4}, Lkotlinx/atomicfu/AtomicInt;->setValue(I)V

    .line 40
    iget v3, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    .line 43
    const/4 v4, 0x1

    .line 45
    const/4 v7, 0x0

    .line 46
    if-ne v1, v3, :cond_4

    .line 47
    move-object v3, v6

    .line 49
    :goto_1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->takeFirstSendOrPeekClosed()Lkotlinx/coroutines/channels/Send;

    .line 50
    move-result-object v8

    .line 53
    if-nez v8, :cond_2

    .line 54
    move-object v6, v3

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    invoke-virtual {v8, v6}, Lkotlinx/coroutines/channels/Send;->tryResumeSend(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;

    .line 58
    move-result-object v3

    .line 61
    if-eqz v3, :cond_3

    .line 62
    invoke-virtual {v8}, Lkotlinx/coroutines/channels/Send;->getPollResult()Ljava/lang/Object;

    .line 64
    move-result-object v3

    .line 67
    move v7, v4

    .line 68
    move-object v6, v8

    .line 69
    goto :goto_3

    .line 70
    :cond_3
    invoke-virtual {v8}, Lkotlinx/coroutines/channels/Send;->undeliveredElement()V

    .line 71
    move-object v3, v8

    .line 74
    goto :goto_1

    .line 75
    :cond_4
    :goto_2
    move-object v3, v2

    .line 76
    :goto_3
    if-eq v3, v2, :cond_5

    .line 77
    instance-of v2, v3, Lkotlinx/coroutines/channels/Closed;

    .line 79
    if-nez v2, :cond_5

    .line 81
    iget-object v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 83
    invoke-virtual {v2, v1}, Lkotlinx/atomicfu/AtomicInt;->setValue(I)V

    .line 85
    iget-object v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 88
    iget v8, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 90
    add-int/2addr v8, v1

    .line 92
    array-length v1, v2

    .line 93
    rem-int/2addr v8, v1

    .line 94
    aput-object v3, v2, v8

    .line 95
    :cond_5
    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 97
    add-int/2addr v1, v4

    .line 99
    iget-object v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 100
    array-length v2, v2

    .line 102
    rem-int/2addr v1, v2

    .line 103
    iput v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 106
    if-eqz v7, :cond_6

    .line 109
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 111
    invoke-virtual {v6}, Lkotlinx/coroutines/channels/Send;->completeResumeSend()V

    .line 114
    :cond_6
    return-object v5

    .line 117
    :catchall_0
    move-exception p0

    .line 118
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 119
    throw p0
    .line 122
.end method

.method public final pollSelectInternal(Lkotlinx/coroutines/selects/SelectBuilderImpl;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    :try_start_0
    iget-object v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 7
    iget v1, v1, Lkotlinx/atomicfu/AtomicInt;->value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    sget-object v2, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 11
    if-nez v1, :cond_1

    .line 13
    :try_start_1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    .line 15
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    if-nez p0, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    move-object v2, p0

    .line 22
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 23
    return-object v2

    .line 26
    :cond_1
    :try_start_2
    iget-object v3, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 27
    iget v4, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 29
    aget-object v5, v3, v4

    .line 31
    const/4 v6, 0x0

    .line 33
    aput-object v6, v3, v4

    .line 34
    iget-object v3, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 36
    add-int/lit8 v4, v1, -0x1

    .line 38
    invoke-virtual {v3, v4}, Lkotlinx/atomicfu/AtomicInt;->setValue(I)V

    .line 40
    iget v3, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    .line 43
    const/4 v4, 0x1

    .line 45
    if-ne v1, v3, :cond_6

    .line 46
    :cond_2
    new-instance v3, Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;

    .line 48
    iget-object v7, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    .line 50
    invoke-direct {v3, v7}, Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListHead;)V

    .line 52
    new-instance v7, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;

    .line 55
    invoke-direct {v7, p1, v3}, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;-><init>(Lkotlinx/coroutines/selects/SelectBuilderImpl;Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;)V

    .line 57
    invoke-virtual {v7, v6}, Lkotlinx/coroutines/internal/AtomicOp;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object v7

    .line 63
    if-nez v7, :cond_3

    .line 64
    iget-object v3, v3, Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;->_affectedNode:Lkotlinx/atomicfu/AtomicRef;

    .line 66
    iget-object v3, v3, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 68
    move-object v6, v3

    .line 70
    check-cast v6, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 71
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 73
    move-object v3, v6

    .line 76
    check-cast v3, Lkotlinx/coroutines/channels/Send;

    .line 77
    invoke-virtual {v3}, Lkotlinx/coroutines/channels/Send;->getPollResult()Ljava/lang/Object;

    .line 79
    move-result-object v7

    .line 82
    move v3, v4

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    if-eq v7, v2, :cond_6

    .line 85
    sget-object v3, Lkotlinx/coroutines/internal/AtomicKt;->RETRY_ATOMIC:Lkotlinx/coroutines/internal/Symbol;

    .line 87
    if-eq v7, v3, :cond_2

    .line 89
    sget-object v3, Lkotlinx/coroutines/selects/SelectKt;->ALREADY_SELECTED:Lkotlinx/coroutines/internal/Symbol;

    .line 91
    if-ne v7, v3, :cond_4

    .line 93
    iget-object p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 95
    invoke-virtual {p1, v1}, Lkotlinx/atomicfu/AtomicInt;->setValue(I)V

    .line 97
    iget-object p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 100
    iget p0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 102
    aput-object v5, p1, p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 106
    return-object v7

    .line 109
    :cond_4
    :try_start_3
    instance-of v3, v7, Lkotlinx/coroutines/channels/Closed;

    .line 110
    if-eqz v3, :cond_5

    .line 112
    move v3, v4

    .line 114
    move-object v6, v7

    .line 115
    goto :goto_1

    .line 116
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    .line 119
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    const-string v1, "performAtomicTrySelect(describeTryOffer) returned "

    .line 124
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object p1

    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 136
    move-result-object p1

    .line 139
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 140
    throw p0

    .line 143
    :cond_6
    const/4 v3, 0x0

    .line 144
    move-object v7, v2

    .line 145
    :goto_1
    if-eq v7, v2, :cond_7

    .line 146
    instance-of v2, v7, Lkotlinx/coroutines/channels/Closed;

    .line 148
    if-nez v2, :cond_7

    .line 150
    iget-object p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 152
    invoke-virtual {p1, v1}, Lkotlinx/atomicfu/AtomicInt;->setValue(I)V

    .line 154
    iget-object p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 157
    iget v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 159
    add-int/2addr v2, v1

    .line 161
    array-length v1, p1

    .line 162
    rem-int/2addr v2, v1

    .line 163
    aput-object v7, p1, v2

    .line 164
    goto :goto_2

    .line 166
    :cond_7
    invoke-virtual {p1}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->trySelect()Z

    .line 167
    move-result p1

    .line 170
    if-nez p1, :cond_8

    .line 171
    iget-object p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:Lkotlinx/atomicfu/AtomicInt;

    .line 173
    invoke-virtual {p1, v1}, Lkotlinx/atomicfu/AtomicInt;->setValue(I)V

    .line 175
    iget-object p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 178
    iget p0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 180
    aput-object v5, p1, p0

    .line 182
    sget-object p0, Lkotlinx/coroutines/selects/SelectKt;->ALREADY_SELECTED:Lkotlinx/coroutines/internal/Symbol;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 184
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 186
    return-object p0

    .line 189
    :cond_8
    :goto_2
    :try_start_4
    iget p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 190
    add-int/2addr p1, v4

    .line 192
    iget-object v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 193
    array-length v1, v1

    .line 195
    rem-int/2addr p1, v1

    .line 196
    iput p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 197
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 199
    if-eqz v3, :cond_9

    .line 202
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 204
    check-cast v6, Lkotlinx/coroutines/channels/Send;

    .line 207
    invoke-virtual {v6}, Lkotlinx/coroutines/channels/Send;->completeResumeSend()V

    .line 209
    :cond_9
    return-object v5

    .line 212
    :catchall_0
    move-exception p0

    .line 213
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 214
    throw p0
    .line 217
.end method
