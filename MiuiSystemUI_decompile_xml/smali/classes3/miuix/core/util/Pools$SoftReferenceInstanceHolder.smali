.class public final Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mClazz:Ljava/lang/Class;

.field public volatile mElements:[Ljava/lang/ref/SoftReference;

.field public volatile mIndex:I

.field public volatile mSize:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mClazz:Ljava/lang/Class;

    .line 5
    iput p2, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mSize:I

    .line 7
    new-array p1, p2, [Ljava/lang/ref/SoftReference;

    .line 9
    iput-object p1, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mElements:[Ljava/lang/ref/SoftReference;

    .line 11
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mIndex:I

    .line 14
    return-void
    .line 16
.end method


# virtual methods
.method public final declared-synchronized resize(I)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mSize:I

    .line 3
    add-int/2addr p1, v0

    .line 5
    if-gtz p1, :cond_0

    .line 6
    sget-object p1, Lmiuix/core/util/Pools;->mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;

    .line 8
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    iget-object v0, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mClazz:Ljava/lang/Class;

    .line 11
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :goto_0
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    :try_start_3
    throw v0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iput p1, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mSize:I

    .line 23
    iget-object v0, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mElements:[Ljava/lang/ref/SoftReference;

    .line 25
    iget v1, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mIndex:I

    .line 27
    array-length v2, v0

    .line 29
    if-le p1, v2, :cond_1

    .line 30
    new-array p1, p1, [Ljava/lang/ref/SoftReference;

    .line 32
    const/4 v2, 0x0

    .line 34
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    iput-object p1, p0, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->mElements:[Ljava/lang/ref/SoftReference;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 38
    :cond_1
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :catchall_1
    move-exception p1

    .line 42
    monitor-exit p0

    .line 43
    throw p1
    .line 44
.end method
