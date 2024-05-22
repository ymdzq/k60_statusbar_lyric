.class Lmiuix/animation/utils/ObjectPool$Cache;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final mCacheRecord:Ljava/util/concurrent/ConcurrentHashMap;

.field final pool:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field final shrinkTask:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->pool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->mCacheRecord:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    new-instance v0, Lmiuix/animation/utils/ObjectPool$Cache$1;

    invoke-direct {v0, p0}, Lmiuix/animation/utils/ObjectPool$Cache$1;-><init>(Lmiuix/animation/utils/ObjectPool$Cache;)V

    iput-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->shrinkTask:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/animation/utils/ObjectPool$1;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lmiuix/animation/utils/ObjectPool$Cache;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs acquireObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->pool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-object p0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->mCacheRecord:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 12
    move-result p1

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    if-eqz p1, :cond_1

    .line 24
    invoke-static {p1, p2}, Lmiuix/animation/utils/ObjectPool;->access$000(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 29
    :cond_1
    :goto_0
    return-object v0
    .line 30
.end method

.method public releaseObject(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->mCacheRecord:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 4
    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v1

    .line 11
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->pool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 21
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-static {}, Lmiuix/animation/utils/ObjectPool;->getMainHandler()Landroid/os/Handler;

    .line 26
    move-result-object p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    iget-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->shrinkTask:Ljava/lang/Runnable;

    .line 32
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 34
    iget-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->pool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 37
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    .line 39
    move-result v0

    .line 42
    const/16 v1, 0xa

    .line 43
    if-le v0, v1, :cond_2

    .line 45
    iget-object p0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->shrinkTask:Ljava/lang/Runnable;

    .line 47
    const-wide/16 v0, 0x1388

    .line 49
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    goto :goto_0

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    const-string v0, "ObjectPool.releaseObject handler is null! looper: "

    .line 57
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 62
    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 72
    const-string v0, "miuix_anim"

    .line 73
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object p0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->shrinkTask:Ljava/lang/Runnable;

    .line 78
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 80
    :cond_2
    :goto_0
    return-void
    .line 83
.end method

.method public shrink()V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->pool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    .line 4
    move-result v0

    .line 7
    const/16 v1, 0xa

    .line 8
    if-le v0, v1, :cond_1

    .line 10
    iget-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->pool:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    goto :goto_1

    .line 20
    :cond_0
    iget-object v1, p0, Lmiuix/animation/utils/ObjectPool$Cache;->mCacheRecord:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 23
    move-result v0

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v0

    .line 30
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    goto :goto_0

    .line 34
    :cond_1
    :goto_1
    return-void
    .line 35
.end method
