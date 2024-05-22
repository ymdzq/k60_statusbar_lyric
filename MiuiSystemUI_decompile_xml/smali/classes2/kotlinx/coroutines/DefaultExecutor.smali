.class public final Lkotlinx/coroutines/DefaultExecutor;
.super Lkotlinx/coroutines/EventLoopImplBase;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/DefaultExecutor;

.field public static final KEEP_ALIVE_NANOS:J

.field private static volatile _thread:Ljava/lang/Thread;

.field private static volatile debugStatus:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lkotlinx/coroutines/DefaultExecutor;

    .line 2
    invoke-direct {v0}, Lkotlinx/coroutines/DefaultExecutor;-><init>()V

    .line 4
    sput-object v0, Lkotlinx/coroutines/DefaultExecutor;->INSTANCE:Lkotlinx/coroutines/DefaultExecutor;

    .line 7
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/EventLoopImplPlatform;->incrementUseCount(Z)V

    .line 10
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    const-wide/16 v1, 0x3e8

    .line 15
    :try_start_0
    const-string v3, "kotlinx.coroutines.DefaultExecutor.keepAlive"

    .line 17
    invoke-static {v3, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    .line 19
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    move-result-object v1

    .line 27
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 28
    move-result-wide v1

    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 32
    move-result-wide v0

    .line 35
    sput-wide v0, Lkotlinx/coroutines/DefaultExecutor;->KEEP_ALIVE_NANOS:J

    .line 36
    return-void
    .line 38
.end method


# virtual methods
.method public final declared-synchronized acknowledgeShutdownIfNeeded()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget v0, Lkotlinx/coroutines/DefaultExecutor;->debugStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    const/4 v1, 0x2

    .line 5
    const/4 v2, 0x3

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    if-ne v0, v2, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 14
    :goto_1
    if-nez v0, :cond_2

    .line 15
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :cond_2
    :try_start_1
    sput v2, Lkotlinx/coroutines/DefaultExecutor;->debugStatus:I

    .line 19
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_queue:Lkotlinx/atomicfu/AtomicRef;

    .line 21
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->_delayed:Lkotlinx/atomicfu/AtomicRef;

    .line 27
    invoke-virtual {v0, v1}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    monitor-exit p0

    .line 38
    throw v0
    .line 39
.end method

.method public final enqueue(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget v0, Lkotlinx/coroutines/DefaultExecutor;->debugStatus:I

    .line 2
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-nez v0, :cond_1

    .line 10
    invoke-super {p0, p1}, Lkotlinx/coroutines/EventLoopImplBase;->enqueue(Ljava/lang/Runnable;)V

    .line 12
    return-void

    .line 15
    :cond_1
    new-instance p0, Ljava/util/concurrent/RejectedExecutionException;

    .line 16
    const-string p1, "DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details"

    .line 18
    invoke-direct {p0, p1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p0
    .line 23
.end method

.method public final getThread()Ljava/lang/Thread;
    .locals 2

    .line 1
    sget-object v0, Lkotlinx/coroutines/DefaultExecutor;->_thread:Ljava/lang/Thread;

    .line 2
    if-nez v0, :cond_1

    .line 4
    monitor-enter p0

    .line 6
    :try_start_0
    sget-object v0, Lkotlinx/coroutines/DefaultExecutor;->_thread:Ljava/lang/Thread;

    .line 7
    if-nez v0, :cond_0

    .line 9
    new-instance v0, Ljava/lang/Thread;

    .line 11
    const-string v1, "kotlinx.coroutines.DefaultExecutor"

    .line 13
    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 15
    sput-object v0, Lkotlinx/coroutines/DefaultExecutor;->_thread:Ljava/lang/Thread;

    .line 18
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 21
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_0
    monitor-exit p0

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    monitor-exit p0

    .line 30
    throw v0

    .line 31
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/DisposableHandle;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    cmp-long p4, p1, v0

    .line 4
    if-gtz p4, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const-wide v0, 0x8637bd05af6L

    .line 9
    cmp-long p4, p1, v0

    .line 14
    if-ltz p4, :cond_1

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
    new-instance p4, Lkotlinx/coroutines/EventLoopImplBase$DelayedRunnableTask;

    .line 41
    add-long/2addr v0, p1

    .line 43
    invoke-direct {p4, p3, v0, v1}, Lkotlinx/coroutines/EventLoopImplBase$DelayedRunnableTask;-><init>(Ljava/lang/Runnable;J)V

    .line 44
    invoke-virtual {p0, p1, p2, p4}, Lkotlinx/coroutines/EventLoopImplBase;->schedule(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V

    .line 47
    goto :goto_1

    .line 50
    :cond_2
    sget-object p4, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    .line 51
    :goto_1
    return-object p4
    .line 53
.end method

.method public final reschedule(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/util/concurrent/RejectedExecutionException;

    .line 2
    const-string p1, "DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details"

    .line 4
    invoke-direct {p0, p1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    .line 6
    throw p0
    .line 9
.end method

.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    sget-object v0, Lkotlinx/coroutines/ThreadLocalEventLoop;->ref:Ljava/lang/ThreadLocal;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 6
    const/4 v2, 0x0

    .line 9
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    sget v0, Lkotlinx/coroutines/DefaultExecutor;->debugStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    const/4 v3, 0x3

    .line 13
    const/4 v4, 0x2

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x1

    .line 16
    if-eq v0, v4, :cond_1

    .line 17
    if-ne v0, v3, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    move v0, v5

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    move v0, v6

    .line 24
    :goto_1
    if-eqz v0, :cond_2

    .line 25
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    move v0, v5

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    :try_start_3
    sput v6, Lkotlinx/coroutines/DefaultExecutor;->debugStatus:I

    .line 30
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 32
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 35
    move v0, v6

    .line 36
    :goto_2
    if-nez v0, :cond_4

    .line 37
    sput-object v2, Lkotlinx/coroutines/DefaultExecutor;->_thread:Ljava/lang/Thread;

    .line 39
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/DefaultExecutor;->acknowledgeShutdownIfNeeded()V

    .line 41
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/EventLoopImplBase;->isEmpty()Z

    .line 44
    move-result v0

    .line 47
    if-nez v0, :cond_3

    .line 48
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/DefaultExecutor;->getThread()Ljava/lang/Thread;

    .line 50
    :cond_3
    return-void

    .line 53
    :cond_4
    const-wide v7, 0x7fffffffffffffffL

    .line 54
    move-wide v9, v7

    .line 59
    :cond_5
    :goto_3
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 60
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/EventLoopImplBase;->processNextEvent()J

    .line 63
    move-result-wide v11

    .line 66
    cmp-long v0, v11, v7

    .line 67
    const-wide/16 v13, 0x0

    .line 69
    if-nez v0, :cond_9

    .line 71
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 73
    move-result-wide v15

    .line 76
    cmp-long v0, v9, v7

    .line 77
    if-nez v0, :cond_6

    .line 79
    sget-wide v9, Lkotlinx/coroutines/DefaultExecutor;->KEEP_ALIVE_NANOS:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 81
    add-long/2addr v9, v15

    .line 83
    :cond_6
    sub-long v15, v9, v15

    .line 84
    cmp-long v0, v15, v13

    .line 86
    if-gtz v0, :cond_8

    .line 88
    sput-object v2, Lkotlinx/coroutines/DefaultExecutor;->_thread:Ljava/lang/Thread;

    .line 90
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/DefaultExecutor;->acknowledgeShutdownIfNeeded()V

    .line 92
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/EventLoopImplBase;->isEmpty()Z

    .line 95
    move-result v0

    .line 98
    if-nez v0, :cond_7

    .line 99
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/DefaultExecutor;->getThread()Ljava/lang/Thread;

    .line 101
    :cond_7
    return-void

    .line 104
    :cond_8
    cmp-long v0, v11, v15

    .line 105
    if-lez v0, :cond_a

    .line 107
    move-wide v11, v15

    .line 109
    goto :goto_4

    .line 110
    :cond_9
    move-wide v9, v7

    .line 111
    :cond_a
    :goto_4
    cmp-long v0, v11, v13

    .line 112
    if-lez v0, :cond_5

    .line 114
    :try_start_6
    sget v0, Lkotlinx/coroutines/DefaultExecutor;->debugStatus:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 116
    if-eq v0, v4, :cond_c

    .line 118
    if-ne v0, v3, :cond_b

    .line 120
    goto :goto_5

    .line 122
    :cond_b
    move v0, v5

    .line 123
    goto :goto_6

    .line 124
    :cond_c
    :goto_5
    move v0, v6

    .line 125
    :goto_6
    if-eqz v0, :cond_e

    .line 126
    sput-object v2, Lkotlinx/coroutines/DefaultExecutor;->_thread:Ljava/lang/Thread;

    .line 128
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/DefaultExecutor;->acknowledgeShutdownIfNeeded()V

    .line 130
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/EventLoopImplBase;->isEmpty()Z

    .line 133
    move-result v0

    .line 136
    if-nez v0, :cond_d

    .line 137
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/DefaultExecutor;->getThread()Ljava/lang/Thread;

    .line 139
    :cond_d
    return-void

    .line 142
    :cond_e
    :try_start_7
    invoke-static {v1, v11, v12}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 143
    goto :goto_3

    .line 146
    :catchall_0
    move-exception v0

    .line 147
    goto :goto_7

    .line 148
    :catchall_1
    move-exception v0

    .line 149
    monitor-exit p0

    .line 150
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 151
    :goto_7
    sput-object v2, Lkotlinx/coroutines/DefaultExecutor;->_thread:Ljava/lang/Thread;

    .line 152
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/DefaultExecutor;->acknowledgeShutdownIfNeeded()V

    .line 154
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/EventLoopImplBase;->isEmpty()Z

    .line 157
    move-result v2

    .line 160
    if-nez v2, :cond_f

    .line 161
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/DefaultExecutor;->getThread()Ljava/lang/Thread;

    .line 163
    :cond_f
    throw v0
    .line 166
.end method

.method public final shutdown()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    sput v0, Lkotlinx/coroutines/DefaultExecutor;->debugStatus:I

    .line 3
    invoke-super {p0}, Lkotlinx/coroutines/EventLoopImplBase;->shutdown()V

    .line 5
    return-void
    .line 8
.end method
