.class public final Lkotlinx/coroutines/selects/SelectBuilderImpl;
.super Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlinx/coroutines/selects/SelectInstance;
.implements Lkotlin/coroutines/Continuation;
.implements Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;


# instance fields
.field public final _parentHandle:Lkotlinx/atomicfu/AtomicRef;

.field public final _result:Lkotlinx/atomicfu/AtomicRef;

.field public final _state:Lkotlinx/atomicfu/AtomicRef;

.field public final uCont:Lkotlin/coroutines/Continuation;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->uCont:Lkotlin/coroutines/Continuation;

    .line 5
    sget-object p1, Lkotlinx/coroutines/selects/SelectKt;->NOT_SELECTED:Lkotlinx/coroutines/internal/Symbol;

    .line 7
    new-instance v0, Lkotlinx/atomicfu/AtomicRef;

    .line 9
    invoke-direct {v0, p1}, Lkotlinx/atomicfu/AtomicRef;-><init>(Ljava/lang/Object;)V

    .line 11
    iput-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 14
    sget-object p1, Lkotlinx/coroutines/selects/SelectKt;->UNDECIDED:Lkotlinx/coroutines/internal/Symbol;

    .line 16
    new-instance v0, Lkotlinx/atomicfu/AtomicRef;

    .line 18
    invoke-direct {v0, p1}, Lkotlinx/atomicfu/AtomicRef;-><init>(Ljava/lang/Object;)V

    .line 20
    iput-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result:Lkotlinx/atomicfu/AtomicRef;

    .line 23
    new-instance p1, Lkotlinx/atomicfu/AtomicRef;

    .line 25
    const/4 v0, 0x0

    .line 27
    invoke-direct {p1, v0}, Lkotlinx/atomicfu/AtomicRef;-><init>(Ljava/lang/Object;)V

    .line 28
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_parentHandle:Lkotlinx/atomicfu/AtomicRef;

    .line 31
    return-void
    .line 33
.end method


# virtual methods
.method public final disposeOnSelect(Lkotlinx/coroutines/DisposableHandle;)V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/selects/SelectBuilderImpl$DisposeNode;

    .line 2
    invoke-direct {v0, p1}, Lkotlinx/coroutines/selects/SelectBuilderImpl$DisposeNode;-><init>(Lkotlinx/coroutines/DisposableHandle;)V

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->isSelected()Z

    .line 7
    move-result v1

    .line 10
    if-nez v1, :cond_1

    .line 11
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 13
    move-result-object v1

    .line 16
    invoke-virtual {v1, v0, p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->addNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListHead;)Z

    .line 17
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->isSelected()Z

    .line 23
    move-result p0

    .line 26
    if-nez p0, :cond_1

    .line 27
    return-void

    .line 29
    :cond_1
    invoke-interface {p1}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 30
    return-void
    .line 33
.end method

.method public final doAfterSelect()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_parentHandle:Lkotlinx/atomicfu/AtomicRef;

    .line 2
    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 4
    check-cast v0, Lkotlinx/coroutines/DisposableHandle;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 10
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 16
    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 17
    :goto_0
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 22
    if-nez v1, :cond_2

    .line 23
    instance-of v1, v0, Lkotlinx/coroutines/selects/SelectBuilderImpl$DisposeNode;

    .line 25
    if-eqz v1, :cond_1

    .line 27
    move-object v1, v0

    .line 29
    check-cast v1, Lkotlinx/coroutines/selects/SelectBuilderImpl$DisposeNode;

    .line 30
    iget-object v1, v1, Lkotlinx/coroutines/selects/SelectBuilderImpl$DisposeNode;->handle:Lkotlinx/coroutines/DisposableHandle;

    .line 32
    invoke-interface {v1}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 34
    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 37
    move-result-object v0

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return-void
    .line 42
.end method

