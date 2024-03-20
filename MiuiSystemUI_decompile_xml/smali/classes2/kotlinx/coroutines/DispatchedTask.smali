.class public abstract Lkotlinx/coroutines/DispatchedTask;
.super Lkotlinx/coroutines/scheduling/Task;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public resumeMode:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    sget-object v2, Lkotlinx/coroutines/scheduling/TasksKt;->NonBlockingContext:Lkotlinx/coroutines/scheduling/TaskContextImpl;

    .line 4
    invoke-direct {p0, v0, v1, v2}, Lkotlinx/coroutines/scheduling/Task;-><init>(JLkotlinx/coroutines/scheduling/TaskContextImpl;)V

    .line 6
    iput p1, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public abstract cancelCompletedResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines(Ljava/lang/Object;Ljava/lang/Throwable;)V
.end method

.method public abstract getDelegate$external__kotlinx_coroutines__android_common__kotlinx_coroutines()Lkotlin/coroutines/Continuation;
.end method

.method public getExceptionalResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1

    .line 1
    instance-of p0, p1, Lkotlinx/coroutines/CompletedExceptionally;

    .line 2
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    check-cast p1, Lkotlinx/coroutines/CompletedExceptionally;

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v0

    .line 10
    :goto_0
    if-eqz p1, :cond_1

    .line 11
    iget-object v0, p1, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    .line 13
    :cond_1
    return-object v0
    .line 15
.end method

.method public getSuccessfulResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    return-object p1
    .line 2
.end method

