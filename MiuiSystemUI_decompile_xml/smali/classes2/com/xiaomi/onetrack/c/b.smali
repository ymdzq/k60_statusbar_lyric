.class public abstract Lcom/xiaomi/onetrack/c/b;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static c:Landroid/os/Handler;


# direct methods
.method public static a(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/c/b;->c:Landroid/os/Handler;

    .line 2
    if-nez v0, :cond_1

    .line 4
    const-class v0, Lcom/xiaomi/onetrack/c/b;

    .line 6
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/xiaomi/onetrack/c/b;->c:Landroid/os/Handler;

    .line 9
    if-nez v1, :cond_0

    .line 11
    new-instance v1, Landroid/os/HandlerThread;

    .line 13
    const-string v2, "onetrack_db"

    .line 15
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 20
    new-instance v2, Landroid/os/Handler;

    .line 23
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 25
    move-result-object v1

    .line 28
    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 29
    sput-object v2, Lcom/xiaomi/onetrack/c/b;->c:Landroid/os/Handler;

    .line 32
    :cond_0
    monitor-exit v0

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0

    .line 38
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaomi/onetrack/c/b;->c:Landroid/os/Handler;

    .line 39
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    return-void
    .line 44
.end method