.method public final getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .locals 1

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->uCont:Lkotlin/coroutines/Continuation;

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
    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->uCont:Lkotlin/coroutines/Continuation;

    .line 2
    invoke-interface {p0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->isSelected()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 8
    move-result-object v0

    .line 11
    sget-object v1, Lkotlinx/coroutines/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/Job$Key;

    .line 12
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lkotlinx/coroutines/Job;

    .line 18
    if-nez v0, :cond_0

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lkotlinx/coroutines/selects/SelectBuilderImpl$SelectOnCancelling;

    .line 23
    invoke-direct {v1, p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl$SelectOnCancelling;-><init>(Lkotlinx/coroutines/selects/SelectBuilderImpl;)V

    .line 25
    const/4 v2, 0x2

    .line 28
    const/4 v3, 0x1

    .line 29
    invoke-static {v0, v3, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZLkotlinx/coroutines/JobNode;I)Lkotlinx/coroutines/DisposableHandle;

    .line 30
    move-result-object v0

    .line 33
    iget-object v1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_parentHandle:Lkotlinx/atomicfu/AtomicRef;

    .line 34
    invoke-virtual {v1, v0}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->isSelected()Z

    .line 39
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 45
    :cond_1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result:Lkotlinx/atomicfu/AtomicRef;

    .line 48
    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 50
    sget-object v1, Lkotlinx/coroutines/selects/SelectKt;->UNDECIDED:Lkotlinx/coroutines/internal/Symbol;

    .line 52
    if-ne v0, v1, :cond_3

    .line 54
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result:Lkotlinx/atomicfu/AtomicRef;

    .line 56
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 58
    invoke-virtual {v0, v1, v2}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    return-object v2

    .line 66
    :cond_2
    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result:Lkotlinx/atomicfu/AtomicRef;

    .line 67
    iget-object v0, p0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 69
    :cond_3
    sget-object p0, Lkotlinx/coroutines/selects/SelectKt;->RESUMED:Lkotlinx/coroutines/internal/Symbol;

    .line 71
    if-eq v0, p0, :cond_5

    .line 73
    instance-of p0, v0, Lkotlinx/coroutines/CompletedExceptionally;

    .line 75
    if-nez p0, :cond_4

    .line 77
    return-object v0

    .line 79
    :cond_4
    check-cast v0, Lkotlinx/coroutines/CompletedExceptionally;

    .line 80
    iget-object p0, v0, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    .line 82
    throw p0

    .line 84
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 85
    const-string v0, "Already resumed"

    .line 87
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 89
    throw p0
    .line 92
.end method

.method public final isSelected()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 2
    :goto_0
    iget-object v1, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 4
    sget-object v2, Lkotlinx/coroutines/selects/SelectKt;->NOT_SELECTED:Lkotlinx/coroutines/internal/Symbol;

    .line 6
    if-ne v1, v2, :cond_0

    .line 8
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    instance-of v2, v1, Lkotlinx/coroutines/internal/OpDescriptor;

    .line 12
    if-eqz v2, :cond_1

    .line 14
    check-cast v1, Lkotlinx/coroutines/internal/OpDescriptor;

    .line 16
    invoke-virtual {v1, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    goto :goto_0

    .line 21
    :cond_1
    const/4 p0, 0x1

    .line 22
    return p0
    .line 23
.end method

.method public final onTimeout(JLkotlin/jvm/functions/Function1;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    cmp-long v0, p1, v0

    .line 4
    if-gtz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->trySelect()Z

    .line 8
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    const/4 p1, 0x1

    .line 14
    :try_start_0
    invoke-static {p1, p3}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    .line 15
    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 22
    if-eq p1, p2, :cond_0

    .line 24
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->resumeWith(Ljava/lang/Object;)V

    .line 26
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    new-instance p2, Lkotlin/Result$Failure;

    .line 31
    invoke-direct {p2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 33
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->resumeWith(Ljava/lang/Object;)V

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    new-instance v0, Lkotlinx/coroutines/selects/SelectBuilderImpl$onTimeout$$inlined$Runnable$1;

    .line 40
    invoke-direct {v0, p0, p3}, Lkotlinx/coroutines/selects/SelectBuilderImpl$onTimeout$$inlined$Runnable$1;-><init>(Lkotlinx/coroutines/selects/SelectBuilderImpl;Lkotlin/jvm/functions/Function1;)V

    .line 42
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 45
    move-result-object p3

    .line 48
    invoke-static {p3}, Lkotlinx/coroutines/DelayKt;->getDelay(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Delay;

    .line 49
    move-result-object p3

    .line 52
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 53
    move-result-object v1

    .line 56
    invoke-interface {p3, p1, p2, v0, v1}, Lkotlinx/coroutines/Delay;->invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/DisposableHandle;

    .line 57
    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->disposeOnSelect(Lkotlinx/coroutines/DisposableHandle;)V

    .line 61
    return-void
    .line 64
.end method

.method public final resumeSelectWithException(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result:Lkotlinx/atomicfu/AtomicRef;

    .line 2
    :cond_0
    iget-object v1, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 4
    sget-object v2, Lkotlinx/coroutines/selects/SelectKt;->UNDECIDED:Lkotlinx/coroutines/internal/Symbol;

    .line 6
    if-ne v1, v2, :cond_1

    .line 8
    new-instance v1, Lkotlinx/coroutines/CompletedExceptionally;

    .line 10
    const/4 v3, 0x0

    .line 12
    invoke-direct {v1, p1, v3}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;Z)V

    .line 13
    iget-object v3, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result:Lkotlinx/atomicfu/AtomicRef;

    .line 16
    invoke-virtual {v3, v2, v1}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    goto :goto_0

    .line 24
    :cond_1
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 25
    if-ne v1, v2, :cond_2

    .line 27
    iget-object v1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result:Lkotlinx/atomicfu/AtomicRef;

    .line 29
    sget-object v3, Lkotlinx/coroutines/selects/SelectKt;->RESUMED:Lkotlinx/coroutines/internal/Symbol;

    .line 31
    invoke-virtual {v1, v2, v3}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->uCont:Lkotlin/coroutines/Continuation;

    .line 39
    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 41
    move-result-object p0

    .line 44
    new-instance v0, Lkotlin/Result$Failure;

    .line 45
    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 47
    invoke-interface {p0, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 50
    :goto_0
    return-void

    .line 53
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 54
    const-string p1, "Already resumed"

    .line 56
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    throw p0
    .line 61
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result:Lkotlinx/atomicfu/AtomicRef;

    .line 2
    :cond_0
    iget-object v1, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 4
    sget-object v2, Lkotlinx/coroutines/selects/SelectKt;->UNDECIDED:Lkotlinx/coroutines/internal/Symbol;

    .line 6
    if-ne v1, v2, :cond_2

    .line 8
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 10
    move-result-object v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    move-object v3, p1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    new-instance v3, Lkotlinx/coroutines/CompletedExceptionally;

    .line 18
    const/4 v4, 0x0

    .line 20
    invoke-direct {v3, v1, v4}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;Z)V

    .line 21
    :goto_0
    iget-object v1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result:Lkotlinx/atomicfu/AtomicRef;

    .line 24
    invoke-virtual {v1, v2, v3}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    goto :goto_1

    .line 32
    :cond_2
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 33
    if-ne v1, v2, :cond_4

    .line 35
    iget-object v1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result:Lkotlinx/atomicfu/AtomicRef;

    .line 37
    sget-object v3, Lkotlinx/coroutines/selects/SelectKt;->RESUMED:Lkotlinx/coroutines/internal/Symbol;

    .line 39
    invoke-virtual {v1, v2, v3}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    instance-of v0, p1, Lkotlin/Result$Failure;

    .line 47
    if-eqz v0, :cond_3

    .line 49
    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->uCont:Lkotlin/coroutines/Continuation;

    .line 51
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 53
    move-result-object p1

    .line 56
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 57
    new-instance v0, Lkotlin/Result$Failure;

    .line 60
    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 62
    invoke-interface {p0, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 65
    goto :goto_1

    .line 68
    :cond_3
    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->uCont:Lkotlin/coroutines/Continuation;

    .line 69
    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 71
    :goto_1
    return-void

    .line 74
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 75
    const-string p1, "Already resumed"

    .line 77
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    throw p0
    .line 82
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 2
    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 4
    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_result:Lkotlinx/atomicfu/AtomicRef;

    .line 6
    iget-object p0, p0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    const-string v2, "SelectInstance(state="

    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    const-string v0, ", result="

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    const-string p0, ")"

    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 36
    return-object p0
    .line 37
.end method

.method public final trySelect()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->trySelectOther()Ljava/lang/Object;

    .line 2
    move-result-object p0

    .line 5
    sget-object v0, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    .line 6
    if-ne p0, v0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    if-nez p0, :cond_1

    .line 12
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0

    .line 15
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    const-string v2, "Unexpected trySelectIdempotent result "

    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 35
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    throw v0
    .line 39
.end method

.method public final trySelectOther()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 2
    :goto_0
    iget-object v1, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 4
    sget-object v2, Lkotlinx/coroutines/selects/SelectKt;->NOT_SELECTED:Lkotlinx/coroutines/internal/Symbol;

    .line 6
    sget-object v3, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    .line 8
    const/4 v4, 0x0

    .line 10
    if-ne v1, v2, :cond_1

    .line 11
    iget-object v1, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 13
    invoke-virtual {v1, v2, v4}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->doAfterSelect()V

    .line 22
    return-object v3

    .line 25
    :cond_1
    instance-of v2, v1, Lkotlinx/coroutines/internal/OpDescriptor;

    .line 26
    if-eqz v2, :cond_2

    .line 28
    check-cast v1, Lkotlinx/coroutines/internal/OpDescriptor;

    .line 30
    invoke-virtual {v1, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    goto :goto_0

    .line 35
    :cond_2
    return-object v4
    .line 36
.end method
