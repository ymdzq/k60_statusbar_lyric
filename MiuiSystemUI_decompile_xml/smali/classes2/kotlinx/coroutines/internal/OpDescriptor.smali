.class public abstract Lkotlinx/coroutines/internal/OpDescriptor;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public abstract getAtomicOp()Lkotlinx/coroutines/internal/AtomicOp;
.end method

.method public final isEarlierThan(Lkotlinx/coroutines/internal/OpDescriptor;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/OpDescriptor;->getAtomicOp()Lkotlinx/coroutines/internal/AtomicOp;

    .line 2
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    return v0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/OpDescriptor;->getAtomicOp()Lkotlinx/coroutines/internal/AtomicOp;

    .line 10
    move-result-object p1

    .line 13
    if-nez p1, :cond_1

    .line 14
    return v0

    .line 16
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/AtomicOp;->getOpSequence()J

    .line 17
    move-result-wide v1

    .line 20
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/AtomicOp;->getOpSequence()J

    .line 21
    move-result-wide p0

    .line 24
    cmp-long p0, v1, p0

    .line 25
    if-gez p0, :cond_2

    .line 27
    const/4 v0, 0x1

    .line 29
    :cond_2
    return v0
    .line 30
.end method

.method public abstract perform(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 9
    const-string v1, "@"

    .line 10
    invoke-static {v0, v1, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 15
    return-object p0
    .line 16
.end method
