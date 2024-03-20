.class public abstract Lkotlinx/coroutines/internal/DispatchedContinuationKt;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final REUSABLE_CLAIMED:Lkotlinx/coroutines/internal/Symbol;

.field public static final UNDEFINED:Lkotlinx/coroutines/internal/Symbol;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    .line 2
    const-string v1, "UNDEFINED"

    .line 4
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->UNDEFINED:Lkotlinx/coroutines/internal/Symbol;

    .line 9
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    .line 11
    const-string v1, "REUSABLE_CLAIMED"

    .line 13
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    .line 15
    sput-object v0, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->REUSABLE_CLAIMED:Lkotlinx/coroutines/internal/Symbol;

    .line 18
    return-void
    .line 20
.end method

.method public static final resumeCancellableWith(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 6

    .line 1
    instance-of v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    .line 2
    if-eqz v0, :cond_a

    .line 4
    check-cast p0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    .line 6
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 8
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_1

    .line 13
    if-eqz p2, :cond_0

    .line 15
    new-instance v0, Lkotlinx/coroutines/CompletedWithCancellation;

    .line 17
    invoke-direct {v0, p1, p2}, Lkotlinx/coroutines/CompletedWithCancellation;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 19
    goto :goto_0

    .line 22
    :cond_0
    move-object v0, p1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    new-instance p2, Lkotlinx/coroutines/CompletedExceptionally;

    .line 25
    invoke-direct {p2, v0, v1}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;Z)V

    .line 27
    move-object v0, p2

    .line 30
    :goto_0
    iget-object p2, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 31
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 33
    invoke-virtual {p2}, Lkotlinx/coroutines/CoroutineDispatcher;->isDispatchNeeded()Z

    .line 36
    move-result p2

    .line 39
    const/4 v2, 0x1

    .line 40
    if-eqz p2, :cond_2

    .line 41
    iput-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 43
    iput v2, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    .line 45
    iget-object p1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 47
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 49
    move-result-object p2

    .line 52
    invoke-virtual {p1, p2, p0}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 53
    goto/16 :goto_4

    .line 56
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/ThreadLocalEventLoop;->getEventLoop$external__kotlinx_coroutines__android_common__kotlinx_coroutines()Lkotlinx/coroutines/EventLoopImplPlatform;

    .line 58
    move-result-object p2

    .line 61
    invoke-virtual {p2}, Lkotlinx/coroutines/EventLoopImplPlatform;->isUnconfinedLoopActive()Z

    .line 62
    move-result v3

    .line 65
    if-eqz v3, :cond_3

    .line 66
    iput-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 68
    iput v2, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    .line 70
    invoke-virtual {p2, p0}, Lkotlinx/coroutines/EventLoopImplPlatform;->dispatchUnconfined(Lkotlinx/coroutines/DispatchedTask;)V

    .line 72
    goto/16 :goto_4

    .line 75
    :cond_3
    invoke-virtual {p2, v2}, Lkotlinx/coroutines/EventLoopImplPlatform;->incrementUseCount(Z)V

    .line 77
    const/4 v3, 0x0

    .line 80
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 81
    move-result-object v4

    .line 84
    sget-object v5, Lkotlinx/coroutines/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/Job$Key;

    .line 85
    invoke-interface {v4, v5}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 87
    move-result-object v4

    .line 90
    check-cast v4, Lkotlinx/coroutines/Job;

    .line 91
    if-eqz v4, :cond_4

    .line 93
    invoke-interface {v4}, Lkotlinx/coroutines/Job;->isActive()Z

    .line 95
    move-result v5

    .line 98
    if-nez v5, :cond_4

    .line 99
    check-cast v4, Lkotlinx/coroutines/JobSupport;

    .line 101
    invoke-virtual {v4}, Lkotlinx/coroutines/JobSupport;->getCancellationException()Ljava/util/concurrent/CancellationException;

    .line 103
    move-result-object v1

    .line 106
    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/internal/DispatchedContinuation;->cancelCompletedResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 107
    new-instance v0, Lkotlin/Result$Failure;

    .line 110
    invoke-direct {v0, v1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 112
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->resumeWith(Ljava/lang/Object;)V

    .line 115
    move v1, v2

    .line 118
    :cond_4
    if-nez v1, :cond_9

    .line 119
    iget-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    .line 121
    iget-object v1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->countOrElement:Ljava/lang/Object;

    .line 123
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 125
    move-result-object v4

    .line 128
    invoke-static {v4, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    move-result-object v1

    .line 132
    sget-object v5, Lkotlinx/coroutines/internal/ThreadContextKt;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;

    .line 133
    if-eq v1, v5, :cond_5

    .line 135
    invoke-static {v0, v4, v1}, Lkotlinx/coroutines/CoroutineContextKt;->updateUndispatchedCompletion(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Lkotlinx/coroutines/UndispatchedCoroutine;

    .line 137
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 140
    goto :goto_1

    .line 141
    :cond_5
    move-object v0, v3

    .line 142
    :goto_1
    :try_start_1
    iget-object v5, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    .line 143
    invoke-interface {v5, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    if-eqz v0, :cond_6

    .line 148
    :try_start_2
    invoke-virtual {v0}, Lkotlinx/coroutines/UndispatchedCoroutine;->clearThreadContext()Z

    .line 150
    move-result p1

    .line 153
    if-eqz p1, :cond_9

    .line 154
    :cond_6
    invoke-static {v4, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 156
    goto :goto_2

    .line 159
    :catchall_0
    move-exception p1

    .line 160
    if-eqz v0, :cond_7

    .line 161
    invoke-virtual {v0}, Lkotlinx/coroutines/UndispatchedCoroutine;->clearThreadContext()Z

    .line 163
    move-result v0

    .line 166
    if-eqz v0, :cond_8

    .line 167
    :cond_7
    invoke-static {v4, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 169
    :cond_8
    throw p1

    .line 172
    :cond_9
    :goto_2
    invoke-virtual {p2}, Lkotlinx/coroutines/EventLoopImplPlatform;->processUnconfinedEvent()Z

    .line 173
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 176
    if-nez p1, :cond_9

    .line 177
    goto :goto_3

    .line 179
    :catchall_1
    move-exception p1

    .line 180
    :try_start_3
    invoke-virtual {p0, p1, v3}, Lkotlinx/coroutines/DispatchedTask;->handleFatalException(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 181
    :goto_3
    invoke-virtual {p2, v2}, Lkotlinx/coroutines/EventLoopImplPlatform;->decrementUseCount(Z)V

    .line 184
    goto :goto_4

    .line 187
    :catchall_2
    move-exception p0

    .line 188
    invoke-virtual {p2, v2}, Lkotlinx/coroutines/EventLoopImplPlatform;->decrementUseCount(Z)V

    .line 189
    throw p0

    .line 192
    :cond_a
    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 193
    :goto_4
    return-void
    .line 196
.end method
