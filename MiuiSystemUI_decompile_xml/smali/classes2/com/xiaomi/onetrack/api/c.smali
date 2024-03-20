.class public final Lcom/xiaomi/onetrack/api/c;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static volatile c:Lcom/xiaomi/onetrack/api/c; = null

.field public static volatile h:Z = false

.field public static volatile j:Z = false


# instance fields
.field public final d:Lcom/xiaomi/onetrack/api/c$a;

.field public final i:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public l:Z

.field public m:Z

.field public final n:Lcom/xiaomi/onetrack/api/d;

.field public final o:Lcom/xiaomi/onetrack/api/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/xiaomi/onetrack/api/c;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    iput-object v0, p0, Lcom/xiaomi/onetrack/api/c;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    iput-boolean v1, p0, Lcom/xiaomi/onetrack/api/c;->l:Z

    .line 20
    iput-boolean v1, p0, Lcom/xiaomi/onetrack/api/c;->m:Z

    .line 22
    new-instance v0, Lcom/xiaomi/onetrack/api/d;

    .line 24
    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/api/d;-><init>(Lcom/xiaomi/onetrack/api/c;)V

    .line 26
    iput-object v0, p0, Lcom/xiaomi/onetrack/api/c;->n:Lcom/xiaomi/onetrack/api/d;

    .line 29
    new-instance v0, Lcom/xiaomi/onetrack/api/e;

    .line 31
    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/api/e;-><init>(Lcom/xiaomi/onetrack/api/c;)V

    .line 33
    iput-object v0, p0, Lcom/xiaomi/onetrack/api/c;->o:Lcom/xiaomi/onetrack/api/e;

    .line 36
    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    .line 38
    const-string v1, "onetrack_broadcast_manager"

    .line 40
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 45
    new-instance v1, Lcom/xiaomi/onetrack/api/c$a;

    .line 48
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 50
    move-result-object v0

    .line 53
    invoke-direct {v1, p0, v0}, Lcom/xiaomi/onetrack/api/c$a;-><init>(Lcom/xiaomi/onetrack/api/c;Landroid/os/Looper;)V

    .line 54
    iput-object v1, p0, Lcom/xiaomi/onetrack/api/c;->d:Lcom/xiaomi/onetrack/api/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :catchall_0
    return-void
    .line 59
.end method

.method public static a()Lcom/xiaomi/onetrack/api/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/api/c;->c:Lcom/xiaomi/onetrack/api/c;

    .line 2
    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/xiaomi/onetrack/api/c;->c:Lcom/xiaomi/onetrack/api/c;

    .line 6
    if-nez v0, :cond_1

    .line 8
    const-class v0, Lcom/xiaomi/onetrack/api/c;

    .line 10
    monitor-enter v0

    .line 12
    :try_start_0
    sget-object v1, Lcom/xiaomi/onetrack/api/c;->c:Lcom/xiaomi/onetrack/api/c;

    .line 13
    if-nez v1, :cond_0

    .line 15
    new-instance v1, Lcom/xiaomi/onetrack/api/c;

    .line 17
    invoke-direct {v1}, Lcom/xiaomi/onetrack/api/c;-><init>()V

    .line 19
    sput-object v1, Lcom/xiaomi/onetrack/api/c;->c:Lcom/xiaomi/onetrack/api/c;

    .line 22
    :cond_0
    monitor-exit v0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v1

    .line 28
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaomi/onetrack/api/c;->c:Lcom/xiaomi/onetrack/api/c;

    .line 29
    return-object v0
    .line 31
.end method
