.class public final Lkotlinx/coroutines/channels/AbstractChannel$onReceiveCatching$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlinx/coroutines/selects/SelectClause1;


# instance fields
.field public final synthetic this$0:Lkotlinx/coroutines/channels/AbstractChannel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/AbstractChannel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/channels/AbstractChannel$onReceiveCatching$1;->this$0:Lkotlinx/coroutines/channels/AbstractChannel;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final registerSelectClause1(Lkotlinx/coroutines/selects/SelectBuilderImpl;Lkotlin/jvm/functions/Function2;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/channels/AbstractChannel$onReceiveCatching$1;->this$0:Lkotlinx/coroutines/channels/AbstractChannel;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->isSelected()Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    goto :goto_2

    .line 13
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    .line 14
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 16
    move-result-object v0

    .line 19
    instance-of v0, v0, Lkotlinx/coroutines/channels/Send;

    .line 20
    if-nez v0, :cond_2

    .line 22
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->isBufferEmpty()Z

    .line 24
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    const/4 v0, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    const/4 v0, 0x0

    .line 32
    :goto_1
    if-eqz v0, :cond_4

    .line 33
    new-instance v0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveSelect;

    .line 35
    invoke-direct {v0, p2, p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveSelect;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/selects/SelectBuilderImpl;)V

    .line 37
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/AbstractChannel;->enqueueReceiveInternal(Lkotlinx/coroutines/channels/Receive;)Z

    .line 40
    move-result v1

    .line 43
    if-eqz v1, :cond_3

    .line 44
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->disposeOnSelect(Lkotlinx/coroutines/DisposableHandle;)V

    .line 46
    :cond_3
    if-eqz v1, :cond_0

    .line 49
    goto :goto_2

    .line 51
    :cond_4
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->pollSelectInternal(Lkotlinx/coroutines/selects/SelectBuilderImpl;)Ljava/lang/Object;

    .line 52
    move-result-object v0

    .line 55
    sget-object v1, Lkotlinx/coroutines/selects/SelectKt;->ALREADY_SELECTED:Lkotlinx/coroutines/internal/Symbol;

    .line 56
    if-ne v0, v1, :cond_5

    .line 58
    :goto_2
    return-void

    .line 60
    :cond_5
    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 61
    if-eq v0, v1, :cond_0

    .line 63
    sget-object v1, Lkotlinx/coroutines/internal/AtomicKt;->RETRY_ATOMIC:Lkotlinx/coroutines/internal/Symbol;

    .line 65
    if-eq v0, v1, :cond_0

    .line 67
    instance-of v1, v0, Lkotlinx/coroutines/channels/Closed;

    .line 69
    if-eqz v1, :cond_7

    .line 71
    invoke-virtual {p1}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->trySelect()Z

    .line 73
    move-result v1

    .line 76
    if-nez v1, :cond_6

    .line 77
    goto :goto_0

    .line 79
    :cond_6
    check-cast v0, Lkotlinx/coroutines/channels/Closed;

    .line 80
    iget-object v0, v0, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    .line 82
    new-instance v1, Lkotlinx/coroutines/channels/ChannelResult$Closed;

    .line 84
    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelResult$Closed;-><init>(Ljava/lang/Throwable;)V

    .line 86
    new-instance v0, Lkotlinx/coroutines/channels/ChannelResult;

    .line 89
    invoke-direct {v0, v1}, Lkotlinx/coroutines/channels/ChannelResult;-><init>(Ljava/lang/Object;)V

    .line 91
    invoke-static {v0, p1, p2}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->startCoroutineUnintercepted(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectBuilderImpl;Lkotlin/jvm/functions/Function2;)V

    .line 94
    goto :goto_0

    .line 97
    :cond_7
    if-eqz v1, :cond_8

    .line 98
    check-cast v0, Lkotlinx/coroutines/channels/Closed;

    .line 100
    iget-object v0, v0, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    .line 102
    new-instance v1, Lkotlinx/coroutines/channels/ChannelResult$Closed;

    .line 104
    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelResult$Closed;-><init>(Ljava/lang/Throwable;)V

    .line 106
    move-object v0, v1

    .line 109
    :cond_8
    new-instance v1, Lkotlinx/coroutines/channels/ChannelResult;

    .line 110
    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelResult;-><init>(Ljava/lang/Object;)V

    .line 112
    invoke-static {v1, p1, p2}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->startCoroutineUnintercepted(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectBuilderImpl;Lkotlin/jvm/functions/Function2;)V

    .line 115
    goto :goto_0
    .line 118
.end method
