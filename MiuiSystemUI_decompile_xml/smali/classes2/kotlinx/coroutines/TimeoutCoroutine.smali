.class public final Lkotlinx/coroutines/TimeoutCoroutine;
.super Lkotlinx/coroutines/internal/ScopeCoroutine;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final time:J


# direct methods
.method public constructor <init>(JLkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    invoke-interface {p3}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 2
    move-result-object v0

    .line 5
    invoke-direct {p0, p3, v0}, Lkotlinx/coroutines/internal/ScopeCoroutine;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;)V

    .line 6
    iput-wide p1, p0, Lkotlinx/coroutines/TimeoutCoroutine;->time:J

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final nameString$external__kotlinx_coroutines__android_common__kotlinx_coroutines()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    iget-wide v1, p0, Lkotlinx/coroutines/TimeoutCoroutine;->time:J

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v0, "(timeMillis="

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    const-string v0, ")"

    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 32
    return-object p0
    .line 33
.end method

.method public final run()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lkotlinx/coroutines/TimeoutCoroutine;->time:J

    .line 2
    new-instance v2, Lkotlinx/coroutines/TimeoutCancellationException;

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 6
    const-string v4, "Timed out waiting for "

    .line 8
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    const-string v0, " ms"

    .line 16
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 24
    invoke-direct {v2, v0, p0}, Lkotlinx/coroutines/TimeoutCancellationException;-><init>(Ljava/lang/String;Lkotlinx/coroutines/Job;)V

    .line 25
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/JobSupport;->cancelImpl$external__kotlinx_coroutines__android_common__kotlinx_coroutines(Ljava/lang/Object;)Z

    .line 28
    return-void
    .line 31
.end method
