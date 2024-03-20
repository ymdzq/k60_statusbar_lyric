.class public abstract Lkotlinx/coroutines/CancellableContinuationKt;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static final getOrCreateCancellableContinuation(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;
    .locals 7

    .line 1
    instance-of v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 7
    invoke-direct {v0, v1, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    return-object v0

    .line 12
    :cond_0
    move-object v0, p0

    .line 13
    check-cast v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    .line 14
    iget-object v2, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation:Lkotlinx/atomicfu/AtomicRef;

    .line 16
    :cond_1
    :goto_0
    iget-object v3, v2, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 18
    sget-object v4, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->REUSABLE_CLAIMED:Lkotlinx/coroutines/internal/Symbol;

    .line 20
    const/4 v5, 0x0

    .line 22
    if-nez v3, :cond_2

    .line 23
    iget-object v0, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation:Lkotlinx/atomicfu/AtomicRef;

    .line 25
    invoke-virtual {v0, v4}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    .line 27
    move-object v3, v5

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    instance-of v6, v3, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 32
    if-eqz v6, :cond_7

    .line 34
    iget-object v6, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation:Lkotlinx/atomicfu/AtomicRef;

    .line 36
    invoke-virtual {v6, v3, v4}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result v4

    .line 41
    if-eqz v4, :cond_1

    .line 42
    check-cast v3, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 44
    :goto_1
    if-eqz v3, :cond_6

    .line 46
    iget-object v0, v3, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 48
    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 50
    instance-of v2, v0, Lkotlinx/coroutines/CompletedContinuation;

    .line 52
    const/4 v4, 0x0

    .line 54
    if-eqz v2, :cond_3

    .line 55
    check-cast v0, Lkotlinx/coroutines/CompletedContinuation;

    .line 57
    iget-object v0, v0, Lkotlinx/coroutines/CompletedContinuation;->idempotentResume:Ljava/lang/Object;

    .line 59
    if-eqz v0, :cond_3

    .line 61
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChild$external__kotlinx_coroutines__android_common__kotlinx_coroutines()V

    .line 63
    move v1, v4

    .line 66
    goto :goto_2

    .line 67
    :cond_3
    iget-object v0, v3, Lkotlinx/coroutines/CancellableContinuationImpl;->_decision:Lkotlinx/atomicfu/AtomicInt;

    .line 68
    invoke-virtual {v0, v4}, Lkotlinx/atomicfu/AtomicInt;->setValue(I)V

    .line 70
    iget-object v0, v3, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 73
    sget-object v2, Lkotlinx/coroutines/Active;->INSTANCE:Lkotlinx/coroutines/Active;

    .line 75
    invoke-virtual {v0, v2}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    .line 77
    :goto_2
    if-eqz v1, :cond_4

    .line 80
    move-object v5, v3

    .line 82
    :cond_4
    if-nez v5, :cond_5

    .line 83
    goto :goto_3

    .line 85
    :cond_5
    return-object v5

    .line 86
    :cond_6
    :goto_3
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 87
    const/4 v1, 0x2

    .line 89
    invoke-direct {v0, v1, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 90
    return-object v0

    .line 93
    :cond_7
    if-eq v3, v4, :cond_1

    .line 94
    instance-of v4, v3, Ljava/lang/Throwable;

    .line 96
    if-eqz v4, :cond_8

    .line 98
    goto :goto_0

    .line 100
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    const-string v1, "Inconsistent state "

    .line 105
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 120
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 121
    throw p0
    .line 124
.end method
