.class public final Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final REMOVE_FROZEN:Lkotlinx/coroutines/internal/Symbol;


# instance fields
.field public final _next:Lkotlinx/atomicfu/AtomicRef;

.field public final _state:Lkotlinx/atomicfu/AtomicLong;

.field public final array:Lkotlinx/atomicfu/AtomicArray;

.field public final capacity:I

.field public final mask:I

.field public final singleConsumer:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    .line 2
    const-string v1, "REMOVE_FROZEN"

    .line 4
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->REMOVE_FROZEN:Lkotlinx/coroutines/internal/Symbol;

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(IZ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->capacity:I

    .line 5
    iput-boolean p2, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->singleConsumer:Z

    .line 7
    add-int/lit8 p2, p1, -0x1

    .line 9
    iput p2, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    .line 11
    new-instance v0, Lkotlinx/atomicfu/AtomicRef;

    .line 13
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, v1}, Lkotlinx/atomicfu/AtomicRef;-><init>(Ljava/lang/Object;)V

    .line 16
    iput-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_next:Lkotlinx/atomicfu/AtomicRef;

    .line 19
    new-instance v0, Lkotlinx/atomicfu/AtomicLong;

    .line 21
    const-wide/16 v1, 0x0

    .line 23
    invoke-direct {v0, v1, v2}, Lkotlinx/atomicfu/AtomicLong;-><init>(J)V

    .line 25
    iput-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    .line 28
    new-instance v0, Lkotlinx/atomicfu/AtomicArray;

    .line 30
    invoke-direct {v0, p1}, Lkotlinx/atomicfu/AtomicArray;-><init>(I)V

    .line 32
    iput-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    .line 35
    const p0, 0x3fffffff    # 1.9999999f

    .line 37
    const/4 v0, 0x0

    .line 40
    const/4 v1, 0x1

    .line 41
    if-gt p2, p0, :cond_0

    .line 42
    move p0, v1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move p0, v0

    .line 46
    :goto_0
    const-string v2, "Check failed."

    .line 47
    if-eqz p0, :cond_3

    .line 49
    and-int p0, p1, p2

    .line 51
    if-nez p0, :cond_1

    .line 53
    move v0, v1

    .line 55
    :cond_1
    if-eqz v0, :cond_2

    .line 56
    return-void

    .line 58
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 59
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 64
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    throw p0

    .line 68
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 69
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 74
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    throw p0
    .line 78
.end method


