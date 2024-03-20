.class public final Lkotlinx/coroutines/scheduling/CoroutineScheduler;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljava/io/Closeable;


# static fields
.field public static final NOT_IN_STACK:Lkotlinx/coroutines/internal/Symbol;


# instance fields
.field public final _isTerminated:Lkotlinx/atomicfu/AtomicBoolean;

.field public final controlState:Lkotlinx/atomicfu/AtomicLong;

.field public final corePoolSize:I

.field public final globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

.field public final globalCpuQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

.field public final idleWorkerKeepAliveNs:J

.field public final maxPoolSize:I

.field public final parkedWorkersStack:Lkotlinx/atomicfu/AtomicLong;

.field public final schedulerName:Ljava/lang/String;

.field public final workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    .line 2
    const-string v1, "NOT_IN_STACK"

    .line 4
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->NOT_IN_STACK:Lkotlinx/coroutines/internal/Symbol;

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    .line 5
    iput p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->maxPoolSize:I

    .line 7
    iput-wide p3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->idleWorkerKeepAliveNs:J

    .line 9
    iput-object p5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->schedulerName:Ljava/lang/String;

    .line 11
    const/4 p5, 0x0

    .line 13
    const/4 v0, 0x1

    .line 14
    if-lt p1, v0, :cond_0

    .line 15
    move v1, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, p5

    .line 19
    :goto_0
    if-eqz v1, :cond_7

    .line 20
    if-lt p2, p1, :cond_1

    .line 22
    move v1, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v1, p5

    .line 26
    :goto_1
    const-string v2, "Max pool size "

    .line 27
    if-eqz v1, :cond_6

    .line 29
    const v1, 0x1ffffe

    .line 31
    if-gt p2, v1, :cond_2

    .line 34
    move v1, v0

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    move v1, p5

    .line 38
    :goto_2
    if-eqz v1, :cond_5

    .line 39
    const-wide/16 v1, 0x0

    .line 41
    cmp-long p2, p3, v1

    .line 43
    if-lez p2, :cond_3

    .line 45
    goto :goto_3

    .line 47
    :cond_3
    move v0, p5

    .line 48
    :goto_3
    if-eqz v0, :cond_4

    .line 49
    new-instance p2, Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 51
    invoke-direct {p2}, Lkotlinx/coroutines/scheduling/GlobalQueue;-><init>()V

    .line 53
    iput-object p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalCpuQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 56
    new-instance p2, Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 58
    invoke-direct {p2}, Lkotlinx/coroutines/scheduling/GlobalQueue;-><init>()V

    .line 60
    iput-object p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 63
    new-instance p2, Lkotlinx/atomicfu/AtomicLong;

    .line 65
    invoke-direct {p2, v1, v2}, Lkotlinx/atomicfu/AtomicLong;-><init>(J)V

    .line 67
    iput-object p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack:Lkotlinx/atomicfu/AtomicLong;

    .line 70
    new-instance p2, Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 72
    add-int/lit8 p3, p1, 0x1

    .line 74
    invoke-direct {p2, p3}, Lkotlinx/coroutines/internal/ResizableAtomicArray;-><init>(I)V

    .line 76
    iput-object p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 79
    int-to-long p1, p1

    .line 81
    const/16 p3, 0x2a

    .line 82
    shl-long/2addr p1, p3

    .line 84
    new-instance p3, Lkotlinx/atomicfu/AtomicLong;

    .line 85
    invoke-direct {p3, p1, p2}, Lkotlinx/atomicfu/AtomicLong;-><init>(J)V

    .line 87
    iput-object p3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:Lkotlinx/atomicfu/AtomicLong;

    .line 90
    new-instance p1, Lkotlinx/atomicfu/AtomicBoolean;

    .line 92
    invoke-direct {p1, p5}, Lkotlinx/atomicfu/AtomicBoolean;-><init>(Z)V

    .line 94
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->_isTerminated:Lkotlinx/atomicfu/AtomicBoolean;

    .line 97
    return-void

    .line 99
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 100
    const-string p1, "Idle worker keep alive time "

    .line 102
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 107
    const-string p1, " must be positive"

    .line 110
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object p0

    .line 118
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 121
    move-result-object p0

    .line 124
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 125
    throw p1

    .line 128
    :cond_5
    const-string p0, " should not exceed maximal supported number of threads 2097150"

    .line 129
    invoke-static {v2, p2, p0}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 131
    move-result-object p0

    .line 134
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 137
    move-result-object p0

    .line 140
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 141
    throw p1

    .line 144
    :cond_6
    const-string p0, " should be greater than or equals to core pool size "

    .line 145
    invoke-static {v2, p2, p0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 147
    move-result-object p0

    .line 150
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 153
    move-result-object p0

    .line 156
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 157
    throw p1

    .line 160
    :cond_7
    const-string p0, "Core pool size "

    .line 161
    const-string p2, " should be at least 1"

    .line 163
    invoke-static {p0, p1, p2}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 165
    move-result-object p0

    .line 168
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 171
    move-result-object p0

    .line 174
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 175
    throw p1
    .line 178
.end method


# virtual methods
.method public final close()V
    .locals 8

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->_isTerminated:Lkotlinx/atomicfu/AtomicBoolean;

    .line 2
    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    goto/16 :goto_8

    .line 10
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 12
    move-result-object v0

    .line 15
    instance-of v1, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 16
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_1

    .line 19
    check-cast v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    move-object v0, v2

    .line 24
    :goto_0
    if-eqz v0, :cond_2

    .line 25
    iget-object v1, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 27
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    goto :goto_1

    .line 35
    :cond_2
    move-object v0, v2

    .line 36
    :goto_1
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 37
    monitor-enter v1

    .line 39
    :try_start_0
    iget-object v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:Lkotlinx/atomicfu/AtomicLong;

    .line 40
    iget-wide v3, v3, Lkotlinx/atomicfu/AtomicLong;->value:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    const-wide/32 v5, 0x1fffff

    .line 44
    and-long/2addr v3, v5

    .line 47
    long-to-int v3, v3

    .line 48
    monitor-exit v1

    .line 49
    const/4 v4, 0x1

    .line 50
    if-gt v4, v3, :cond_7

    .line 51
    move v1, v4

    .line 53
    :goto_2
    iget-object v5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 54
    invoke-virtual {v5, v1}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->get(I)Ljava/lang/Object;

    .line 56
    move-result-object v5

    .line 59
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 60
    check-cast v5, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 63
    if-eq v5, v0, :cond_6

    .line 65
    :goto_3
    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    .line 67
    move-result v6

    .line 70
    if-eqz v6, :cond_3

    .line 71
    invoke-static {v5}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 73
    const-wide/16 v6, 0x2710

    .line 76
    invoke-virtual {v5, v6, v7}, Ljava/lang/Thread;->join(J)V

    .line 78
    goto :goto_3

    .line 81
    :cond_3
    iget-object v5, v5, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    .line 82
    iget-object v6, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 84
    iget-object v7, v5, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask:Lkotlinx/atomicfu/AtomicRef;

    .line 86
    invoke-virtual {v7, v2}, Lkotlinx/atomicfu/AtomicRef;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    move-result-object v7

    .line 91
    check-cast v7, Lkotlinx/coroutines/scheduling/Task;

    .line 92
    if-eqz v7, :cond_4

    .line 94
    invoke-virtual {v6, v7}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->addLast(Ljava/lang/Object;)Z

    .line 96
    :cond_4
    invoke-virtual {v5}, Lkotlinx/coroutines/scheduling/WorkQueue;->pollBuffer()Lkotlinx/coroutines/scheduling/Task;

    .line 99
    move-result-object v7

    .line 102
    if-nez v7, :cond_5

    .line 103
    const/4 v7, 0x0

    .line 105
    goto :goto_4

    .line 106
    :cond_5
    invoke-virtual {v6, v7}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->addLast(Ljava/lang/Object;)Z

    .line 107
    move v7, v4

    .line 110
    :goto_4
    if-nez v7, :cond_4

    .line 111
    :cond_6
    if-eq v1, v3, :cond_7

    .line 113
    add-int/lit8 v1, v1, 0x1

    .line 115
    goto :goto_2

    .line 117
    :cond_7
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 118
    iget-object v3, v2, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->_cur:Lkotlinx/atomicfu/AtomicRef;

    .line 120
    :goto_5
    iget-object v1, v3, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 122
    check-cast v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    .line 124
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->close()Z

    .line 126
    move-result v5

    .line 129
    if-eqz v5, :cond_e

    .line 130
    iget-object v5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalCpuQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 132
    iget-object v6, v5, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->_cur:Lkotlinx/atomicfu/AtomicRef;

    .line 134
    :goto_6
    iget-object v1, v6, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 136
    check-cast v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    .line 138
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->close()Z

    .line 140
    move-result v2

    .line 143
    if-eqz v2, :cond_d

    .line 144
    :goto_7
    if-eqz v0, :cond_8

    .line 146
    invoke-virtual {v0, v4}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->findTask(Z)Lkotlinx/coroutines/scheduling/Task;

    .line 148
    move-result-object v1

    .line 151
    if-nez v1, :cond_c

    .line 152
    :cond_8
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalCpuQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 154
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->removeFirstOrNull()Ljava/lang/Object;

    .line 156
    move-result-object v1

    .line 159
    check-cast v1, Lkotlinx/coroutines/scheduling/Task;

    .line 160
    if-nez v1, :cond_c

    .line 162
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 164
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->removeFirstOrNull()Ljava/lang/Object;

    .line 166
    move-result-object v1

    .line 169
    check-cast v1, Lkotlinx/coroutines/scheduling/Task;

    .line 170
    if-nez v1, :cond_c

    .line 172
    if-eqz v0, :cond_9

    .line 174
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 176
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->tryReleaseCpu(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 178
    :cond_9
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack:Lkotlinx/atomicfu/AtomicLong;

    .line 181
    const-wide/16 v1, 0x0

    .line 183
    iput-wide v1, v0, Lkotlinx/atomicfu/AtomicLong;->value:J

    .line 185
    iget-object v0, v0, Lkotlinx/atomicfu/AtomicLong;->trace:Lkotlinx/atomicfu/TraceBase;

    .line 187
    sget-object v3, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    .line 189
    if-eq v0, v3, :cond_a

    .line 191
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    :cond_a
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:Lkotlinx/atomicfu/AtomicLong;

    .line 196
    iput-wide v1, p0, Lkotlinx/atomicfu/AtomicLong;->value:J

    .line 198
    iget-object p0, p0, Lkotlinx/atomicfu/AtomicLong;->trace:Lkotlinx/atomicfu/TraceBase;

    .line 200
    if-eq p0, v3, :cond_b

    .line 202
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    :cond_b
    :goto_8
    return-void

    .line 207
    :cond_c
    :try_start_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    goto :goto_7

    .line 211
    :catchall_0
    move-exception v1

    .line 212
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 213
    move-result-object v2

    .line 216
    invoke-virtual {v2}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 217
    move-result-object v3

    .line 220
    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 221
    goto :goto_7

    .line 224
    :cond_d
    iget-object v2, v5, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->_cur:Lkotlinx/atomicfu/AtomicRef;

    .line 225
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    .line 227
    move-result-object v3

    .line 230
    invoke-virtual {v2, v1, v3}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 231
    goto :goto_6

    .line 234
    :cond_e
    iget-object v5, v2, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->_cur:Lkotlinx/atomicfu/AtomicRef;

    .line 235
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    .line 237
    move-result-object v6

    .line 240
    invoke-virtual {v5, v1, v6}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 241
    goto :goto_5

    .line 244
    :catchall_1
    move-exception p0

    .line 245
    monitor-exit v1

    .line 246
    throw p0
    .line 247
.end method

.method public final createNewWorker()I
    .locals 11

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->_isTerminated:Lkotlinx/atomicfu/AtomicBoolean;

    .line 5
    iget v1, v1, Lkotlinx/atomicfu/AtomicBoolean;->_value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    move v1, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v1, v3

    .line 15
    :goto_0
    if-eqz v1, :cond_1

    .line 16
    monitor-exit v0

    .line 18
    const/4 p0, -0x1

    .line 19
    return p0

    .line 20
    :cond_1
    :try_start_1
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:Lkotlinx/atomicfu/AtomicLong;

    .line 21
    iget-wide v4, v1, Lkotlinx/atomicfu/AtomicLong;->value:J

    .line 23
    const-wide/32 v6, 0x1fffff

    .line 25
    and-long v8, v4, v6

    .line 28
    long-to-int v1, v8

    .line 30
    const-wide v8, 0x3ffffe00000L

    .line 31
    and-long/2addr v4, v8

    .line 36
    const/16 v8, 0x15

    .line 37
    shr-long/2addr v4, v8

    .line 39
    long-to-int v4, v4

    .line 40
    sub-int v4, v1, v4

    .line 41
    if-gez v4, :cond_2

    .line 43
    move v4, v3

    .line 45
    :cond_2
    iget v5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    if-lt v4, v5, :cond_3

    .line 48
    monitor-exit v0

    .line 50
    return v3

    .line 51
    :cond_3
    :try_start_2
    iget v5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->maxPoolSize:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    if-lt v1, v5, :cond_4

    .line 54
    monitor-exit v0

    .line 56
    return v3

    .line 57
    :cond_4
    :try_start_3
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:Lkotlinx/atomicfu/AtomicLong;

    .line 58
    iget-wide v8, v1, Lkotlinx/atomicfu/AtomicLong;->value:J

    .line 60
    and-long/2addr v8, v6

    .line 62
    long-to-int v1, v8

    .line 63
    add-int/2addr v1, v2

    .line 64
    if-lez v1, :cond_5

    .line 65
    iget-object v5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 67
    invoke-virtual {v5, v1}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object v5

    .line 72
    if-nez v5, :cond_5

    .line 73
    move v5, v2

    .line 75
    goto :goto_1

    .line 76
    :cond_5
    move v5, v3

    .line 77
    :goto_1
    if-eqz v5, :cond_9

    .line 78
    new-instance v5, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 80
    invoke-direct {v5, p0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;-><init>(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V

    .line 82
    iget-object v8, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 85
    invoke-virtual {v8, v1, v5}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->setSynchronized(ILkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)V

    .line 87
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:Lkotlinx/atomicfu/AtomicLong;

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    sget-object v8, Lkotlinx/atomicfu/AtomicLong;->FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 95
    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    .line 97
    move-result-wide v8

    .line 100
    sget-object v10, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    .line 101
    iget-object p0, p0, Lkotlinx/atomicfu/AtomicLong;->trace:Lkotlinx/atomicfu/TraceBase;

    .line 103
    if-eq p0, v10, :cond_6

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    :cond_6
    and-long/2addr v6, v8

    .line 110
    long-to-int p0, v6

    .line 111
    if-ne v1, p0, :cond_7

    .line 112
    move v3, v2

    .line 114
    :cond_7
    if-eqz v3, :cond_8

    .line 115
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    add-int/2addr v4, v2

    .line 120
    monitor-exit v0

    .line 121
    return v4

    .line 122
    :cond_8
    :try_start_4
    const-string p0, "Failed requirement."

    .line 123
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 127
    move-result-object p0

    .line 130
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 131
    throw v1

    .line 134
    :cond_9
    const-string p0, "Failed requirement."

    .line 135
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 137
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 139
    move-result-object p0

    .line 142
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 143
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 146
    :catchall_0
    move-exception p0

    .line 147
    monitor-exit v0

    .line 148
    throw p0
    .line 149
.end method

.method public final dispatch(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContextImpl;Z)V
    .locals 4

    .line 1
    sget-object v0, Lkotlinx/coroutines/scheduling/TasksKt;->schedulerTimeSource:Lkotlinx/coroutines/scheduling/NanoTimeSource;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 7
    move-result-wide v0

    .line 10
    instance-of v2, p1, Lkotlinx/coroutines/scheduling/Task;

    .line 11
    if-eqz v2, :cond_0

    .line 13
    check-cast p1, Lkotlinx/coroutines/scheduling/Task;

    .line 15
    iput-wide v0, p1, Lkotlinx/coroutines/scheduling/Task;->submissionTime:J

    .line 17
    iput-object p2, p1, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContextImpl;

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    new-instance v2, Lkotlinx/coroutines/scheduling/TaskImpl;

    .line 22
    invoke-direct {v2, p1, v0, v1, p2}, Lkotlinx/coroutines/scheduling/TaskImpl;-><init>(Ljava/lang/Runnable;JLkotlinx/coroutines/scheduling/TaskContextImpl;)V

    .line 24
    move-object p1, v2

    .line 27
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 28
    move-result-object p2

    .line 31
    instance-of v0, p2, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 32
    const/4 v1, 0x0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    check-cast p2, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 37
    goto :goto_1

    .line 39
    :cond_1
    move-object p2, v1

    .line 40
    :goto_1
    if-eqz p2, :cond_2

    .line 41
    iget-object v0, p2, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 43
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    move-object v1, p2

    .line 51
    :cond_2
    const/4 p2, 0x1

    .line 52
    if-nez v1, :cond_3

    .line 53
    goto :goto_2

    .line 55
    :cond_3
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 56
    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 58
    if-ne v0, v2, :cond_4

    .line 60
    goto :goto_2

    .line 62
    :cond_4
    iget-object v2, p1, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContextImpl;

    .line 63
    iget v2, v2, Lkotlinx/coroutines/scheduling/TaskContextImpl;->taskMode:I

    .line 65
    if-nez v2, :cond_5

    .line 67
    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 69
    if-ne v0, v2, :cond_5

    .line 71
    :goto_2
    move-object v0, p1

    .line 73
    goto :goto_3

    .line 74
    :cond_5
    iput-boolean p2, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->mayHaveLocalTasks:Z

    .line 75
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    .line 77
    invoke-virtual {v0, p1, p3}, Lkotlinx/coroutines/scheduling/WorkQueue;->add(Lkotlinx/coroutines/scheduling/Task;Z)Lkotlinx/coroutines/scheduling/Task;

    .line 79
    move-result-object v0

    .line 82
    :goto_3
    const/4 v2, 0x0

    .line 83
    if-eqz v0, :cond_9

    .line 84
    iget-object v3, v0, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContextImpl;

    .line 86
    iget v3, v3, Lkotlinx/coroutines/scheduling/TaskContextImpl;->taskMode:I

    .line 88
    if-ne v3, p2, :cond_6

    .line 90
    move v3, p2

    .line 92
    goto :goto_4

    .line 93
    :cond_6
    move v3, v2

    .line 94
    :goto_4
    if-eqz v3, :cond_7

    .line 95
    iget-object v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 97
    invoke-virtual {v3, v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->addLast(Ljava/lang/Object;)Z

    .line 99
    move-result v0

    .line 102
    goto :goto_5

    .line 103
    :cond_7
    iget-object v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalCpuQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 104
    invoke-virtual {v3, v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->addLast(Ljava/lang/Object;)Z

    .line 106
    move-result v0

    .line 109
    :goto_5
    if-eqz v0, :cond_8

    .line 110
    goto :goto_6

    .line 112
    :cond_8
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    .line 113
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->schedulerName:Ljava/lang/String;

    .line 115
    const-string p2, " was terminated"

    .line 117
    invoke-static {p0, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    move-result-object p0

    .line 122
    invoke-direct {p1, p0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    .line 123
    throw p1

    .line 126
    :cond_9
    :goto_6
    if-eqz p3, :cond_a

    .line 127
    if-eqz v1, :cond_a

    .line 129
    goto :goto_7

    .line 131
    :cond_a
    move p2, v2

    .line 132
    :goto_7
    iget-object p1, p1, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContextImpl;

    .line 133
    iget p1, p1, Lkotlinx/coroutines/scheduling/TaskContextImpl;->taskMode:I

    .line 135
    if-nez p1, :cond_e

    .line 137
    if-eqz p2, :cond_b

    .line 139
    return-void

    .line 141
    :cond_b
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->tryUnpark()Z

    .line 142
    move-result p1

    .line 145
    if-eqz p1, :cond_c

    .line 146
    goto :goto_8

    .line 148
    :cond_c
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:Lkotlinx/atomicfu/AtomicLong;

    .line 149
    iget-wide p1, p1, Lkotlinx/atomicfu/AtomicLong;->value:J

    .line 151
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->tryCreateWorker(J)Z

    .line 153
    move-result p1

    .line 156
    if-eqz p1, :cond_d

    .line 157
    goto :goto_8

    .line 159
    :cond_d
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->tryUnpark()Z

    .line 160
    goto :goto_8

    .line 163
    :cond_e
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:Lkotlinx/atomicfu/AtomicLong;

    .line 164
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    sget-object p3, Lkotlinx/atomicfu/AtomicLong;->FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 169
    const-wide/32 v0, 0x200000

    .line 171
    invoke-virtual {p3, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 174
    move-result-wide v0

    .line 177
    sget-object p3, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    .line 178
    iget-object p1, p1, Lkotlinx/atomicfu/AtomicLong;->trace:Lkotlinx/atomicfu/TraceBase;

    .line 180
    if-eq p1, p3, :cond_f

    .line 182
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    :cond_f
    if-eqz p2, :cond_10

    .line 187
    goto :goto_8

    .line 189
    :cond_10
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->tryUnpark()Z

    .line 190
    move-result p1

    .line 193
    if-eqz p1, :cond_11

    .line 194
    goto :goto_8

    .line 196
    :cond_11
    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->tryCreateWorker(J)Z

    .line 197
    move-result p1

    .line 200
    if-eqz p1, :cond_12

    .line 201
    goto :goto_8

    .line 203
    :cond_12
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->tryUnpark()Z

    .line 204
    :goto_8
    return-void
    .line 207
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget-object v0, Lkotlinx/coroutines/scheduling/TasksKt;->NonBlockingContext:Lkotlinx/coroutines/scheduling/TaskContextImpl;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->dispatch(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContextImpl;Z)V

    .line 5
    return-void
    .line 8
.end method

.method public final parkedWorkersStackTopUpdate(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;II)V
    .locals 9

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack:Lkotlinx/atomicfu/AtomicLong;

    .line 2
    :cond_0
    iget-wide v1, v0, Lkotlinx/atomicfu/AtomicLong;->value:J

    .line 4
    const-wide/32 v3, 0x1fffff

    .line 6
    and-long/2addr v3, v1

    .line 9
    long-to-int v3, v3

    .line 10
    const-wide/32 v4, 0x200000

    .line 11
    add-long/2addr v4, v1

    .line 14
    const-wide/32 v6, -0x200000

    .line 15
    and-long/2addr v4, v6

    .line 18
    if-ne v3, p2, :cond_5

    .line 19
    if-nez p3, :cond_4

    .line 21
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->getNextParkedWorker()Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 26
    :goto_0
    sget-object v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->NOT_IN_STACK:Lkotlinx/coroutines/internal/Symbol;

    .line 27
    if-ne v3, v6, :cond_1

    .line 29
    const/4 v3, -0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    if-nez v3, :cond_2

    .line 33
    const/4 v3, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    check-cast v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 37
    invoke-virtual {v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->getIndexInArray()I

    .line 39
    move-result v6

    .line 42
    if-eqz v6, :cond_3

    .line 43
    move v3, v6

    .line 45
    goto :goto_1

    .line 46
    :cond_3
    invoke-virtual {v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->getNextParkedWorker()Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 50
    goto :goto_0

    .line 51
    :cond_4
    move v3, p3

    .line 52
    :cond_5
    :goto_1
    if-ltz v3, :cond_0

    .line 53
    iget-object v6, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack:Lkotlinx/atomicfu/AtomicLong;

    .line 55
    int-to-long v7, v3

    .line 57
    or-long v3, v4, v7

    .line 58
    invoke-virtual {v6, v1, v2, v3, v4}, Lkotlinx/atomicfu/AtomicLong;->compareAndSet(JJ)Z

    .line 60
    move-result v1

    .line 63
    if-eqz v1, :cond_0

    .line 64
    return-void
    .line 66
.end method

.method public final toString()Ljava/lang/String;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v2, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 9
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->currentLength()I

    .line 11
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x1

    .line 16
    move v5, v3

    .line 17
    move v6, v5

    .line 18
    move v7, v6

    .line 19
    move v8, v7

    .line 20
    move v9, v4

    .line 21
    :goto_0
    if-ge v9, v2, :cond_8

    .line 22
    iget-object v10, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 24
    invoke-virtual {v10, v9}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v10

    .line 29
    check-cast v10, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 30
    if-nez v10, :cond_0

    .line 32
    goto/16 :goto_1

    .line 34
    :cond_0
    iget-object v11, v10, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    .line 36
    iget-object v12, v11, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask:Lkotlinx/atomicfu/AtomicRef;

    .line 38
    iget-object v12, v12, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 40
    invoke-virtual {v11}, Lkotlinx/coroutines/scheduling/WorkQueue;->getBufferSize$external__kotlinx_coroutines__android_common__kotlinx_coroutines()I

    .line 42
    move-result v11

    .line 45
    if-eqz v12, :cond_1

    .line 46
    add-int/lit8 v11, v11, 0x1

    .line 48
    :cond_1
    iget-object v10, v10, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 50
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 52
    move-result v10

    .line 55
    if-eqz v10, :cond_6

    .line 56
    if-eq v10, v4, :cond_5

    .line 58
    const/4 v12, 0x2

    .line 60
    if-eq v10, v12, :cond_4

    .line 61
    const/4 v12, 0x3

    .line 63
    if-eq v10, v12, :cond_3

    .line 64
    const/4 v11, 0x4

    .line 66
    if-eq v10, v11, :cond_2

    .line 67
    goto :goto_1

    .line 69
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 70
    goto :goto_1

    .line 72
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 73
    if-lez v11, :cond_7

    .line 75
    new-instance v10, Ljava/lang/StringBuilder;

    .line 77
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const-string v11, "d"

    .line 85
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v10

    .line 93
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    goto :goto_1

    .line 97
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 98
    goto :goto_1

    .line 100
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 101
    new-instance v10, Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    const-string v11, "b"

    .line 111
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object v10

    .line 119
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    goto :goto_1

    .line 123
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 124
    new-instance v10, Ljava/lang/StringBuilder;

    .line 126
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    const-string v11, "c"

    .line 134
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v10

    .line 142
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_7
    :goto_1
    add-int/lit8 v9, v9, 0x1

    .line 146
    goto :goto_0

    .line 148
    :cond_8
    iget-object v2, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:Lkotlinx/atomicfu/AtomicLong;

    .line 149
    iget-wide v9, v2, Lkotlinx/atomicfu/AtomicLong;->value:J

    .line 151
    iget-object v2, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->schedulerName:Ljava/lang/String;

    .line 153
    invoke-static/range {p0 .. p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    .line 155
    move-result-object v4

    .line 158
    iget v11, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    .line 159
    iget v12, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->maxPoolSize:I

    .line 161
    iget-object v13, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalCpuQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 163
    invoke-virtual {v13}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->getSize()I

    .line 165
    move-result v13

    .line 168
    iget-object v14, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 169
    invoke-virtual {v14}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->getSize()I

    .line 171
    move-result v14

    .line 174
    const-wide/32 v15, 0x1fffff

    .line 175
    move/from16 v17, v14

    .line 178
    and-long v14, v9, v15

    .line 180
    long-to-int v14, v14

    .line 182
    const-wide v15, 0x3ffffe00000L

    .line 183
    and-long/2addr v15, v9

    .line 188
    const/16 v18, 0x15

    .line 189
    move/from16 v19, v14

    .line 191
    shr-long v14, v15, v18

    .line 193
    long-to-int v14, v14

    .line 195
    iget v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    .line 196
    const-wide v15, 0x7ffffc0000000000L

    .line 198
    and-long/2addr v9, v15

    .line 203
    const/16 v15, 0x2a

    .line 204
    shr-long/2addr v9, v15

    .line 206
    long-to-int v9, v9

    .line 207
    sub-int/2addr v0, v9

    .line 208
    new-instance v9, Ljava/lang/StringBuilder;

    .line 209
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string v2, "@"

    .line 217
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v2, "[Pool Size {core = "

    .line 225
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    const-string v2, ", max = "

    .line 233
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    const-string/jumbo v2, "}, Worker States {CPU = "

    .line 241
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    const-string v2, ", blocking = "

    .line 250
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    const-string v2, ", parked = "

    .line 258
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    const-string v2, ", dormant = "

    .line 266
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    const-string v2, ", terminated = "

    .line 274
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    const-string/jumbo v2, "}, running workers queues = "

    .line 282
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    const-string v1, ", global CPU queue size = "

    .line 291
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 296
    const-string v1, ", global blocking queue size = "

    .line 299
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    move/from16 v1, v17

    .line 304
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 306
    const-string v1, ", Control State {created workers= "

    .line 309
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    move/from16 v1, v19

    .line 314
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    const-string v1, ", blocking tasks = "

    .line 319
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    const-string v1, ", CPUs acquired = "

    .line 327
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    const-string/jumbo v0, "}]"

    .line 335
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    move-result-object v0

    .line 344
    return-object v0
    .line 345
.end method

.method public final tryCreateWorker(J)Z
    .locals 3

    .line 1
    const-wide/32 v0, 0x1fffff

    .line 2
    and-long/2addr v0, p1

    .line 5
    long-to-int v0, v0

    .line 6
    const-wide v1, 0x3ffffe00000L

    .line 7
    and-long/2addr p1, v1

    .line 12
    const/16 v1, 0x15

    .line 13
    shr-long/2addr p1, v1

    .line 15
    long-to-int p1, p1

    .line 16
    sub-int/2addr v0, p1

    .line 17
    const/4 p1, 0x0

    .line 18
    if-gez v0, :cond_0

    .line 19
    move v0, p1

    .line 21
    :cond_0
    iget p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    .line 22
    if-ge v0, p2, :cond_2

    .line 24
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->createNewWorker()I

    .line 26
    move-result p2

    .line 29
    const/4 v0, 0x1

    .line 30
    if-ne p2, v0, :cond_1

    .line 31
    iget v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    .line 33
    if-le v1, v0, :cond_1

    .line 35
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->createNewWorker()I

    .line 37
    :cond_1
    if-lez p2, :cond_2

    .line 40
    return v0

    .line 42
    :cond_2
    return p1
    .line 43
.end method

.method public final tryUnpark()Z
    .locals 12

    .line 1
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack:Lkotlinx/atomicfu/AtomicLong;

    .line 2
    :cond_1
    iget-wide v1, v0, Lkotlinx/atomicfu/AtomicLong;->value:J

    .line 4
    const-wide/32 v3, 0x1fffff

    .line 6
    and-long/2addr v3, v1

    .line 9
    long-to-int v3, v3

    .line 10
    iget-object v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 11
    invoke-virtual {v4, v3}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v3

    .line 16
    check-cast v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 17
    const/4 v4, 0x0

    .line 19
    const/4 v5, -0x1

    .line 20
    if-nez v3, :cond_2

    .line 21
    const/4 v3, 0x0

    .line 23
    goto :goto_2

    .line 24
    :cond_2
    const-wide/32 v6, 0x200000

    .line 25
    add-long/2addr v6, v1

    .line 28
    const-wide/32 v8, -0x200000

    .line 29
    and-long/2addr v6, v8

    .line 32
    invoke-virtual {v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->getNextParkedWorker()Ljava/lang/Object;

    .line 33
    move-result-object v8

    .line 36
    :goto_0
    sget-object v9, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->NOT_IN_STACK:Lkotlinx/coroutines/internal/Symbol;

    .line 37
    if-ne v8, v9, :cond_3

    .line 39
    move v10, v5

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    if-nez v8, :cond_4

    .line 43
    move v10, v4

    .line 45
    goto :goto_1

    .line 46
    :cond_4
    check-cast v8, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 47
    invoke-virtual {v8}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->getIndexInArray()I

    .line 49
    move-result v10

    .line 52
    if-eqz v10, :cond_6

    .line 53
    :goto_1
    if-ltz v10, :cond_1

    .line 55
    iget-object v8, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack:Lkotlinx/atomicfu/AtomicLong;

    .line 57
    int-to-long v10, v10

    .line 59
    or-long/2addr v6, v10

    .line 60
    invoke-virtual {v8, v1, v2, v6, v7}, Lkotlinx/atomicfu/AtomicLong;->compareAndSet(JJ)Z

    .line 61
    move-result v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    invoke-virtual {v3, v9}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->setNextParkedWorker(Ljava/lang/Object;)V

    .line 67
    :goto_2
    if-nez v3, :cond_5

    .line 70
    return v4

    .line 72
    :cond_5
    iget-object v0, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->workerCtl:Lkotlinx/atomicfu/AtomicInt;

    .line 73
    invoke-virtual {v0, v5, v4}, Lkotlinx/atomicfu/AtomicInt;->compareAndSet(II)Z

    .line 75
    move-result v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 81
    const/4 p0, 0x1

    .line 84
    return p0

    .line 85
    :cond_6
    invoke-virtual {v8}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->getNextParkedWorker()Ljava/lang/Object;

    .line 86
    move-result-object v8

    .line 89
    goto :goto_0
    .line 90
.end method
