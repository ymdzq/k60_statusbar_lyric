.class public final Lcom/xiaomi/onetrack/api/ar;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static volatile k:Lcom/xiaomi/onetrack/api/ar;


# instance fields
.field public volatile d:Lcom/miui/analytics/ITrack;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Landroid/content/Context;

.field public final j:Lcom/xiaomi/onetrack/api/ar$b;

.field public final n:Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;

.field public final o:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    iput-object v0, p0, Lcom/xiaomi/onetrack/api/ar;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    iput-object v0, p0, Lcom/xiaomi/onetrack/api/ar;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 22
    new-instance v0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;

    .line 25
    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;-><init>(Lcom/xiaomi/onetrack/api/ar;)V

    .line 27
    iput-object v0, p0, Lcom/xiaomi/onetrack/api/ar;->n:Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;

    .line 30
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/xiaomi/onetrack/api/ar;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    sget-object v0, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    .line 39
    iput-object v0, p0, Lcom/xiaomi/onetrack/api/ar;->g:Landroid/content/Context;

    .line 41
    new-instance v0, Landroid/os/HandlerThread;

    .line 43
    const-string v1, "onetrack_service_connect"

    .line 45
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 50
    new-instance v1, Lcom/xiaomi/onetrack/api/ar$b;

    .line 53
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 55
    move-result-object v0

    .line 58
    invoke-direct {v1, p0, v0}, Lcom/xiaomi/onetrack/api/ar$b;-><init>(Lcom/xiaomi/onetrack/api/ar;Landroid/os/Looper;)V

    .line 59
    iput-object v1, p0, Lcom/xiaomi/onetrack/api/ar;->j:Lcom/xiaomi/onetrack/api/ar$b;

    .line 62
    const/4 p0, 0x2

    .line 64
    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 65
    return-void
    .line 68
.end method

.method public static a()Lcom/xiaomi/onetrack/api/ar;
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/api/ar;->k:Lcom/xiaomi/onetrack/api/ar;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/xiaomi/onetrack/api/ar;->k:Lcom/xiaomi/onetrack/api/ar;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/xiaomi/onetrack/api/ar;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/xiaomi/onetrack/api/ar;->k:Lcom/xiaomi/onetrack/api/ar;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/xiaomi/onetrack/api/ar;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/api/ar;-><init>()V

    sput-object v1, Lcom/xiaomi/onetrack/api/ar;->k:Lcom/xiaomi/onetrack/api/ar;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaomi/onetrack/api/ar;->k:Lcom/xiaomi/onetrack/api/ar;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "ServiceConnectManager"

    const-string/jumbo v1, "trackCacheData: appId:"

    .line 8
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_eventName:_data:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ar;->d:Lcom/miui/analytics/ITrack;

    .line 10
    sget-object v1, Lcom/xiaomi/onetrack/f/a;->e:Ljava/lang/String;

    .line 11
    check-cast p0, Lcom/miui/analytics/ITrack$Stub$Proxy;

    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/miui/analytics/ITrack$Stub$Proxy;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "trackCacheData error:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-static {p0, p1, v0}, Lcom/xiaomi/onetrack/CrashAnalysis$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/xiaomi/onetrack/api/ar;->d:Lcom/miui/analytics/ITrack;

    .line 3
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ar;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ar;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    return-void
    .line 16
.end method

.method public final f()V
    .locals 5

    .line 1
    const-string v0, "ServiceConnectManager"

    .line 2
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ar;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ar;->g:Landroid/content/Context;

    .line 12
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/ar;->n:Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;

    .line 14
    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v2

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    const-string/jumbo v4, "unBindService Throwable: "

    .line 23
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 32
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 39
    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/ar;->c()V

    .line 43
    new-instance p0, Ljava/lang/StringBuilder;

    .line 46
    const-string/jumbo v2, "unBindService  mIsBindSuccess:"

    .line 48
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 54
    move-result v1

    .line 57
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 64
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
    .line 68
.end method