# virtual methods
.method public final addLast(Ljava/lang/Object;)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-object v2, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    .line 6
    :cond_0
    iget-wide v3, v2, Lkotlinx/atomicfu/AtomicLong;->value:J

    .line 8
    const-wide/high16 v5, 0x3000000000000000L    # 1.727233711018889E-77

    .line 10
    and-long/2addr v5, v3

    .line 12
    const-wide/16 v7, 0x0

    .line 13
    cmp-long v5, v5, v7

    .line 15
    const/4 v6, 0x1

    .line 17
    if-eqz v5, :cond_2

    .line 18
    const-wide/high16 v0, 0x2000000000000000L

    .line 20
    and-long/2addr v0, v3

    .line 22
    cmp-long v0, v0, v7

    .line 23
    if-eqz v0, :cond_1

    .line 25
    const/4 v6, 0x2

    .line 27
    :cond_1
    return v6

    .line 28
    :cond_2
    const-wide/32 v9, 0x3fffffff

    .line 29
    and-long/2addr v9, v3

    .line 32
    const/4 v5, 0x0

    .line 33
    shr-long/2addr v9, v5

    .line 34
    long-to-int v9, v9

    .line 35
    const-wide v10, 0xfffffffc0000000L

    .line 36
    and-long/2addr v10, v3

    .line 41
    const/16 v12, 0x1e

    .line 42
    shr-long/2addr v10, v12

    .line 44
    long-to-int v10, v10

    .line 45
    iget v11, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    .line 46
    add-int/lit8 v13, v10, 0x2

    .line 48
    and-int/2addr v13, v11

    .line 50
    and-int v14, v9, v11

    .line 51
    if-ne v13, v14, :cond_3

    .line 53
    return v6

    .line 55
    :cond_3
    iget-boolean v13, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->singleConsumer:Z

    .line 56
    const v14, 0x3fffffff    # 1.9999999f

    .line 58
    if-nez v13, :cond_5

    .line 61
    iget-object v13, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    .line 63
    and-int v15, v10, v11

    .line 65
    iget-object v13, v13, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    .line 67
    aget-object v13, v13, v15

    .line 69
    iget-object v13, v13, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 71
    if-eqz v13, :cond_5

    .line 73
    iget v3, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->capacity:I

    .line 75
    const/16 v4, 0x400

    .line 77
    if-lt v3, v4, :cond_4

    .line 79
    sub-int/2addr v10, v9

    .line 81
    and-int v4, v10, v14

    .line 82
    shr-int/lit8 v3, v3, 0x1

    .line 84
    if-le v4, v3, :cond_0

    .line 86
    :cond_4
    return v6

    .line 88
    :cond_5
    add-int/lit8 v6, v10, 0x1

    .line 89
    and-int/2addr v6, v14

    .line 91
    iget-object v9, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    .line 92
    const-wide v13, -0xfffffffc0000001L    # -3.1050369248997324E231

    .line 94
    and-long/2addr v13, v3

    .line 99
    int-to-long v5, v6

    .line 100
    shl-long/2addr v5, v12

    .line 101
    or-long/2addr v5, v13

    .line 102
    invoke-virtual {v9, v3, v4, v5, v6}, Lkotlinx/atomicfu/AtomicLong;->compareAndSet(JJ)Z

    .line 103
    move-result v3

    .line 106
    if-eqz v3, :cond_0

    .line 107
    iget-object v2, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    .line 109
    and-int v3, v10, v11

    .line 111
    iget-object v2, v2, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    .line 113
    aget-object v2, v2, v3

    .line 115
    invoke-virtual {v2, v1}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    .line 117
    :cond_6
    iget-object v2, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    .line 120
    iget-wide v2, v2, Lkotlinx/atomicfu/AtomicLong;->value:J

    .line 122
    const-wide/high16 v4, 0x1000000000000000L

    .line 124
    and-long/2addr v2, v4

    .line 126
    cmp-long v2, v2, v7

    .line 127
    if-eqz v2, :cond_8

    .line 129
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    .line 131
    move-result-object v0

    .line 134
    iget-object v2, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    .line 135
    iget v3, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    .line 137
    and-int/2addr v3, v10

    .line 139
    iget-object v2, v2, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    .line 140
    aget-object v2, v2, v3

    .line 142
    iget-object v2, v2, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 144
    instance-of v3, v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;

    .line 146
    if-eqz v3, :cond_7

    .line 148
    check-cast v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;

    .line 150
    iget v2, v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;->index:I

    .line 152
    if-ne v2, v10, :cond_7

    .line 154
    iget-object v2, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    .line 156
    iget v3, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    .line 158
    and-int/2addr v3, v10

    .line 160
    iget-object v2, v2, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    .line 161
    aget-object v2, v2, v3

    .line 163
    invoke-virtual {v2, v1}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    .line 165
    goto :goto_0

    .line 168
    :cond_7
    const/4 v0, 0x0

    .line 169
    :goto_0
    if-nez v0, :cond_6

    .line 170
    :cond_8
    const/4 v0, 0x0

    .line 172
    return v0
    .line 173
.end method

.method public final close()Z
    .locals 10

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    .line 2
    :cond_0
    iget-wide v0, p0, Lkotlinx/atomicfu/AtomicLong;->value:J

    .line 4
    const-wide/high16 v2, 0x2000000000000000L

    .line 6
    and-long v4, v0, v2

    .line 8
    const-wide/16 v6, 0x0

    .line 10
    cmp-long v4, v4, v6

    .line 12
    const/4 v5, 0x1

    .line 14
    if-eqz v4, :cond_1

    .line 15
    return v5

    .line 17
    :cond_1
    const-wide/high16 v8, 0x1000000000000000L

    .line 18
    and-long/2addr v8, v0

    .line 20
    cmp-long v4, v8, v6

    .line 21
    if-eqz v4, :cond_2

    .line 23
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_2
    or-long/2addr v2, v0

    .line 27
    invoke-virtual {p0, v0, v1, v2, v3}, Lkotlinx/atomicfu/AtomicLong;->compareAndSet(JJ)Z

    .line 28
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    return v5
    .line 34
.end method

