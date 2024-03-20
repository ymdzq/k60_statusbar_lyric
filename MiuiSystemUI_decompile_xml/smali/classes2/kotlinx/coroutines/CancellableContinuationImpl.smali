.class public Lkotlinx/coroutines/CancellableContinuationImpl;
.super Lkotlinx/coroutines/DispatchedTask;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlinx/coroutines/CancellableContinuation;
.implements Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;


# instance fields
.field public final _decision:Lkotlinx/atomicfu/AtomicInt;

.field public final _state:Lkotlinx/atomicfu/AtomicRef;

.field public final context:Lkotlin/coroutines/CoroutineContext;

.field public final delegate:Lkotlin/coroutines/Continuation;

.field public parentHandle:Lkotlinx/coroutines/DisposableHandle;


# direct methods
.method public constructor <init>(ILkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/DispatchedTask;-><init>(I)V

    .line 2
    iput-object p2, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    .line 5
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 7
    move-result-object p1

    .line 10
    iput-object p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->context:Lkotlin/coroutines/CoroutineContext;

    .line 11
    new-instance p1, Lkotlinx/atomicfu/AtomicInt;

    .line 13
    invoke-direct {p1}, Lkotlinx/atomicfu/AtomicInt;-><init>()V

    .line 15
    iput-object p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decision:Lkotlinx/atomicfu/AtomicInt;

    .line 18
    sget-object p1, Lkotlinx/coroutines/Active;->INSTANCE:Lkotlinx/coroutines/Active;

    .line 20
    new-instance p2, Lkotlinx/atomicfu/AtomicRef;

    .line 22
    invoke-direct {p2, p1}, Lkotlinx/atomicfu/AtomicRef;-><init>(Ljava/lang/Object;)V

    .line 24
    iput-object p2, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 27
    return-void
    .line 29
.end method

.method public static multipleHandlersError(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    const-string v2, "It\'s prohibited to register multiple handlers, tried to register "

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string p1, ", already has "

    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 29
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    throw v0
    .line 33
.end method

.method public static resumedState(Lkotlinx/coroutines/NotCompleted;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/CompletedExceptionally;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    goto :goto_2

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-eq p2, v0, :cond_2

    .line 8
    const/4 v1, 0x2

    .line 10
    if-ne p2, v1, :cond_1

    .line 11
    goto :goto_0

    .line 13
    :cond_1
    const/4 v0, 0x0

    .line 14
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 15
    if-nez p4, :cond_3

    .line 17
    goto :goto_2

    .line 19
    :cond_3
    if-nez p3, :cond_5

    .line 20
    instance-of p2, p0, Lkotlinx/coroutines/CancelHandler;

    .line 22
    if-eqz p2, :cond_4

    .line 24
    instance-of p2, p0, Lkotlinx/coroutines/BeforeResumeCancelHandler;

    .line 26
    if-eqz p2, :cond_5

    .line 28
    :cond_4
    if-eqz p4, :cond_7

    .line 30
    :cond_5
    new-instance p2, Lkotlinx/coroutines/CompletedContinuation;

    .line 32
    instance-of v0, p0, Lkotlinx/coroutines/CancelHandler;

    .line 34
    if-eqz v0, :cond_6

    .line 36
    check-cast p0, Lkotlinx/coroutines/CancelHandler;

    .line 38
    goto :goto_1

    .line 40
    :cond_6
    const/4 p0, 0x0

    .line 41
    :goto_1
    move-object v2, p0

    .line 42
    const/4 v5, 0x0

    .line 43
    const/16 v6, 0x10

    .line 44
    move-object v0, p2

    .line 46
    move-object v1, p1

    .line 47
    move-object v3, p3

    .line 48
    move-object v4, p4

    .line 49
    invoke-direct/range {v0 .. v6}, Lkotlinx/coroutines/CompletedContinuation;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CancelHandler;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;Ljava/lang/Throwable;I)V

    .line 50
    move-object p1, p2

    .line 53
    :cond_7
    :goto_2
    return-object p1
    .line 54
.end method


# virtual methods
.method public final callCancelHandler(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    .locals 3

    .line 5
    :try_start_0
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    iget-object p2, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->context:Lkotlin/coroutines/CoroutineContext;

    .line 7
    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    invoke-static {p2, v0}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final callCancelHandler(Lkotlinx/coroutines/CancelHandler;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/CancelHandler;->invoke(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    iget-object p2, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->context:Lkotlin/coroutines/CoroutineContext;

    .line 3
    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p2, v0}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final callOnCancellation(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    goto :goto_0

    .line 5
    :catchall_0
    move-exception p1

    .line 6
    iget-object p2, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->context:Lkotlin/coroutines/CoroutineContext;

    .line 7
    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    const-string v2, "Exception in resume onCancellation handler for "

    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 24
    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    invoke-static {p2, v0}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 28
    :goto_0
    return-void
    .line 31
.end method

.method public final cancel(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 2
    :cond_0
    iget-object v1, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 4
    instance-of v2, v1, Lkotlinx/coroutines/NotCompleted;

    .line 6
    if-nez v2, :cond_1

    .line 8
    return-void

    .line 10
    :cond_1
    new-instance v2, Lkotlinx/coroutines/CancelledContinuation;

    .line 11
    instance-of v3, v1, Lkotlinx/coroutines/CancelHandler;

    .line 13
    invoke-direct {v2, p0, p1, v3}, Lkotlinx/coroutines/CancelledContinuation;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/Throwable;Z)V

    .line 15
    iget-object v4, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 18
    invoke-virtual {v4, v1, v2}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    if-eqz v3, :cond_2

    .line 26
    check-cast v1, Lkotlinx/coroutines/CancelHandler;

    .line 28
    goto :goto_0

    .line 30
    :cond_2
    const/4 v1, 0x0

    .line 31
    :goto_0
    if-eqz v1, :cond_3

    .line 32
    invoke-virtual {p0, v1, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->callCancelHandler(Lkotlinx/coroutines/CancelHandler;Ljava/lang/Throwable;)V

    .line 34
    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->isReusable()Z

    .line 37
    move-result p1

    .line 40
    if-nez p1, :cond_4

    .line 41
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChild$external__kotlinx_coroutines__android_common__kotlinx_coroutines()V

    .line 43
    :cond_4
    iget p1, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    .line 46
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->dispatchResume(I)V

    .line 48
    return-void
    .line 51
.end method

.method public final cancelCompletedResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 10

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 2
    :cond_0
    iget-object v7, p1, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 4
    instance-of v0, v7, Lkotlinx/coroutines/NotCompleted;

    .line 6
    if-nez v0, :cond_7

    .line 8
    instance-of v0, v7, Lkotlinx/coroutines/CompletedExceptionally;

    .line 10
    if-eqz v0, :cond_1

    .line 12
    return-void

    .line 14
    :cond_1
    instance-of v0, v7, Lkotlinx/coroutines/CompletedContinuation;

    .line 15
    if-eqz v0, :cond_6

    .line 17
    move-object v0, v7

    .line 19
    check-cast v0, Lkotlinx/coroutines/CompletedContinuation;

    .line 20
    iget-object v1, v0, Lkotlinx/coroutines/CompletedContinuation;->cancelCause:Ljava/lang/Throwable;

    .line 22
    const/4 v2, 0x1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    move v1, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/4 v1, 0x0

    .line 29
    :goto_0
    xor-int/2addr v1, v2

    .line 30
    if-eqz v1, :cond_5

    .line 31
    const/4 v1, 0x0

    .line 33
    const/16 v2, 0xf

    .line 34
    invoke-static {v0, v1, p2, v2}, Lkotlinx/coroutines/CompletedContinuation;->copy$default(Lkotlinx/coroutines/CompletedContinuation;Lkotlinx/coroutines/CancelHandler;Ljava/lang/Throwable;I)Lkotlinx/coroutines/CompletedContinuation;

    .line 36
    move-result-object v1

    .line 39
    iget-object v2, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 40
    invoke-virtual {v2, v7, v1}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    move-result v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    iget-object p1, v0, Lkotlinx/coroutines/CompletedContinuation;->cancelHandler:Lkotlinx/coroutines/CancelHandler;

    .line 48
    if-eqz p1, :cond_3

    .line 50
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->callCancelHandler(Lkotlinx/coroutines/CancelHandler;Ljava/lang/Throwable;)V

    .line 52
    :cond_3
    iget-object p1, v0, Lkotlinx/coroutines/CompletedContinuation;->onCancellation:Lkotlin/jvm/functions/Function1;

    .line 55
    if-eqz p1, :cond_4

    .line 57
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->callOnCancellation(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    .line 59
    :cond_4
    return-void

    .line 62
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 63
    const-string p1, "Must be called at most once"

    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 70
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    throw p0

    .line 74
    :cond_6
    iget-object v8, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 75
    new-instance v9, Lkotlinx/coroutines/CompletedContinuation;

    .line 77
    const/4 v2, 0x0

    .line 79
    const/4 v3, 0x0

    .line 80
    const/4 v4, 0x0

    .line 81
    const/16 v6, 0xe

    .line 82
    move-object v0, v9

    .line 84
    move-object v1, v7

    .line 85
    move-object v5, p2

    .line 86
    invoke-direct/range {v0 .. v6}, Lkotlinx/coroutines/CompletedContinuation;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CancelHandler;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;Ljava/lang/Throwable;I)V

    .line 87
    invoke-virtual {v8, v7, v9}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    move-result v0

    .line 93
    if-eqz v0, :cond_0

    .line 94
    return-void

    .line 96
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 97
    const-string p1, "Not completed"

    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 101
    move-result-object p1

    .line 104
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 105
    throw p0
    .line 108
.end method

.method public final detachChild$external__kotlinx_coroutines__android_common__kotlinx_coroutines()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->parentHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 7
    sget-object v0, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    .line 10
    iput-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->parentHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 12
    return-void
    .line 14
.end method

.method public final dispatchResume(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decision:Lkotlinx/atomicfu/AtomicInt;

    .line 2
    :cond_0
    iget v1, v0, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 4
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    if-eqz v1, :cond_2

    .line 9
    if-ne v1, v4, :cond_1

    .line 11
    move v0, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 15
    const-string p1, "Already resumed"

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p0

    .line 26
    :cond_2
    iget-object v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decision:Lkotlinx/atomicfu/AtomicInt;

    .line 27
    invoke-virtual {v1, v3, v2}, Lkotlinx/atomicfu/AtomicInt;->compareAndSet(II)Z

    .line 29
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    move v0, v4

    .line 35
    :goto_0
    if-eqz v0, :cond_3

    .line 36
    return-void

    .line 38
    :cond_3
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    .line 39
    const/4 v1, 0x4

    .line 41
    if-ne p1, v1, :cond_4

    .line 42
    move v1, v4

    .line 44
    goto :goto_1

    .line 45
    :cond_4
    move v1, v3

    .line 46
    :goto_1
    if-nez v1, :cond_c

    .line 47
    instance-of v5, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    .line 49
    if-eqz v5, :cond_c

    .line 51
    if-eq p1, v4, :cond_6

    .line 53
    if-ne p1, v2, :cond_5

    .line 55
    goto :goto_2

    .line 57
    :cond_5
    move p1, v3

    .line 58
    goto :goto_3

    .line 59
    :cond_6
    :goto_2
    move p1, v4

    .line 60
    :goto_3
    iget v5, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    .line 61
    if-eq v5, v4, :cond_7

    .line 63
    if-ne v5, v2, :cond_8

    .line 65
    :cond_7
    move v3, v4

    .line 67
    :cond_8
    if-ne p1, v3, :cond_c

    .line 68
    move-object p1, v0

    .line 70
    check-cast p1, Lkotlinx/coroutines/internal/DispatchedContinuation;

    .line 71
    iget-object p1, p1, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 73
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 75
    move-result-object v0

    .line 78
    invoke-virtual {p1}, Lkotlinx/coroutines/CoroutineDispatcher;->isDispatchNeeded()Z

    .line 79
    move-result v1

    .line 82
    if-eqz v1, :cond_9

    .line 83
    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 85
    goto :goto_5

    .line 88
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/ThreadLocalEventLoop;->getEventLoop$external__kotlinx_coroutines__android_common__kotlinx_coroutines()Lkotlinx/coroutines/EventLoopImplPlatform;

    .line 89
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Lkotlinx/coroutines/EventLoopImplPlatform;->isUnconfinedLoopActive()Z

    .line 93
    move-result v0

    .line 96
    if-eqz v0, :cond_a

    .line 97
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/EventLoopImplPlatform;->dispatchUnconfined(Lkotlinx/coroutines/DispatchedTask;)V

    .line 99
    goto :goto_5

    .line 102
    :cond_a
    invoke-virtual {p1, v4}, Lkotlinx/coroutines/EventLoopImplPlatform;->incrementUseCount(Z)V

    .line 103
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    .line 106
    invoke-static {p0, v0, v4}, Lkotlinx/coroutines/DispatchedTaskKt;->resume(Lkotlinx/coroutines/DispatchedTask;Lkotlin/coroutines/Continuation;Z)V

    .line 108
    :cond_b
    invoke-virtual {p1}, Lkotlinx/coroutines/EventLoopImplPlatform;->processUnconfinedEvent()Z

    .line 111
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    if-nez v0, :cond_b

    .line 115
    goto :goto_4

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    const/4 v1, 0x0

    .line 119
    :try_start_1
    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/DispatchedTask;->handleFatalException(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 120
    :goto_4
    invoke-virtual {p1, v4}, Lkotlinx/coroutines/EventLoopImplPlatform;->decrementUseCount(Z)V

    .line 123
    goto :goto_5

    .line 126
    :catchall_1
    move-exception p0

    .line 127
    invoke-virtual {p1, v4}, Lkotlinx/coroutines/EventLoopImplPlatform;->decrementUseCount(Z)V

    .line 128
    throw p0

    .line 131
    :cond_c
    invoke-static {p0, v0, v1}, Lkotlinx/coroutines/DispatchedTaskKt;->resume(Lkotlinx/coroutines/DispatchedTask;Lkotlin/coroutines/Continuation;Z)V

    .line 132
    :goto_5
    return-void
    .line 135
.end method

.method public final getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .locals 1

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    .line 2
    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    check-cast p0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
    .line 12
.end method

.method public final getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->context:Lkotlin/coroutines/CoroutineContext;

    .line 2
    return-object p0
    .line 4
.end method

.method public getContinuationCancellationCause(Lkotlinx/coroutines/JobSupport;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport;->getCancellationException()Ljava/util/concurrent/CancellationException;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final getDelegate$external__kotlinx_coroutines__android_common__kotlinx_coroutines()Lkotlin/coroutines/Continuation;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getExceptionalResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lkotlinx/coroutines/DispatchedTask;->getExceptionalResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return-object p0
    .line 10
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->isReusable()Z

    .line 2
    move-result v0

    .line 5
    iget-object v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decision:Lkotlinx/atomicfu/AtomicInt;

    .line 6
    :cond_0
    iget v2, v1, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 8
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    if-eqz v2, :cond_2

    .line 13
    if-ne v2, v3, :cond_1

    .line 15
    move v1, v5

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 19
    const-string v0, "Already suspended"

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 26
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p0

    .line 30
    :cond_2
    iget-object v2, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decision:Lkotlinx/atomicfu/AtomicInt;

    .line 31
    invoke-virtual {v2, v5, v4}, Lkotlinx/atomicfu/AtomicInt;->compareAndSet(II)Z

    .line 33
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    move v1, v4

    .line 39
    :goto_0
    if-eqz v1, :cond_5

    .line 40
    iget-object v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->parentHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 42
    if-nez v1, :cond_3

    .line 44
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->installParentHandle()Lkotlinx/coroutines/DisposableHandle;

    .line 46
    :cond_3
    if-eqz v0, :cond_4

    .line 49
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->releaseClaimedReusableContinuation()V

    .line 51
    :cond_4
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 54
    return-object p0

    .line 56
    :cond_5
    if-eqz v0, :cond_6

    .line 57
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->releaseClaimedReusableContinuation()V

    .line 59
    :cond_6
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 62
    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 64
    instance-of v1, v0, Lkotlinx/coroutines/CompletedExceptionally;

    .line 66
    if-nez v1, :cond_b

    .line 68
    iget v1, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    .line 70
    if-eq v1, v4, :cond_8

    .line 72
    if-ne v1, v3, :cond_7

    .line 74
    goto :goto_1

    .line 76
    :cond_7
    move v4, v5

    .line 77
    :cond_8
    :goto_1
    if-eqz v4, :cond_a

    .line 78
    iget-object v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->context:Lkotlin/coroutines/CoroutineContext;

    .line 80
    sget-object v2, Lkotlinx/coroutines/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/Job$Key;

    .line 82
    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 84
    move-result-object v1

    .line 87
    check-cast v1, Lkotlinx/coroutines/Job;

    .line 88
    if-eqz v1, :cond_a

    .line 90
    invoke-interface {v1}, Lkotlinx/coroutines/Job;->isActive()Z

    .line 92
    move-result v2

    .line 95
    if-eqz v2, :cond_9

    .line 96
    goto :goto_2

    .line 98
    :cond_9
    check-cast v1, Lkotlinx/coroutines/JobSupport;

    .line 99
    invoke-virtual {v1}, Lkotlinx/coroutines/JobSupport;->getCancellationException()Ljava/util/concurrent/CancellationException;

    .line 101
    move-result-object v1

    .line 104
    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->cancelCompletedResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 105
    throw v1

    .line 108
    :cond_a
    :goto_2
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getSuccessfulResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    move-result-object p0

    .line 112
    return-object p0

    .line 113
    :cond_b
    check-cast v0, Lkotlinx/coroutines/CompletedExceptionally;

    .line 114
    iget-object p0, v0, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    .line 116
    throw p0
    .line 118
.end method

.method public final getSuccessfulResult$external__kotlinx_coroutines__android_common__kotlinx_coroutines(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    instance-of p0, p1, Lkotlinx/coroutines/CompletedContinuation;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    check-cast p1, Lkotlinx/coroutines/CompletedContinuation;

    .line 6
    iget-object p1, p1, Lkotlinx/coroutines/CompletedContinuation;->result:Ljava/lang/Object;

    .line 8
    :cond_0
    return-object p1
    .line 10
.end method

.method public final initCancellability()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->installParentHandle()Lkotlinx/coroutines/DisposableHandle;

    .line 2
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 9
    iget-object v1, v1, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 11
    instance-of v1, v1, Lkotlinx/coroutines/NotCompleted;

    .line 13
    xor-int/lit8 v1, v1, 0x1

    .line 15
    if-eqz v1, :cond_1

    .line 17
    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 19
    sget-object v0, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    .line 22
    iput-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->parentHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 24
    :cond_1
    return-void
    .line 26
.end method

.method public final installParentHandle()Lkotlinx/coroutines/DisposableHandle;
    .locals 4

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->context:Lkotlin/coroutines/CoroutineContext;

    .line 2
    sget-object v1, Lkotlinx/coroutines/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/Job$Key;

    .line 4
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Lkotlinx/coroutines/Job;

    .line 10
    if-nez v0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    new-instance v1, Lkotlinx/coroutines/ChildContinuation;

    .line 16
    invoke-direct {v1, p0}, Lkotlinx/coroutines/ChildContinuation;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    .line 18
    const/4 v2, 0x2

    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-static {v0, v3, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZLkotlinx/coroutines/JobNode;I)Lkotlinx/coroutines/DisposableHandle;

    .line 23
    move-result-object v0

    .line 26
    iput-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->parentHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 27
    return-object v0
    .line 29
.end method

.method public final invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V
    .locals 11

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/CancelHandler;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    move-object v0, p1

    .line 6
    check-cast v0, Lkotlinx/coroutines/CancelHandler;

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lkotlinx/coroutines/InvokeOnCancel;

    .line 10
    invoke-direct {v0, p1}, Lkotlinx/coroutines/InvokeOnCancel;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 12
    :goto_0
    iget-object v8, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 15
    :cond_1
    iget-object v9, v8, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 17
    instance-of v1, v9, Lkotlinx/coroutines/Active;

    .line 19
    if-eqz v1, :cond_2

    .line 21
    iget-object v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 23
    invoke-virtual {v1, v9, v0}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    return-void

    .line 31
    :cond_2
    instance-of v1, v9, Lkotlinx/coroutines/CancelHandler;

    .line 32
    const/4 v2, 0x0

    .line 34
    if-nez v1, :cond_e

    .line 35
    instance-of v1, v9, Lkotlinx/coroutines/CompletedExceptionally;

    .line 37
    if-eqz v1, :cond_7

    .line 39
    move-object v0, v9

    .line 41
    check-cast v0, Lkotlinx/coroutines/CompletedExceptionally;

    .line 42
    iget-object v3, v0, Lkotlinx/coroutines/CompletedExceptionally;->_handled:Lkotlinx/atomicfu/AtomicBoolean;

    .line 44
    invoke-virtual {v3}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet()Z

    .line 46
    move-result v3

    .line 49
    if-eqz v3, :cond_6

    .line 50
    instance-of v3, v9, Lkotlinx/coroutines/CancelledContinuation;

    .line 52
    if-eqz v3, :cond_5

    .line 54
    if-eqz v1, :cond_3

    .line 56
    goto :goto_1

    .line 58
    :cond_3
    move-object v0, v2

    .line 59
    :goto_1
    if-eqz v0, :cond_4

    .line 60
    iget-object v2, v0, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    .line 62
    :cond_4
    invoke-virtual {p0, p1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->callCancelHandler(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    .line 64
    :cond_5
    return-void

    .line 67
    :cond_6
    invoke-static {v9, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->multipleHandlersError(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 68
    throw v2

    .line 71
    :cond_7
    instance-of v1, v9, Lkotlinx/coroutines/CompletedContinuation;

    .line 72
    if-eqz v1, :cond_c

    .line 74
    move-object v1, v9

    .line 76
    check-cast v1, Lkotlinx/coroutines/CompletedContinuation;

    .line 77
    iget-object v3, v1, Lkotlinx/coroutines/CompletedContinuation;->cancelHandler:Lkotlinx/coroutines/CancelHandler;

    .line 79
    if-nez v3, :cond_b

    .line 81
    instance-of v3, v0, Lkotlinx/coroutines/BeforeResumeCancelHandler;

    .line 83
    if-eqz v3, :cond_8

    .line 85
    return-void

    .line 87
    :cond_8
    iget-object v3, v1, Lkotlinx/coroutines/CompletedContinuation;->cancelCause:Ljava/lang/Throwable;

    .line 88
    if-eqz v3, :cond_9

    .line 90
    const/4 v4, 0x1

    .line 92
    goto :goto_2

    .line 93
    :cond_9
    const/4 v4, 0x0

    .line 94
    :goto_2
    if-eqz v4, :cond_a

    .line 95
    invoke-virtual {p0, p1, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->callCancelHandler(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    .line 97
    return-void

    .line 100
    :cond_a
    const/16 v3, 0x1d

    .line 101
    invoke-static {v1, v0, v2, v3}, Lkotlinx/coroutines/CompletedContinuation;->copy$default(Lkotlinx/coroutines/CompletedContinuation;Lkotlinx/coroutines/CancelHandler;Ljava/lang/Throwable;I)Lkotlinx/coroutines/CompletedContinuation;

    .line 103
    move-result-object v1

    .line 106
    iget-object v2, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 107
    invoke-virtual {v2, v9, v1}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    move-result v1

    .line 112
    if-eqz v1, :cond_1

    .line 113
    return-void

    .line 115
    :cond_b
    invoke-static {v9, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->multipleHandlersError(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 116
    throw v2

    .line 119
    :cond_c
    instance-of v1, v0, Lkotlinx/coroutines/BeforeResumeCancelHandler;

    .line 120
    if-eqz v1, :cond_d

    .line 122
    return-void

    .line 124
    :cond_d
    new-instance v10, Lkotlinx/coroutines/CompletedContinuation;

    .line 125
    const/4 v4, 0x0

    .line 127
    const/4 v5, 0x0

    .line 128
    const/4 v6, 0x0

    .line 129
    const/16 v7, 0x1c

    .line 130
    move-object v1, v10

    .line 132
    move-object v2, v9

    .line 133
    move-object v3, v0

    .line 134
    invoke-direct/range {v1 .. v7}, Lkotlinx/coroutines/CompletedContinuation;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CancelHandler;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;Ljava/lang/Throwable;I)V

    .line 135
    iget-object v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 138
    invoke-virtual {v1, v9, v10}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    move-result v1

    .line 143
    if-eqz v1, :cond_1

    .line 144
    return-void

    .line 146
    :cond_e
    invoke-static {v9, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->multipleHandlersError(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 147
    throw v2
    .line 150
.end method

.method public final isReusable()Z
    .locals 4

    .line 1
    iget v0, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    .line 2
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    move v0, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v3

    .line 11
    :goto_0
    if-eqz v0, :cond_2

    .line 12
    iget-object p0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    .line 14
    check-cast p0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    .line 16
    iget-object p0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation:Lkotlinx/atomicfu/AtomicRef;

    .line 18
    iget-object p0, p0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 20
    if-eqz p0, :cond_1

    .line 22
    move p0, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move p0, v3

    .line 26
    :goto_1
    if-eqz p0, :cond_2

    .line 27
    goto :goto_2

    .line 29
    :cond_2
    move v2, v3

    .line 30
    :goto_2
    return v2
    .line 31
.end method

.method public nameString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "CancellableContinuation"

    .line 2
    return-object p0
    .line 4
.end method

.method public final releaseClaimedReusableContinuation()V
    .locals 5

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    .line 4
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    check-cast v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v2

    .line 12
    :goto_0
    if-eqz v0, :cond_6

    .line 13
    iget-object v1, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation:Lkotlinx/atomicfu/AtomicRef;

    .line 15
    :cond_1
    iget-object v3, v1, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 17
    sget-object v4, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->REUSABLE_CLAIMED:Lkotlinx/coroutines/internal/Symbol;

    .line 19
    if-ne v3, v4, :cond_2

    .line 21
    iget-object v3, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation:Lkotlinx/atomicfu/AtomicRef;

    .line 23
    invoke-virtual {v3, v4, p0}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    goto :goto_1

    .line 31
    :cond_2
    instance-of v1, v3, Ljava/lang/Throwable;

    .line 32
    if-eqz v1, :cond_5

    .line 34
    iget-object v0, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation:Lkotlinx/atomicfu/AtomicRef;

    .line 36
    invoke-virtual {v0, v3, v2}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result v0

    .line 41
    if-eqz v0, :cond_4

    .line 42
    move-object v2, v3

    .line 44
    check-cast v2, Ljava/lang/Throwable;

    .line 45
    :goto_1
    if-nez v2, :cond_3

    .line 47
    goto :goto_2

    .line 49
    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChild$external__kotlinx_coroutines__android_common__kotlinx_coroutines()V

    .line 50
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->cancel(Ljava/lang/Throwable;)V

    .line 53
    return-void

    .line 56
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 57
    const-string v0, "Failed requirement."

    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 64
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    throw p0

    .line 68
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    const-string v1, "Inconsistent state "

    .line 73
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 88
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 89
    throw p0

    .line 92
    :cond_6
    :goto_2
    return-void
    .line 93
.end method

.method public final resumeImpl(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 2
    :cond_0
    iget-object v1, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 4
    instance-of v2, v1, Lkotlinx/coroutines/NotCompleted;

    .line 6
    if-eqz v2, :cond_2

    .line 8
    move-object v2, v1

    .line 10
    check-cast v2, Lkotlinx/coroutines/NotCompleted;

    .line 11
    const/4 v3, 0x0

    .line 13
    invoke-static {v2, p1, p2, p3, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumedState(Lkotlinx/coroutines/NotCompleted;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;)Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 17
    iget-object v3, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 18
    invoke-virtual {v3, v1, v2}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->isReusable()Z

    .line 26
    move-result p1

    .line 29
    if-nez p1, :cond_1

    .line 30
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChild$external__kotlinx_coroutines__android_common__kotlinx_coroutines()V

    .line 32
    :cond_1
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->dispatchResume(I)V

    .line 35
    return-void

    .line 38
    :cond_2
    instance-of p2, v1, Lkotlinx/coroutines/CancelledContinuation;

    .line 39
    if-eqz p2, :cond_4

    .line 41
    check-cast v1, Lkotlinx/coroutines/CancelledContinuation;

    .line 43
    iget-object p2, v1, Lkotlinx/coroutines/CancelledContinuation;->_resumed:Lkotlinx/atomicfu/AtomicBoolean;

    .line 45
    invoke-virtual {p2}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet()Z

    .line 47
    move-result p2

    .line 50
    if-eqz p2, :cond_4

    .line 51
    if-eqz p3, :cond_3

    .line 53
    iget-object p1, v1, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    .line 55
    invoke-virtual {p0, p3, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->callOnCancellation(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    .line 57
    :cond_3
    return-void

    .line 60
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 61
    new-instance p2, Ljava/lang/StringBuilder;

    .line 63
    const-string p3, "Already resumed, but proposed with update "

    .line 65
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 80
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 81
    throw p0
    .line 84
.end method

.method public final resumeUndispatched(Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 4

    .line 1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2
    iget-object v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    .line 4
    instance-of v2, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;

    .line 6
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    check-cast v1, Lkotlinx/coroutines/internal/DispatchedContinuation;

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    move-object v1, v3

    .line 14
    :goto_0
    if-eqz v1, :cond_1

    .line 15
    iget-object v1, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 17
    goto :goto_1

    .line 19
    :cond_1
    move-object v1, v3

    .line 20
    :goto_1
    if-ne v1, p1, :cond_2

    .line 21
    const/4 p1, 0x4

    .line 23
    goto :goto_2

    .line 24
    :cond_2
    iget p1, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    .line 25
    :goto_2
    invoke-virtual {p0, v0, p1, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeImpl(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V

    .line 27
    return-void
    .line 30
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 2
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lkotlinx/coroutines/CompletedExceptionally;

    .line 9
    const/4 v1, 0x0

    .line 11
    invoke-direct {p1, v0, v1}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;Z)V

    .line 12
    :goto_0
    iget v0, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    .line 15
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, p1, v0, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeImpl(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V

    .line 18
    return-void
    .line 21
.end method

.method public final takeState$external__kotlinx_coroutines__android_common__kotlinx_coroutines()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 2
    iget-object p0, p0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 4
    return-object p0
    .line 6
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->nameString()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    .line 6
    invoke-static {v1}, Lkotlinx/coroutines/DebugStringsKt;->toDebugString(Lkotlin/coroutines/Continuation;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 11
    iget-object v2, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 12
    iget-object v2, v2, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 14
    instance-of v3, v2, Lkotlinx/coroutines/NotCompleted;

    .line 16
    if-eqz v3, :cond_0

    .line 18
    const-string v2, "Active"

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    instance-of v2, v2, Lkotlinx/coroutines/CancelledContinuation;

    .line 23
    if-eqz v2, :cond_1

    .line 25
    const-string v2, "Cancelled"

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    const-string v2, "Completed"

    .line 30
    :goto_0
    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v0, "("

    .line 44
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v0, "){"

    .line 52
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string/jumbo v0, "}@"

    .line 60
    invoke-static {v3, v0, p0}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 66
    return-object p0
    .line 67
.end method

.method public final tryResumeImpl(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/Symbol;
    .locals 5

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 2
    :cond_0
    iget-object v1, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 4
    instance-of v2, v1, Lkotlinx/coroutines/NotCompleted;

    .line 6
    sget-object v3, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    .line 8
    if-eqz v2, :cond_2

    .line 10
    move-object v2, v1

    .line 12
    check-cast v2, Lkotlinx/coroutines/NotCompleted;

    .line 13
    iget v4, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    .line 15
    invoke-static {v2, p1, v4, p3, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumedState(Lkotlinx/coroutines/NotCompleted;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;)Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 20
    iget-object v4, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 21
    invoke-virtual {v4, v1, v2}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->isReusable()Z

    .line 29
    move-result p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChild$external__kotlinx_coroutines__android_common__kotlinx_coroutines()V

    .line 35
    :cond_1
    return-object v3

    .line 38
    :cond_2
    instance-of p0, v1, Lkotlinx/coroutines/CompletedContinuation;

    .line 39
    const/4 p1, 0x0

    .line 41
    if-eqz p0, :cond_4

    .line 42
    if-eqz p2, :cond_3

    .line 44
    check-cast v1, Lkotlinx/coroutines/CompletedContinuation;

    .line 46
    iget-object p0, v1, Lkotlinx/coroutines/CompletedContinuation;->idempotentResume:Ljava/lang/Object;

    .line 48
    if-ne p0, p2, :cond_3

    .line 50
    goto :goto_0

    .line 52
    :cond_3
    move-object v3, p1

    .line 53
    :goto_0
    return-object v3

    .line 54
    :cond_4
    return-object p1
    .line 55
.end method
