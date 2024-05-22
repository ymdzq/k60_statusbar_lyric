.class public abstract Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public atomicOp:Lkotlinx/coroutines/internal/AtomicOp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final prepare(Lkotlinx/coroutines/internal/AtomicOp;)Ljava/lang/Object;
    .locals 8

    .line 1
    :cond_0
    :goto_0
    move-object v0, p0

    .line 2
    check-cast v0, Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;

    .line 3
    iget-object v1, v0, Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 5
    iget-object v1, v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next:Lkotlinx/atomicfu/AtomicRef;

    .line 7
    :goto_1
    iget-object v2, v1, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 9
    instance-of v3, v2, Lkotlinx/coroutines/internal/OpDescriptor;

    .line 11
    const/4 v4, 0x0

    .line 13
    if-eqz v3, :cond_2

    .line 14
    check-cast v2, Lkotlinx/coroutines/internal/OpDescriptor;

    .line 16
    invoke-virtual {p1, v2}, Lkotlinx/coroutines/internal/OpDescriptor;->isEarlierThan(Lkotlinx/coroutines/internal/OpDescriptor;)Z

    .line 18
    move-result v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    move-object v2, v4

    .line 24
    goto :goto_2

    .line 25
    :cond_1
    iget-object v3, v0, Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 26
    invoke-virtual {v2, v3}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    goto :goto_1

    .line 31
    :cond_2
    check-cast v2, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 32
    :goto_2
    sget-object v0, Lkotlinx/coroutines/internal/AtomicKt;->RETRY_ATOMIC:Lkotlinx/coroutines/internal/Symbol;

    .line 34
    if-nez v2, :cond_3

    .line 36
    return-object v0

    .line 38
    :cond_3
    iget-object v1, v2, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next:Lkotlinx/atomicfu/AtomicRef;

    .line 39
    iget-object v1, v1, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 41
    if-ne v1, p1, :cond_4

    .line 43
    return-object v4

    .line 45
    :cond_4
    iget-object v3, p1, Lkotlinx/coroutines/internal/AtomicOp;->_consensus:Lkotlinx/atomicfu/AtomicRef;

    .line 46
    iget-object v3, v3, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 48
    sget-object v5, Lkotlinx/coroutines/internal/AtomicKt;->NO_DECISION:Lkotlinx/coroutines/internal/Symbol;

    .line 50
    const/4 v6, 0x1

    .line 52
    const/4 v7, 0x0

    .line 53
    if-eq v3, v5, :cond_5

    .line 54
    move v3, v6

    .line 56
    goto :goto_3

    .line 57
    :cond_5
    move v3, v7

    .line 58
    :goto_3
    if-eqz v3, :cond_6

    .line 59
    return-object v4

    .line 61
    :cond_6
    instance-of v3, v1, Lkotlinx/coroutines/internal/OpDescriptor;

    .line 62
    if-eqz v3, :cond_8

    .line 64
    check-cast v1, Lkotlinx/coroutines/internal/OpDescriptor;

    .line 66
    invoke-virtual {p1, v1}, Lkotlinx/coroutines/internal/OpDescriptor;->isEarlierThan(Lkotlinx/coroutines/internal/OpDescriptor;)Z

    .line 68
    move-result v3

    .line 71
    if-eqz v3, :cond_7

    .line 72
    return-object v0

    .line 74
    :cond_7
    invoke-virtual {v1, v2}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    goto :goto_0

    .line 78
    :cond_8
    instance-of v0, v2, Lkotlinx/coroutines/channels/Closed;

    .line 79
    if-eqz v0, :cond_9

    .line 81
    move-object v0, v2

    .line 83
    goto :goto_4

    .line 84
    :cond_9
    instance-of v0, v2, Lkotlinx/coroutines/channels/Send;

    .line 85
    if-nez v0, :cond_a

    .line 87
    sget-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 89
    goto :goto_4

    .line 91
    :cond_a
    move-object v0, v4

    .line 92
    :goto_4
    if-eqz v0, :cond_b

    .line 93
    return-object v0

    .line 95
    :cond_b
    instance-of v0, v1, Lkotlinx/coroutines/internal/Removed;

    .line 96
    if-nez v0, :cond_c

    .line 98
    move v6, v7

    .line 100
    goto :goto_5

    .line 101
    :cond_c
    move-object v0, v1

    .line 102
    check-cast v0, Lkotlinx/coroutines/internal/Removed;

    .line 103
    iget-object v0, v0, Lkotlinx/coroutines/internal/Removed;->ref:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 105
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->helpRemovePrev()V

    .line 107
    :goto_5
    if-nez v6, :cond_0

    .line 110
    new-instance v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;

    .line 112
    move-object v3, v1

    .line 114
    check-cast v3, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 115
    invoke-direct {v0, v2, v3, p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;)V

    .line 117
    iget-object v3, v2, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next:Lkotlinx/atomicfu/AtomicRef;

    .line 120
    invoke-virtual {v3, v1, v0}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    move-result v3

    .line 125
    if-eqz v3, :cond_0

    .line 126
    :try_start_0
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    move-result-object v3

    .line 131
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedList_commonKt;->REMOVE_PREPARED:Lkotlinx/coroutines/internal/Symbol;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    if-eq v3, v0, :cond_0

    .line 134
    return-object v4

    .line 136
    :catchall_0
    move-exception p0

    .line 137
    iget-object p1, v2, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next:Lkotlinx/atomicfu/AtomicRef;

    .line 138
    invoke-virtual {p1, v0, v1}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    throw p0
    .line 143
.end method
