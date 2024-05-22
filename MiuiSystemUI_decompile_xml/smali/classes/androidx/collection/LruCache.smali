.class public Landroidx/collection/LruCache;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public hitCount:I

.field public final lock:Landroidx/collection/internal/Lock;

.field public final map:Landroidx/collection/internal/LruHashMap;

.field public final maxSize:I

.field public missCount:I

.field public size:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/collection/LruCache;->maxSize:I

    .line 5
    if-lez p1, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    if-eqz p1, :cond_1

    .line 12
    new-instance p1, Landroidx/collection/internal/LruHashMap;

    .line 14
    invoke-direct {p1}, Landroidx/collection/internal/LruHashMap;-><init>()V

    .line 16
    iput-object p1, p0, Landroidx/collection/LruCache;->map:Landroidx/collection/internal/LruHashMap;

    .line 19
    new-instance p1, Landroidx/collection/internal/Lock;

    .line 21
    invoke-direct {p1}, Landroidx/collection/internal/Lock;-><init>()V

    .line 23
    iput-object p1, p0, Landroidx/collection/LruCache;->lock:Landroidx/collection/internal/Lock;

    .line 26
    return-void

    .line 28
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 29
    const-string p1, "maxSize <= 0"

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 36
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p0
    .line 40
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/collection/LruCache;->lock:Landroidx/collection/internal/Lock;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/collection/LruCache;->map:Landroidx/collection/internal/LruHashMap;

    .line 5
    iget-object v1, v1, Landroidx/collection/internal/LruHashMap;->map:Ljava/util/LinkedHashMap;

    .line 7
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    iget v1, p0, Landroidx/collection/LruCache;->hitCount:I

    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 17
    iput v1, p0, Landroidx/collection/LruCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit v0

    .line 21
    return-object p1

    .line 22
    :cond_0
    :try_start_1
    iget p1, p0, Landroidx/collection/LruCache;->missCount:I

    .line 23
    add-int/lit8 p1, p1, 0x1

    .line 25
    iput p1, p0, Landroidx/collection/LruCache;->missCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    monitor-exit v0

    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v0

    .line 33
    throw p0
    .line 34
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/collection/LruCache;->lock:Landroidx/collection/internal/Lock;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Landroidx/collection/LruCache;->size:I

    .line 5
    add-int/lit8 v1, v1, 0x1

    .line 7
    iput v1, p0, Landroidx/collection/LruCache;->size:I

    .line 9
    iget-object v1, p0, Landroidx/collection/LruCache;->map:Landroidx/collection/internal/LruHashMap;

    .line 11
    iget-object v1, v1, Landroidx/collection/internal/LruHashMap;->map:Ljava/util/LinkedHashMap;

    .line 13
    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    iget p2, p0, Landroidx/collection/LruCache;->size:I

    .line 21
    add-int/lit8 p2, p2, -0x1

    .line 23
    iput p2, p0, Landroidx/collection/LruCache;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_0
    monitor-exit v0

    .line 27
    iget p2, p0, Landroidx/collection/LruCache;->maxSize:I

    .line 28
    invoke-virtual {p0, p2}, Landroidx/collection/LruCache;->trimToSize(I)V

    .line 30
    return-object p1

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    monitor-exit v0

    .line 35
    throw p0
    .line 36
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "LruCache[maxSize="

    .line 2
    iget-object v1, p0, Landroidx/collection/LruCache;->lock:Landroidx/collection/internal/Lock;

    .line 4
    monitor-enter v1

    .line 6
    :try_start_0
    iget v2, p0, Landroidx/collection/LruCache;->hitCount:I

    .line 7
    iget v3, p0, Landroidx/collection/LruCache;->missCount:I

    .line 9
    add-int/2addr v3, v2

    .line 11
    if-eqz v3, :cond_0

    .line 12
    mul-int/lit8 v2, v2, 0x64

    .line 14
    div-int/2addr v2, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    iget v0, p0, Landroidx/collection/LruCache;->maxSize:I

    .line 24
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v0, ",hits="

    .line 29
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v0, p0, Landroidx/collection/LruCache;->hitCount:I

    .line 34
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v0, ",misses="

    .line 39
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget p0, p0, Landroidx/collection/LruCache;->missCount:I

    .line 44
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string p0, ",hitRate="

    .line 49
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    const-string p0, "%]"

    .line 57
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit v1

    .line 66
    return-object p0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    monitor-exit v1

    .line 69
    throw p0
.end method

.method public final trimToSize(I)V
    .locals 4

    .line 1
    :goto_0
    iget-object v0, p0, Landroidx/collection/LruCache;->lock:Landroidx/collection/internal/Lock;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Landroidx/collection/LruCache;->size:I

    .line 5
    const/4 v2, 0x1

    .line 7
    if-ltz v1, :cond_1

    .line 8
    iget-object v1, p0, Landroidx/collection/LruCache;->map:Landroidx/collection/internal/LruHashMap;

    .line 10
    iget-object v1, v1, Landroidx/collection/internal/LruHashMap;->map:Ljava/util/LinkedHashMap;

    .line 12
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    .line 14
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    iget v1, p0, Landroidx/collection/LruCache;->size:I

    .line 20
    if-nez v1, :cond_1

    .line 22
    :cond_0
    move v1, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/4 v1, 0x0

    .line 26
    :goto_1
    if-eqz v1, :cond_5

    .line 27
    iget v1, p0, Landroidx/collection/LruCache;->size:I

    .line 29
    if-le v1, p1, :cond_4

    .line 31
    iget-object v1, p0, Landroidx/collection/LruCache;->map:Landroidx/collection/internal/LruHashMap;

    .line 33
    iget-object v1, v1, Landroidx/collection/internal/LruHashMap;->map:Ljava/util/LinkedHashMap;

    .line 35
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    .line 37
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    goto :goto_2

    .line 43
    :cond_2
    iget-object v1, p0, Landroidx/collection/LruCache;->map:Landroidx/collection/internal/LruHashMap;

    .line 44
    iget-object v1, v1, Landroidx/collection/internal/LruHashMap;->map:Ljava/util/LinkedHashMap;

    .line 46
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 48
    move-result-object v1

    .line 51
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 52
    move-result-object v1

    .line 55
    check-cast v1, Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    if-nez v1, :cond_3

    .line 58
    monitor-exit v0

    .line 60
    return-void

    .line 61
    :cond_3
    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 62
    move-result-object v3

    .line 65
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 66
    iget-object v1, p0, Landroidx/collection/LruCache;->map:Landroidx/collection/internal/LruHashMap;

    .line 69
    iget-object v1, v1, Landroidx/collection/internal/LruHashMap;->map:Ljava/util/LinkedHashMap;

    .line 71
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget v1, p0, Landroidx/collection/LruCache;->size:I

    .line 76
    sub-int/2addr v1, v2

    .line 78
    iput v1, p0, Landroidx/collection/LruCache;->size:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    monitor-exit v0

    .line 81
    goto :goto_0

    .line 82
    :cond_4
    :goto_2
    monitor-exit v0

    .line 83
    return-void

    .line 84
    :cond_5
    :try_start_2
    const-string p0, "LruCache.sizeOf() is reporting inconsistent results!"

    .line 85
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 92
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 93
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    monitor-exit v0

    .line 98
    throw p0
    .line 99
.end method
