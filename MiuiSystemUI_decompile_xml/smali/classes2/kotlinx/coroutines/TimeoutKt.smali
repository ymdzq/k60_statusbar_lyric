.class public abstract Lkotlinx/coroutines/TimeoutKt;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static final setupTimeout(Lkotlinx/coroutines/TimeoutCoroutine;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/ScopeCoroutine;->uCont:Lkotlin/coroutines/Continuation;

    .line 2
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 4
    move-result-object v0

    .line 7
    invoke-static {v0}, Lkotlinx/coroutines/DelayKt;->getDelay(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Delay;

    .line 8
    move-result-object v0

    .line 11
    iget-wide v1, p0, Lkotlinx/coroutines/TimeoutCoroutine;->time:J

    .line 12
    iget-object v3, p0, Lkotlinx/coroutines/AbstractCoroutine;->context:Lkotlin/coroutines/CoroutineContext;

    .line 14
    invoke-interface {v0, v1, v2, p0, v3}, Lkotlinx/coroutines/Delay;->invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/DisposableHandle;

    .line 16
    move-result-object v0

    .line 19
    new-instance v1, Lkotlinx/coroutines/DisposeOnCompletion;

    .line 20
    invoke-direct {v1, v0}, Lkotlinx/coroutines/DisposeOnCompletion;-><init>(Lkotlinx/coroutines/DisposableHandle;)V

    .line 22
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 25
    const/4 v0, 0x0

    .line 28
    const/4 v1, 0x2

    .line 29
    :try_start_0
    invoke-static {v1, p1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    .line 30
    invoke-interface {p1, p0, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    new-instance v1, Lkotlinx/coroutines/CompletedExceptionally;

    .line 39
    invoke-direct {v1, p1, v0}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;Z)V

    .line 41
    move-object p1, v1

    .line 44
    :goto_0
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 45
    if-ne p1, v1, :cond_0

    .line 47
    goto :goto_2

    .line 49
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->makeCompletingOnce$external__kotlinx_coroutines__android_common__kotlinx_coroutines(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 53
    sget-object v3, Lkotlinx/coroutines/JobSupportKt;->COMPLETING_WAITING_CHILDREN:Lkotlinx/coroutines/internal/Symbol;

    .line 54
    if-ne v2, v3, :cond_1

    .line 56
    goto :goto_2

    .line 58
    :cond_1
    instance-of v1, v2, Lkotlinx/coroutines/CompletedExceptionally;

    .line 59
    if-eqz v1, :cond_6

    .line 61
    check-cast v2, Lkotlinx/coroutines/CompletedExceptionally;

    .line 63
    iget-object v1, v2, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    .line 65
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    .line 67
    if-eqz v2, :cond_2

    .line 69
    move-object v2, v1

    .line 71
    check-cast v2, Lkotlinx/coroutines/TimeoutCancellationException;

    .line 72
    iget-object v2, v2, Lkotlinx/coroutines/TimeoutCancellationException;->coroutine:Lkotlinx/coroutines/Job;

    .line 74
    if-eq v2, p0, :cond_3

    .line 76
    :cond_2
    const/4 v0, 0x1

    .line 78
    :cond_3
    if-nez v0, :cond_5

    .line 79
    instance-of p0, p1, Lkotlinx/coroutines/CompletedExceptionally;

    .line 81
    if-nez p0, :cond_4

    .line 83
    goto :goto_1

    .line 85
    :cond_4
    check-cast p1, Lkotlinx/coroutines/CompletedExceptionally;

    .line 86
    iget-object p0, p1, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    .line 88
    throw p0

    .line 90
    :cond_5
    throw v1

    .line 91
    :cond_6
    invoke-static {v2}, Lkotlinx/coroutines/JobSupportKt;->unboxState(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    move-result-object p1

    .line 95
    :goto_1
    move-object v1, p1

    .line 96
    :goto_2
    return-object v1
    .line 97
.end method
