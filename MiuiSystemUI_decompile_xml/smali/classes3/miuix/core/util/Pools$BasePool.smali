.class public abstract Lmiuix/core/util/Pools$BasePool;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mFinalizeGuardian:Lmiuix/core/util/Pools$BasePool$1;

.field public mInstanceHolder:Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;

.field public final mManager:Lmiuix/core/util/Pools$Manager;

.field public final mSize:I


# direct methods
.method public constructor <init>(Lmiuix/core/util/Pools$Manager;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lmiuix/core/util/Pools$BasePool$1;

    .line 5
    move-object v1, p0

    .line 7
    check-cast v1, Lmiuix/core/util/Pools$SoftReferencePool;

    .line 8
    invoke-direct {v0, v1}, Lmiuix/core/util/Pools$BasePool$1;-><init>(Lmiuix/core/util/Pools$SoftReferencePool;)V

    .line 10
    iput-object v0, p0, Lmiuix/core/util/Pools$BasePool;->mFinalizeGuardian:Lmiuix/core/util/Pools$BasePool$1;

    .line 13
    const/4 v1, 0x1

    .line 15
    if-lt p2, v1, :cond_2

    .line 16
    iput-object p1, p0, Lmiuix/core/util/Pools$BasePool;->mManager:Lmiuix/core/util/Pools$Manager;

    .line 18
    iput p2, p0, Lmiuix/core/util/Pools$BasePool;->mSize:I

    .line 20
    invoke-virtual {p1}, Lmiuix/core/util/Pools$Manager;->createInstance()Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    move-result-object v0

    .line 31
    sget-object v1, Lmiuix/core/util/Pools;->mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;

    .line 32
    monitor-enter v1

    .line 34
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 38
    check-cast v2, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;

    .line 39
    if-nez v2, :cond_0

    .line 41
    new-instance v2, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;

    .line 43
    invoke-direct {v2, v0, p2}, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;-><init>(Ljava/lang/Class;I)V

    .line 45
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v2, p2}, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->resize(I)V

    .line 52
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    iput-object v2, p0, Lmiuix/core/util/Pools$BasePool;->mInstanceHolder:Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;

    .line 56
    invoke-virtual {p0, p1}, Lmiuix/core/util/Pools$BasePool;->doRelease(Ljava/lang/Object;)V

    .line 58
    return-void

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw p0

    .line 64
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 65
    const-string p1, "manager create instance cannot return null"

    .line 67
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    throw p0

    .line 72
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 73
    move-result p1

    .line 76
    iput p1, p0, Lmiuix/core/util/Pools$BasePool;->mSize:I

    .line 77
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 79
    const-string p1, "manager cannot be null and size cannot less then 1"

    .line 81
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    throw p0
    .line 86
.end method


# virtual methods
.method public final acquire()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/core/util/Pools$BasePool;->mInstanceHolder:Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;

    .line 2
    if-eqz v0, :cond_4

    .line 4
    monitor-enter v0

    .line 6
    :try_start_0
    iget v1, v0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mIndex:I

    .line 7
    iget-object v2, v0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mElements:[Ljava/lang/ref/SoftReference;

    .line 9
    :cond_0
    const/4 v3, 0x0

    .line 11
    if-eqz v1, :cond_1

    .line 12
    add-int/lit8 v1, v1, -0x1

    .line 14
    aget-object v4, v2, v1

    .line 16
    if-eqz v4, :cond_0

    .line 18
    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 20
    move-result-object v4

    .line 23
    aput-object v3, v2, v1

    .line 24
    if-eqz v4, :cond_0

    .line 26
    iput v1, v0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit v0

    .line 30
    move-object v3, v4

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    monitor-exit v0

    .line 33
    :goto_0
    if-nez v3, :cond_3

    .line 34
    iget-object v0, p0, Lmiuix/core/util/Pools$BasePool;->mManager:Lmiuix/core/util/Pools$Manager;

    .line 36
    invoke-virtual {v0}, Lmiuix/core/util/Pools$Manager;->createInstance()Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    goto :goto_1

    .line 44
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 45
    const-string v0, "manager create instance cannot return null"

    .line 47
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p0

    .line 52
    :cond_3
    :goto_1
    iget-object p0, p0, Lmiuix/core/util/Pools$BasePool;->mManager:Lmiuix/core/util/Pools$Manager;

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    return-object v3

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    monitor-exit v0

    .line 60
    throw p0

    .line 61
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 62
    const-string v0, "Cannot acquire object after close()"

    .line 64
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    throw p0
    .line 69
.end method

.method public final doRelease(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lmiuix/core/util/Pools$BasePool;->mInstanceHolder:Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;

    .line 2
    if-eqz v0, :cond_5

    .line 4
    iget-object v0, p0, Lmiuix/core/util/Pools$BasePool;->mManager:Lmiuix/core/util/Pools$Manager;

    .line 6
    invoke-virtual {v0, p1}, Lmiuix/core/util/Pools$Manager;->onRelease(Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lmiuix/core/util/Pools$BasePool;->mInstanceHolder:Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;

    .line 11
    monitor-enter v0

    .line 13
    :try_start_0
    iget v1, v0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mIndex:I

    .line 14
    iget-object v2, v0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mElements:[Ljava/lang/ref/SoftReference;

    .line 16
    iget v3, v0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mSize:I

    .line 18
    const/4 v4, 0x1

    .line 20
    if-lt v1, v3, :cond_3

    .line 21
    const/4 v3, 0x0

    .line 23
    move v5, v3

    .line 24
    :goto_0
    if-ge v5, v1, :cond_2

    .line 25
    aget-object v6, v2, v5

    .line 27
    if-eqz v6, :cond_1

    .line 29
    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 31
    move-result-object v6

    .line 34
    if-nez v6, :cond_0

    .line 35
    goto :goto_1

    .line 37
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 38
    goto :goto_0

    .line 40
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/ref/SoftReference;

    .line 41
    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 43
    aput-object v1, v2, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit v0

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    monitor-exit v0

    .line 50
    move v4, v3

    .line 51
    goto :goto_2

    .line 52
    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/ref/SoftReference;

    .line 53
    invoke-direct {v3, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 55
    aput-object v3, v2, v1

    .line 58
    add-int/2addr v1, v4

    .line 60
    iput v1, v0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    monitor-exit v0

    .line 63
    :goto_2
    if-nez v4, :cond_4

    .line 64
    iget-object p0, p0, Lmiuix/core/util/Pools$BasePool;->mManager:Lmiuix/core/util/Pools$Manager;

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    :cond_4
    return-void

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    monitor-exit v0

    .line 73
    throw p0

    .line 74
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 75
    const-string p1, "Cannot release object after close()"

    .line 77
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    throw p0
    .line 82
.end method
