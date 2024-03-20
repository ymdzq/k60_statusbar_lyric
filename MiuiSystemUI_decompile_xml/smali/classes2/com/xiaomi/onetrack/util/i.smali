.class public abstract Lcom/xiaomi/onetrack/util/i;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    add-int/lit8 v4, v0, 0x1

    .line 11
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 13
    const-wide/16 v5, 0xa

    .line 15
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 17
    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 19
    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 21
    move-object v2, v0

    .line 24
    move v3, v4

    .line 25
    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 26
    sput-object v0, Lcom/xiaomi/onetrack/util/i;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 31
    return-void
    .line 34
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/xiaomi/onetrack/util/i;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :catchall_0
    return-void
    .line 7
.end method
