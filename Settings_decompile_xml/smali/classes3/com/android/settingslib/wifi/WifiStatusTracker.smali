.class public Lcom/android/settingslib/wifi/WifiStatusTracker;
.super Ljava/lang/Object;
.source "WifiStatusTracker.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation


# static fields
.field private static final SSDF:Ljava/text/SimpleDateFormat;


# instance fields
.field public connected:Z

.field public enabled:Z

.field public isCaptivePortal:Z

.field public isCarrierMerged:Z

.field public isDefaultNetwork:Z

.field public level:I

.field private final mCacheListener:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;

.field private final mCallback:Ljava/lang/Runnable;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDefaultNetwork:Landroid/net/Network;

.field private final mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private final mHandler:Landroid/os/Handler;

.field private final mHistory:[Ljava/lang/String;

.field private mHistoryIndex:I

.field private mLastPrimaryWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mLastPrimaryWifiNetwork:I

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field private final mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private final mNetworks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryNetworkId:I

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

.field public rssi:I

.field public ssid:Ljava/lang/String;

.field public state:I

.field public statusLabel:Ljava/lang/String;

.field public subId:I

.field public wifiStandard:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmMainThreadHandler(Lcom/android/settingslib/wifi/WifiStatusTracker;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworks(Lcom/android/settingslib/wifi/WifiStatusTracker;)Ljava/util/Set;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworks:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrimaryNetworkId(Lcom/android/settingslib/wifi/WifiStatusTracker;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mPrimaryNetworkId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmDefaultNetwork(Lcom/android/settingslib/wifi/WifiStatusTracker;Landroid/net/Network;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mDefaultNetwork:Landroid/net/Network;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDefaultNetworkCapabilities(Lcom/android/settingslib/wifi/WifiStatusTracker;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPrimaryNetworkId(Lcom/android/settingslib/wifi/WifiStatusTracker;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mPrimaryNetworkId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mconnectionIsWifi(Lcom/android/settingslib/wifi/WifiStatusTracker;Landroid/net/NetworkCapabilities;Landroid/net/wifi/WifiInfo;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/wifi/WifiStatusTracker;->connectionIsWifi(Landroid/net/NetworkCapabilities;Landroid/net/wifi/WifiInfo;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetMainOrUnderlyingWifiInfo(Lcom/android/settingslib/wifi/WifiStatusTracker;Landroid/net/NetworkCapabilities;)Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->getMainOrUnderlyingWifiInfo(Landroid/net/NetworkCapabilities;)Landroid/net/wifi/WifiInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mpostResults(Lcom/android/settingslib/wifi/WifiStatusTracker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->postResults()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrecordLastWifiNetwork(Lcom/android/settingslib/wifi/WifiStatusTracker;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->recordLastWifiNetwork(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateStatusLabel(Lcom/android/settingslib/wifi/WifiStatusTracker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateStatusLabel()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateWifiInfo(Lcom/android/settingslib/wifi/WifiStatusTracker;Landroid/net/wifi/WifiInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateWifiInfo(Landroid/net/wifi/WifiInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetSSDF()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->SSDF:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->SSDF:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/NetworkScoreManager;Landroid/net/ConnectivityManager;Ljava/lang/Runnable;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 205
    invoke-direct/range {v0 .. v7}, Lcom/android/settingslib/wifi/WifiStatusTracker;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/NetworkScoreManager;Landroid/net/ConnectivityManager;Ljava/lang/Runnable;Landroid/os/Handler;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/NetworkScoreManager;Landroid/net/ConnectivityManager;Ljava/lang/Runnable;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 4

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworks:Ljava/util/Set;

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mLastPrimaryWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, -0x1

    .line 76
    iput v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mLastPrimaryWifiNetwork:I

    const/16 v1, 0x20

    new-array v1, v1, [Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mHistory:[Ljava/lang/String;

    .line 100
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 101
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/16 v2, 0xf

    .line 102
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 103
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v3, 0x0

    .line 104
    invoke-virtual {v1, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 106
    new-instance v1, Lcom/android/settingslib/wifi/WifiStatusTracker$1;

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/wifi/WifiStatusTracker$1;-><init>(Lcom/android/settingslib/wifi/WifiStatusTracker;I)V

    iput-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 162
    new-instance v1, Lcom/android/settingslib/wifi/WifiStatusTracker$2;

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/wifi/WifiStatusTracker$2;-><init>(Lcom/android/settingslib/wifi/WifiStatusTracker;I)V

    iput-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 184
    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mDefaultNetwork:Landroid/net/Network;

    .line 185
    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 211
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    .line 212
    iput-object p2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 213
    new-instance p2, Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-direct {p2, p1}, Landroid/net/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    .line 214
    iput-object p3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 215
    iput-object p4, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 216
    iput-object p5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mCallback:Ljava/lang/Runnable;

    if-nez p7, :cond_0

    .line 218
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "WifiStatusTrackerHandler"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 220
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 222
    :cond_0
    iput-object p7, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mHandler:Landroid/os/Handler;

    :goto_0
    if-nez p6, :cond_1

    .line 225
    new-instance p6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p6, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_1
    iput-object p6, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mMainThreadHandler:Landroid/os/Handler;

    .line 226
    new-instance p1, Lcom/android/settingslib/wifi/WifiStatusTracker$3;

    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, p2}, Lcom/android/settingslib/wifi/WifiStatusTracker$3;-><init>(Lcom/android/settingslib/wifi/WifiStatusTracker;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mCacheListener:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;

    return-void
.end method

.method private connectionIsWifi(Landroid/net/NetworkCapabilities;)Z
    .locals 1

    .line 484
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->getMainOrUnderlyingWifiInfo(Landroid/net/NetworkCapabilities;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 482
    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->connectionIsWifi(Landroid/net/NetworkCapabilities;Landroid/net/wifi/WifiInfo;)Z

    move-result p0

    return p0
.end method

.method private connectionIsWifi(Landroid/net/NetworkCapabilities;Landroid/net/wifi/WifiInfo;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 492
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move p0, v0

    :cond_2
    return p0
.end method

.method private getMainOrUnderlyingWifiInfo(Landroid/net/NetworkCapabilities;)Landroid/net/wifi/WifiInfo;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 426
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->getMainWifiInfo(Landroid/net/NetworkCapabilities;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const/4 v2, 0x0

    .line 433
    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    .line 437
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getUnderlyingNetworks()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v0

    .line 445
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 446
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 447
    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 448
    invoke-direct {p0, v1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->getMainWifiInfo(Landroid/net/NetworkCapabilities;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    return-object v1

    :cond_5
    return-object v0
.end method

.method private getMainWifiInfo(Landroid/net/NetworkCapabilities;)Landroid/net/wifi/WifiInfo;
    .locals 3

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 462
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 463
    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    return-object p0

    .line 468
    :cond_3
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object p1

    .line 469
    instance-of v0, p1, Landroid/net/vcn/VcnTransportInfo;

    if-eqz v0, :cond_4

    .line 473
    check-cast p1, Landroid/net/vcn/VcnTransportInfo;

    invoke-virtual {p1}, Landroid/net/vcn/VcnTransportInfo;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    return-object p0

    .line 474
    :cond_4
    instance-of v0, p1, Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_5

    .line 475
    check-cast p1, Landroid/net/wifi/WifiInfo;

    return-object p1

    :cond_5
    return-object p0
.end method

.method private getValidSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 0

    .line 502
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "<unknown ssid>"

    .line 503
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private maybeRequestNetworkScore()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Landroid/net/NetworkKey;->createFromWifiInfo(Landroid/net/wifi/WifiInfo;)Landroid/net/NetworkKey;

    move-result-object v0

    .line 369
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/NetworkKey;)Landroid/net/ScoredNetwork;

    move-result-object v1

    if-nez v1, :cond_0

    .line 370
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    filled-new-array {v0}, [Landroid/net/NetworkKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkScoreManager;->requestScores([Landroid/net/NetworkKey;)Z

    :cond_0
    return-void
.end method

.method private postResults()V
    .locals 0

    .line 515
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private recordLastWifiNetwork(Ljava/lang/String;)V
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mHistory:[Ljava/lang/String;

    iget v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mHistoryIndex:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 511
    rem-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mHistoryIndex:I

    return-void
.end method

.method private updateRssi(I)V
    .locals 1

    .line 360
    iput p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->rssi:I

    const/4 v0, 0x5

    .line 364
    invoke-static {p1, v0}, Landroid/net/wifi/MiuiWifiManager;->calculateSignalLevel(II)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->level:I

    return-void
.end method

.method private updateStatusLabel()V
    .locals 4

    .line 375
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 380
    invoke-direct {p0, v0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->connectionIsWifi(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->isDefaultNetwork:Z

    if-eqz v0, :cond_2

    .line 383
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

    goto :goto_1

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 386
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v3

    .line 385
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 388
    :goto_1
    iput-boolean v2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->isCaptivePortal:Z

    if-eqz v0, :cond_7

    const/16 v3, 0x11

    .line 390
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 391
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settingslib/R$string;->wifi_status_sign_in_required:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    .line 392
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->isCaptivePortal:Z

    return-void

    :cond_3
    const/16 v1, 0x18

    .line 394
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 395
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->wifi_limited_connection:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    return-void

    :cond_4
    const/16 v1, 0x10

    .line 397
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 398
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "private_dns_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 400
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->isPrivateDnsBroken()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 401
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->private_dns_broken:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    goto :goto_2

    .line 403
    :cond_5
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->wifi_status_no_internet:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    :goto_2
    return-void

    .line 406
    :cond_6
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->isDefaultNetwork:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_7

    .line 407
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 408
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->wifi_connected_low_quality:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    return-void

    .line 413
    :cond_7
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 414
    invoke-static {v1}, Landroid/net/NetworkKey;->createFromWifiInfo(Landroid/net/wifi/WifiInfo;)Landroid/net/NetworkKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/NetworkKey;)Landroid/net/ScoredNetwork;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_3

    .line 416
    :cond_8
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->rssi:I

    invoke-static {v1, v0, v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeedLabel(Landroid/content/Context;Landroid/net/ScoredNetwork;I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    return-void
.end method

.method private updateWifiInfo(Landroid/net/wifi/WifiInfo;)V
    .locals 1

    .line 334
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateWifiState()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 335
    :goto_0
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    .line 336
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v0, 0x0

    .line 337
    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 339
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 342
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->getValidSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    goto :goto_2

    .line 340
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getPasspointProviderFriendlyName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    .line 344
    :goto_2
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateRssi(I)V

    .line 345
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->maybeRequestNetworkScore()V

    .line 346
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->wifiStandard:I

    .line 347
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isCarrierMerged()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->isCarrierMerged:Z

    .line 348
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSubscriptionId()I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->subId:I

    .line 349
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateRssi(I)V

    .line 350
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->maybeRequestNetworkScore()V

    :cond_3
    return-void
.end method

.method private updateWifiState()V
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 356
    :goto_0
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->enabled:Z

    return-void
.end method


# virtual methods
.method public fetchInitialState()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    return-void

    .line 261
    :cond_0
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateWifiState()V

    .line 262
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    .line 263
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    const/4 v0, 0x0

    .line 265
    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 266
    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 268
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_4

    .line 270
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->getValidSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    goto :goto_2

    .line 271
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getPasspointProviderFriendlyName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    .line 275
    :goto_2
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isCarrierMerged()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->isCarrierMerged:Z

    .line 276
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->subId:I

    .line 277
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateRssi(I)V

    .line 278
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->maybeRequestNetworkScore()V

    .line 281
    :cond_4
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateStatusLabel()V

    return-void
.end method

.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    return-void

    .line 288
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 289
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 290
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateWifiState()V

    :cond_1
    return-void
.end method

.method public setListening(Z)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 238
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-virtual {p1, v0, v1, v0}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V

    .line 240
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mCacheListener:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiNetworkScoreCache;->registerListener(Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;)V

    .line 241
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 243
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 245
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-virtual {p1, v0, v1}, Landroid/net/NetworkScoreManager;->unregisterNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V

    .line 247
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-virtual {p1}, Landroid/net/wifi/WifiNetworkScoreCache;->unregisterListener()V

    .line 248
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 249
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :goto_0
    return-void
.end method
