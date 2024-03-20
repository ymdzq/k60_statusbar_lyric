.class final Lcom/miui/maml/ActionCommand$WifiStateTracker;
.super Lcom/miui/maml/ActionCommand$StateTracker;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WifiStateTracker"
.end annotation


# static fields
.field private static final MAX_SCAN_ATTEMPT:I = 0x3


# instance fields
.field public zConnected:Z

.field private zScanAttempt:I


# direct methods
.method public static synthetic $r8$lambda$sqUA-RGPadtdfG_yqkzwIZTmvZY(Landroid/content/Context;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/miui/maml/ActionCommand$WifiStateTracker;->lambda$requestStateChange$0(Landroid/content/Context;Z)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 461
    invoke-direct {p0}, Lcom/miui/maml/ActionCommand$StateTracker;-><init>()V

    const/4 v0, 0x0

    .line 464
    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$WifiStateTracker;->zConnected:Z

    .line 466
    iput v0, p0, Lcom/miui/maml/ActionCommand$WifiStateTracker;->zScanAttempt:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/maml/ActionCommand$1;)V
    .locals 0

    .line 461
    invoke-direct {p0}, Lcom/miui/maml/ActionCommand$WifiStateTracker;-><init>()V

    return-void
.end method

.method private static synthetic lambda$requestStateChange$0(Landroid/content/Context;Z)V
    .locals 2

    .line 480
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    const-string p0, "ActionCommand"

    const-string p1, "No wifiManager."

    .line 482
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 493
    invoke-static {v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->WifiManager_isWifiApEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 494
    invoke-static {p0, v1}, Lcom/miui/maml/util/HideSdkDependencyUtils;->setWifiApEnabled(Landroid/content/Context;Z)V

    .line 497
    :cond_1
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void
.end method

.method private static wifiStateToFiveState(I)I
    .locals 3

    .line 0
    const/4 v0, 0x3

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    return v0
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 0

    const-string/jumbo p0, "wifi"

    .line 470
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_0

    .line 472
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p0

    invoke-static {p0}, Lcom/miui/maml/ActionCommand$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 503
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eqz v0, :cond_0

    const-string/jumbo v0, "wifi_state"

    const/4 v4, -0x1

    .line 504
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 505
    invoke-static {p2}, Lcom/miui/maml/ActionCommand$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/ActionCommand$StateTracker;->setCurrentState(Landroid/content/Context;I)V

    if-ne v3, p2, :cond_5

    .line 508
    iput-boolean v2, p0, Lcom/miui/maml/ActionCommand$WifiStateTracker;->zConnected:Z

    .line 509
    iput v1, p0, Lcom/miui/maml/ActionCommand$WifiStateTracker;->zScanAttempt:I

    goto :goto_0

    :cond_0
    const-string p1, "android.net.wifi.SCAN_RESULTS"

    .line 511
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 512
    iget p1, p0, Lcom/miui/maml/ActionCommand$WifiStateTracker;->zScanAttempt:I

    if-ge p1, v3, :cond_5

    add-int/2addr p1, v2

    .line 513
    iput p1, p0, Lcom/miui/maml/ActionCommand$WifiStateTracker;->zScanAttempt:I

    if-ne p1, v3, :cond_5

    .line 514
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$WifiStateTracker;->zConnected:Z

    goto :goto_0

    :cond_1
    const-string p1, "android.net.wifi.STATE_CHANGE"

    .line 517
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 518
    iput v3, p0, Lcom/miui/maml/ActionCommand$WifiStateTracker;->zScanAttempt:I

    const-string p1, "networkInfo"

    .line 520
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    if-nez p1, :cond_2

    return-void

    .line 522
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    .line 523
    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-eq p2, p1, :cond_3

    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq p2, p1, :cond_3

    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq p2, p1, :cond_3

    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq p2, p1, :cond_3

    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, p1, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$WifiStateTracker;->zConnected:Z

    :cond_5
    :goto_0
    return-void
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 1

    .line 479
    sget-object p0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/miui/maml/ActionCommand$WifiStateTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/ActionCommand$WifiStateTracker$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Z)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
