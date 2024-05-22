.class public Lcom/miui/maml/LifecycleResourceManager;
.super Lcom/miui/maml/ResourceManager;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LifecycleResourceManager"

.field public static final TIME_DAY:I = 0x5265c00

.field public static final TIME_HOUR:I = 0x36ee80

.field private static mLastCheckCacheTime:J


# instance fields
.field private mCheckTime:J

.field private mInactiveTime:J


# direct methods
.method public constructor <init>(Lcom/miui/maml/ResourceLoader;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/ResourceManager;-><init>(Lcom/miui/maml/ResourceLoader;)V

    .line 2
    iput-wide p2, p0, Lcom/miui/maml/LifecycleResourceManager;->mInactiveTime:J

    .line 5
    iput-wide p4, p0, Lcom/miui/maml/LifecycleResourceManager;->mCheckTime:J

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public checkCache()V
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    move-result-wide v0

    .line 5
    sget-wide v2, Lcom/miui/maml/LifecycleResourceManager;->mLastCheckCacheTime:J

    .line 6
    sub-long v2, v0, v2

    .line 8
    iget-wide v4, p0, Lcom/miui/maml/LifecycleResourceManager;->mCheckTime:J

    .line 10
    cmp-long v2, v2, v4

    .line 12
    if-gez v2, :cond_0

    .line 14
    return-void

    .line 16
    :cond_0
    const-string v2, "LifecycleResourceManager"

    .line 17
    const-string v3, "begin check cache... "

    .line 19
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    new-instance v2, Ljava/util/ArrayList;

    .line 24
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    iget-object v3, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeysLock:Ljava/lang/Object;

    .line 29
    monitor-enter v3

    .line 31
    :try_start_0
    iget-object v4, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/ArraySet;

    .line 32
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    new-instance v5, Landroidx/collection/ArraySet$ElementIterator;

    .line 37
    invoke-direct {v5, v4}, Landroidx/collection/ArraySet$ElementIterator;-><init>(Landroidx/collection/ArraySet;)V

    .line 39
    :cond_1
    :goto_0
    invoke-virtual {v5}, Landroidx/collection/IndexBasedArrayIterator;->hasNext()Z

    .line 42
    move-result v4

    .line 45
    if-eqz v4, :cond_2

    .line 46
    invoke-virtual {v5}, Landroidx/collection/IndexBasedArrayIterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v4

    .line 51
    check-cast v4, Ljava/lang/String;

    .line 52
    sget-object v6, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    .line 54
    invoke-virtual {v6, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    move-result-object v6

    .line 59
    check-cast v6, Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 60
    if-eqz v6, :cond_1

    .line 62
    iget-wide v6, v6, Lcom/miui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    .line 64
    sub-long v6, v0, v6

    .line 66
    iget-wide v8, p0, Lcom/miui/maml/LifecycleResourceManager;->mInactiveTime:J

    .line 68
    cmp-long v6, v6, v8

    .line 70
    if-lez v6, :cond_1

    .line 72
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 78
    move-result-object v2

    .line 81
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    move-result v4

    .line 85
    if-eqz v4, :cond_3

    .line 86
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    move-result-object v4

    .line 91
    check-cast v4, Ljava/lang/String;

    .line 92
    const-string v5, "LifecycleResourceManager"

    .line 94
    new-instance v6, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    const-string v7, "remove cache: "

    .line 101
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v6

    .line 112
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object v5, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    .line 116
    invoke-virtual {v5, v4}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v5, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/ArraySet;

    .line 121
    invoke-virtual {v5, v4}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 123
    goto :goto_1

    .line 126
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    sput-wide v0, Lcom/miui/maml/LifecycleResourceManager;->mLastCheckCacheTime:J

    .line 128
    return-void

    .line 130
    :catchall_0
    move-exception p0

    .line 131
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    throw p0
    .line 133
.end method

.method public finish(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/LifecycleResourceManager;->checkCache()V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/maml/ResourceManager;->finish(Z)V

    .line 7
    return-void
    .line 10
.end method

.method public pause()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/LifecycleResourceManager;->checkCache()V

    .line 2
    return-void
    .line 5
.end method
