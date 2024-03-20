.class public final Lkotlinx/coroutines/CompletableDeferredImpl;
.super Lkotlinx/coroutines/JobSupport;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlinx/coroutines/CompletableDeferred;
.implements Lkotlinx/coroutines/selects/SelectClause1;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/Job;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;-><init>(Z)V

    .line 3
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->initParentJob(Lkotlinx/coroutines/Job;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$external__kotlinx_coroutines__android_common__kotlinx_coroutines()Ljava/lang/Object;

    .line 2
    move-result-object v0

    .line 5
    instance-of v1, v0, Lkotlinx/coroutines/Incomplete;

    .line 6
    if-nez v1, :cond_2

    .line 8
    instance-of p0, v0, Lkotlinx/coroutines/CompletedExceptionally;

    .line 10
    if-nez p0, :cond_1

    .line 12
    invoke-static {v0}, Lkotlinx/coroutines/JobSupportKt;->unboxState(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    check-cast v0, Lkotlinx/coroutines/CompletedExceptionally;

    .line 19
    iget-object p0, v0, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    .line 21
    throw p0

    .line 23
    :cond_2
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->startInternal(Ljava/lang/Object;)I

    .line 24
    move-result v0

    .line 27
    if-ltz v0, :cond_0

    .line 28
    new-instance v0, Lkotlinx/coroutines/JobSupport$AwaitContinuation;

    .line 30
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 32
    move-result-object p1

    .line 35
    invoke-direct {v0, p1, p0}, Lkotlinx/coroutines/JobSupport$AwaitContinuation;-><init>(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/JobSupport;)V

    .line 36
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 39
    new-instance p1, Lkotlinx/coroutines/ResumeAwaitOnCompletion;

    .line 42
    invoke-direct {p1, v0}, Lkotlinx/coroutines/ResumeAwaitOnCompletion;-><init>(Lkotlinx/coroutines/JobSupport$AwaitContinuation;)V

    .line 44
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 47
    move-result-object p0

    .line 50
    new-instance p1, Lkotlinx/coroutines/DisposeOnCancel;

    .line 51
    invoke-direct {p1, p0}, Lkotlinx/coroutines/DisposeOnCancel;-><init>(Lkotlinx/coroutines/DisposableHandle;)V

    .line 53
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 56
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 59
    move-result-object p0

    .line 62
    :goto_0
    return-object p0
    .line 63
.end method

.method public final registerSelectClause1(Lkotlinx/coroutines/selects/SelectBuilderImpl;Lkotlin/jvm/functions/Function2;)V
    .locals 2

    .line 1
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$external__kotlinx_coroutines__android_common__kotlinx_coroutines()Ljava/lang/Object;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->isSelected()Z

    .line 6
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    goto :goto_0

    .line 12
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/Incomplete;

    .line 13
    if-nez v1, :cond_3

    .line 15
    invoke-virtual {p1}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->trySelect()Z

    .line 17
    move-result p0

    .line 20
    if-eqz p0, :cond_4

    .line 21
    instance-of p0, v0, Lkotlinx/coroutines/CompletedExceptionally;

    .line 23
    if-eqz p0, :cond_2

    .line 25
    check-cast v0, Lkotlinx/coroutines/CompletedExceptionally;

    .line 27
    iget-object p0, v0, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    .line 29
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->resumeSelectWithException(Ljava/lang/Throwable;)V

    .line 31
    goto :goto_0

    .line 34
    :cond_2
    invoke-static {v0}, Lkotlinx/coroutines/JobSupportKt;->unboxState(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 38
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->startCoroutineUnintercepted(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectBuilderImpl;Lkotlin/jvm/functions/Function2;)V

    .line 39
    goto :goto_0

    .line 42
    :cond_3
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->startInternal(Ljava/lang/Object;)I

    .line 43
    move-result v0

    .line 46
    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lkotlinx/coroutines/SelectAwaitOnCompletion;

    .line 49
    invoke-direct {v0, p1, p2}, Lkotlinx/coroutines/SelectAwaitOnCompletion;-><init>(Lkotlinx/coroutines/selects/SelectBuilderImpl;Lkotlin/jvm/functions/Function2;)V

    .line 51
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 54
    move-result-object p0

    .line 57
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->disposeOnSelect(Lkotlinx/coroutines/DisposableHandle;)V

    .line 58
    :cond_4
    :goto_0
    return-void
    .line 61
.end method
