.class public Lmiuix/animation/internal/ThreadPoolUtil;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE:I = 0x1e

.field private static final KEEP_POOL_SIZE:I

.field public static final MAX_SPLIT_COUNT:I

.field private static final sCacheThread:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final sSingleThread:Ljava/util/concurrent/Executor;

.field public static sThreadPriority:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 6
    move-result v0

    .line 9
    sput v0, Lmiuix/animation/internal/ThreadPoolUtil;->CPU_COUNT:I

    .line 10
    mul-int/lit8 v1, v0, 0x2

    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 14
    sput v1, Lmiuix/animation/internal/ThreadPoolUtil;->MAX_SPLIT_COUNT:I

    .line 16
    const/4 v2, 0x4

    .line 18
    if-ge v0, v2, :cond_0

    .line 19
    const/4 v0, 0x0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    div-int/lit8 v0, v0, 0x2

    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 25
    :goto_0
    move v3, v0

    .line 27
    sput v3, Lmiuix/animation/internal/ThreadPoolUtil;->KEEP_POOL_SIZE:I

    .line 28
    const/4 v0, -0x2

    .line 30
    sput v0, Lmiuix/animation/internal/ThreadPoolUtil;->sThreadPriority:I

    .line 31
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 33
    add-int/lit8 v4, v1, 0x3

    .line 35
    const-wide/16 v5, 0x1e

    .line 37
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 39
    new-instance v8, Ljava/util/concurrent/SynchronousQueue;

    .line 41
    invoke-direct {v8}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 43
    const-string v1, "AnimThread"

    .line 46
    invoke-static {v1}, Lmiuix/animation/internal/ThreadPoolUtil;->getThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    .line 48
    move-result-object v9

    .line 51
    new-instance v10, Lmiuix/animation/internal/ThreadPoolUtil$1;

    .line 52
    invoke-direct {v10}, Lmiuix/animation/internal/ThreadPoolUtil$1;-><init>()V

    .line 54
    move-object v2, v0

    .line 57
    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 58
    sput-object v0, Lmiuix/animation/internal/ThreadPoolUtil;->sCacheThread:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 61
    const-string v0, "WorkThread"

    .line 63
    invoke-static {v0}, Lmiuix/animation/internal/ThreadPoolUtil;->getThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    .line 65
    move-result-object v0

    .line 68
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 69
    move-result-object v0

    .line 72
    sput-object v0, Lmiuix/animation/internal/ThreadPoolUtil;->sSingleThread:Ljava/util/concurrent/Executor;

    .line 73
    return-void
    .line 75
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    sget-object v0, Lmiuix/animation/internal/ThreadPoolUtil;->sSingleThread:Ljava/util/concurrent/Executor;

    .line 2
    return-object v0
    .line 4
.end method

.method public static getSplitCount(I[I)V
    .locals 4

    .line 1
    div-int/lit16 v0, p0, 0xfa0

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 5
    move-result v0

    .line 8
    sget v2, Lmiuix/animation/internal/ThreadPoolUtil;->MAX_SPLIT_COUNT:I

    .line 9
    if-le v0, v2, :cond_0

    .line 11
    move v0, v2

    .line 13
    :cond_0
    int-to-float p0, p0

    .line 14
    int-to-float v2, v0

    .line 15
    div-float/2addr p0, v2

    .line 16
    float-to-double v2, p0

    .line 17
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 18
    move-result-wide v2

    .line 21
    double-to-int p0, v2

    .line 22
    const/4 v2, 0x0

    .line 23
    aput v0, p1, v2

    .line 24
    aput p0, p1, v1

    .line 26
    return-void
    .line 28
.end method

.method private static getThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 1
    new-instance v0, Lmiuix/animation/internal/ThreadPoolUtil$2;

    .line 2
    invoke-direct {v0, p0}, Lmiuix/animation/internal/ThreadPoolUtil$2;-><init>(Ljava/lang/String;)V

    .line 4
    return-object v0
    .line 7
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lmiuix/animation/internal/ThreadPoolUtil;->sCacheThread:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 4
    return-void
    .line 7
.end method

.method public static setThreadPriority(I)V
    .locals 0

    .line 1
    sput p0, Lmiuix/animation/internal/ThreadPoolUtil;->sThreadPriority:I

    .line 2
    return-void
    .line 4
.end method
