.class public Lkotlinx/coroutines/channels/SendElement;
.super Lkotlinx/coroutines/channels/Send;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final cont:Lkotlinx/coroutines/CancellableContinuation;

.field public final pollResult:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuationImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/channels/Send;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/channels/SendElement;->pollResult:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lkotlinx/coroutines/channels/SendElement;->cont:Lkotlinx/coroutines/CancellableContinuation;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final completeResumeSend()V
    .locals 1

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/channels/SendElement;->cont:Lkotlinx/coroutines/CancellableContinuation;

    .line 2
    check-cast p0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 4
    iget v0, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    .line 6
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->dispatchResume(I)V

    .line 8
    return-void
    .line 11
.end method

.method public final getPollResult()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/channels/SendElement;->pollResult:Ljava/lang/Object;

    .line 2
    return-object p0
    .line 4
.end method

.method public final resumeSendClosed(Lkotlinx/coroutines/channels/Closed;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    .line 2
    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lkotlinx/coroutines/channels/ClosedSendChannelException;

    .line 6
    const-string v0, "Channel was closed"

    .line 8
    invoke-direct {p1, v0}, Lkotlinx/coroutines/channels/ClosedSendChannelException;-><init>(Ljava/lang/String;)V

    .line 10
    :cond_0
    new-instance v0, Lkotlin/Result$Failure;

    .line 13
    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 15
    iget-object p0, p0, Lkotlinx/coroutines/channels/SendElement;->cont:Lkotlinx/coroutines/CancellableContinuation;

    .line 18
    check-cast p0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 20
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 22
    return-void
    .line 25
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v0, "@"

    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v0, "("

    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object p0, p0, Lkotlinx/coroutines/channels/SendElement;->pollResult:Ljava/lang/Object;

    .line 31
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    const-string p0, ")"

    .line 36
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 44
    return-object p0
    .line 45
.end method

.method public final tryResumeSend(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;
    .locals 3

    .line 1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    iget-object v2, p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->desc:Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    move-object v2, v1

    .line 10
    :goto_0
    iget-object p0, p0, Lkotlinx/coroutines/channels/SendElement;->cont:Lkotlinx/coroutines/CancellableContinuation;

    .line 11
    check-cast p0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 13
    invoke-virtual {p0, v0, v2, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->tryResumeImpl(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/Symbol;

    .line 15
    move-result-object p0

    .line 18
    if-nez p0, :cond_1

    .line 19
    return-object v1

    .line 21
    :cond_1
    if-eqz p1, :cond_2

    .line 22
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->finishPrepare()V

    .line 24
    :cond_2
    sget-object p0, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    .line 27
    return-object p0
    .line 29
.end method
