.class public abstract Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final _next:Lkotlinx/atomicfu/AtomicRef;

.field public final _prev:Lkotlinx/atomicfu/AtomicRef;

.field public final _removedRef:Lkotlinx/atomicfu/AtomicRef;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    .line 5
    move-result-object v0

    .line 8
    iput-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next:Lkotlinx/atomicfu/AtomicRef;

    .line 9
    invoke-static {p0}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    .line 11
    move-result-object v0

    .line 14
    iput-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev:Lkotlinx/atomicfu/AtomicRef;

    .line 15
    const/4 v0, 0x0

    .line 17
    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    .line 18
    move-result-object v0

    .line 21
    iput-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_removedRef:Lkotlinx/atomicfu/AtomicRef;

    .line 22
    return-void
    .line 24
.end method


# virtual methods
.method public final addNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListHead;)Z
    .locals 1

    .line 1
    iget-object v0, p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev:Lkotlinx/atomicfu/AtomicRef;

    .line 2
    invoke-virtual {v0, p0}, Lkotlinx/atomicfu/AtomicRef;->lazySet(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next:Lkotlinx/atomicfu/AtomicRef;

    .line 7
    invoke-virtual {v0, p2}, Lkotlinx/atomicfu/AtomicRef;->lazySet(Ljava/lang/Object;)V

    .line 9
    iget-object p0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next:Lkotlinx/atomicfu/AtomicRef;

    .line 12
    invoke-virtual {p0, p2, p1}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    move-result p0

    .line 17
    if-nez p0, :cond_0

    .line 18
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :cond_0
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->finishAdd(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    .line 22
    const/4 p0, 0x1

    .line 25
    return p0
    .line 26
.end method

.method public final correctPrev()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .locals 7

    .line 1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev:Lkotlinx/atomicfu/AtomicRef;

    .line 2
    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 4
    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 6
    move-object v1, v0

    .line 8
    :goto_1
    const/4 v2, 0x0

    .line 9
    move-object v3, v2

    .line 10
    :goto_2
    iget-object v4, v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next:Lkotlinx/atomicfu/AtomicRef;

    .line 11
    iget-object v4, v4, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 13
    if-ne v4, p0, :cond_2

    .line 15
    if-ne v0, v1, :cond_0

    .line 17
    return-object v1

    .line 19
    :cond_0
    iget-object v2, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev:Lkotlinx/atomicfu/AtomicRef;

    .line 20
    invoke-virtual {v2, v0, v1}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    return-object v1

    .line 29
    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->isRemoved()Z

    .line 30
    move-result v5

    .line 33
    if-eqz v5, :cond_3

    .line 34
    return-object v2

    .line 36
    :cond_3
    if-nez v4, :cond_4

    .line 37
    return-object v1

    .line 39
    :cond_4
    instance-of v5, v4, Lkotlinx/coroutines/internal/OpDescriptor;

    .line 40
    if-eqz v5, :cond_5

    .line 42
    check-cast v4, Lkotlinx/coroutines/internal/OpDescriptor;

    .line 44
    invoke-virtual {v4, v1}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    goto :goto_0

    .line 49
    :cond_5
    instance-of v5, v4, Lkotlinx/coroutines/internal/Removed;

    .line 50
    if-eqz v5, :cond_8

    .line 52
    if-eqz v3, :cond_7

    .line 54
    iget-object v2, v3, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next:Lkotlinx/atomicfu/AtomicRef;

    .line 56
    check-cast v4, Lkotlinx/coroutines/internal/Removed;

    .line 58
    iget-object v4, v4, Lkotlinx/coroutines/internal/Removed;->ref:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 60
    invoke-virtual {v2, v1, v4}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    goto :goto_0

    .line 68
    :cond_6
    move-object v1, v3

    .line 69
    goto :goto_1

    .line 70
    :cond_7
    iget-object v1, v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev:Lkotlinx/atomicfu/AtomicRef;

    .line 71
    iget-object v1, v1, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 73
    check-cast v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 75
    goto :goto_2

    .line 77
    :cond_8
    move-object v3, v4

    .line 78
    check-cast v3, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 79
    move-object v6, v3

    .line 81
    move-object v3, v1

    .line 82
    move-object v1, v6

    .line 83
    goto :goto_2
    .line 84
.end method

.method public dispose()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->remove$1()Z

    .line 2
    return-void
    .line 5
.end method

.method public final finishAdd(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev:Lkotlinx/atomicfu/AtomicRef;

    .line 2
    :cond_0
    iget-object v1, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 4
    check-cast v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 6
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    .line 8
    move-result-object v2

    .line 11
    if-eq v2, p1, :cond_1

    .line 12
    return-void

    .line 14
    :cond_1
    iget-object v2, p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev:Lkotlinx/atomicfu/AtomicRef;

    .line 15
    invoke-virtual {v2, v1, p0}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->isRemoved()Z

    .line 23
    move-result p0

    .line 26
    if-eqz p0, :cond_2

    .line 27
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->correctPrev()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 29
    :cond_2
    return-void
.end method

.method public final getNext()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next:Lkotlinx/atomicfu/AtomicRef;

    .line 2
    :goto_0
    iget-object v1, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 4
    instance-of v2, v1, Lkotlinx/coroutines/internal/OpDescriptor;

    .line 6
    if-nez v2, :cond_0

    .line 8
    return-object v1

    .line 10
    :cond_0
    check-cast v1, Lkotlinx/coroutines/internal/OpDescriptor;

    .line 11
    invoke-virtual {v1, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    goto :goto_0
    .line 16
.end method

.method public final getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    .line 2
    move-result-object p0

    .line 5
    instance-of v0, p0, Lkotlinx/coroutines/internal/Removed;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    move-object v0, p0

    .line 10
    check-cast v0, Lkotlinx/coroutines/internal/Removed;

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    iget-object v0, v0, Lkotlinx/coroutines/internal/Removed;->ref:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 17
    if-nez v0, :cond_2

    .line 19
    :cond_1
    move-object v0, p0

    .line 21
    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 22
    :cond_2
    return-object v0
    .line 24
.end method

.method public final getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->correctPrev()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 2
    move-result-object v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    iget-object p0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev:Lkotlinx/atomicfu/AtomicRef;

    .line 8
    iget-object p0, p0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 10
    check-cast p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 12
    move-object v0, p0

    .line 14
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->isRemoved()Z

    .line 15
    move-result p0

    .line 18
    if-nez p0, :cond_0

    .line 19
    goto :goto_1

    .line 21
    :cond_0
    iget-object p0, v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev:Lkotlinx/atomicfu/AtomicRef;

    .line 22
    iget-object p0, p0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 24
    move-object v0, p0

    .line 26
    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    :goto_1
    return-object v0
    .line 30
.end method

.method public final helpRemovePrev()V
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    .line 2
    move-result-object v0

    .line 5
    instance-of v1, v0, Lkotlinx/coroutines/internal/Removed;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    check-cast v0, Lkotlinx/coroutines/internal/Removed;

    .line 10
    iget-object p0, v0, Lkotlinx/coroutines/internal/Removed;->ref:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->correctPrev()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 15
    return-void
    .line 18
.end method

.method public isRemoved()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    .line 2
    move-result-object p0

    .line 5
    instance-of p0, p0, Lkotlinx/coroutines/internal/Removed;

    .line 6
    return p0
    .line 8
.end method

.method public remove$1()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->removeOrNext()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 2
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
    .line 11
.end method

.method public final removeOrNext()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .locals 4

    .line 1
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    .line 2
    move-result-object v0

    .line 5
    instance-of v1, v0, Lkotlinx/coroutines/internal/Removed;

    .line 6
    if-eqz v1, :cond_1

    .line 8
    check-cast v0, Lkotlinx/coroutines/internal/Removed;

    .line 10
    iget-object p0, v0, Lkotlinx/coroutines/internal/Removed;->ref:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 12
    return-object p0

    .line 14
    :cond_1
    if-ne v0, p0, :cond_2

    .line 15
    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 17
    return-object v0

    .line 19
    :cond_2
    move-object v1, v0

    .line 20
    check-cast v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 21
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->removed()Lkotlinx/coroutines/internal/Removed;

    .line 23
    move-result-object v2

    .line 26
    iget-object v3, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next:Lkotlinx/atomicfu/AtomicRef;

    .line 27
    invoke-virtual {v3, v0, v2}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->correctPrev()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 35
    const/4 p0, 0x0

    .line 38
    return-object p0
    .line 39
.end method

.method public final removed()Lkotlinx/coroutines/internal/Removed;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_removedRef:Lkotlinx/atomicfu/AtomicRef;

    .line 2
    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 4
    check-cast v0, Lkotlinx/coroutines/internal/Removed;

    .line 6
    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lkotlinx/coroutines/internal/Removed;

    .line 10
    invoke-direct {v0, p0}, Lkotlinx/coroutines/internal/Removed;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    .line 12
    iget-object p0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_removedRef:Lkotlinx/atomicfu/AtomicRef;

    .line 15
    invoke-virtual {p0, v0}, Lkotlinx/atomicfu/AtomicRef;->lazySet(Ljava/lang/Object;)V

    .line 17
    :cond_0
    return-object v0
    .line 20
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;

    .line 2
    invoke-direct {v0, p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string v0, "@"

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 30
    return-object p0
    .line 31
.end method

.method public final tryCondAddNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;)I
    .locals 1

    .line 1
    iget-object v0, p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev:Lkotlinx/atomicfu/AtomicRef;

    .line 2
    invoke-virtual {v0, p0}, Lkotlinx/atomicfu/AtomicRef;->lazySet(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next:Lkotlinx/atomicfu/AtomicRef;

    .line 7
    invoke-virtual {p1, p2}, Lkotlinx/atomicfu/AtomicRef;->lazySet(Ljava/lang/Object;)V

    .line 9
    iput-object p2, p3, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;->oldNext:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 12
    iget-object p1, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next:Lkotlinx/atomicfu/AtomicRef;

    .line 14
    invoke-virtual {p1, p2, p3}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :cond_0
    invoke-virtual {p3, p0}, Lkotlinx/coroutines/internal/AtomicOp;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 27
    if-nez p0, :cond_1

    .line 28
    const/4 p0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p0, 0x2

    .line 32
    :goto_0
    return p0
    .line 33
.end method
