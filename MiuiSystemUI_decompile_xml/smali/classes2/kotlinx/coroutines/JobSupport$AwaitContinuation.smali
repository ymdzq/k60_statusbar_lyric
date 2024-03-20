.class public final Lkotlinx/coroutines/JobSupport$AwaitContinuation;
.super Lkotlinx/coroutines/CancellableContinuationImpl;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final job:Lkotlinx/coroutines/JobSupport;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/JobSupport;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 3
    iput-object p2, p0, Lkotlinx/coroutines/JobSupport$AwaitContinuation;->job:Lkotlinx/coroutines/JobSupport;

    .line 6
    return-void
    .line 8
.end method


# virtual methods
.method public final getContinuationCancellationCause(Lkotlinx/coroutines/JobSupport;)Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/JobSupport$AwaitContinuation;->job:Lkotlinx/coroutines/JobSupport;

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$external__kotlinx_coroutines__android_common__kotlinx_coroutines()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    instance-of v0, p0, Lkotlinx/coroutines/JobSupport$Finishing;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    move-object v0, p0

    .line 12
    check-cast v0, Lkotlinx/coroutines/JobSupport$Finishing;

    .line 13
    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport$Finishing;->getRootCause()Ljava/lang/Throwable;

    .line 15
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    return-object v0

    .line 21
    :cond_0
    instance-of v0, p0, Lkotlinx/coroutines/CompletedExceptionally;

    .line 22
    if-eqz v0, :cond_1

    .line 24
    check-cast p0, Lkotlinx/coroutines/CompletedExceptionally;

    .line 26
    iget-object p0, p0, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    .line 28
    return-object p0

    .line 30
    :cond_1
    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport;->getCancellationException()Ljava/util/concurrent/CancellationException;

    .line 31
    move-result-object p0

    .line 34
    return-object p0
    .line 35
.end method

.method public final nameString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "AwaitContinuation"

    .line 2
    return-object p0
    .line 4
.end method
