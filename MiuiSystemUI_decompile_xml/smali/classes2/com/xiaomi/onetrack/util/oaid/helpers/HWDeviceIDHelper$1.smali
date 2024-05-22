.class public final Lcom/xiaomi/onetrack/util/oaid/helpers/HWDeviceIDHelper$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/util/oaid/helpers/d;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/util/oaid/helpers/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/HWDeviceIDHelper$1;->a:Lcom/xiaomi/onetrack/util/oaid/helpers/d;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/HWDeviceIDHelper$1;->a:Lcom/xiaomi/onetrack/util/oaid/helpers/d;

    .line 2
    iget-object p0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/d;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 4
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    const-wide/16 v0, 0x1

    .line 8
    invoke-virtual {p0, p2, v0, v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    const-string p1, "HWDeviceIDHelper"

    .line 15
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 20
    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :goto_0
    return-void
    .line 24
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
