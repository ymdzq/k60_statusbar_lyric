.class public final Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final Companion:Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$Companion;


# instance fields
.field public final accessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

.field public final bgExecutor:Ljava/util/concurrent/Executor;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final connectivityManager:Landroid/net/ConnectivityManager;

.field public final context:Landroid/content/Context;

.field public final controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

.field public currentWifiTile:Ljava/lang/ref/WeakReference;

.field public final isMainline:Z

.field public slaveWifiConnected:Z

.field public slaveWifiConnectionInfo:Landroid/net/wifi/WifiInfo;

.field public slaveWifiEnabled:Z

.field public final slaveWifiReceiver:Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$slaveWifiReceiver$1;

.field public final slaveWifiUtils:Lcom/miui/utils/SlaveWifiUtils;

.field public final uiHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$Companion;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$Companion;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->Companion:Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$Companion;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;Lcom/android/systemui/statusbar/connectivity/AccessPointController;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->accessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->bgExecutor:Ljava/util/concurrent/Executor;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->uiHandler:Landroid/os/Handler;

    .line 15
    sget-object p2, Lcom/miui/utils/SlaveWifiUtils;->mInstance:Lcom/miui/utils/SlaveWifiUtils;

    .line 17
    if-nez p2, :cond_1

    .line 19
    const-class p2, Lcom/miui/utils/SlaveWifiUtils;

    .line 21
    monitor-enter p2

    .line 23
    :try_start_0
    sget-object p3, Lcom/miui/utils/SlaveWifiUtils;->mInstance:Lcom/miui/utils/SlaveWifiUtils;

    .line 24
    if-nez p3, :cond_0

    .line 26
    new-instance p3, Lcom/miui/utils/SlaveWifiUtils;

    .line 28
    invoke-direct {p3, p1}, Lcom/miui/utils/SlaveWifiUtils;-><init>(Landroid/content/Context;)V

    .line 30
    sput-object p3, Lcom/miui/utils/SlaveWifiUtils;->mInstance:Lcom/miui/utils/SlaveWifiUtils;

    .line 33
    :cond_0
    monitor-exit p2

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0

    .line 39
    :cond_1
    :goto_0
    sget-object p2, Lcom/miui/utils/SlaveWifiUtils;->mInstance:Lcom/miui/utils/SlaveWifiUtils;

    .line 40
    iput-object p2, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->slaveWifiUtils:Lcom/miui/utils/SlaveWifiUtils;

    .line 42
    const-string p3, "connectivity"

    .line 44
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 49
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 50
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 52
    iget-boolean p1, p2, Lcom/miui/utils/SlaveWifiUtils;->mIsMainline:Z

    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->isMainline:Z

    .line 56
    new-instance p1, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$slaveWifiReceiver$1;

    .line 58
    invoke-direct {p1, p0}, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$slaveWifiReceiver$1;-><init>(Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;)V

    .line 60
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->slaveWifiReceiver:Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$slaveWifiReceiver$1;

    .line 63
    new-instance p1, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$1;

    .line 65
    const/4 p2, 0x0

    .line 67
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$1;-><init>(Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;I)V

    .line 68
    invoke-interface {p5, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 71
    return-void
    .line 74
.end method

.method public static final access$setSlaveWifiConnected(Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->slaveWifiUtils:Lcom/miui/utils/SlaveWifiUtils;

    .line 2
    invoke-virtual {v0}, Lcom/miui/utils/SlaveWifiUtils;->getWifiSlaveConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 4
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->slaveWifiConnectionInfo:Landroid/net/wifi/WifiInfo;

    .line 8
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 10
    invoke-virtual {v0}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->isCollapsed()Z

    .line 12
    move-result v0

    .line 15
    if-nez v0, :cond_3

    .line 16
    iget-boolean v0, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->slaveWifiConnected:Z

    .line 18
    if-nez v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->slaveWifiConnectionInfo:Landroid/net/wifi/WifiInfo;

    .line 22
    if-eqz v0, :cond_2

    .line 24
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 29
    const-string v1, "<unknown ssid>"

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->slaveWifiConnectionInfo:Landroid/net/wifi/WifiInfo;

    .line 38
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 47
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->slaveWifiConnected:Z

    .line 54
    if-eqz v0, :cond_3

    .line 56
    :cond_2
    new-instance v0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$1;

    .line 58
    const/4 v1, 0x1

    .line 60
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$1;-><init>(Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;I)V

    .line 61
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->uiHandler:Landroid/os/Handler;

    .line 64
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    :cond_3
    return-void
    .line 69
.end method
