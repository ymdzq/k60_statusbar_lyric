.class public final Lkotlinx/coroutines/scheduling/WorkQueue;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final blockingTasksInBuffer:Lkotlinx/atomicfu/AtomicInt;

.field public final buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field public final consumerIndex:Lkotlinx/atomicfu/AtomicInt;

.field public final lastScheduledTask:Lkotlinx/atomicfu/AtomicRef;

.field public final producerIndex:Lkotlinx/atomicfu/AtomicInt;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 5
    const/16 v1, 0x80

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 9
    iput-object v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 12
    new-instance v0, Lkotlinx/atomicfu/AtomicRef;

    .line 14
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, v1}, Lkotlinx/atomicfu/AtomicRef;-><init>(Ljava/lang/Object;)V

    .line 17
    iput-object v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask:Lkotlinx/atomicfu/AtomicRef;

    .line 20
    new-instance v0, Lkotlinx/atomicfu/AtomicInt;

    .line 22
    invoke-direct {v0}, Lkotlinx/atomicfu/AtomicInt;-><init>()V

    .line 24
    iput-object v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex:Lkotlinx/atomicfu/AtomicInt;

    .line 27
    new-instance v0, Lkotlinx/atomicfu/AtomicInt;

    .line 29
    invoke-direct {v0}, Lkotlinx/atomicfu/AtomicInt;-><init>()V

    .line 31
    iput-object v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex:Lkotlinx/atomicfu/AtomicInt;

    .line 34
    new-instance v0, Lkotlinx/atomicfu/AtomicInt;

    .line 36
    invoke-direct {v0}, Lkotlinx/atomicfu/AtomicInt;-><init>()V

    .line 38
    iput-object v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->blockingTasksInBuffer:Lkotlinx/atomicfu/AtomicInt;

    .line 41
    return-void
    .line 43
.end method


# virtual methods
.method public final add(Lkotlinx/coroutines/scheduling/Task;Z)Lkotlinx/coroutines/scheduling/Task;
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/WorkQueue;->addLast(Lkotlinx/coroutines/scheduling/Task;)Lkotlinx/coroutines/scheduling/Task;

    .line 4
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object p2, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask:Lkotlinx/atomicfu/AtomicRef;

    .line 9
    invoke-virtual {p2, p1}, Lkotlinx/atomicfu/AtomicRef;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 14
    check-cast p1, Lkotlinx/coroutines/scheduling/Task;

    .line 15
    if-nez p1, :cond_1

    .line 17
    const/4 p0, 0x0

    .line 19
    return-object p0

    .line 20
    :cond_1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/WorkQueue;->addLast(Lkotlinx/coroutines/scheduling/Task;)Lkotlinx/coroutines/scheduling/Task;

    .line 21
    move-result-object p0

    .line 24
    return-object p0
    .line 25
.end method

.method public final addLast(Lkotlinx/coroutines/scheduling/Task;)Lkotlinx/coroutines/scheduling/Task;
    .locals 3

    .line 1
    iget-object v0, p1, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContextImpl;

    .line 2
    iget v0, v0, Lkotlinx/coroutines/scheduling/TaskContextImpl;->taskMode:I

    .line 4
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    sget-object v0, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    .line 11
    if-eqz v1, :cond_1

    .line 13
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->blockingTasksInBuffer:Lkotlinx/atomicfu/AtomicInt;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    sget-object v2, Lkotlinx/atomicfu/AtomicInt;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 20
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 22
    iget-object v1, v1, Lkotlinx/atomicfu/AtomicInt;->trace:Lkotlinx/atomicfu/TraceBase;

    .line 25
    if-eq v1, v0, :cond_1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->getBufferSize$external__kotlinx_coroutines__android_common__kotlinx_coroutines()I

    .line 32
    move-result v1

    .line 35
    const/16 v2, 0x7f

    .line 36
    if-ne v1, v2, :cond_2

    .line 38
    return-object p1

    .line 40
    :cond_2
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex:Lkotlinx/atomicfu/AtomicInt;

    .line 41
    iget v1, v1, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 43
    and-int/2addr v1, v2

    .line 45
    :goto_1
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 46
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 51
    if-eqz v2, :cond_3

    .line 52
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 54
    goto :goto_1

    .line 57
    :cond_3
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 58
    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 60
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex:Lkotlinx/atomicfu/AtomicInt;

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    sget-object p1, Lkotlinx/atomicfu/AtomicInt;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 68
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 70
    iget-object p0, p0, Lkotlinx/atomicfu/AtomicInt;->trace:Lkotlinx/atomicfu/TraceBase;

    .line 73
    if-eq p0, v0, :cond_4

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    :cond_4
    const/4 p0, 0x0

    .line 80
    return-object p0
    .line 81
