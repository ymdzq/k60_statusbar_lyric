.class public final Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final SSDF:Ljava/text/SimpleDateFormat;


# instance fields
.field public connected:Z

.field public enabled:Z

.field public level:I

.field public final mCallback:Ljava/lang/Runnable;

.field public final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public final mHandler:Landroid/os/Handler;

.field public final mHistory:[Ljava/lang/String;

.field public mHistoryIndex:I

.field public mLastPrimaryWifiInfo:Landroid/net/wifi/WifiInfo;

.field public mLastPrimaryWifiNetwork:I

.field public final mNetworkCallback:Lcom/android/systemui/statusbar/wifi/WifiStatusTracker$1;

.field public final mNetworkRequest:Landroid/net/NetworkRequest;

.field public final mNetworks:Ljava/util/Set;

.field public mWifiInfo:Landroid/net/wifi/WifiInfo;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;

.field public macAddress:Landroid/net/MacAddress;

.field public meteredHint:Z

.field public rssi:I

.field public ssid:Ljava/lang/String;

.field public standard:I

.field public validate:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    const-string v1, "MM-dd HH:mm:ss.SSS"

    .line 4
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->SSDF:Ljava/text/SimpleDateFormat;

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$$ExternalSyntheticLambda0;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    .line 5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mNetworks:Ljava/util/Set;

    .line 10
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mLastPrimaryWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 13
    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mLastPrimaryWifiNetwork:I

    .line 16
    const/16 v0, 0x20

    .line 18
    new-array v0, v0, [Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mHistory:[Ljava/lang/String;

    .line 22
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    .line 24
    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 26
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    .line 29
    move-result-object v0

    .line 32
    const/16 v1, 0xf

    .line 33
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 35
    move-result-object v0

    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 40
    move-result-object v0

    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 45
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 49
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 53
    new-instance v0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker$1;

    .line 55
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker$1;-><init>(Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;)V

    .line 57
    iput-object v0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mNetworkCallback:Lcom/android/systemui/statusbar/wifi/WifiStatusTracker$1;

    .line 60
    iput-object p1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 62
    iput-object p2, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 64
    iput-object p3, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mCallback:Ljava/lang/Runnable;

    .line 66
    new-instance p1, Landroid/os/Handler;

    .line 68
    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 70
    move-result-object p2

    .line 73
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 74
    iput-object p1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mHandler:Landroid/os/Handler;

    .line 77
    return-void
    .line 79
.end method


# virtual methods
.method public final fetchInitialState()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->updateWifiState()V

    .line 7
    iget-object v1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 10
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 13
    move-result-object v1

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 20
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    goto :goto_0

    .line 26
    :cond_1
    move v2, v3

    .line 27
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->connected:Z

    .line 28
    const/4 v1, 0x0

    .line 30
    iput-object v1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 31
    iput-object v1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    .line 33
    iput v3, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->standard:I

    .line 35
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->meteredHint:Z

    .line 37
    iput-object v1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->macAddress:Landroid/net/MacAddress;

    .line 39
    if-eqz v2, :cond_6

    .line 41
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 43
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 47
    if-eqz v0, :cond_6

    .line 49
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    .line 51
    move-result v0

    .line 54
    if-nez v0, :cond_4

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 57
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    .line 59
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    goto :goto_1

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 66
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 71
    if-eqz v0, :cond_3

    .line 72
    const-string v2, "<unknown ssid>"

    .line 74
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result v2

    .line 79
    if-nez v2, :cond_3

    .line 80
    move-object v1, v0

    .line 82
    :cond_3
    iput-object v1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    .line 83
    goto :goto_2

    .line 85
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 86
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getPasspointProviderFriendlyName()Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 91
    iput-object v0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    .line 92
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 94
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    .line 96
    move-result v0

    .line 99
    iput v0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->standard:I

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 102
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMeteredHint()Z

    .line 104
    move-result v0

    .line 107
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->meteredHint:Z

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 110
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getApMldMacAddress()Landroid/net/MacAddress;

    .line 112
    move-result-object v0

    .line 115
    iput-object v0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->macAddress:Landroid/net/MacAddress;

    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->meteredHint:Z

    .line 118
    if-eqz v0, :cond_5

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->updateMeteredHint()V

    .line 122
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 125
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 127
    move-result v0

    .line 130
    iput v0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->rssi:I

    .line 131
    const/4 v1, 0x5

    .line 133
    invoke-static {v0, v1}, Landroid/net/wifi/MiuiWifiManager;->calculateSignalLevel(II)I

    .line 134
    move-result v0

    .line 137
    iput v0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->level:I

    .line 138
    :cond_6
    return-void
    .line 140
.end method

.method public final updateMeteredHint()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getInformationElements()Ljava/util/List;

    .line 7
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 13
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getInformationElements()Ljava/util/List;

    .line 15
    move-result-object v0

    .line 18
    new-array v2, v1, [Landroid/net/wifi/ScanResult$InformationElement;

    .line 19
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 24
    check-cast v0, [Landroid/net/wifi/ScanResult$InformationElement;

    .line 25
    invoke-static {v0}, Lcom/miui/utils/SlaveWifiUtils;->isMeteredHint([Landroid/net/wifi/ScanResult$InformationElement;)Z

    .line 27
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    const/4 v1, 0x1

    .line 33
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->meteredHint:Z

    .line 34
    return-void
    .line 36
.end method

.method public final updateWifiInfo(Landroid/net/wifi/WifiInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->updateWifiState()V

    .line 2
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    const/4 v1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v1, v0

    .line 10
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->connected:Z

    .line 11
    iput-object p1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 13
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    .line 16
    iput v0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->standard:I

    .line 18
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->meteredHint:Z

    .line 20
    iput-object v1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->macAddress:Landroid/net/MacAddress;

    .line 22
    if-eqz p1, :cond_5

    .line 24
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    .line 26
    move-result p1

    .line 29
    if-nez p1, :cond_3

    .line 30
    iget-object p1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 32
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    .line 34
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    goto :goto_1

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 41
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    const-string v0, "<unknown ssid>"

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v0

    .line 54
    if-nez v0, :cond_2

    .line 55
    move-object v1, p1

    .line 57
    :cond_2
    iput-object v1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    .line 58
    goto :goto_2

    .line 60
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 61
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getPasspointProviderFriendlyName()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 66
    iput-object p1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    .line 67
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 69
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    .line 71
    move-result p1

    .line 74
    iput p1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->standard:I

    .line 75
    iget-object p1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 77
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getMeteredHint()Z

    .line 79
    move-result p1

    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->meteredHint:Z

    .line 83
    iget-object p1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 85
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getApMldMacAddress()Landroid/net/MacAddress;

    .line 87
    move-result-object p1

    .line 90
    iput-object p1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->macAddress:Landroid/net/MacAddress;

    .line 91
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->meteredHint:Z

    .line 93
    if-eqz p1, :cond_4

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->updateMeteredHint()V

    .line 97
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 100
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 102
    move-result p1

    .line 105
    iput p1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->rssi:I

    .line 106
    const/4 v0, 0x5

    .line 108
    invoke-static {p1, v0}, Landroid/net/wifi/MiuiWifiManager;->calculateSignalLevel(II)I

    .line 109
    move-result p1

    .line 112
    iput p1, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->level:I

    .line 113
    :cond_5
    return-void
    .line 115
.end method

.method public final updateWifiState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->enabled:Z

    .line 14
    return-void
    .line 16
.end method
