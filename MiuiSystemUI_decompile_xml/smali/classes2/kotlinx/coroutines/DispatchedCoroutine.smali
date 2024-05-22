.class public final Lkotlinx/coroutines/DispatchedCoroutine;
.super Lkotlinx/coroutines/internal/ScopeCoroutine;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final _decision:Lkotlinx/atomicfu/AtomicInt;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/internal/ScopeCoroutine;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;)V

    .line 2
    new-instance p1, Lkotlinx/atomicfu/AtomicInt;

    .line 5
    invoke-direct {p1}, Lkotlinx/atomicfu/AtomicInt;-><init>()V

    .line 7
    iput-object p1, p0, Lkotlinx/coroutines/DispatchedCoroutine;->_decision:Lkotlinx/atomicfu/AtomicInt;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final afterCompletion(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/DispatchedCoroutine;->afterResume(Ljava/lang/Object;)V

    .line 2
    return-void
    .line 5
.end method

.method public final afterResume(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/DispatchedCoroutine;->_decision:Lkotlinx/atomicfu/AtomicInt;

    .line 2
    :cond_0
    iget v1, v0, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 4
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    if-ne v1, v3, :cond_1

    .line 10
    goto :goto_0

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 13
    const-string p1, "Already resumed"

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p0

    .line 24
    :cond_2
    iget-object v1, p0, Lkotlinx/coroutines/DispatchedCoroutine;->_decision:Lkotlinx/atomicfu/AtomicInt;

    .line 25
    const/4 v4, 0x2

    .line 27
    invoke-virtual {v1, v2, v4}, Lkotlinx/atomicfu/AtomicInt;->compareAndSet(II)Z

    .line 28
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    move v2, v3

    .line 34
    :goto_0
    if-eqz v2, :cond_3

    .line 35
    return-void

    .line 37
    :cond_3
    iget-object p0, p0, Lkotlinx/coroutines/internal/ScopeCoroutine;->uCont:Lkotlin/coroutines/Continuation;

    .line 38
    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 40
    move-result-object p0

    .line 43
    invoke-static {p1}, Lkotlinx/coroutines/CompletionStateKt;->recoverResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->resumeCancellableWith(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 49
    return-void
    .line 52
.end method
