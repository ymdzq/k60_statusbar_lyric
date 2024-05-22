.class public abstract Lkotlinx/coroutines/EventLoopImplBase;
.super Lkotlinx/coroutines/EventLoopImplPlatform;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlinx/coroutines/Delay;


# instance fields
.field public final _delayed:Lkotlinx/atomicfu/AtomicRef;

.field public final _isCompleted:Lkotlinx/atomicfu/AtomicBoolean;

.field public final _queue:Lkotlinx/atomicfu/AtomicRef;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/EventLoopImplPlatform;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    .line 6
    move-result-object v1

    .line 9
    iput-object v1, p0, Lkotlinx/coroutines/EventLoopImplBase;->_queue:Lkotlinx/atomicfu/AtomicRef;

    .line 10
    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    .line 12
    move-result-object v0

    .line 15
    iput-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_delayed:Lkotlinx/atomicfu/AtomicRef;

    .line 16
    const/4 v0, 0x0

    .line 18
    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(Z)Lkotlinx/atomicfu/AtomicBoolean;

    .line 19
    move-result-object v0

    .line 22
    iput-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_isCompleted:Lkotlinx/atomicfu/AtomicBoolean;

    .line 23
    return-void
    .line 25
.end method


# virtual methods
.method public final dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/EventLoopImplBase;->enqueue(Ljava/lang/Runnable;)V

    .line 2
    return-void
    .line 5
.end method

