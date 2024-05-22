.class public final Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final _size:Lkotlinx/atomicfu/AtomicInt;

.field public a:[Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

.field public timeNow:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lkotlinx/atomicfu/AtomicInt;

    .line 5
    invoke-direct {v0}, Lkotlinx/atomicfu/AtomicInt;-><init>()V

    .line 7
    iput-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->_size:Lkotlinx/atomicfu/AtomicInt;

    .line 10
    iput-wide p1, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->timeNow:J

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final addImpl(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V
    .locals 4

    .line 1
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->setHeap(Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;)V

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->a:[Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x4

    .line 9
    new-array v0, v0, [Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    .line 10
    iput-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->a:[Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->_size:Lkotlinx/atomicfu/AtomicInt;

    .line 15
    iget v1, v1, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 17
    array-length v2, v0

    .line 19
    if-lt v1, v2, :cond_1

    .line 20
    iget-object v1, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->_size:Lkotlinx/atomicfu/AtomicInt;

    .line 22
    iget v1, v1, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 24
    mul-int/lit8 v1, v1, 0x2

    .line 26
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 31
    check-cast v0, [Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    .line 32
    iput-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->a:[Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    .line 34
    :cond_1
    :goto_0
    iget-object v1, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->_size:Lkotlinx/atomicfu/AtomicInt;

    .line 36
    iget v1, v1, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 38
    add-int/lit8 v2, v1, 0x1

    .line 40
    iget-object v3, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->_size:Lkotlinx/atomicfu/AtomicInt;

    .line 42
    invoke-virtual {v3, v2}, Lkotlinx/atomicfu/AtomicInt;->setValue(I)V

    .line 44
    aput-object p1, v0, v1

    .line 47
    iput v1, p1, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->index:I

    .line 49
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->siftUpFrom(I)V

    .line 51
    return-void
    .line 54
.end method

.method public final removeAtImpl(I)Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;
    .locals 7

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->a:[Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->_size:Lkotlinx/atomicfu/AtomicInt;

    .line 7
    iget v1, v1, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 9
    const/4 v2, -0x1

    .line 11
    add-int/2addr v1, v2

    .line 12
    iget-object v3, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->_size:Lkotlinx/atomicfu/AtomicInt;

    .line 13
    invoke-virtual {v3, v1}, Lkotlinx/atomicfu/AtomicInt;->setValue(I)V

    .line 15
    iget-object v1, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->_size:Lkotlinx/atomicfu/AtomicInt;

    .line 18
    iget v1, v1, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 20
    if-ge p1, v1, :cond_4

    .line 22
    iget-object v1, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->_size:Lkotlinx/atomicfu/AtomicInt;

    .line 24
    iget v1, v1, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 26
    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->swap(II)V

    .line 28
    add-int/lit8 v1, p1, -0x1

    .line 31
    div-int/lit8 v1, v1, 0x2

    .line 33
    if-lez p1, :cond_0

    .line 35
    aget-object v3, v0, p1

    .line 37
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 39
    aget-object v4, v0, v1

    .line 42
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {v3, v4}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->compareTo(Ljava/lang/Object;)I

    .line 47
    move-result v3

    .line 50
    if-gez v3, :cond_0

    .line 51
    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->swap(II)V

    .line 53
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->siftUpFrom(I)V

    .line 56
    goto :goto_1

    .line 59
    :cond_0
    :goto_0
    mul-int/lit8 v1, p1, 0x2

    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 62
    iget-object v3, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->_size:Lkotlinx/atomicfu/AtomicInt;

    .line 64
    iget v3, v3, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 66
    if-lt v1, v3, :cond_1

    .line 68
    goto :goto_1

    .line 70
    :cond_1
    iget-object v3, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->a:[Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    .line 71
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 73
    add-int/lit8 v4, v1, 0x1

    .line 76
    iget-object v5, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->_size:Lkotlinx/atomicfu/AtomicInt;

    .line 78
    iget v5, v5, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 80
    if-ge v4, v5, :cond_2

    .line 82
    aget-object v5, v3, v4

    .line 84
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 86
    aget-object v6, v3, v1

    .line 89
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 91
    invoke-virtual {v5, v6}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->compareTo(Ljava/lang/Object;)I

    .line 94
    move-result v5

    .line 97
    if-gez v5, :cond_2

    .line 98
    move v1, v4

    .line 100
    :cond_2
    aget-object v4, v3, p1

    .line 101
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 103
    aget-object v3, v3, v1

    .line 106
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 108
    invoke-virtual {v4, v3}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->compareTo(Ljava/lang/Object;)I

    .line 111
    move-result v3

    .line 114
    if-gtz v3, :cond_3

    .line 115
    goto :goto_1

    .line 117
    :cond_3
    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->swap(II)V

    .line 118
    move p1, v1

    .line 121
    goto :goto_0

    .line 122
    :cond_4
    :goto_1
    iget-object p1, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->_size:Lkotlinx/atomicfu/AtomicInt;

    .line 123
    iget p1, p1, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 125
    aget-object p1, v0, p1

    .line 127
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 129
    const/4 v1, 0x0

    .line 132
    invoke-virtual {p1, v1}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->setHeap(Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;)V

    .line 133
    iput v2, p1, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->index:I

    .line 136
    iget-object p0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->_size:Lkotlinx/atomicfu/AtomicInt;

    .line 138
    iget p0, p0, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 140
    aput-object v1, v0, p0

    .line 142
    return-object p1
    .line 144
.end method

.method public final siftUpFrom(I)V
    .locals 3

    .line 1
    :goto_0
    if-gtz p1, :cond_0

    .line 2
    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->a:[Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    add-int/lit8 v1, p1, -0x1

    .line 10
    div-int/lit8 v1, v1, 0x2

    .line 12
    aget-object v2, v0, v1

    .line 14
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 16
    aget-object v0, v0, p1

    .line 19
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 21
    invoke-virtual {v2, v0}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->compareTo(Ljava/lang/Object;)I

    .line 24
    move-result v0

    .line 27
    if-gtz v0, :cond_1

    .line 28
    :goto_1
    return-void

    .line 30
    :cond_1
    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->swap(II)V

    .line 31
    move p1, v1

    .line 34
    goto :goto_0
    .line 35
.end method

.method public final swap(II)V
    .locals 2

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;->a:[Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    .line 2
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    aget-object v0, p0, p2

    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    aget-object v1, p0, p1

    .line 12
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    aput-object v0, p0, p1

    .line 17
    aput-object v1, p0, p2

    .line 19
    iput p1, v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->index:I

    .line 21
    iput p2, v1, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->index:I

    .line 23
    return-void
    .line 25
.end method
