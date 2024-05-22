.class public final Lkotlinx/coroutines/UndispatchedCoroutine;
.super Lkotlinx/coroutines/internal/ScopeCoroutine;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final threadStateToRecover:Ljava/lang/ThreadLocal;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;)V
    .locals 2

    .line 1
    sget-object v0, Lkotlinx/coroutines/UndispatchedMarker;->INSTANCE:Lkotlinx/coroutines/UndispatchedMarker;

    .line 2
    invoke-interface {p2, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 4
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    invoke-interface {p2, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 10
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v0, p2

    .line 15
    :goto_0
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/internal/ScopeCoroutine;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;)V

    .line 16
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 19
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 21
    iput-object v0, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->threadStateToRecover:Ljava/lang/ThreadLocal;

    .line 24
    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 26
    move-result-object p0

    .line 29
    sget-object p1, Lkotlin/coroutines/ContinuationInterceptor$Key;->$$INSTANCE:Lkotlin/coroutines/ContinuationInterceptor$Key;

    .line 30
    invoke-interface {p0, p1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 32
    move-result-object p0

    .line 35
    instance-of p0, p0, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 36
    if-nez p0, :cond_1

    .line 38
    const/4 p0, 0x0

    .line 40
    invoke-static {p2, p0}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object p0

    .line 44
    invoke-static {p2, p0}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 45
    new-instance p1, Lkotlin/Pair;

    .line 48
    invoke-direct {p1, p2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 53
    :cond_1
    return-void
    .line 56
.end method


# virtual methods
.method public final afterResume(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->threadStateToRecover:Ljava/lang/ThreadLocal;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    move-result-object v1

    .line 7
    check-cast v1, Lkotlin/Pair;

    .line 8
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 13
    move-result-object v3

    .line 16
    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    .line 17
    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 22
    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 26
    :cond_0
    invoke-static {p1}, Lkotlinx/coroutines/CompletionStateKt;->recoverResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 32
    iget-object p0, p0, Lkotlinx/coroutines/internal/ScopeCoroutine;->uCont:Lkotlin/coroutines/Continuation;

    .line 33
    invoke-interface {p0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 35
    move-result-object v0

    .line 38
    invoke-static {v0, v2}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 42
    sget-object v3, Lkotlinx/coroutines/internal/ThreadContextKt;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;

    .line 43
    if-eq v1, v3, :cond_1

    .line 45
    invoke-static {p0, v0, v1}, Lkotlinx/coroutines/CoroutineContextKt;->updateUndispatchedCompletion(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Lkotlinx/coroutines/UndispatchedCoroutine;

    .line 47
    move-result-object v2

    .line 50
    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    if-eqz v2, :cond_2

    .line 54
    invoke-virtual {v2}, Lkotlinx/coroutines/UndispatchedCoroutine;->clearThreadContext()Z

    .line 56
    move-result p0

    .line 59
    if-eqz p0, :cond_3

    .line 60
    :cond_2
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 62
    :cond_3
    return-void

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    if-eqz v2, :cond_4

    .line 67
    invoke-virtual {v2}, Lkotlinx/coroutines/UndispatchedCoroutine;->clearThreadContext()Z

    .line 69
    move-result p1

    .line 72
    if-eqz p1, :cond_5

    .line 73
    :cond_4
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 75
    :cond_5
    throw p0
    .line 78
.end method

.method public final clearThreadContext()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/UndispatchedCoroutine;->threadStateToRecover:Ljava/lang/ThreadLocal;

    .line 2
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 13
    const/4 p0, 0x1

    .line 16
    return p0
    .line 17
.end method
