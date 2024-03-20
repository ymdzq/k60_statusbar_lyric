.class final Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AdvertisingConnection"
.end annotation


# instance fields
.field private b:Z

.field private c:Landroid/os/IBinder;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 425
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/onetrack/util/h;)V
    .locals 0

    .line 422
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/IBinder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;->c:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-nez v0, :cond_2

    .line 444
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;->b:Z

    if-nez v0, :cond_2

    .line 445
    monitor-enter p0

    const-wide/16 v0, 0x7530

    .line 446
    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 447
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;->c:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    .line 450
    monitor-exit p0

    goto :goto_0

    .line 448
    :cond_1
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "Not connect or connect timeout to google play service"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 450
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 452
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;->c:Landroid/os/IBinder;

    return-object p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 429
    monitor-enter p0

    .line 430
    :try_start_0
    iput-object p2, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;->c:Landroid/os/IBinder;

    .line 431
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 432
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x1

    .line 436
    iput-boolean p1, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;->b:Z

    const/4 p1, 0x0

    .line 437
    iput-object p1, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;->c:Landroid/os/IBinder;

    return-void
.end method
