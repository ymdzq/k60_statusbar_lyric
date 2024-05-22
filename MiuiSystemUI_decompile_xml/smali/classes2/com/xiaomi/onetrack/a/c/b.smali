.class public final Lcom/xiaomi/onetrack/a/c/b;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static volatile b:Lcom/xiaomi/onetrack/a/c/b;


# instance fields
.field public final c:Lcom/xiaomi/onetrack/a/c/b$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    .line 5
    const-string v1, "onetrack_ad_monitor_uploader"

    .line 7
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 12
    new-instance v1, Lcom/xiaomi/onetrack/a/c/b$a;

    .line 15
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 17
    move-result-object v0

    .line 20
    invoke-direct {v1, v0}, Lcom/xiaomi/onetrack/a/c/b$a;-><init>(Landroid/os/Looper;)V

    .line 21
    iput-object v1, p0, Lcom/xiaomi/onetrack/a/c/b;->c:Lcom/xiaomi/onetrack/a/c/b$a;

    .line 24
    return-void
    .line 26
.end method

.method public static a()Lcom/xiaomi/onetrack/a/c/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/a/c/b;->b:Lcom/xiaomi/onetrack/a/c/b;

    .line 2
    if-nez v0, :cond_1

    .line 4
    const-class v0, Lcom/xiaomi/onetrack/a/c/b;

    .line 6
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/xiaomi/onetrack/a/c/b;->b:Lcom/xiaomi/onetrack/a/c/b;

    .line 9
    if-nez v1, :cond_0

    .line 11
    new-instance v1, Lcom/xiaomi/onetrack/a/c/b;

    .line 13
    invoke-direct {v1}, Lcom/xiaomi/onetrack/a/c/b;-><init>()V

    .line 15
    sput-object v1, Lcom/xiaomi/onetrack/a/c/b;->b:Lcom/xiaomi/onetrack/a/c/b;

    .line 18
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaomi/onetrack/a/c/b;->b:Lcom/xiaomi/onetrack/a/c/b;

    .line 25
    return-object v0
    .line 27
.end method


# virtual methods
.method public final b()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/xiaomi/onetrack/a/c/b;->c:Lcom/xiaomi/onetrack/a/c/b$a;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 5
    move-result v1

    .line 8
    const-string v2, "AdMonitorUploadTimer"

    .line 9
    if-nez v1, :cond_0

    .line 11
    invoke-static {v0}, Lcom/xiaomi/onetrack/b/n;->a(I)I

    .line 13
    move-result v0

    .line 16
    int-to-long v0, v0

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    const-string/jumbo v4, "will check prio=0, delay="

    .line 20
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 32
    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/onetrack/a/c/b$a;->a(J)V

    .line 36
    goto :goto_0

    .line 39
    :cond_0
    const-string p0, "has message\u3000prio=0"

    .line 40
    invoke-static {v2, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :goto_0
    return-void
    .line 45
.end method
