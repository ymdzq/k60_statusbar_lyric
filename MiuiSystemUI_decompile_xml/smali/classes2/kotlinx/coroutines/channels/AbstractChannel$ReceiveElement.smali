.class public Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;
.super Lkotlinx/coroutines/channels/Receive;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final cont:Lkotlinx/coroutines/CancellableContinuation;

.field public final receiveMode:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuationImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/channels/Receive;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;->cont:Lkotlinx/coroutines/CancellableContinuation;

    .line 5
    iput p2, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;->receiveMode:I

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final completeResumeReceive(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;->cont:Lkotlinx/coroutines/CancellableContinuation;

    .line 2
    check-cast p0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 4
    iget p1, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    .line 6
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->dispatchResume(I)V

    .line 8
    return-void
    .line 11
.end method

.method public final resumeReceiveClosed(Lkotlinx/coroutines/channels/Closed;)V
    .locals 2

    .line 1
    iget v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;->receiveMode:I

    .line 2
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;->cont:Lkotlinx/coroutines/CancellableContinuation;

    .line 5
    if-ne v0, v1, :cond_0

    .line 7
    new-instance v0, Lkotlinx/coroutines/channels/ChannelResult$Closed;

    .line 9
    iget-object p1, p1, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    .line 11
    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/ChannelResult$Closed;-><init>(Ljava/lang/Throwable;)V

    .line 13
    new-instance p1, Lkotlinx/coroutines/channels/ChannelResult;

    .line 16
    invoke-direct {p1, v0}, Lkotlinx/coroutines/channels/ChannelResult;-><init>(Ljava/lang/Object;)V

    .line 18
    check-cast p0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 21
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 23
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p1, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    .line 27
    if-nez p1, :cond_1

    .line 29
    new-instance p1, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;

    .line 31
    const-string v0, "Channel was closed"

    .line 33
    invoke-direct {p1, v0}, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;-><init>(Ljava/lang/String;)V

    .line 35
    :cond_1
    new-instance v0, Lkotlin/Result$Failure;

    .line 38
    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 40
    check-cast p0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 43
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 45
    :goto_0
    return-void
    .line 48
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    const-string v2, "ReceiveElement@"

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v0, "[receiveMode="

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget p0, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;->receiveMode:I

    .line 21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string p0, "]"

    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 34
    return-object p0
    .line 35
.end method

.method public final tryResumeReceive(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Symbol;
    .locals 2

    .line 1
    iget v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;->receiveMode:I

    .line 2
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    new-instance v0, Lkotlinx/coroutines/channels/ChannelResult;

    .line 7
    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/ChannelResult;-><init>(Ljava/lang/Object;)V

    .line 9
    goto :goto_0

    .line 12
    :cond_0
    move-object v0, p1

    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/Receive;->resumeOnCancellationFun(Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;

    .line 14
    move-result-object p1

    .line 17
    iget-object p0, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;->cont:Lkotlinx/coroutines/CancellableContinuation;

    .line 18
    check-cast p0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 20
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0, v0, v1, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->tryResumeImpl(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/Symbol;

    .line 23
    move-result-object p0

    .line 26
    if-nez p0, :cond_1

    .line 27
    return-object v1

    .line 29
    :cond_1
    sget-object p0, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    .line 30
    return-object p0
.end method