.method public enqueue(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/EventLoopImplBase;->enqueueImpl(Ljava/lang/Runnable;)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoopImplPlatform;->getThread()Ljava/lang/Thread;

    .line 8
    move-result-object p0

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 12
    move-result-object p1

    .line 15
    if-eq p1, p0, :cond_1

    .line 16
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 18
    goto :goto_0

    .line 21
    :cond_0
    sget-object p0, Lkotlinx/coroutines/DefaultExecutor;->INSTANCE:Lkotlinx/coroutines/DefaultExecutor;

    .line 22
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/DefaultExecutor;->enqueue(Ljava/lang/Runnable;)V

    .line 24
    :cond_1
    :goto_0
    return-void
    .line 27
.end method

.method public final enqueueImpl(Ljava/lang/Runnable;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_queue:Lkotlinx/atomicfu/AtomicRef;

    .line 2
    :cond_0
    :goto_0
    iget-object v1, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 4
    iget-object v2, p0, Lkotlinx/coroutines/EventLoopImplBase;->_isCompleted:Lkotlinx/atomicfu/AtomicBoolean;

    .line 6
    iget v2, v2, Lkotlinx/atomicfu/AtomicBoolean;->_value:I

    .line 8
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v2, :cond_1

    .line 12
    move v2, v3

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move v2, v4

    .line 16
    :goto_1
    if-eqz v2, :cond_2

    .line 17
    return v4

    .line 19
    :cond_2
    if-nez v1, :cond_3

    .line 20
    iget-object v1, p0, Lkotlinx/coroutines/EventLoopImplBase;->_queue:Lkotlinx/atomicfu/AtomicRef;

    .line 22
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v1, v2, p1}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    return v3

    .line 31
    :cond_3
    instance-of v2, v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    .line 32
    if-eqz v2, :cond_7

    .line 34
    move-object v2, v1

    .line 36
    check-cast v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    .line 37
    invoke-virtual {v2, p1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->addLast(Ljava/lang/Object;)I

    .line 39
    move-result v5

    .line 42
    if-eqz v5, :cond_6

    .line 43
    if-eq v5, v3, :cond_5

    .line 45
    const/4 v1, 0x2

    .line 47
    if-eq v5, v1, :cond_4

    .line 48
    goto :goto_0

    .line 50
    :cond_4
    return v4

    .line 51
    :cond_5
    iget-object v3, p0, Lkotlinx/coroutines/EventLoopImplBase;->_queue:Lkotlinx/atomicfu/AtomicRef;

    .line 52
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    .line 54
    move-result-object v2

    .line 57
    invoke-virtual {v3, v1, v2}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    goto :goto_0

    .line 61
    :cond_6
    return v3

    .line 62
    :cond_7
    sget-object v2, Lkotlinx/coroutines/EventLoop_commonKt;->CLOSED_EMPTY:Lkotlinx/coroutines/internal/Symbol;

    .line 63
    if-ne v1, v2, :cond_8

    .line 65
    return v4

    .line 67
    :cond_8
    new-instance v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    .line 68
    const/16 v4, 0x8

    .line 70
    invoke-direct {v2, v4, v3}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;-><init>(IZ)V

    .line 72
    move-object v4, v1

    .line 75
    check-cast v4, Ljava/lang/Runnable;

    .line 76
    invoke-virtual {v2, v4}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->addLast(Ljava/lang/Object;)I

    .line 78
    invoke-virtual {v2, p1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->addLast(Ljava/lang/Object;)I

    .line 81
    iget-object v4, p0, Lkotlinx/coroutines/EventLoopImplBase;->_queue:Lkotlinx/atomicfu/AtomicRef;

    .line 84
    invoke-virtual {v4, v1, v2}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    move-result v1

    .line 89
    if-eqz v1, :cond_0

    .line 90
    return v3
    .line 92
.end method

.method public invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/DisposableHandle;
    .locals 0

    .line 1
    sget-object p0, Lkotlinx/coroutines/DefaultExecutorKt;->DefaultDelay:Lkotlinx/coroutines/Delay;

    .line 2
    invoke-interface {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/Delay;->invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/DisposableHandle;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final isEmpty()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplPlatform;->unconfinedQueue:Lkotlinx/coroutines/internal/ArrayQueue;

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_1

    .line 6
    iget v3, v0, Lkotlinx/coroutines/internal/ArrayQueue;->head:I

    .line 8
    iget v0, v0, Lkotlinx/coroutines/internal/ArrayQueue;->tail:I

    .line 10
    if-ne v3, v0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    move v0, v1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    move v0, v2

    .line 17
    :goto_1
    if-nez v0, :cond_2

    .line 18
    return v1

    .line 20
    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_delayed:Lkotlinx/atomicfu/AtomicRef;

    .line 21
    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 23
    check-cast v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;

    .line 25
    if-eqz v0, :cond_4

    .line 27
    iget-object v0, v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->_size:Lkotlinx/atomicfu/AtomicInt;

    .line 29
    iget v0, v0, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 31
    if-nez v0, :cond_3

    .line 33
    move v0, v2

    .line 35
    goto :goto_2

    .line 36
    :cond_3
    move v0, v1

    .line 37
    :goto_2
    if-nez v0, :cond_4

    .line 38
    return v1

    .line 40
    :cond_4
    iget-object p0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_queue:Lkotlinx/atomicfu/AtomicRef;

    .line 41
    iget-object p0, p0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 43
    if-nez p0, :cond_5

    .line 45
    goto :goto_3

    .line 47
    :cond_5
    instance-of v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    .line 48
    if-eqz v0, :cond_6

    .line 50
    check-cast p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    .line 52
    iget-object p0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    .line 54
    iget-wide v3, p0, Lkotlinx/atomicfu/AtomicLong;->value:J

    .line 56
    const-wide/32 v5, 0x3fffffff

    .line 58
    and-long/2addr v5, v3

    .line 61
    shr-long/2addr v5, v1

    .line 62
    long-to-int p0, v5

    .line 63
    const-wide v5, 0xfffffffc0000000L

    .line 64
    and-long/2addr v3, v5

    .line 69
    const/16 v0, 0x1e

    .line 70
    shr-long/2addr v3, v0

    .line 72
    long-to-int v0, v3

    .line 73
    if-ne p0, v0, :cond_7

    .line 74
    goto :goto_3

    .line 76
    :cond_6
    sget-object v0, Lkotlinx/coroutines/EventLoop_commonKt;->CLOSED_EMPTY:Lkotlinx/coroutines/internal/Symbol;

    .line 77
    if-ne p0, v0, :cond_7

    .line 79
    :goto_3
    move v1, v2

    .line 81
    :cond_7
    return v1
    .line 82
.end method

.method public final processNextEvent()J
    .locals 12

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoopImplPlatform;->processUnconfinedEvent()Z

    .line 2
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    return-wide v1

    .line 10
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_delayed:Lkotlinx/atomicfu/AtomicRef;

    .line 11
    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 13
    check-cast v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;

    .line 15
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x1

    .line 18
    const/4 v5, 0x0

    .line 19
    if-eqz v0, :cond_8

    .line 20
    iget-object v6, v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->_size:Lkotlinx/atomicfu/AtomicInt;

    .line 22
    iget v6, v6, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 24
    if-nez v6, :cond_1

    .line 26
    move v6, v4

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v6, v5

    .line 30
    :goto_0
    if-nez v6, :cond_8

    .line 31
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 33
    move-result-wide v6

    .line 36
    :cond_2
    monitor-enter v0

    .line 37
    :try_start_0
    iget-object v8, v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->a:[Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    .line 38
    if-eqz v8, :cond_3

    .line 40
    aget-object v8, v8, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    goto :goto_1

    .line 44
    :cond_3
    move-object v8, v3

    .line 45
    :goto_1
    if-nez v8, :cond_4

    .line 46
    monitor-exit v0

    .line 48
    move-object v8, v3

    .line 49
    goto :goto_5

    .line 50
    :cond_4
    :try_start_1
    iget-wide v9, v8, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->nanoTime:J

    .line 51
    sub-long v9, v6, v9

    .line 53
    cmp-long v9, v9, v1

    .line 55
    if-ltz v9, :cond_5

    .line 57
    move v9, v4

    .line 59
    goto :goto_2

    .line 60
    :cond_5
    move v9, v5

    .line 61
    :goto_2
    if-eqz v9, :cond_6

    .line 62
    invoke-virtual {p0, v8}, Lkotlinx/coroutines/EventLoopImplBase;->enqueueImpl(Ljava/lang/Runnable;)Z

    .line 64
    move-result v8

    .line 67
    goto :goto_3

    .line 68
    :cond_6
    move v8, v5

    .line 69
    :goto_3
    if-eqz v8, :cond_7

    .line 70
    invoke-virtual {v0, v5}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->removeAtImpl(I)Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    .line 72
    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    goto :goto_4

    .line 76
    :cond_7
    move-object v8, v3

    .line 77
    :goto_4
    monitor-exit v0

    .line 78
    :goto_5
    if-nez v8, :cond_2

    .line 79
    goto :goto_6

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    monitor-exit v0

    .line 83
    throw p0

    .line 84
    :cond_8
    :goto_6
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_queue:Lkotlinx/atomicfu/AtomicRef;

    .line 85
    :cond_9
    :goto_7
    iget-object v6, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 87
    if-nez v6, :cond_a

    .line 89
    goto :goto_8

    .line 91
    :cond_a
    instance-of v7, v6, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    .line 92
    if-eqz v7, :cond_c

    .line 94
    move-object v7, v6

    .line 96
    check-cast v7, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    .line 97
    invoke-virtual {v7}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->removeFirstOrNull()Ljava/lang/Object;

    .line 99
    move-result-object v8

    .line 102
    sget-object v9, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->REMOVE_FROZEN:Lkotlinx/coroutines/internal/Symbol;

    .line 103
    if-eq v8, v9, :cond_b

    .line 105
    check-cast v8, Ljava/lang/Runnable;

    .line 107
    goto :goto_9

    .line 109
    :cond_b
    iget-object v8, p0, Lkotlinx/coroutines/EventLoopImplBase;->_queue:Lkotlinx/atomicfu/AtomicRef;

    .line 110
    invoke-virtual {v7}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    .line 112
    move-result-object v7

    .line 115
    invoke-virtual {v8, v6, v7}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    goto :goto_7

    .line 119
    :cond_c
    sget-object v7, Lkotlinx/coroutines/EventLoop_commonKt;->CLOSED_EMPTY:Lkotlinx/coroutines/internal/Symbol;

    .line 120
    if-ne v6, v7, :cond_d

    .line 122
    :goto_8
    move-object v8, v3

    .line 124
    goto :goto_9

    .line 125
    :cond_d
    iget-object v7, p0, Lkotlinx/coroutines/EventLoopImplBase;->_queue:Lkotlinx/atomicfu/AtomicRef;

    .line 126
    invoke-virtual {v7, v6, v3}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    move-result v7

    .line 131
    if-eqz v7, :cond_9

    .line 132
    move-object v8, v6

    .line 134
    check-cast v8, Ljava/lang/Runnable;

    .line 135
    :goto_9
    if-eqz v8, :cond_e

    .line 137
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 139
    return-wide v1

    .line 142
    :cond_e
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplPlatform;->unconfinedQueue:Lkotlinx/coroutines/internal/ArrayQueue;

    .line 143
    const-wide v6, 0x7fffffffffffffffL

    .line 145
    if-nez v0, :cond_f

    .line 150
    goto :goto_b

    .line 152
    :cond_f
    iget v8, v0, Lkotlinx/coroutines/internal/ArrayQueue;->head:I

    .line 153
    iget v0, v0, Lkotlinx/coroutines/internal/ArrayQueue;->tail:I

    .line 155
    if-ne v8, v0, :cond_10

    .line 157
    move v0, v4

    .line 159
    goto :goto_a

    .line 160
    :cond_10
    move v0, v5

    .line 161
    :goto_a
    if-eqz v0, :cond_11

    .line 162
    :goto_b
    move-wide v8, v6

    .line 164
    goto :goto_c

    .line 165
    :cond_11
    move-wide v8, v1

    .line 166
    :goto_c
    cmp-long v0, v8, v1

    .line 167
    if-nez v0, :cond_12

    .line 169
    goto :goto_f

    .line 171
    :cond_12
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_queue:Lkotlinx/atomicfu/AtomicRef;

    .line 172
    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 174
    if-eqz v0, :cond_15

    .line 176
    instance-of v8, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    .line 178
    if-eqz v8, :cond_14

    .line 180
    check-cast v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    .line 182
    iget-object v0, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    .line 184
    iget-wide v8, v0, Lkotlinx/atomicfu/AtomicLong;->value:J

    .line 186
    const-wide/32 v10, 0x3fffffff

    .line 188
    and-long/2addr v10, v8

    .line 191
    shr-long/2addr v10, v5

    .line 192
    long-to-int v0, v10

    .line 193
    const-wide v10, 0xfffffffc0000000L

    .line 194
    and-long/2addr v8, v10

    .line 199
    const/16 v10, 0x1e

    .line 200
    shr-long/2addr v8, v10

    .line 202
    long-to-int v8, v8

    .line 203
    if-ne v0, v8, :cond_13

    .line 204
    goto :goto_d

    .line 206
    :cond_13
    move v4, v5

    .line 207
    :goto_d
    if-nez v4, :cond_15

    .line 208
    goto :goto_f

    .line 210
    :cond_14
    sget-object p0, Lkotlinx/coroutines/EventLoop_commonKt;->CLOSED_EMPTY:Lkotlinx/coroutines/internal/Symbol;

    .line 211
    if-ne v0, p0, :cond_1a

    .line 213
    goto :goto_e

    .line 215
    :cond_15
    iget-object p0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_delayed:Lkotlinx/atomicfu/AtomicRef;

    .line 216
    iget-object p0, p0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 218
    check-cast p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;

    .line 220
    if-eqz p0, :cond_19

    .line 222
    monitor-enter p0

    .line 224
    :try_start_2
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->a:[Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    .line 225
    if-eqz v0, :cond_16

    .line 227
    aget-object v3, v0, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 229
    :cond_16
    monitor-exit p0

    .line 231
    if-nez v3, :cond_17

    .line 232
    goto :goto_e

    .line 234
    :cond_17
    iget-wide v3, v3, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->nanoTime:J

    .line 235
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 237
    move-result-wide v5

    .line 240
    sub-long/2addr v3, v5

    .line 241
    cmp-long p0, v3, v1

    .line 242
    if-gez p0, :cond_18

    .line 244
    goto :goto_f

    .line 246
    :cond_18
    move-wide v1, v3

    .line 247
    goto :goto_f

    .line 248
    :catchall_1
    move-exception v0

    .line 249
    monitor-exit p0

    .line 250
    throw v0

    .line 251
    :cond_19
    :goto_e
    move-wide v1, v6

    .line 252
    :cond_1a
    :goto_f
    return-wide v1
    .line 253
.end method

.method public final schedule(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_isCompleted:Lkotlinx/atomicfu/AtomicBoolean;

    .line 2
    iget v0, v0, Lkotlinx/atomicfu/AtomicBoolean;->_value:I

    .line 4
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    move v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v2

    .line 12
    :goto_0
    const/4 v3, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    move v0, v1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_delayed:Lkotlinx/atomicfu/AtomicRef;

    .line 18
    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 20
    check-cast v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;

    .line 22
    if-nez v0, :cond_2

    .line 24
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_delayed:Lkotlinx/atomicfu/AtomicRef;

    .line 26
    new-instance v4, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;

    .line 28
    invoke-direct {v4, p1, p2}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;-><init>(J)V

    .line 30
    invoke-virtual {v0, v3, v4}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_delayed:Lkotlinx/atomicfu/AtomicRef;

    .line 36
    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 38
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 40
    check-cast v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;

    .line 43
    :cond_2
    invoke-virtual {p3, p1, p2, v0, p0}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->scheduleTask(JLkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;Lkotlinx/coroutines/EventLoopImplBase;)I

    .line 45
    move-result v0

    .line 48
    :goto_1
    if-eqz v0, :cond_5

    .line 49
    if-eq v0, v1, :cond_4

    .line 51
    const/4 p0, 0x2

    .line 53
    if-ne v0, p0, :cond_3

    .line 54
    goto :goto_4

    .line 56
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 57
    const-string/jumbo p1, "unexpected result"

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 65
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    throw p0

    .line 69
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/EventLoopImplPlatform;->reschedule(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V

    .line 70
    goto :goto_4

    .line 73
    :cond_5
    iget-object p1, p0, Lkotlinx/coroutines/EventLoopImplBase;->_delayed:Lkotlinx/atomicfu/AtomicRef;

    .line 74
    iget-object p1, p1, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 76
    check-cast p1, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;

    .line 78
    if-eqz p1, :cond_7

    .line 80
    monitor-enter p1

    .line 82
    :try_start_0
    iget-object p2, p1, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->a:[Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    .line 83
    if-eqz p2, :cond_6

    .line 85
    aget-object p2, p2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    move-object v3, p2

    .line 89
    :cond_6
    monitor-exit p1

    .line 90
    goto :goto_2

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    monitor-exit p1

    .line 93
    throw p0

    .line 94
    :cond_7
    :goto_2
    if-ne v3, p3, :cond_8

    .line 95
    goto :goto_3

    .line 97
    :cond_8
    move v1, v2

    .line 98
    :goto_3
    if-eqz v1, :cond_9

    .line 99
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoopImplPlatform;->getThread()Ljava/lang/Thread;

    .line 101
    move-result-object p0

    .line 104
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 105
    move-result-object p1

    .line 108
    if-eq p1, p0, :cond_9

    .line 109
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 111
    :cond_9
    :goto_4
    return-void
    .line 114
.end method

.method public final scheduleResumeAfterDelay(JLkotlinx/coroutines/CancellableContinuationImpl;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    cmp-long v2, p1, v0

    .line 4
    if-gtz v2, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const-wide v0, 0x8637bd05af6L

    .line 9
    cmp-long v0, p1, v0

    .line 14
    if-ltz v0, :cond_1

    .line 16
    const-wide v0, 0x7fffffffffffffffL

    .line 18
    goto :goto_0

    .line 23
    :cond_1
    const-wide/32 v0, 0xf4240

    .line 24
    mul-long/2addr v0, p1

    .line 27
    :goto_0
    const-wide p1, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 28
    cmp-long p1, v0, p1

    .line 33
    if-gez p1, :cond_2

    .line 35
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 37
    move-result-wide p1

    .line 40
    new-instance v2, Lkotlinx/coroutines/EventLoopImplBase$DelayedResumeTask;

    .line 41
    add-long/2addr v0, p1

    .line 43
    invoke-direct {v2, p0, v0, v1, p3}, Lkotlinx/coroutines/EventLoopImplBase$DelayedResumeTask;-><init>(Lkotlinx/coroutines/EventLoopImplBase;JLkotlinx/coroutines/CancellableContinuationImpl;)V

    .line 44
    invoke-virtual {p0, p1, p2, v2}, Lkotlinx/coroutines/EventLoopImplBase;->schedule(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V

    .line 47
    new-instance p0, Lkotlinx/coroutines/DisposeOnCancel;

    .line 50
    invoke-direct {p0, v2}, Lkotlinx/coroutines/DisposeOnCancel;-><init>(Lkotlinx/coroutines/DisposableHandle;)V

    .line 52
    invoke-virtual {p3, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 55
    :cond_2
    return-void
    .line 58
.end method

.method public shutdown()V
    .locals 6

    .line 1
    sget-object v0, Lkotlinx/coroutines/ThreadLocalEventLoop;->ref:Ljava/lang/ThreadLocal;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_isCompleted:Lkotlinx/atomicfu/AtomicBoolean;

    .line 8
    const/4 v2, 0x1

    .line 10
    iput v2, v0, Lkotlinx/atomicfu/AtomicBoolean;->_value:I

    .line 11
    iget-object v0, v0, Lkotlinx/atomicfu/AtomicBoolean;->trace:Lkotlinx/atomicfu/TraceBase;

    .line 13
    sget-object v3, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    .line 15
    if-eq v0, v3, :cond_0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_queue:Lkotlinx/atomicfu/AtomicRef;

    .line 22
    :cond_1
    iget-object v3, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 24
    sget-object v4, Lkotlinx/coroutines/EventLoop_commonKt;->CLOSED_EMPTY:Lkotlinx/coroutines/internal/Symbol;

    .line 26
    if-nez v3, :cond_2

    .line 28
    iget-object v3, p0, Lkotlinx/coroutines/EventLoopImplBase;->_queue:Lkotlinx/atomicfu/AtomicRef;

    .line 30
    invoke-virtual {v3, v1, v4}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    goto :goto_0

    .line 38
    :cond_2
    instance-of v5, v3, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    .line 39
    if-eqz v5, :cond_3

    .line 41
    check-cast v3, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    .line 43
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->close()Z

    .line 45
    goto :goto_0

    .line 48
    :cond_3
    if-ne v3, v4, :cond_4

    .line 49
    goto :goto_0

    .line 51
    :cond_4
    new-instance v4, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    .line 52
    const/16 v5, 0x8

    .line 54
    invoke-direct {v4, v5, v2}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;-><init>(IZ)V

    .line 56
    move-object v5, v3

    .line 59
    check-cast v5, Ljava/lang/Runnable;

    .line 60
    invoke-virtual {v4, v5}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->addLast(Ljava/lang/Object;)I

    .line 62
    iget-object v5, p0, Lkotlinx/coroutines/EventLoopImplBase;->_queue:Lkotlinx/atomicfu/AtomicRef;

    .line 65
    invoke-virtual {v5, v3, v4}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    move-result v3

    .line 70
    if-eqz v3, :cond_1

    .line 71
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoopImplBase;->processNextEvent()J

    .line 73
    move-result-wide v2

    .line 76
    const-wide/16 v4, 0x0

    .line 77
    cmp-long v0, v2, v4

    .line 79
    if-lez v0, :cond_5

    .line 81
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 83
    move-result-wide v2

    .line 86
    :goto_1
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_delayed:Lkotlinx/atomicfu/AtomicRef;

    .line 87
    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 89
    check-cast v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;

    .line 91
    if-eqz v0, :cond_8

    .line 93
    monitor-enter v0

    .line 95
    :try_start_0
    iget-object v4, v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->_size:Lkotlinx/atomicfu/AtomicInt;

    .line 96
    iget v4, v4, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 98
    if-lez v4, :cond_6

    .line 100
    const/4 v4, 0x0

    .line 102
    invoke-virtual {v0, v4}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->removeAtImpl(I)Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    .line 103
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    goto :goto_2

    .line 107
    :cond_6
    move-object v4, v1

    .line 108
    :goto_2
    monitor-exit v0

    .line 109
    if-nez v4, :cond_7

    .line 110
    goto :goto_3

    .line 112
    :cond_7
    invoke-virtual {p0, v2, v3, v4}, Lkotlinx/coroutines/EventLoopImplPlatform;->reschedule(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V

    .line 113
    goto :goto_1

    .line 116
    :catchall_0
    move-exception p0

    .line 117
    monitor-exit v0

    .line 118
    throw p0

    .line 119
    :cond_8
    :goto_3
    return-void
    .line 120
.end method
