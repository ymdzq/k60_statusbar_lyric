.class public final Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;
.super Lkotlinx/coroutines/internal/OpDescriptor;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final affected:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

.field public final desc:Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;

.field public final next:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/OpDescriptor;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->affected:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 5
    iput-object p2, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->next:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 7
    iput-object p3, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->desc:Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final finishPrepare()V
    .locals 4

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->desc:Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;

    .line 2
    check-cast v0, Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object v1, v0, Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;->_affectedNode:Lkotlinx/atomicfu/AtomicRef;

    .line 9
    const/4 v2, 0x0

    .line 11
    iget-object v3, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->affected:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 12
    invoke-virtual {v1, v2, v3}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    iget-object v0, v0, Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;->_originalNext:Lkotlinx/atomicfu/AtomicRef;

    .line 17
    iget-object p0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->next:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 19
    invoke-virtual {v0, v2, p0}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    return-void
    .line 24
.end method

.method public final getAtomicOp()Lkotlinx/coroutines/internal/AtomicOp;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->desc:Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;

    .line 2
    iget-object p0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;->atomicOp:Lkotlinx/coroutines/internal/AtomicOp;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return-object p0
    .line 10
.end method

.method public final perform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->desc:Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;

    .line 4
    check-cast v0, Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->affected:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 11
    check-cast v0, Lkotlinx/coroutines/channels/Send;

    .line 13
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/channels/Send;->tryResumeSend(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;

    .line 15
    move-result-object v0

    .line 18
    sget-object v1, Lkotlinx/coroutines/internal/LockFreeLinkedList_commonKt;->REMOVE_PREPARED:Lkotlinx/coroutines/internal/Symbol;

    .line 19
    const/4 v2, 0x0

    .line 21
    if-nez v0, :cond_0

    .line 22
    move-object v3, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sget-object v3, Lkotlinx/coroutines/internal/AtomicKt;->RETRY_ATOMIC:Lkotlinx/coroutines/internal/Symbol;

    .line 26
    if-ne v0, v3, :cond_1

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    move-object v3, v2

    .line 31
    :goto_0
    if-ne v3, v1, :cond_3

    .line 32
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->next:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 34
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->removed()Lkotlinx/coroutines/internal/Removed;

    .line 36
    move-result-object v2

    .line 39
    iget-object v3, p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next:Lkotlinx/atomicfu/AtomicRef;

    .line 40
    invoke-virtual {v3, p0, v2}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    iget-object p0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->desc:Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;

    .line 48
    check-cast p0, Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    check-cast p1, Lkotlinx/coroutines/channels/Send;

    .line 55
    invoke-virtual {p1}, Lkotlinx/coroutines/channels/Send;->undeliveredElement()V

    .line 57
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->correctPrev()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 60
    :cond_2
    return-object v1

    .line 63
    :cond_3
    if-eqz v3, :cond_4

    .line 64
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->getAtomicOp()Lkotlinx/coroutines/internal/AtomicOp;

    .line 66
    move-result-object v0

    .line 69
    invoke-virtual {v0, v3}, Lkotlinx/coroutines/internal/AtomicOp;->decide(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-result-object v0

    .line 73
    goto :goto_1

    .line 74
    :cond_4
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->getAtomicOp()Lkotlinx/coroutines/internal/AtomicOp;

    .line 75
    move-result-object v0

    .line 78
    iget-object v0, v0, Lkotlinx/coroutines/internal/AtomicOp;->_consensus:Lkotlinx/atomicfu/AtomicRef;

    .line 79
    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 81
    :goto_1
    sget-object v1, Lkotlinx/coroutines/internal/AtomicKt;->NO_DECISION:Lkotlinx/coroutines/internal/Symbol;

    .line 83
    if-ne v0, v1, :cond_5

    .line 85
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->getAtomicOp()Lkotlinx/coroutines/internal/AtomicOp;

    .line 87
    move-result-object v0

    .line 90
    goto :goto_2

    .line 91
    :cond_5
    if-nez v0, :cond_6

    .line 92
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->desc:Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;

    .line 94
    iget-object v1, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->next:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 96
    check-cast v0, Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;

    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->removed()Lkotlinx/coroutines/internal/Removed;

    .line 103
    move-result-object v0

    .line 106
    goto :goto_2

    .line 107
    :cond_6
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->next:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 108
    :goto_2
    iget-object p1, p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next:Lkotlinx/atomicfu/AtomicRef;

    .line 110
    invoke-virtual {p1, p0, v0}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    return-object v2
    .line 115
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->getAtomicOp()Lkotlinx/coroutines/internal/AtomicOp;

    .line 2
    move-result-object p0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string v1, "PrepareOp(op="

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string p0, ")"

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 24
    return-object p0
    .line 25
.end method
