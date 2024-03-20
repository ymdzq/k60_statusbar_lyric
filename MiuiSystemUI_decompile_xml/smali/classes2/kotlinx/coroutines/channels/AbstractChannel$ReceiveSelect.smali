.class public final Lkotlinx/coroutines/channels/AbstractChannel$ReceiveSelect;
.super Lkotlinx/coroutines/channels/Receive;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;


# instance fields
.field public final block:Lkotlin/jvm/functions/Function2;

.field public final channel:Lkotlinx/coroutines/channels/AbstractChannel;

.field public final receiveMode:I

.field public final select:Lkotlinx/coroutines/selects/SelectInstance;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/selects/SelectBuilderImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/channels/Receive;-><init>()V

    .line 2
    iput-object p2, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveSelect;->channel:Lkotlinx/coroutines/channels/AbstractChannel;

    .line 5
    iput-object p3, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveSelect;->select:Lkotlinx/coroutines/selects/SelectInstance;

    .line 7
    iput-object p1, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveSelect;->block:Lkotlin/jvm/functions/Function2;

    .line 9
    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveSelect;->receiveMode:I

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final completeResumeReceive(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveSelect;->receiveMode:I

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
    iget-object v1, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveSelect;->select:Lkotlinx/coroutines/selects/SelectInstance;

    .line 14
    check-cast v1, Lkotlinx/coroutines/selects/SelectBuilderImpl;

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveSelect;->resumeOnCancellationFun(Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;

    .line 21
    move-result-object p1

    .line 24
    iget-object p0, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveSelect;->block:Lkotlin/jvm/functions/Function2;

    .line 25
    :try_start_0
    invoke-static {v0, v1, p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->createCoroutineUnintercepted(Ljava/lang/Object;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function2;)Lkotlin/coroutines/Continuation;

    .line 27
    move-result-object p0

    .line 30
    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 31
    move-result-object p0

    .line 34
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 35
    invoke-static {p0, v0, p1}, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->resumeCancellableWith(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    new-instance p1, Lkotlin/Result$Failure;

    .line 42
    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 44
    invoke-virtual {v1, p1}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->resumeWith(Ljava/lang/Object;)V

    .line 47
    throw p0
    .line 50
.end method

.method public final dispose()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->remove$1()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveSelect;->channel:Lkotlinx/coroutines/channels/AbstractChannel;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public final resumeOnCancellationFun(Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveSelect;->channel:Lkotlinx/coroutines/channels/AbstractChannel;

    .line 2
    iget-object v0, v0, Lkotlinx/coroutines/channels/AbstractSendChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveSelect;->select:Lkotlinx/coroutines/selects/SelectInstance;

    .line 8
    check-cast p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 15
    move-result-object p0

    .line 18
    invoke-static {v0, p1, p0}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->bindCancellationFun(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lkotlin/jvm/functions/Function1;

    .line 19
    move-result-object p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return-object p0
    .line 25
.end method

.method public final resumeReceiveClosed(Lkotlinx/coroutines/channels/Closed;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveSelect;->select:Lkotlinx/coroutines/selects/SelectInstance;

    .line 2
    check-cast v0, Lkotlinx/coroutines/selects/SelectBuilderImpl;

    .line 4
    invoke-virtual {v0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->trySelect()Z

    .line 6
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget v1, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveSelect;->receiveMode:I

    .line 13
    if-eqz v1, :cond_2

    .line 15
    const/4 v2, 0x1

    .line 17
    if-eq v1, v2, :cond_1

    .line 18
    goto :goto_0

    .line 20
    :cond_1
    iget-object p0, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveSelect;->block:Lkotlin/jvm/functions/Function2;

    .line 21
    new-instance v1, Lkotlinx/coroutines/channels/ChannelResult$Closed;

    .line 23
    iget-object p1, p1, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    .line 25
    invoke-direct {v1, p1}, Lkotlinx/coroutines/channels/ChannelResult$Closed;-><init>(Ljava/lang/Throwable;)V

    .line 27
    new-instance p1, Lkotlinx/coroutines/channels/ChannelResult;

    .line 30
    invoke-direct {p1, v1}, Lkotlinx/coroutines/channels/ChannelResult;-><init>(Ljava/lang/Object;)V

    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    :try_start_0
    invoke-static {p1, v0, p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->createCoroutineUnintercepted(Ljava/lang/Object;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function2;)Lkotlin/coroutines/Continuation;

    .line 38
    move-result-object p0

    .line 41
    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 42
    move-result-object p0

    .line 45
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 46
    const/4 v1, 0x0

    .line 48
    invoke-static {p0, p1, v1}, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->resumeCancellableWith(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    new-instance p1, Lkotlin/Result$Failure;

    .line 54
    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 56
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->resumeWith(Ljava/lang/Object;)V

    .line 59
    throw p0

    .line 62
    :cond_2
    iget-object p0, p1, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    .line 63
    if-nez p0, :cond_3

    .line 65
    new-instance p0, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;

    .line 67
    const-string p1, "Channel was closed"

    .line 69
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;-><init>(Ljava/lang/String;)V

    .line 71
    :cond_3
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->resumeSelectWithException(Ljava/lang/Throwable;)V

    .line 74
    :goto_0
    return-void
    .line 77
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    const-string v1, "ReceiveSelect@"

    .line 6
    const-string v2, "["

    .line 8
    invoke-static {v1, v0, v2}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    move-result-object v0

    .line 13
    iget-object v1, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveSelect;->select:Lkotlinx/coroutines/selects/SelectInstance;

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ",receiveMode="

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget p0, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveSelect;->receiveMode:I

    .line 24
    const-string v1, "]"

    .line 26
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public final tryResumeReceive(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Symbol;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveSelect;->select:Lkotlinx/coroutines/selects/SelectInstance;

    .line 2
    check-cast p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->trySelectOther()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lkotlinx/coroutines/internal/Symbol;

    .line 10
    return-object p0
    .line 12
.end method
