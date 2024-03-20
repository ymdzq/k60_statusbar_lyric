.class public abstract Lkotlinx/coroutines/DispatchedTaskKt;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static final resume(Lkotlinx/coroutines/DispatchedTask;Lkotlin/coroutines/Continuation;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/DispatchedTask;->takeState$external__kotlinx_coroutines__android_common__kotlinx_coroutines()Ljava/lang/Object;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/DispatchedTask;->getExceptionalResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 6
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    new-instance p0, Lkotlin/Result$Failure;

    .line 12
    invoke-direct {p0, v1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 14
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/DispatchedTask;->getSuccessfulResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 21
    :goto_0
    if-eqz p2, :cond_5

    .line 22
    check-cast p1, Lkotlinx/coroutines/internal/DispatchedContinuation;

    .line 24
    iget-object p2, p1, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    .line 26
    iget-object v0, p1, Lkotlinx/coroutines/internal/DispatchedContinuation;->countOrElement:Ljava/lang/Object;

    .line 28
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 30
    move-result-object v1

    .line 33
    invoke-static {v1, v0}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 37
    sget-object v2, Lkotlinx/coroutines/internal/ThreadContextKt;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;

    .line 38
    if-eq v0, v2, :cond_1

    .line 40
    invoke-static {p2, v1, v0}, Lkotlinx/coroutines/CoroutineContextKt;->updateUndispatchedCompletion(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Lkotlinx/coroutines/UndispatchedCoroutine;

    .line 42
    move-result-object p2

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 p2, 0x0

    .line 47
    :goto_1
    :try_start_0
    iget-object p1, p1, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    .line 48
    invoke-interface {p1, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    if-eqz p2, :cond_2

    .line 53
    invoke-virtual {p2}, Lkotlinx/coroutines/UndispatchedCoroutine;->clearThreadContext()Z

    .line 55
    move-result p0

    .line 58
    if-eqz p0, :cond_6

    .line 59
    :cond_2
    invoke-static {v1, v0}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 61
    goto :goto_2

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    if-eqz p2, :cond_3

    .line 66
    invoke-virtual {p2}, Lkotlinx/coroutines/UndispatchedCoroutine;->clearThreadContext()Z

    .line 68
    move-result p1

    .line 71
    if-eqz p1, :cond_4

    .line 72
    :cond_3
    invoke-static {v1, v0}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 74
    :cond_4
    throw p0

    .line 77
    :cond_5
    invoke-interface {p1, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 78
    :cond_6
    :goto_2
    return-void
    .line 81
.end method
