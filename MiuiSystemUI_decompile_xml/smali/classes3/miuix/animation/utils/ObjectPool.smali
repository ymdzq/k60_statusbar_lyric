.class public Lmiuix/animation/utils/ObjectPool;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final DELAY:J = 0x1388L

.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final sCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

.field private static volatile sMainHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lmiuix/animation/Folme;->getLooper()Landroid/os/Looper;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Lmiuix/animation/utils/ObjectPool;->createMainHandler(Landroid/os/Looper;)V

    .line 6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    sput-object v0, Lmiuix/animation/utils/ObjectPool;->sCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    return-void
    .line 16
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lmiuix/animation/utils/ObjectPool;->createObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public static varargs acquire(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lmiuix/animation/utils/ObjectPool;->getObjectCache(Ljava/lang/Class;Z)Lmiuix/animation/utils/ObjectPool$Cache;

    .line 3
    move-result-object v0

    .line 6
    invoke-virtual {v0, p0, p1}, Lmiuix/animation/utils/ObjectPool$Cache;->acquireObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public static createMainHandler(Landroid/os/Looper;)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 5
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 7
    sput-object v0, Lmiuix/animation/utils/ObjectPool;->sMainHandler:Landroid/os/Handler;

    .line 10
    return-void
    .line 12
.end method

.method private static varargs createObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    .line 2
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    aget-object v3, v0, v2

    .line 10
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 12
    move-result-object v4

    .line 15
    array-length v4, v4

    .line 16
    array-length v5, p1

    .line 17
    if-eq v4, v5, :cond_0

    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x1

    .line 23
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 24
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    return-object p0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    const-string v1, "ObjectPool.createObject failed, clz = "

    .line 35
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 46
    const-string v0, "miuix_anim"

    .line 47
    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    :cond_1
    const/4 p0, 0x0

    .line 52
    return-object p0
    .line 53
.end method

.method public static getMainHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lmiuix/animation/utils/ObjectPool;->sMainHandler:Landroid/os/Handler;

    .line 2
    return-object v0
    .line 4
.end method

.method private static getObjectCache(Ljava/lang/Class;Z)Lmiuix/animation/utils/ObjectPool$Cache;
    .locals 2

    .line 1
    sget-object v0, Lmiuix/animation/utils/ObjectPool;->sCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v1

    .line 7
    check-cast v1, Lmiuix/animation/utils/ObjectPool$Cache;

    .line 8
    if-nez v1, :cond_1

    .line 10
    if-eqz p1, :cond_1

    .line 12
    new-instance p1, Lmiuix/animation/utils/ObjectPool$Cache;

    .line 14
    const/4 v1, 0x0

    .line 16
    invoke-direct {p1, v1}, Lmiuix/animation/utils/ObjectPool$Cache;-><init>(Lmiuix/animation/utils/ObjectPool$1;)V

    .line 17
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 23
    check-cast p0, Lmiuix/animation/utils/ObjectPool$Cache;

    .line 24
    if-eqz p0, :cond_0

    .line 26
    move-object v1, p0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v1, p1

    .line 30
    :cond_1
    :goto_0
    return-object v1
    .line 31
.end method

.method public static release(Ljava/lang/Object;)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    move-result-object v0

    .line 8
    instance-of v1, p0, Lmiuix/animation/utils/ObjectPool$IPoolObject;

    .line 9
    if-eqz v1, :cond_1

    .line 11
    move-object v1, p0

    .line 13
    check-cast v1, Lmiuix/animation/utils/ObjectPool$IPoolObject;

    .line 14
    invoke-interface {v1}, Lmiuix/animation/utils/ObjectPool$IPoolObject;->clear()V

    .line 16
    goto :goto_0

    .line 19
    :cond_1
    instance-of v1, p0, Ljava/util/Collection;

    .line 20
    if-eqz v1, :cond_2

    .line 22
    move-object v1, p0

    .line 24
    check-cast v1, Ljava/util/Collection;

    .line 25
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 27
    goto :goto_0

    .line 30
    :cond_2
    instance-of v1, p0, Ljava/util/Map;

    .line 31
    if-eqz v1, :cond_3

    .line 33
    move-object v1, p0

    .line 35
    check-cast v1, Ljava/util/Map;

    .line 36
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 38
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 41
    invoke-static {v0, v1}, Lmiuix/animation/utils/ObjectPool;->getObjectCache(Ljava/lang/Class;Z)Lmiuix/animation/utils/ObjectPool$Cache;

    .line 42
    move-result-object v0

    .line 45
    if-eqz v0, :cond_4

    .line 46
    invoke-virtual {v0, p0}, Lmiuix/animation/utils/ObjectPool$Cache;->releaseObject(Ljava/lang/Object;)V

    .line 48
    :cond_4
    return-void
    .line 51
.end method
