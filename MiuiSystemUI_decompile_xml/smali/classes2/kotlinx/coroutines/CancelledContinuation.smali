.class public final Lkotlinx/coroutines/CancelledContinuation;
.super Lkotlinx/coroutines/CompletedExceptionally;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final _resumed:Lkotlinx/atomicfu/AtomicBoolean;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Ljava/lang/Throwable;Z)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    new-instance p2, Ljava/util/concurrent/CancellationException;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string v1, "Continuation "

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string p1, " was cancelled normally"

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 24
    invoke-direct {p2, p1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 25
    :cond_0
    invoke-direct {p0, p2, p3}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;Z)V

    .line 28
    const/4 p1, 0x0

    .line 31
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Z)Lkotlinx/atomicfu/AtomicBoolean;

    .line 32
    move-result-object p1

    .line 35
    iput-object p1, p0, Lkotlinx/coroutines/CancelledContinuation;->_resumed:Lkotlinx/atomicfu/AtomicBoolean;

    .line 36
    return-void
    .line 38
.end method
