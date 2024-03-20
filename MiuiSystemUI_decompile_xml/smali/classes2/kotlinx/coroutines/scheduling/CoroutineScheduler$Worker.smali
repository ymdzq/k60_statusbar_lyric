.class public final Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
.super Ljava/lang/Thread;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private volatile indexInArray:I

.field public final localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

.field public mayHaveLocalTasks:Z

.field public minDelayUntilStealableTaskNs:J

.field private volatile nextParkedWorker:Ljava/lang/Object;

.field public rngState:I

.field public state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

.field public terminationDeadline:J

.field public final synthetic this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

.field public final workerCtl:Lkotlinx/atomicfu/AtomicInt;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 8
    new-instance p1, Lkotlinx/coroutines/scheduling/WorkQueue;

    .line 11
    invoke-direct {p1}, Lkotlinx/coroutines/scheduling/WorkQueue;-><init>()V

    .line 13
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    .line 16
    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->DORMANT:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 18
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 20
    new-instance p1, Lkotlinx/atomicfu/AtomicInt;

    .line 22
    invoke-direct {p1}, Lkotlinx/atomicfu/AtomicInt;-><init>()V

    .line 24
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->workerCtl:Lkotlinx/atomicfu/AtomicInt;

    .line 27
    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->NOT_IN_STACK:Lkotlinx/coroutines/internal/Symbol;

    .line 29
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    .line 31
    sget-object p1, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    .line 33
    invoke-virtual {p1}, Lkotlin/random/Random$Default;->nextInt()I

    .line 35
    move-result p1

    .line 38
    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->rngState:I

    .line 39
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->setIndexInArray(I)V

    .line 41
    return-void
    .line 44
.end method