.method public final next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    .locals 10

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    .line 2
    :cond_0
    iget-wide v1, v0, Lkotlinx/atomicfu/AtomicLong;->value:J

    .line 4
    const-wide/high16 v3, 0x1000000000000000L

    .line 6
    and-long v5, v1, v3

    .line 8
    const-wide/16 v7, 0x0

    .line 10
    cmp-long v5, v5, v7

    .line 12
    if-eqz v5, :cond_1

    .line 14
    goto :goto_0

    .line 16
    :cond_1
    or-long/2addr v3, v1

    .line 17
    invoke-virtual {v0, v1, v2, v3, v4}, Lkotlinx/atomicfu/AtomicLong;->compareAndSet(JJ)Z

    .line 18
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    move-wide v1, v3

    .line 24
    :goto_0
    iget-object v3, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_next:Lkotlinx/atomicfu/AtomicRef;

    .line 25
    :goto_1
    iget-object v0, v3, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 27
    check-cast v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    .line 29
    if-eqz v0, :cond_2

    .line 31
    return-object v0

    .line 33
    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_next:Lkotlinx/atomicfu/AtomicRef;

    .line 34
    new-instance v4, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    .line 36
    iget v5, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->capacity:I

    .line 38
    mul-int/lit8 v5, v5, 0x2

    .line 40
    iget-boolean v6, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->singleConsumer:Z

    .line 42
    invoke-direct {v4, v5, v6}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;-><init>(IZ)V

    .line 44
    const-wide/32 v5, 0x3fffffff

    .line 47
    and-long/2addr v5, v1

    .line 50
    const/4 v7, 0x0

    .line 51
    shr-long/2addr v5, v7

    .line 52
    long-to-int v5, v5

    .line 53
    const-wide v6, 0xfffffffc0000000L

    .line 54
    and-long/2addr v6, v1

    .line 59
    const/16 v8, 0x1e

    .line 60
    shr-long/2addr v6, v8

    .line 62
    long-to-int v6, v6

    .line 63
    :goto_2
    iget v7, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    .line 64
    and-int v8, v5, v7

    .line 66
    and-int/2addr v7, v6

    .line 68
    if-eq v8, v7, :cond_4

    .line 69
    iget-object v7, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    .line 71
    iget-object v7, v7, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    .line 73
    aget-object v7, v7, v8

    .line 75
    iget-object v7, v7, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 77
    if-nez v7, :cond_3

    .line 79
    new-instance v7, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;

    .line 81
    invoke-direct {v7, v5}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;-><init>(I)V

    .line 83
    :cond_3
    iget-object v8, v4, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    .line 86
    iget v9, v4, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    .line 88
    and-int/2addr v9, v5

    .line 90
    iget-object v8, v8, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    .line 91
    aget-object v8, v8, v9

    .line 93
    invoke-virtual {v8, v7}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    .line 95
    add-int/lit8 v5, v5, 0x1

    .line 98
    goto :goto_2

    .line 100
    :cond_4
    iget-object v5, v4, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    .line 101
    const-wide v6, -0x1000000000000001L    # -3.1050361846014175E231

    .line 103
    and-long/2addr v6, v1

    .line 108
    iput-wide v6, v5, Lkotlinx/atomicfu/AtomicLong;->value:J

    .line 109
    iget-object v5, v5, Lkotlinx/atomicfu/AtomicLong;->trace:Lkotlinx/atomicfu/TraceBase;

    .line 111
    sget-object v6, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    .line 113
    if-eq v5, v6, :cond_5

    .line 115
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    :cond_5
    const/4 v5, 0x0

    .line 120
    invoke-virtual {v0, v5, v4}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    goto :goto_1
    .line 124
.end method