.end method

.method public final getBufferSize$external__kotlinx_coroutines__android_common__kotlinx_coroutines()I
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex:Lkotlinx/atomicfu/AtomicInt;

    .line 2
    iget v0, v0, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 4
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex:Lkotlinx/atomicfu/AtomicInt;

    .line 6
    iget p0, p0, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 8
    sub-int/2addr v0, p0

    .line 10
    return v0
    .line 11
.end method

.method public final pollBuffer()Lkotlinx/coroutines/scheduling/Task;
    .locals 5

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex:Lkotlinx/atomicfu/AtomicInt;

    .line 2
    iget v0, v0, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 4
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex:Lkotlinx/atomicfu/AtomicInt;

    .line 6
    iget v1, v1, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 8
    sub-int v1, v0, v1

    .line 10
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_1

    .line 13
    return-object v2

    .line 15
    :cond_1
    and-int/lit8 v1, v0, 0x7f

    .line 16
    iget-object v3, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex:Lkotlinx/atomicfu/AtomicInt;

    .line 18
    add-int/lit8 v4, v0, 0x1

    .line 20
    invoke-virtual {v3, v0, v4}, Lkotlinx/atomicfu/AtomicInt;->compareAndSet(II)Z

    .line 22
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    .line 34
    if-nez v0, :cond_2

    .line 36
    goto :goto_0

    .line 38
    :cond_2
    iget-object v1, v0, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContextImpl;

    .line 39
    iget v1, v1, Lkotlinx/coroutines/scheduling/TaskContextImpl;->taskMode:I

    .line 41
    const/4 v2, 0x1

    .line 43
    if-ne v1, v2, :cond_3

    .line 44
    goto :goto_1

    .line 46
    :cond_3
    const/4 v2, 0x0

    .line 47
    :goto_1
    if-eqz v2, :cond_4

    .line 48
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->blockingTasksInBuffer:Lkotlinx/atomicfu/AtomicInt;

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    sget-object v1, Lkotlinx/atomicfu/AtomicInt;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 55
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 57
    sget-object v1, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    .line 60
    iget-object p0, p0, Lkotlinx/atomicfu/AtomicInt;->trace:Lkotlinx/atomicfu/TraceBase;

    .line 62
    if-eq p0, v1, :cond_4

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    :cond_4
    return-object v0
    .line 69
.end method

.method public final tryStealLastScheduled(Lkotlinx/coroutines/scheduling/WorkQueue;Z)J
    .locals 7

    .line 1
    :cond_0
    iget-object v0, p1, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask:Lkotlinx/atomicfu/AtomicRef;

    .line 2
    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 4
    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    .line 6
    const-wide/16 v1, -0x2

    .line 8
    if-nez v0, :cond_1

    .line 10
    return-wide v1

    .line 12
    :cond_1
    const/4 v3, 0x0

    .line 13
    if-eqz p2, :cond_3

    .line 14
    iget-object v4, v0, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContextImpl;

    .line 16
    iget v4, v4, Lkotlinx/coroutines/scheduling/TaskContextImpl;->taskMode:I

    .line 18
    const/4 v5, 0x1

    .line 20
    if-ne v4, v5, :cond_2

    .line 21
    goto :goto_0

    .line 23
    :cond_2
    move v5, v3

    .line 24
    :goto_0
    if-nez v5, :cond_3

    .line 25
    return-wide v1

    .line 27
    :cond_3
    sget-object v1, Lkotlinx/coroutines/scheduling/TasksKt;->schedulerTimeSource:Lkotlinx/coroutines/scheduling/NanoTimeSource;

    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 33
    move-result-wide v1

    .line 36
    iget-wide v4, v0, Lkotlinx/coroutines/scheduling/Task;->submissionTime:J

    .line 37
    sub-long/2addr v1, v4

    .line 39
    sget-wide v4, Lkotlinx/coroutines/scheduling/TasksKt;->WORK_STEALING_TIME_RESOLUTION_NS:J

    .line 40
    cmp-long v6, v1, v4

    .line 42
    if-gez v6, :cond_4

    .line 44
    sub-long/2addr v4, v1

    .line 46
    return-wide v4

    .line 47
    :cond_4
    iget-object v1, p1, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask:Lkotlinx/atomicfu/AtomicRef;

    .line 48
    const/4 v2, 0x0

    .line 50
    invoke-virtual {v1, v0, v2}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    move-result v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {p0, v0, v3}, Lkotlinx/coroutines/scheduling/WorkQueue;->add(Lkotlinx/coroutines/scheduling/Task;Z)Lkotlinx/coroutines/scheduling/Task;

    .line 57
    const-wide/16 p0, -0x1

    .line 60
    return-wide p0
    .line 62
.end method
