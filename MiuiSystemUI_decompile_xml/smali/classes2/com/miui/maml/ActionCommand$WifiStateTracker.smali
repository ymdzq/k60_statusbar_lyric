.class final Lcom/miui/maml/ActionCommand$WifiStateTracker;
.super Lcom/miui/maml/ActionCommand$StateTracker;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final MAX_SCAN_ATTEMPT:I = 0x3


# instance fields
.field public zConnected:Z

.field private zScanAttempt:I


# direct methods
.method public static synthetic $r8$lambda$sqUA-RGPadtdfG_yqkzwIZTmvZY(Landroid/content/Context;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/miui/maml/ActionCommand$WifiStateTracker;->lambda$requestStateChange$0(Landroid/content/Context;Z)V

    .line 2
    return-void
    .line 5
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/ActionCommand$StateTracker;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$WifiStateTracker;->zConnected:Z

    .line 3
    iput v0, p0, Lcom/miui/maml/ActionCommand$WifiStateTracker;->zScanAttempt:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/ActionCommand$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/miui/maml/ActionCommand$WifiStateTracker;-><init>()V

    return-void
.end method

.method private static synthetic lambda$requestStateChange$0(Landroid/content/Context;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    const-string/jumbo v1, "wifi"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 12
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 13
    if-nez v0, :cond_0

    .line 15
    const-string p0, "ActionCommand"

    .line 17
    const-string p1, "No wifiManager."

    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-void

    .line 24
    :cond_0
    if-eqz p1, :cond_1

    .line 25
    invoke-static {v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->WifiManager_isWifiApEnabled(Landroid/net/wifi/WifiManager;)Z

    .line 27
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    const/4 v1, 0x0

    .line 33
    invoke-static {p0, v1}, Lcom/miui/maml/util/HideSdkDependencyUtils;->setWifiApEnabled(Landroid/content/Context;Z)V

    .line 34
    :cond_1
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 37
    return-void
    .line 40
.end method

.method private static wifiStateToFiveState(I)I
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eqz p0, :cond_3

    .line 3
    const/4 v1, 0x1

    .line 5
    if-eq p0, v1, :cond_2

    .line 6
    const/4 v2, 0x2

    .line 8
    if-eq p0, v2, :cond_1

    .line 9
    if-eq p0, v0, :cond_0

    .line 11
    const/4 p0, 0x4

    .line 13
    return p0

    .line 14
    :cond_0
    return v1

    .line 15
    :cond_1
    return v2

    .line 16
    :cond_2
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_3
    return v0
    .line 19
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 0

    .line 1
    const-string/jumbo p0, "wifi"

    .line 2
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    move-result-object p0

    .line 8
    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    .line 13
    move-result p0

    .line 16
    invoke-static {p0}, Lcom/miui/maml/ActionCommand$WifiStateTracker;->wifiStateToFiveState(I)I

    .line 17
    move-result p0

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, 0x4

    .line 22
    return p0
    .line 23
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x3

    .line 14
    if-eqz v0, :cond_0

    .line 15
    const-string/jumbo v0, "wifi_state"

    .line 17
    const/4 v4, -0x1

    .line 20
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 21
    move-result p2

    .line 24
    invoke-static {p2}, Lcom/miui/maml/ActionCommand$WifiStateTracker;->wifiStateToFiveState(I)I

    .line 25
    move-result v0

    .line 28
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/ActionCommand$StateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 29
    if-ne v3, p2, :cond_5

    .line 32
    iput-boolean v2, p0, Lcom/miui/maml/ActionCommand$WifiStateTracker;->zConnected:Z

    .line 34
    iput v1, p0, Lcom/miui/maml/ActionCommand$WifiStateTracker;->zScanAttempt:I

    .line 36
    goto :goto_0

    .line 38
    :cond_0
    const-string p1, "android.net.wifi.SCAN_RESULTS"

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    iget p1, p0, Lcom/miui/maml/ActionCommand$WifiStateTracker;->zScanAttempt:I

    .line 51
    if-ge p1, v3, :cond_5

    .line 53
    add-int/2addr p1, v2

    .line 55
    iput p1, p0, Lcom/miui/maml/ActionCommand$WifiStateTracker;->zScanAttempt:I

    .line 56
    if-ne p1, v3, :cond_5

    .line 58
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$WifiStateTracker;->zConnected:Z

    .line 60
    goto :goto_0

    .line 62
    :cond_1
    const-string p1, "android.net.wifi.STATE_CHANGE"

    .line 63
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result p1

    .line 72
    if-eqz p1, :cond_5

    .line 73
    iput v3, p0, Lcom/miui/maml/ActionCommand$WifiStateTracker;->zScanAttempt:I

    .line 75
    const-string p1, "networkInfo"

    .line 77
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 79
    move-result-object p1

    .line 82
    check-cast p1, Landroid/net/NetworkInfo;

    .line 83
    if-nez p1, :cond_2

    .line 85
    return-void

    .line 87
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 88
    move-result-object p1

    .line 91
    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    .line 92
    if-eq p2, p1, :cond_3

    .line 94
    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 96
    if-eq p2, p1, :cond_3

    .line 98
    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    .line 100
    if-eq p2, p1, :cond_3

    .line 102
    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    .line 104
    if-eq p2, p1, :cond_3

    .line 106
    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 108
    if-ne p2, p1, :cond_4

    .line 110
    :cond_3
    move v1, v2

    .line 112
    :cond_4
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$WifiStateTracker;->zConnected:Z

    .line 113
    :cond_5
    :goto_0
    return-void
    .line 115
.end method

.method public requestStateChange(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    sget-object p0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 2
    new-instance v0, Lcom/miui/maml/ActionCommand$WifiStateTracker$$ExternalSyntheticLambda0;

    .line 4
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/ActionCommand$WifiStateTracker$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Z)V

    .line 6
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    return-void
    .line 12
.end method
