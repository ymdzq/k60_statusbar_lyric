.class public final Lkotlinx/coroutines/internal/LimitedDispatcher;
.super Lkotlinx/coroutines/CoroutineDispatcher;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lkotlinx/coroutines/Delay;


# instance fields
.field public final synthetic $$delegate_0:Lkotlinx/coroutines/Delay;

.field public final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final parallelism:I

.field public final queue:Lkotlinx/coroutines/internal/LockFreeTaskQueue;

.field private volatile runningWorkers:I

.field public final workerAllocationLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/scheduling/UnlimitedIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/UnlimitedIoScheduler;

    .line 2
    invoke-direct {p0}, Lkotlinx/coroutines/CoroutineDispatcher;-><init>()V

    .line 4
    iput-object v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 7
    iput p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->parallelism:I

    .line 9
    instance-of p1, v0, Lkotlinx/coroutines/Delay;

    .line 11
    if-eqz p1, :cond_0

    .line 13
    check-cast v0, Lkotlinx/coroutines/Delay;

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-nez v0, :cond_1

    .line 19
    sget-object v0, Lkotlinx/coroutines/DefaultExecutorKt;->DefaultDelay:Lkotlinx/coroutines/Delay;

    .line 21
    :cond_1
    iput-object v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->$$delegate_0:Lkotlinx/coroutines/Delay;

    .line 23
    new-instance p1, Lkotlinx/coroutines/internal/LockFreeTaskQueue;

    .line 25
    invoke-direct {p1}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;-><init>()V

    .line 27
    iput-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->queue:Lkotlinx/coroutines/internal/LockFreeTaskQueue;

    .line 30
    new-instance p1, Ljava/lang/Object;

    .line 32
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->workerAllocationLock:Ljava/lang/Object;

    .line 37
    return-void
    .line 39
.end method


# virtual methods
.method public final dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->queue:Lkotlinx/coroutines/internal/LockFreeTaskQueue;

    .line 2
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->addLast(Ljava/lang/Object;)Z

    .line 4
    iget p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->runningWorkers:I

    .line 7
    iget p2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->parallelism:I

    .line 9
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    if-lt p1, p2, :cond_0

    .line 13
    move p1, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move p1, v1

    .line 17
    :goto_0
    if-nez p1, :cond_2

    .line 18
    iget-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->workerAllocationLock:Ljava/lang/Object;

    .line 20
    monitor-enter p1

    .line 22
    :try_start_0
    iget p2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->runningWorkers:I

    .line 23
    iget v2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->parallelism:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-lt p2, v2, :cond_1

    .line 27
    monitor-exit p1

    .line 29
    move v0, v1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :try_start_1
    iget p2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->runningWorkers:I

    .line 32
    add-int/2addr p2, v0

    .line 34
    iput p2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->runningWorkers:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    monitor-exit p1

    .line 37
    :goto_1
    if-eqz v0, :cond_2

    .line 38
    iget-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 40
    invoke-virtual {p1, p0, p0}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 42
    goto :goto_2

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    monitor-exit p1

    .line 47
    throw p0

    .line 48
    :cond_2
    :goto_2
    return-void
    .line 49
.end method

.method public final dispatchYield(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->queue:Lkotlinx/coroutines/internal/LockFreeTaskQueue;

    .line 2
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->addLast(Ljava/lang/Object;)Z

    .line 4
    iget p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->runningWorkers:I

    .line 7
    iget p2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->parallelism:I

    .line 9
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    if-lt p1, p2, :cond_0

    .line 13
    move p1, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move p1, v1

    .line 17
    :goto_0
    if-nez p1, :cond_2

    .line 18
    iget-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->workerAllocationLock:Ljava/lang/Object;

    .line 20
    monitor-enter p1

    .line 22
    :try_start_0
    iget p2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->runningWorkers:I

    .line 23
    iget v2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->parallelism:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-lt p2, v2, :cond_1

    .line 27
    monitor-exit p1

    .line 29
    move v0, v1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :try_start_1
    iget p2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->runningWorkers:I

    .line 32
    add-int/2addr p2, v0

    .line 34
    iput p2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->runningWorkers:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    monitor-exit p1

    .line 37
    :goto_1
    if-eqz v0, :cond_2

    .line 38
    iget-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 40
    invoke-virtual {p1, p0, p0}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatchYield(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 42
    goto :goto_2

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    monitor-exit p1

    .line 47
    throw p0

    .line 48
    :cond_2
    :goto_2
    return-void
    .line 49
.end method

.method public final invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/DisposableHandle;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->$$delegate_0:Lkotlinx/coroutines/Delay;

    .line 2
    invoke-interface {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/Delay;->invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/DisposableHandle;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final run()V
    .locals 3

    .line 1
    :goto_0
    const/4 v0, 0x0

    .line 2
    :cond_0
    iget-object v1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->queue:Lkotlinx/coroutines/internal/LockFreeTaskQueue;

    .line 3
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->removeFirstOrNull()Ljava/lang/Object;

    .line 5
    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/Runnable;

    .line 9
    if-eqz v1, :cond_1

    .line 11
    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    goto :goto_1

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 18
    invoke-static {v2, v1}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 20
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 23
    const/16 v1, 0x10

    .line 25
    if-lt v0, v1, :cond_0

    .line 27
    iget-object v1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 29
    invoke-virtual {v1}, Lkotlinx/coroutines/CoroutineDispatcher;->isDispatchNeeded()Z

    .line 31
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    iget-object v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 37
    invoke-virtual {v0, p0, p0}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 39
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->workerAllocationLock:Ljava/lang/Object;

    .line 43
    monitor-enter v0

    .line 45
    :try_start_1
    iget v1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->runningWorkers:I

    .line 46
    add-int/lit8 v1, v1, -0x1

    .line 48
    iput v1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->runningWorkers:I

    .line 50
    iget-object v1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->queue:Lkotlinx/coroutines/internal/LockFreeTaskQueue;

    .line 52
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->getSize()I

    .line 54
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    if-nez v1, :cond_2

    .line 58
    monitor-exit v0

    .line 60
    return-void

    .line 61
    :cond_2
    :try_start_2
    iget v1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->runningWorkers:I

    .line 62
    add-int/lit8 v1, v1, 0x1

    .line 64
    iput v1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->runningWorkers:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 66
    monitor-exit v0

    .line 68
    goto :goto_0

    .line 69
    :catchall_1
    move-exception p0

    .line 70
    monitor-exit v0

    .line 71
    throw p0
    .line 72
.end method

.method public final scheduleResumeAfterDelay(JLkotlinx/coroutines/CancellableContinuationImpl;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->$$delegate_0:Lkotlinx/coroutines/Delay;

    .line 2
    invoke-interface {p0, p1, p2, p3}, Lkotlinx/coroutines/Delay;->scheduleResumeAfterDelay(JLkotlinx/coroutines/CancellableContinuationImpl;)V

    .line 4
    return-void
    .line 7
.end method
