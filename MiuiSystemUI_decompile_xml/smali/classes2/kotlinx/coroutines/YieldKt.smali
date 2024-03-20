.class public abstract Lkotlinx/coroutines/YieldKt;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static final yield(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-interface {p0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    .line 6
    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 9
    move-result-object p0

    .line 12
    instance-of v1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    .line 13
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    check-cast p0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    move-object p0, v2

    .line 21
    :goto_0
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 22
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 24
    if-nez p0, :cond_1

    .line 26
    goto/16 :goto_6

    .line 28
    :cond_1
    iget-object v4, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 30
    invoke-virtual {v4}, Lkotlinx/coroutines/CoroutineDispatcher;->isDispatchNeeded()Z

    .line 32
    move-result v4

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v4, :cond_2

    .line 37
    iput-object v3, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 39
    iput v5, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    .line 41
    iget-object v2, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 43
    invoke-virtual {v2, v0, p0}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatchYield(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 45
    goto :goto_7

    .line 48
    :cond_2
    new-instance v4, Lkotlinx/coroutines/YieldContext;

    .line 49
    invoke-direct {v4}, Lkotlinx/coroutines/YieldContext;-><init>()V

    .line 51
    invoke-interface {v0, v4}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 54
    move-result-object v0

    .line 57
    iput-object v3, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 58
    iput v5, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    .line 60
    iget-object v6, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 62
    invoke-virtual {v6, v0, p0}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatchYield(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 64
    iget-boolean v0, v4, Lkotlinx/coroutines/YieldContext;->dispatcherWasUnconfined:Z

    .line 67
    if-eqz v0, :cond_9

    .line 69
    invoke-static {}, Lkotlinx/coroutines/ThreadLocalEventLoop;->getEventLoop$external__kotlinx_coroutines__android_common__kotlinx_coroutines()Lkotlinx/coroutines/EventLoopImplPlatform;

    .line 71
    move-result-object v0

    .line 74
    iget-object v4, v0, Lkotlinx/coroutines/EventLoopImplPlatform;->unconfinedQueue:Lkotlinx/coroutines/internal/ArrayQueue;

    .line 75
    const/4 v6, 0x0

    .line 77
    if-eqz v4, :cond_4

    .line 78
    iget v7, v4, Lkotlinx/coroutines/internal/ArrayQueue;->head:I

    .line 80
    iget v4, v4, Lkotlinx/coroutines/internal/ArrayQueue;->tail:I

    .line 82
    if-ne v7, v4, :cond_3

    .line 84
    goto :goto_1

    .line 86
    :cond_3
    move v4, v6

    .line 87
    goto :goto_2

    .line 88
    :cond_4
    :goto_1
    move v4, v5

    .line 89
    :goto_2
    if-eqz v4, :cond_5

    .line 90
    goto :goto_4

    .line 92
    :cond_5
    invoke-virtual {v0}, Lkotlinx/coroutines/EventLoopImplPlatform;->isUnconfinedLoopActive()Z

    .line 93
    move-result v4

    .line 96
    if-eqz v4, :cond_6

    .line 97
    iput-object v3, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 99
    iput v5, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    .line 101
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/EventLoopImplPlatform;->dispatchUnconfined(Lkotlinx/coroutines/DispatchedTask;)V

    .line 103
    goto :goto_5

    .line 106
    :cond_6
    invoke-virtual {v0, v5}, Lkotlinx/coroutines/EventLoopImplPlatform;->incrementUseCount(Z)V

    .line 107
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/DispatchedTask;->run()V

    .line 110
    :cond_7
    invoke-virtual {v0}, Lkotlinx/coroutines/EventLoopImplPlatform;->processUnconfinedEvent()Z

    .line 113
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    if-nez v4, :cond_7

    .line 117
    goto :goto_3

    .line 119
    :catchall_0
    move-exception v4

    .line 120
    :try_start_1
    invoke-virtual {p0, v4, v2}, Lkotlinx/coroutines/DispatchedTask;->handleFatalException(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 121
    :goto_3
    invoke-virtual {v0, v5}, Lkotlinx/coroutines/EventLoopImplPlatform;->decrementUseCount(Z)V

    .line 124
    :goto_4
    move v5, v6

    .line 127
    :goto_5
    if-eqz v5, :cond_8

    .line 128
    goto :goto_7

    .line 130
    :cond_8
    :goto_6
    move-object p0, v3

    .line 131
    goto :goto_8

    .line 132
    :catchall_1
    move-exception p0

    .line 133
    invoke-virtual {v0, v5}, Lkotlinx/coroutines/EventLoopImplPlatform;->decrementUseCount(Z)V

    .line 134
    throw p0

    .line 137
    :cond_9
    :goto_7
    move-object p0, v1

    .line 138
    :goto_8
    if-ne p0, v1, :cond_a

    .line 139
    return-object p0

    .line 141
    :cond_a
    return-object v3
    .line 142
.end method