.method public final handleFatalException(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    if-nez p2, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    if-eqz p2, :cond_1

    .line 9
    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 11
    :cond_1
    if-nez p1, :cond_2

    .line 14
    move-object p1, p2

    .line 16
    :cond_2
    new-instance p2, Lkotlinx/coroutines/CoroutinesInternalError;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    const-string v1, "Fatal exception in coroutines machinery for "

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ". Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 37
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 38
    invoke-direct {p2, v0, p1}, Lkotlinx/coroutines/CoroutinesInternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    invoke-virtual {p0}, Lkotlinx/coroutines/DispatchedTask;->getDelegate$external__kotlinx_coroutines__android_common__kotlinx_coroutines()Lkotlin/coroutines/Continuation;

    .line 44
    move-result-object p0

    .line 47
    invoke-interface {p0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 48
    move-result-object p0

    .line 51
    invoke-static {p0, p2}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 52
    return-void
    .line 55
.end method

.method public final run()V
    .locals 13

    .line 1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContextImpl;

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/DispatchedTask;->getDelegate$external__kotlinx_coroutines__android_common__kotlinx_coroutines()Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object v2

    .line 9
    check-cast v2, Lkotlinx/coroutines/internal/DispatchedContinuation;

    .line 10
    iget-object v3, v2, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    .line 12
    iget-object v2, v2, Lkotlinx/coroutines/internal/DispatchedContinuation;->countOrElement:Ljava/lang/Object;

    .line 14
    invoke-interface {v3}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 16
    move-result-object v4

    .line 19
    invoke-static {v4, v2}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 23
    sget-object v5, Lkotlinx/coroutines/internal/ThreadContextKt;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;

    .line 24
    const/4 v6, 0x0

    .line 26
    if-eq v2, v5, :cond_0

    .line 27
    invoke-static {v3, v4, v2}, Lkotlinx/coroutines/CoroutineContextKt;->updateUndispatchedCompletion(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Lkotlinx/coroutines/UndispatchedCoroutine;

    .line 29
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object v5, v6

    .line 34
    :goto_0
    :try_start_1
    invoke-interface {v3}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 35
    move-result-object v7

    .line 38
    invoke-virtual {p0}, Lkotlinx/coroutines/DispatchedTask;->takeState$external__kotlinx_coroutines__android_common__kotlinx_coroutines()Ljava/lang/Object;

    .line 39
    move-result-object v8

    .line 42
    invoke-virtual {p0, v8}, Lkotlinx/coroutines/DispatchedTask;->getExceptionalResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 43
    move-result-object v9

    .line 46
    if-nez v9, :cond_3

    .line 47
    iget v10, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    .line 49
    const/4 v11, 0x1

    .line 51
    if-eq v10, v11, :cond_2

    .line 52
    const/4 v12, 0x2

    .line 54
    if-ne v10, v12, :cond_1

    .line 55
    goto :goto_1

    .line 57
    :cond_1
    const/4 v11, 0x0

    .line 58
    :cond_2
    :goto_1
    if-eqz v11, :cond_3

    .line 59
    sget-object v10, Lkotlinx/coroutines/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/Job$Key;

    .line 61
    invoke-interface {v7, v10}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 63
    move-result-object v7

    .line 66
    check-cast v7, Lkotlinx/coroutines/Job;

    .line 67
    goto :goto_2

    .line 69
    :cond_3
    move-object v7, v6

    .line 70
    :goto_2
    if-eqz v7, :cond_4

    .line 71
    invoke-interface {v7}, Lkotlinx/coroutines/Job;->isActive()Z

    .line 73
    move-result v10

    .line 76
    if-nez v10, :cond_4

    .line 77
    check-cast v7, Lkotlinx/coroutines/JobSupport;

    .line 79
    invoke-virtual {v7}, Lkotlinx/coroutines/JobSupport;->getCancellationException()Ljava/util/concurrent/CancellationException;

    .line 81
    move-result-object v7

    .line 84
    invoke-virtual {p0, v8, v7}, Lkotlinx/coroutines/DispatchedTask;->cancelCompletedResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 85
    new-instance v8, Lkotlin/Result$Failure;

    .line 88
    invoke-direct {v8, v7}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 90
    invoke-interface {v3, v8}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 93
    goto :goto_3

    .line 96
    :cond_4
    if-eqz v9, :cond_5

    .line 97
    new-instance v7, Lkotlin/Result$Failure;

    .line 99
    invoke-direct {v7, v9}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 101
    invoke-interface {v3, v7}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 104
    goto :goto_3

    .line 107
    :cond_5
    invoke-virtual {p0, v8}, Lkotlinx/coroutines/DispatchedTask;->getSuccessfulResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    move-result-object v7

    .line 111
    invoke-interface {v3, v7}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 112
    :goto_3
    if-eqz v5, :cond_6

    .line 115
    :try_start_2
    invoke-virtual {v5}, Lkotlinx/coroutines/UndispatchedCoroutine;->clearThreadContext()Z

    .line 117
    move-result v3

    .line 120
    if-eqz v3, :cond_7

    .line 121
    :cond_6
    invoke-static {v4, v2}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 123
    :cond_7
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    goto :goto_4

    .line 129
    :catchall_0
    move-exception v0

    .line 130
    new-instance v1, Lkotlin/Result$Failure;

    .line 131
    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 133
    move-object v0, v1

    .line 136
    :goto_4
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 137
    move-result-object v0

    .line 140
    invoke-virtual {p0, v6, v0}, Lkotlinx/coroutines/DispatchedTask;->handleFatalException(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 141
    goto :goto_6

    .line 144
    :catchall_1
    move-exception v3

    .line 145
    if-eqz v5, :cond_8

    .line 146
    :try_start_4
    invoke-virtual {v5}, Lkotlinx/coroutines/UndispatchedCoroutine;->clearThreadContext()Z

    .line 148
    move-result v5

    .line 151
    if-eqz v5, :cond_9

    .line 152
    :cond_8
    invoke-static {v4, v2}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 154
    :cond_9
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 157
    :catchall_2
    move-exception v2

    .line 158
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 159
    goto :goto_5

    .line 162
    :catchall_3
    move-exception v0

    .line 163
    new-instance v1, Lkotlin/Result$Failure;

    .line 164
    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 166
    move-object v0, v1

    .line 169
    :goto_5
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 170
    move-result-object v0

    .line 173
    invoke-virtual {p0, v2, v0}, Lkotlinx/coroutines/DispatchedTask;->handleFatalException(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 174
    :goto_6
    return-void
    .line 177
.end method

.method public abstract takeState$external__kotlinx_coroutines__android_common__kotlinx_coroutines()Ljava/lang/Object;
.end method
