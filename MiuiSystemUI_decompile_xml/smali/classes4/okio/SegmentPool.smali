.class public abstract Lokio/SegmentPool;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final HASH_BUCKET_COUNT:I

.field public static final LOCK:Lokio/Segment;

.field public static final hashBuckets:[Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lokio/Segment;

    .line 2
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [B

    .line 5
    invoke-direct {v0, v2, v1, v1, v1}, Lokio/Segment;-><init>([BIIZ)V

    .line 7
    sput-object v0, Lokio/SegmentPool;->LOCK:Lokio/Segment;

    .line 10
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 16
    move-result v0

    .line 19
    mul-int/lit8 v0, v0, 0x2

    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 24
    move-result v0

    .line 27
    sput v0, Lokio/SegmentPool;->HASH_BUCKET_COUNT:I

    .line 28
    new-array v2, v0, [Ljava/util/concurrent/atomic/AtomicReference;

    .line 30
    :goto_0
    if-ge v1, v0, :cond_0

    .line 32
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 34
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 36
    aput-object v3, v2, v1

    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 41
    goto :goto_0

    .line 43
    :cond_0
    sput-object v2, Lokio/SegmentPool;->hashBuckets:[Ljava/util/concurrent/atomic/AtomicReference;

    .line 44
    return-void
    .line 46
.end method

.method public static final recycle(Lokio/Segment;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lokio/Segment;->prev:Lokio/Segment;

    .line 7
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v1

    .line 13
    :goto_0
    if-eqz v0, :cond_6

    .line 14
    iget-boolean v0, p0, Lokio/Segment;->shared:Z

    .line 16
    if-eqz v0, :cond_1

    .line 18
    return-void

    .line 20
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 21
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 25
    move-result-wide v2

    .line 28
    sget v0, Lokio/SegmentPool;->HASH_BUCKET_COUNT:I

    .line 29
    int-to-long v4, v0

    .line 31
    const-wide/16 v6, 0x1

    .line 32
    sub-long/2addr v4, v6

    .line 34
    and-long/2addr v2, v4

    .line 35
    long-to-int v0, v2

    .line 36
    sget-object v2, Lokio/SegmentPool;->hashBuckets:[Ljava/util/concurrent/atomic/AtomicReference;

    .line 37
    aget-object v0, v2, v0

    .line 39
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 44
    check-cast v2, Lokio/Segment;

    .line 45
    sget-object v3, Lokio/SegmentPool;->LOCK:Lokio/Segment;

    .line 47
    if-ne v2, v3, :cond_2

    .line 49
    return-void

    .line 51
    :cond_2
    if-eqz v2, :cond_3

    .line 52
    iget v3, v2, Lokio/Segment;->limit:I

    .line 54
    goto :goto_1

    .line 56
    :cond_3
    move v3, v1

    .line 57
    :goto_1
    const/high16 v4, 0x10000

    .line 58
    if-lt v3, v4, :cond_4

    .line 60
    return-void

    .line 62
    :cond_4
    iput-object v2, p0, Lokio/Segment;->next:Lokio/Segment;

    .line 63
    iput v1, p0, Lokio/Segment;->pos:I

    .line 65
    add-int/lit16 v3, v3, 0x2000

    .line 67
    iput v3, p0, Lokio/Segment;->limit:I

    .line 69
    invoke-virtual {v0, v2, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    move-result v0

    .line 74
    if-nez v0, :cond_5

    .line 75
    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    .line 78
    :cond_5
    return-void

    .line 80
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 81
    const-string v0, "Failed requirement."

    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 88
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 89
    throw p0
    .line 92
.end method

.method public static final take()Lokio/Segment;
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 6
    move-result-wide v0

    .line 9
    sget v2, Lokio/SegmentPool;->HASH_BUCKET_COUNT:I

    .line 10
    int-to-long v2, v2

    .line 12
    const-wide/16 v4, 0x1

    .line 13
    sub-long/2addr v2, v4

    .line 15
    and-long/2addr v0, v2

    .line 16
    long-to-int v0, v0

    .line 17
    sget-object v1, Lokio/SegmentPool;->hashBuckets:[Ljava/util/concurrent/atomic/AtomicReference;

    .line 18
    aget-object v0, v1, v0

    .line 20
    sget-object v1, Lokio/SegmentPool;->LOCK:Lokio/Segment;

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 27
    check-cast v2, Lokio/Segment;

    .line 28
    if-ne v2, v1, :cond_0

    .line 30
    new-instance v0, Lokio/Segment;

    .line 32
    invoke-direct {v0}, Lokio/Segment;-><init>()V

    .line 34
    return-object v0

    .line 37
    :cond_0
    const/4 v1, 0x0

    .line 38
    if-nez v2, :cond_1

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 41
    new-instance v0, Lokio/Segment;

    .line 44
    invoke-direct {v0}, Lokio/Segment;-><init>()V

    .line 46
    return-object v0

    .line 49
    :cond_1
    iget-object v3, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 50
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 52
    iput-object v1, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 55
    const/4 v0, 0x0

    .line 57
    iput v0, v2, Lokio/Segment;->limit:I

    .line 58
    return-object v2
    .line 60
.end method