.method public final removeFirstOrNull()Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    .line 4
    :cond_0
    iget-wide v2, v1, Lkotlinx/atomicfu/AtomicLong;->value:J

    .line 6
    const-wide/high16 v4, 0x1000000000000000L

    .line 8
    and-long v6, v2, v4

    .line 10
    const-wide/16 v8, 0x0

    .line 12
    cmp-long v6, v6, v8

    .line 14
    if-eqz v6, :cond_1

    .line 16
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->REMOVE_FROZEN:Lkotlinx/coroutines/internal/Symbol;

    .line 18
    return-object v0

    .line 20
    :cond_1
    const-wide/32 v6, 0x3fffffff

    .line 21
    and-long v10, v2, v6

    .line 24
    const/4 v12, 0x0

    .line 26
    shr-long/2addr v10, v12

    .line 27
    long-to-int v10, v10

    .line 28
    const-wide v13, 0xfffffffc0000000L

    .line 29
    and-long/2addr v13, v2

    .line 34
    const/16 v11, 0x1e

    .line 35
    shr-long/2addr v13, v11

    .line 37
    long-to-int v11, v13

    .line 38
    iget v13, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    .line 39
    and-int/2addr v11, v13

    .line 41
    and-int/2addr v13, v10

    .line 42
    const/4 v14, 0x0

    .line 43
    if-ne v11, v13, :cond_2

    .line 44
    return-object v14

    .line 46
    :cond_2
    iget-object v11, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    .line 47
    iget-object v11, v11, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    .line 49
    aget-object v11, v11, v13

    .line 51
    iget-object v11, v11, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 53
    if-nez v11, :cond_3

    .line 55
    iget-boolean v2, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->singleConsumer:Z

    .line 57
    if-eqz v2, :cond_0

    .line 59
    return-object v14

    .line 61
    :cond_3
    instance-of v13, v11, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;

    .line 62
    if-eqz v13, :cond_4

    .line 64
    return-object v14

    .line 66
    :cond_4
    add-int/lit8 v13, v10, 0x1

    .line 67
    const v15, 0x3fffffff    # 1.9999999f

    .line 69
    and-int/2addr v13, v15

    .line 72
    iget-object v15, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    .line 73
    const-wide/32 v16, -0x40000000

    .line 75
    and-long v18, v2, v16

    .line 78
    int-to-long v8, v13

    .line 80
    shl-long/2addr v8, v12

    .line 81
    or-long v4, v8, v18

    .line 82
    invoke-virtual {v15, v2, v3, v4, v5}, Lkotlinx/atomicfu/AtomicLong;->compareAndSet(JJ)Z

    .line 84
    move-result v2

    .line 87
    if-eqz v2, :cond_5

    .line 88
    iget-object v1, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    .line 90
    iget v0, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    .line 92
    and-int/2addr v0, v10

    .line 94
    iget-object v1, v1, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    .line 95
    aget-object v0, v1, v0

    .line 97
    invoke-virtual {v0, v14}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    .line 99
    return-object v11

    .line 102
    :cond_5
    iget-boolean v2, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->singleConsumer:Z

    .line 103
    if-eqz v2, :cond_0

    .line 105
    move-object v2, v0

    .line 107
    :goto_0
    iget-object v3, v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    .line 108
    :goto_1
    iget-wide v0, v3, Lkotlinx/atomicfu/AtomicLong;->value:J

    .line 110
    and-long v4, v0, v6

    .line 112
    shr-long/2addr v4, v12

    .line 114
    long-to-int v4, v4

    .line 115
    const-wide/high16 v18, 0x1000000000000000L

    .line 116
    and-long v22, v0, v18

    .line 118
    const-wide/16 v20, 0x0

    .line 120
    cmp-long v5, v22, v20

    .line 122
    if-eqz v5, :cond_6

    .line 124
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    .line 126
    move-result-object v0

    .line 129
    move-object v2, v0

    .line 130
    goto :goto_2

    .line 131
    :cond_6
    iget-object v5, v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    .line 132
    and-long v22, v0, v16

    .line 134
    or-long v6, v8, v22

    .line 136
    invoke-virtual {v5, v0, v1, v6, v7}, Lkotlinx/atomicfu/AtomicLong;->compareAndSet(JJ)Z

    .line 138
    move-result v0

    .line 141
    if-eqz v0, :cond_8

    .line 142
    iget-object v0, v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    .line 144
    iget v1, v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    .line 146
    and-int/2addr v1, v4

    .line 148
    iget-object v0, v0, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    .line 149
    aget-object v0, v0, v1

    .line 151
    invoke-virtual {v0, v14}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    .line 153
    move-object v2, v14

    .line 156
    :goto_2
    if-nez v2, :cond_7

    .line 157
    return-object v11

    .line 159
    :cond_7
    const-wide/32 v6, 0x3fffffff

    .line 160
    goto :goto_0

    .line 163
    :cond_8
    const-wide/32 v6, 0x3fffffff

    .line 164
    goto :goto_1
    .line 167
.end method