# virtual methods
.method public final findTask(Z)Lkotlinx/coroutines/scheduling/Task;
    .locals 10

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 2
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 4
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 11
    iget-object v4, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:Lkotlinx/atomicfu/AtomicLong;

    .line 13
    :cond_1
    iget-wide v5, v4, Lkotlinx/atomicfu/AtomicLong;->value:J

    .line 15
    const-wide v7, 0x7ffffc0000000000L

    .line 17
    and-long/2addr v7, v5

    .line 22
    const/16 v9, 0x2a

    .line 23
    shr-long/2addr v7, v9

    .line 25
    long-to-int v7, v7

    .line 26
    if-nez v7, :cond_2

    .line 27
    move v0, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const-wide v7, 0x40000000000L

    .line 31
    sub-long v7, v5, v7

    .line 36
    iget-object v9, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:Lkotlinx/atomicfu/AtomicLong;

    .line 38
    invoke-virtual {v9, v5, v6, v7, v8}, Lkotlinx/atomicfu/AtomicLong;->compareAndSet(JJ)Z

    .line 40
    move-result v5

    .line 43
    if-eqz v5, :cond_1

    .line 44
    move v0, v3

    .line 46
    :goto_0
    if-eqz v0, :cond_3

    .line 47
    iput-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 49
    :goto_1
    move v0, v3

    .line 51
    goto :goto_2

    .line 52
    :cond_3
    move v0, v2

    .line 53
    :goto_2
    const/4 v1, 0x0

    .line 54
    if-eqz v0, :cond_a

    .line 55
    if-eqz p1, :cond_8

    .line 57
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 59
    iget p1, p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    .line 61
    mul-int/lit8 p1, p1, 0x2

    .line 63
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextInt(I)I

    .line 65
    move-result p1

    .line 68
    if-nez p1, :cond_4

    .line 69
    goto :goto_3

    .line 71
    :cond_4
    move v3, v2

    .line 72
    :goto_3
    if-eqz v3, :cond_5

    .line 73
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->pollGlobalQueues()Lkotlinx/coroutines/scheduling/Task;

    .line 75
    move-result-object p1

    .line 78
    if-eqz p1, :cond_5

    .line 79
    goto :goto_5

    .line 81
    :cond_5
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    .line 82
    iget-object v0, p1, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask:Lkotlinx/atomicfu/AtomicRef;

    .line 84
    invoke-virtual {v0, v1}, Lkotlinx/atomicfu/AtomicRef;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    move-result-object v0

    .line 89
    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    .line 90
    if-nez v0, :cond_6

    .line 92
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/WorkQueue;->pollBuffer()Lkotlinx/coroutines/scheduling/Task;

    .line 94
    move-result-object p1

    .line 97
    goto :goto_4

    .line 98
    :cond_6
    move-object p1, v0

    .line 99
    :goto_4
    if-eqz p1, :cond_7

    .line 100
    goto :goto_5

    .line 102
    :cond_7
    if-nez v3, :cond_9

    .line 103
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->pollGlobalQueues()Lkotlinx/coroutines/scheduling/Task;

    .line 105
    move-result-object p1

    .line 108
    if-eqz p1, :cond_9

    .line 109
    goto :goto_5

    .line 111
    :cond_8
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->pollGlobalQueues()Lkotlinx/coroutines/scheduling/Task;

    .line 112
    move-result-object p1

    .line 115
    if-eqz p1, :cond_9

    .line 116
    goto :goto_5

    .line 118
    :cond_9
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->trySteal(Z)Lkotlinx/coroutines/scheduling/Task;

    .line 119
    move-result-object p1

    .line 122
    :goto_5
    return-object p1

    .line 123
    :cond_a
    if-eqz p1, :cond_c

    .line 124
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    .line 126
    iget-object v0, p1, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask:Lkotlinx/atomicfu/AtomicRef;

    .line 128
    invoke-virtual {v0, v1}, Lkotlinx/atomicfu/AtomicRef;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    move-result-object v0

    .line 133
    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    .line 134
    if-nez v0, :cond_b

    .line 136
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/WorkQueue;->pollBuffer()Lkotlinx/coroutines/scheduling/Task;

    .line 138
    move-result-object v0

    .line 141
    :cond_b
    if-nez v0, :cond_d

    .line 142
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 144
    iget-object p1, p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 146
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->removeFirstOrNull()Ljava/lang/Object;

    .line 148
    move-result-object p1

    .line 151
    move-object v0, p1

    .line 152
    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    .line 153
    goto :goto_6

    .line 155
    :cond_c
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 156
    iget-object p1, p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 158
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->removeFirstOrNull()Ljava/lang/Object;

    .line 160
    move-result-object p1

    .line 163
    move-object v0, p1

    .line 164
    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    .line 165
    :cond_d
    :goto_6
    if-nez v0, :cond_e

    .line 167
    invoke-virtual {p0, v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->trySteal(Z)Lkotlinx/coroutines/scheduling/Task;

    .line 169
    move-result-object v0

    .line 172
    :cond_e
    return-object v0
    .line 173
.end method

.method public final getIndexInArray()I
    .locals 0

    .line 1
    iget p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->indexInArray:I

    .line 2
    return p0
    .line 4
.end method

.method public final getNextParkedWorker()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    .line 2
    return-object p0
    .line 4
.end method

.method public final nextInt(I)I
    .locals 2

    .line 1
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->rngState:I

    .line 2
    shl-int/lit8 v1, v0, 0xd

    .line 4
    xor-int/2addr v0, v1

    .line 6
    shr-int/lit8 v1, v0, 0x11

    .line 7
    xor-int/2addr v0, v1

    .line 9
    shl-int/lit8 v1, v0, 0x5

    .line 10
    xor-int/2addr v0, v1

    .line 12
    iput v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->rngState:I

    .line 13
    add-int/lit8 p0, p1, -0x1

    .line 15
    and-int v1, p0, p1

    .line 17
    if-nez v1, :cond_0

    .line 19
    and-int/2addr p0, v0

    .line 21
    return p0

    .line 22
    :cond_0
    const p0, 0x7fffffff

    .line 23
    and-int/2addr p0, v0

    .line 26
    rem-int/2addr p0, p1

    .line 27
    return p0
    .line 28
.end method

.method public final pollGlobalQueues()Lkotlinx/coroutines/scheduling/Task;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextInt(I)I

    .line 3
    move-result v0

    .line 6
    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 9
    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalCpuQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 11
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->removeFirstOrNull()Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 16
    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    .line 17
    if-eqz v0, :cond_0

    .line 19
    return-object v0

    .line 21
    :cond_0
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 22
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 24
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->removeFirstOrNull()Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 29
    check-cast p0, Lkotlinx/coroutines/scheduling/Task;

    .line 30
    return-object p0

    .line 32
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 33
    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 35
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->removeFirstOrNull()Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 40
    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    .line 41
    if-eqz v0, :cond_2

    .line 43
    return-object v0

    .line 45
    :cond_2
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 46
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalCpuQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 48
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->removeFirstOrNull()Ljava/lang/Object;

    .line 50
    move-result-object p0

    .line 53
    check-cast p0, Lkotlinx/coroutines/scheduling/Task;

    .line 54
    return-object p0
    .line 56
.end method

.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 4
    move v2, v0

    .line 5
    :goto_1
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 6
    iget-object v3, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->_isTerminated:Lkotlinx/atomicfu/AtomicBoolean;

    .line 8
    iget v3, v3, Lkotlinx/atomicfu/AtomicBoolean;->_value:I

    .line 10
    const/4 v4, 0x1

    .line 12
    if-eqz v3, :cond_1

    .line 13
    move v3, v4

    .line 15
    goto :goto_2

    .line 16
    :cond_1
    move v3, v0

    .line 17
    :goto_2
    if-nez v3, :cond_1c

    .line 18
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 20
    sget-object v5, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 22
    if-eq v3, v5, :cond_1c

    .line 24
    iget-boolean v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->mayHaveLocalTasks:Z

    .line 26
    invoke-virtual {v1, v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->findTask(Z)Lkotlinx/coroutines/scheduling/Task;

    .line 28
    move-result-object v3

    .line 31
    const-wide/32 v6, -0x200000

    .line 32
    const-wide/16 v8, 0x0

    .line 35
    if-eqz v3, :cond_9

    .line 37
    iput-wide v8, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->minDelayUntilStealableTaskNs:J

    .line 39
    iget-object v0, v3, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContextImpl;

    .line 41
    iget v2, v0, Lkotlinx/coroutines/scheduling/TaskContextImpl;->taskMode:I

    .line 43
    iput-wide v8, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->terminationDeadline:J

    .line 45
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 47
    sget-object v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 49
    sget-object v8, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 51
    if-ne v0, v4, :cond_2

    .line 53
    iput-object v8, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 55
    :cond_2
    if-nez v2, :cond_3

    .line 57
    goto :goto_3

    .line 59
    :cond_3
    invoke-virtual {v1, v8}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->tryReleaseCpu(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 60
    move-result v0

    .line 63
    if-eqz v0, :cond_6

    .line 64
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 66
    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->tryUnpark()Z

    .line 68
    move-result v4

    .line 71
    if-eqz v4, :cond_4

    .line 72
    goto :goto_3

    .line 74
    :cond_4
    iget-object v4, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:Lkotlinx/atomicfu/AtomicLong;

    .line 75
    iget-wide v8, v4, Lkotlinx/atomicfu/AtomicLong;->value:J

    .line 77
    invoke-virtual {v0, v8, v9}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->tryCreateWorker(J)Z

    .line 79
    move-result v4

    .line 82
    if-eqz v4, :cond_5

    .line 83
    goto :goto_3

    .line 85
    :cond_5
    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->tryUnpark()Z

    .line 86
    :cond_6
    :goto_3
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    :try_start_0
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    goto :goto_4

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    move-object v3, v0

    .line 99
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 100
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 104
    move-result-object v4

    .line 107
    invoke-interface {v4, v0, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 108
    :goto_4
    if-nez v2, :cond_7

    .line 111
    goto :goto_0

    .line 113
    :cond_7
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 114
    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:Lkotlinx/atomicfu/AtomicLong;

    .line 116
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    sget-object v2, Lkotlinx/atomicfu/AtomicLong;->FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 121
    invoke-virtual {v2, v0, v6, v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 123
    sget-object v2, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    .line 126
    iget-object v0, v0, Lkotlinx/atomicfu/AtomicLong;->trace:Lkotlinx/atomicfu/TraceBase;

    .line 128
    if-eq v0, v2, :cond_8

    .line 130
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    :cond_8
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 135
    if-eq v0, v5, :cond_0

    .line 137
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->DORMANT:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 139
    iput-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 141
    goto/16 :goto_0

    .line 143
    :cond_9
    iput-boolean v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->mayHaveLocalTasks:Z

    .line 145
    iget-wide v10, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->minDelayUntilStealableTaskNs:J

    .line 147
    cmp-long v3, v10, v8

    .line 149
    if-eqz v3, :cond_b

    .line 151
    if-nez v2, :cond_a

    .line 153
    move v2, v4

    .line 155
    goto/16 :goto_1

    .line 156
    :cond_a
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 158
    invoke-virtual {v1, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->tryReleaseCpu(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 160
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 163
    iget-wide v2, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->minDelayUntilStealableTaskNs:J

    .line 166
    invoke-static {v2, v3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 168
    iput-wide v8, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->minDelayUntilStealableTaskNs:J

    .line 171
    goto/16 :goto_0

    .line 173
    :cond_b
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    .line 175
    sget-object v5, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->NOT_IN_STACK:Lkotlinx/coroutines/internal/Symbol;

    .line 177
    if-eq v3, v5, :cond_c

    .line 179
    move v3, v4

    .line 181
    goto :goto_5

    .line 182
    :cond_c
    move v3, v0

    .line 183
    :goto_5
    const-wide/32 v10, 0x1fffff

    .line 184
    if-nez v3, :cond_f

    .line 187
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 189
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    iget-object v4, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    .line 194
    if-eq v4, v5, :cond_d

    .line 196
    goto/16 :goto_b

    .line 198
    :cond_d
    iget-object v5, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack:Lkotlinx/atomicfu/AtomicLong;

    .line 200
    :cond_e
    iget-wide v8, v5, Lkotlinx/atomicfu/AtomicLong;->value:J

    .line 202
    and-long v12, v8, v10

    .line 204
    long-to-int v4, v12

    .line 206
    const-wide/32 v12, 0x200000

    .line 207
    add-long/2addr v12, v8

    .line 210
    and-long/2addr v12, v6

    .line 211
    iget v14, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->indexInArray:I

    .line 212
    iget-object v15, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 214
    invoke-virtual {v15, v4}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->get(I)Ljava/lang/Object;

    .line 216
    move-result-object v4

    .line 219
    iput-object v4, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    .line 220
    iget-object v4, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack:Lkotlinx/atomicfu/AtomicLong;

    .line 222
    int-to-long v14, v14

    .line 224
    or-long/2addr v12, v14

    .line 225
    invoke-virtual {v4, v8, v9, v12, v13}, Lkotlinx/atomicfu/AtomicLong;->compareAndSet(JJ)Z

    .line 226
    move-result v4

    .line 229
    if-eqz v4, :cond_e

    .line 230
    goto/16 :goto_b

    .line 232
    :cond_f
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->workerCtl:Lkotlinx/atomicfu/AtomicInt;

    .line 234
    const/4 v5, -0x1

    .line 236
    invoke-virtual {v3, v5}, Lkotlinx/atomicfu/AtomicInt;->setValue(I)V

    .line 237
    :goto_6
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    .line 240
    sget-object v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->NOT_IN_STACK:Lkotlinx/coroutines/internal/Symbol;

    .line 242
    if-eq v3, v6, :cond_10

    .line 244
    move v3, v4

    .line 246
    goto :goto_7

    .line 247
    :cond_10
    move v3, v0

    .line 248
    :goto_7
    if-eqz v3, :cond_1b

    .line 249
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->workerCtl:Lkotlinx/atomicfu/AtomicInt;

    .line 251
    iget v3, v3, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 253
    if-ne v3, v5, :cond_1b

    .line 255
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 257
    iget-object v3, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->_isTerminated:Lkotlinx/atomicfu/AtomicBoolean;

    .line 259
    iget v3, v3, Lkotlinx/atomicfu/AtomicBoolean;->_value:I

    .line 261
    if-eqz v3, :cond_11

    .line 263
    move v3, v4

    .line 265
    goto :goto_8

    .line 266
    :cond_11
    move v3, v0

    .line 267
    :goto_8
    if-nez v3, :cond_1b

    .line 268
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 270
    sget-object v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 272
    if-ne v3, v6, :cond_12

    .line 274
    goto/16 :goto_b

    .line 276
    :cond_12
    sget-object v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 278
    invoke-virtual {v1, v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->tryReleaseCpu(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 280
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 283
    iget-wide v12, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->terminationDeadline:J

    .line 286
    cmp-long v3, v12, v8

    .line 288
    if-nez v3, :cond_13

    .line 290
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 292
    move-result-wide v12

    .line 295
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 296
    iget-wide v14, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->idleWorkerKeepAliveNs:J

    .line 298
    add-long/2addr v12, v14

    .line 300
    iput-wide v12, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->terminationDeadline:J

    .line 301
    :cond_13
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 303
    iget-wide v12, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->idleWorkerKeepAliveNs:J

    .line 305
    invoke-static {v12, v13}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 307
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 310
    move-result-wide v12

    .line 313
    iget-wide v14, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->terminationDeadline:J

    .line 314
    sub-long/2addr v12, v14

    .line 316
    cmp-long v3, v12, v8

    .line 317
    if-ltz v3, :cond_1a

    .line 319
    iput-wide v8, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->terminationDeadline:J

    .line 321
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 323
    iget-object v7, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 325
    monitor-enter v7

    .line 327
    :try_start_1
    iget-object v12, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->_isTerminated:Lkotlinx/atomicfu/AtomicBoolean;

    .line 328
    iget v12, v12, Lkotlinx/atomicfu/AtomicBoolean;->_value:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 330
    if-eqz v12, :cond_14

    .line 332
    move v12, v4

    .line 334
    goto :goto_9

    .line 335
    :cond_14
    move v12, v0

    .line 336
    :goto_9
    if-eqz v12, :cond_15

    .line 337
    monitor-exit v7

    .line 339
    goto :goto_a

    .line 340
    :cond_15
    :try_start_2
    iget-object v12, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:Lkotlinx/atomicfu/AtomicLong;

    .line 341
    iget-wide v12, v12, Lkotlinx/atomicfu/AtomicLong;->value:J

    .line 343
    and-long/2addr v12, v10

    .line 345
    long-to-int v12, v12

    .line 346
    iget v13, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 347
    if-gt v12, v13, :cond_16

    .line 349
    monitor-exit v7

    .line 351
    goto :goto_a

    .line 352
    :cond_16
    :try_start_3
    iget-object v12, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->workerCtl:Lkotlinx/atomicfu/AtomicInt;

    .line 353
    invoke-virtual {v12, v5, v4}, Lkotlinx/atomicfu/AtomicInt;->compareAndSet(II)Z

    .line 355
    move-result v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 358
    if-nez v12, :cond_17

    .line 359
    monitor-exit v7

    .line 361
    goto :goto_a

    .line 362
    :cond_17
    :try_start_4
    iget v12, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->indexInArray:I

    .line 363
    invoke-virtual {v1, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->setIndexInArray(I)V

    .line 365
    invoke-virtual {v3, v1, v12, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStackTopUpdate(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;II)V

    .line 368
    iget-object v13, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:Lkotlinx/atomicfu/AtomicLong;

    .line 371
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    sget-object v14, Lkotlinx/atomicfu/AtomicLong;->FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 376
    invoke-virtual {v14, v13}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    .line 378
    move-result-wide v14

    .line 381
    sget-object v0, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    .line 382
    iget-object v13, v13, Lkotlinx/atomicfu/AtomicLong;->trace:Lkotlinx/atomicfu/TraceBase;

    .line 384
    if-eq v13, v0, :cond_18

    .line 386
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 388
    :cond_18
    and-long v13, v14, v10

    .line 391
    long-to-int v0, v13

    .line 393
    if-eq v0, v12, :cond_19

    .line 394
    iget-object v13, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 396
    invoke-virtual {v13, v0}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->get(I)Ljava/lang/Object;

    .line 398
    move-result-object v13

    .line 401
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 402
    check-cast v13, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 405
    iget-object v14, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 407
    invoke-virtual {v14, v12, v13}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->setSynchronized(ILkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)V

    .line 409
    invoke-virtual {v13, v12}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->setIndexInArray(I)V

    .line 412
    invoke-virtual {v3, v13, v0, v12}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStackTopUpdate(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;II)V

    .line 415
    :cond_19
    iget-object v3, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 418
    const/4 v12, 0x0

    .line 420
    invoke-virtual {v3, v0, v12}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->setSynchronized(ILkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 421
    monitor-exit v7

    .line 424
    iput-object v6, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 425
    goto :goto_a

    .line 427
    :catchall_1
    move-exception v0

    .line 428
    monitor-exit v7

    .line 429
    throw v0

    .line 430
    :cond_1a
    :goto_a
    const/4 v0, 0x0

    .line 431
    goto/16 :goto_6

    .line 432
    :cond_1b
    :goto_b
    const/4 v0, 0x0

    .line 434
    goto/16 :goto_1

    .line 435
    :cond_1c
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 437
    invoke-virtual {v1, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->tryReleaseCpu(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 439
    return-void
    .line 442
.end method

.method public final setIndexInArray(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 2
    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->schedulerName:Ljava/lang/String;

    .line 4
    if-nez p1, :cond_0

    .line 6
    const-string v1, "TERMINATED"

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 14
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v0, "-worker-"

    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 35
    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->indexInArray:I

    .line 38
    return-void
    .line 40
.end method

.method public final setNextParkedWorker(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    .line 2
    return-void
    .line 4
.end method

.method public final tryReleaseCpu(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 2
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 4
    if-ne v0, v1, :cond_0

    .line 6
    const/4 v1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-eqz v1, :cond_1

    .line 11
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 13
    iget-object v2, v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:Lkotlinx/atomicfu/AtomicLong;

    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    sget-object v3, Lkotlinx/atomicfu/AtomicLong;->FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 20
    const-wide v4, 0x40000000000L

    .line 22
    invoke-virtual {v3, v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 27
    sget-object v3, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    .line 30
    iget-object v2, v2, Lkotlinx/atomicfu/AtomicLong;->trace:Lkotlinx/atomicfu/TraceBase;

    .line 32
    if-eq v2, v3, :cond_1

    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    :cond_1
    if-eq v0, p1, :cond_2

    .line 39
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 41
    :cond_2
    return v1
    .line 43
.end method

.method public final trySteal(Z)Lkotlinx/coroutines/scheduling/Task;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 4
    iget-object v1, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:Lkotlinx/atomicfu/AtomicLong;

    .line 6
    iget-wide v1, v1, Lkotlinx/atomicfu/AtomicLong;->value:J

    .line 8
    const-wide/32 v3, 0x1fffff

    .line 10
    and-long/2addr v1, v3

    .line 13
    long-to-int v1, v1

    .line 14
    const/4 v2, 0x2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-ge v1, v2, :cond_0

    .line 17
    return-object v3

    .line 19
    :cond_0
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextInt(I)I

    .line 20
    move-result v2

    .line 23
    iget-object v4, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 24
    const/4 v8, 0x0

    .line 26
    const-wide v9, 0x7fffffffffffffffL

    .line 27
    :goto_0
    if-ge v8, v1, :cond_c

    .line 32
    const/4 v13, 0x1

    .line 34
    add-int/2addr v2, v13

    .line 35
    if-le v2, v1, :cond_1

    .line 36
    move v2, v13

    .line 38
    :cond_1
    iget-object v14, v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 39
    invoke-virtual {v14, v2}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v14

    .line 44
    check-cast v14, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 45
    if-eqz v14, :cond_a

    .line 47
    if-eq v14, v0, :cond_a

    .line 49
    if-eqz p1, :cond_6

    .line 51
    iget-object v5, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    .line 53
    iget-object v6, v14, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    .line 55
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    iget-object v14, v6, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex:Lkotlinx/atomicfu/AtomicInt;

    .line 60
    iget v14, v14, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 62
    iget-object v11, v6, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex:Lkotlinx/atomicfu/AtomicInt;

    .line 64
    iget v11, v11, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 66
    iget-object v12, v6, Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 68
    :goto_1
    if-eq v14, v11, :cond_5

    .line 70
    and-int/lit8 v15, v14, 0x7f

    .line 72
    iget-object v7, v6, Lkotlinx/coroutines/scheduling/WorkQueue;->blockingTasksInBuffer:Lkotlinx/atomicfu/AtomicInt;

    .line 74
    iget v7, v7, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 76
    if-eqz v7, :cond_5

    .line 78
    invoke-virtual {v12, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 80
    move-result-object v7

    .line 83
    check-cast v7, Lkotlinx/coroutines/scheduling/Task;

    .line 84
    if-eqz v7, :cond_4

    .line 86
    iget-object v3, v7, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContextImpl;

    .line 88
    iget v3, v3, Lkotlinx/coroutines/scheduling/TaskContextImpl;->taskMode:I

    .line 90
    if-ne v3, v13, :cond_2

    .line 92
    move v3, v13

    .line 94
    goto :goto_2

    .line 95
    :cond_2
    const/4 v3, 0x0

    .line 96
    :goto_2
    if-eqz v3, :cond_4

    .line 97
    const/4 v3, 0x0

    .line 99
    invoke-virtual {v12, v15, v7, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    move-result v15

    .line 103
    if-eqz v15, :cond_4

    .line 104
    iget-object v3, v6, Lkotlinx/coroutines/scheduling/WorkQueue;->blockingTasksInBuffer:Lkotlinx/atomicfu/AtomicInt;

    .line 106
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    sget-object v6, Lkotlinx/atomicfu/AtomicInt;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 111
    invoke-virtual {v6, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 113
    sget-object v6, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    .line 116
    iget-object v3, v3, Lkotlinx/atomicfu/AtomicInt;->trace:Lkotlinx/atomicfu/TraceBase;

    .line 118
    if-eq v3, v6, :cond_3

    .line 120
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    :cond_3
    const/4 v3, 0x0

    .line 125
    invoke-virtual {v5, v7, v3}, Lkotlinx/coroutines/scheduling/WorkQueue;->add(Lkotlinx/coroutines/scheduling/Task;Z)Lkotlinx/coroutines/scheduling/Task;

    .line 126
    const-wide/16 v5, -0x1

    .line 129
    goto :goto_3

    .line 131
    :cond_4
    add-int/lit8 v14, v14, 0x1

    .line 132
    const/4 v3, 0x0

    .line 134
    goto :goto_1

    .line 135
    :cond_5
    invoke-virtual {v5, v6, v13}, Lkotlinx/coroutines/scheduling/WorkQueue;->tryStealLastScheduled(Lkotlinx/coroutines/scheduling/WorkQueue;Z)J

    .line 136
    move-result-wide v5

    .line 139
    :goto_3
    const/4 v7, 0x0

    .line 140
    goto :goto_4

    .line 141
    :cond_6
    iget-object v3, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    .line 142
    iget-object v5, v14, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    .line 144
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    invoke-virtual {v5}, Lkotlinx/coroutines/scheduling/WorkQueue;->pollBuffer()Lkotlinx/coroutines/scheduling/Task;

    .line 149
    move-result-object v6

    .line 152
    if-eqz v6, :cond_7

    .line 153
    const/4 v7, 0x0

    .line 155
    invoke-virtual {v3, v6, v7}, Lkotlinx/coroutines/scheduling/WorkQueue;->add(Lkotlinx/coroutines/scheduling/Task;Z)Lkotlinx/coroutines/scheduling/Task;

    .line 156
    const-wide/16 v5, -0x1

    .line 159
    goto :goto_4

    .line 161
    :cond_7
    const/4 v7, 0x0

    .line 162
    invoke-virtual {v3, v5, v7}, Lkotlinx/coroutines/scheduling/WorkQueue;->tryStealLastScheduled(Lkotlinx/coroutines/scheduling/WorkQueue;Z)J

    .line 163
    move-result-wide v5

    .line 166
    :goto_4
    const-wide/16 v11, -0x1

    .line 167
    cmp-long v3, v5, v11

    .line 169
    if-nez v3, :cond_9

    .line 171
    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    .line 173
    iget-object v1, v0, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask:Lkotlinx/atomicfu/AtomicRef;

    .line 175
    const/4 v2, 0x0

    .line 177
    invoke-virtual {v1, v2}, Lkotlinx/atomicfu/AtomicRef;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    move-result-object v1

    .line 181
    check-cast v1, Lkotlinx/coroutines/scheduling/Task;

    .line 182
    if-nez v1, :cond_8

    .line 184
    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/WorkQueue;->pollBuffer()Lkotlinx/coroutines/scheduling/Task;

    .line 186
    move-result-object v1

    .line 189
    :cond_8
    return-object v1

    .line 190
    :cond_9
    const-wide/16 v11, 0x0

    .line 191
    cmp-long v3, v5, v11

    .line 193
    if-lez v3, :cond_b

    .line 195
    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 197
    move-result-wide v9

    .line 200
    goto :goto_5

    .line 201
    :cond_a
    const/4 v7, 0x0

    .line 202
    :cond_b
    :goto_5
    add-int/lit8 v8, v8, 0x1

    .line 203
    const/4 v3, 0x0

    .line 205
    goto/16 :goto_0

    .line 206
    :cond_c
    const-wide v2, 0x7fffffffffffffffL

    .line 208
    const-wide/16 v11, 0x0

    .line 213
    cmp-long v1, v9, v2

    .line 215
    if-eqz v1, :cond_d

    .line 217
    goto :goto_6

    .line 219
    :cond_d
    move-wide v9, v11

    .line 220
    :goto_6
    iput-wide v9, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->minDelayUntilStealableTaskNs:J

    .line 221
    const/4 v0, 0x0

    .line 223
    return-object v0
    .line 224
.end method
