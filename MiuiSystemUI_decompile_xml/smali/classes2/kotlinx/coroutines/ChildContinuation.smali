.class public final Lkotlinx/coroutines/ChildContinuation;
.super Lkotlinx/coroutines/JobCancellingNode;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final child:Lkotlinx/coroutines/CancellableContinuationImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/JobCancellingNode;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/ChildContinuation;->child:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/ChildContinuation;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 5

    .line 2
    iget-object p1, p0, Lkotlinx/coroutines/ChildContinuation;->child:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/JobNode;->getJob()Lkotlinx/coroutines/JobSupport;

    move-result-object p0

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContinuationCancellationCause(Lkotlinx/coroutines/JobSupport;)Ljava/lang/Throwable;

    move-result-object p0

    .line 3
    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->isReusable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p1, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    check-cast v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    .line 5
    iget-object v1, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation:Lkotlinx/atomicfu/AtomicRef;

    .line 6
    :cond_1
    iget-object v2, v1, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 7
    sget-object v3, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->REUSABLE_CLAIMED:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    iget-object v2, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v2, v3, p0}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 9
    :cond_2
    instance-of v3, v2, Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    .line 10
    :cond_3
    iget-object v3, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation:Lkotlinx/atomicfu/AtomicRef;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    goto :goto_3

    .line 11
    :cond_4
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->cancel(Ljava/lang/Throwable;)V

    .line 12
    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->isReusable()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChild$external__kotlinx_coroutines__android_common__kotlinx_coroutines()V

    :cond_5
    :goto_3
    return-void
.end method