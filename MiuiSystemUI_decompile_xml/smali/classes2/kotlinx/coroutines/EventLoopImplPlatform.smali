.class public abstract Lkotlinx/coroutines/EventLoopImplPlatform;
.super Lkotlinx/coroutines/CoroutineDispatcher;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public shared:Z

.field public unconfinedQueue:Lkotlinx/coroutines/internal/ArrayQueue;

.field public useCount:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/CoroutineDispatcher;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final decrementUseCount(Z)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lkotlinx/coroutines/EventLoopImplPlatform;->useCount:J

    .line 2
    if-eqz p1, :cond_0

    .line 4
    const-wide v2, 0x100000000L

    .line 6
    goto :goto_0

    .line 11
    :cond_0
    const-wide/16 v2, 0x1

    .line 12
    :goto_0
    sub-long/2addr v0, v2

    .line 14
    iput-wide v0, p0, Lkotlinx/coroutines/EventLoopImplPlatform;->useCount:J

    .line 15
    const-wide/16 v2, 0x0

    .line 17
    cmp-long p1, v0, v2

    .line 19
    if-lez p1, :cond_1

    .line 21
    goto :goto_1

    .line 23
    :cond_1
    iget-boolean p1, p0, Lkotlinx/coroutines/EventLoopImplPlatform;->shared:Z

    .line 24
    if-eqz p1, :cond_2

    .line 26
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoopImplPlatform;->shutdown()V

    .line 28
    :cond_2
    :goto_1
    return-void
    .line 31
.end method

.method public final dispatchUnconfined(Lkotlinx/coroutines/DispatchedTask;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplPlatform;->unconfinedQueue:Lkotlinx/coroutines/internal/ArrayQueue;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lkotlinx/coroutines/internal/ArrayQueue;

    .line 6
    invoke-direct {v0}, Lkotlinx/coroutines/internal/ArrayQueue;-><init>()V

    .line 8
    iput-object v0, p0, Lkotlinx/coroutines/EventLoopImplPlatform;->unconfinedQueue:Lkotlinx/coroutines/internal/ArrayQueue;

    .line 11
    :cond_0
    iget-object v1, v0, Lkotlinx/coroutines/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    .line 13
    iget p0, v0, Lkotlinx/coroutines/internal/ArrayQueue;->tail:I

    .line 15
    aput-object p1, v1, p0

    .line 17
    add-int/lit8 p0, p0, 0x1

    .line 19
    array-length p1, v1

    .line 21
    add-int/lit8 p1, p1, -0x1

    .line 22
    and-int/2addr p0, p1

    .line 24
    iput p0, v0, Lkotlinx/coroutines/internal/ArrayQueue;->tail:I

    .line 25
    iget v4, v0, Lkotlinx/coroutines/internal/ArrayQueue;->head:I

    .line 27
    if-ne p0, v4, :cond_1

    .line 29
    array-length p0, v1

    .line 31
    shl-int/lit8 p1, p0, 0x1

    .line 32
    new-array p1, p1, [Ljava/lang/Object;

    .line 34
    const/4 v3, 0x0

    .line 36
    const/4 v5, 0x0

    .line 37
    const/16 v6, 0xa

    .line 38
    move-object v2, p1

    .line 40
    invoke-static/range {v1 .. v6}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIII)V

    .line 41
    iget-object v5, v0, Lkotlinx/coroutines/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    .line 44
    array-length v1, v5

    .line 46
    iget v9, v0, Lkotlinx/coroutines/internal/ArrayQueue;->head:I

    .line 47
    sub-int v7, v1, v9

    .line 49
    const/4 v8, 0x0

    .line 51
    const/4 v10, 0x4

    .line 52
    move-object v6, p1

    .line 53
    invoke-static/range {v5 .. v10}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIII)V

    .line 54
    iput-object p1, v0, Lkotlinx/coroutines/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    .line 57
    const/4 p1, 0x0

    .line 59
    iput p1, v0, Lkotlinx/coroutines/internal/ArrayQueue;->head:I

    .line 60
    iput p0, v0, Lkotlinx/coroutines/internal/ArrayQueue;->tail:I

    .line 62
    :cond_1
    return-void
    .line 64
.end method

.method public abstract getThread()Ljava/lang/Thread;
.end method

.method public final incrementUseCount(Z)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lkotlinx/coroutines/EventLoopImplPlatform;->useCount:J

    .line 2
    if-eqz p1, :cond_0

    .line 4
    const-wide v2, 0x100000000L

    .line 6
    goto :goto_0

    .line 11
    :cond_0
    const-wide/16 v2, 0x1

    .line 12
    :goto_0
    add-long/2addr v2, v0

    .line 14
    iput-wide v2, p0, Lkotlinx/coroutines/EventLoopImplPlatform;->useCount:J

    .line 15
    if-nez p1, :cond_1

    .line 17
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lkotlinx/coroutines/EventLoopImplPlatform;->shared:Z

    .line 20
    :cond_1
    return-void
    .line 22
.end method

.method public final isUnconfinedLoopActive()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lkotlinx/coroutines/EventLoopImplPlatform;->useCount:J

    .line 2
    const-wide v2, 0x100000000L

    .line 4
    cmp-long p0, v0, v2

    .line 9
    if-ltz p0, :cond_0

    .line 11
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
    .line 16
.end method

.method public abstract processNextEvent()J
.end method

.method public final processUnconfinedEvent()Z
    .locals 6

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/EventLoopImplPlatform;->unconfinedQueue:Lkotlinx/coroutines/internal/ArrayQueue;

    .line 2
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    goto :goto_1

    .line 7
    :cond_0
    iget v1, p0, Lkotlinx/coroutines/internal/ArrayQueue;->head:I

    .line 8
    iget v2, p0, Lkotlinx/coroutines/internal/ArrayQueue;->tail:I

    .line 10
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    if-ne v1, v2, :cond_1

    .line 14
    goto :goto_0

    .line 16
    :cond_1
    iget-object v2, p0, Lkotlinx/coroutines/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    .line 17
    aget-object v5, v2, v1

    .line 19
    aput-object v4, v2, v1

    .line 21
    add-int/2addr v1, v3

    .line 23
    array-length v2, v2

    .line 24
    add-int/lit8 v2, v2, -0x1

    .line 25
    and-int/2addr v1, v2

    .line 27
    iput v1, p0, Lkotlinx/coroutines/internal/ArrayQueue;->head:I

    .line 28
    move-object v4, v5

    .line 30
    :goto_0
    check-cast v4, Lkotlinx/coroutines/DispatchedTask;

    .line 31
    if-nez v4, :cond_2

    .line 33
    goto :goto_1

    .line 35
    :cond_2
    invoke-virtual {v4}, Lkotlinx/coroutines/DispatchedTask;->run()V

    .line 36
    move v0, v3

    .line 39
    :goto_1
    return v0
    .line 40
.end method

.method public reschedule(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V
    .locals 0

    .line 1
    sget-object p0, Lkotlinx/coroutines/DefaultExecutor;->INSTANCE:Lkotlinx/coroutines/DefaultExecutor;

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/EventLoopImplBase;->schedule(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V

    .line 4
    return-void
    .line 7
.end method

.method public abstract shutdown()V
.end method
