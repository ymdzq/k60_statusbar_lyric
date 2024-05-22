.class public abstract Lcom/android/wifitrackerlib/WifiEntry;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final WIFI_PICKER_COMPARATOR:Ljava/util/Comparator;


# instance fields
.field public final mCallbackHandler:Landroid/os/Handler;

.field public mCalledConnect:Z

.field public mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

.field public mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

.field public mConnectivityReport:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;

.field public mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field public mDeviceWifiStandard:I

.field public final mForSavedNetworksPage:Z

.field public mIsDefaultNetwork:Z

.field public mIsOweTransitionMode:Z

.field public mIsPskSaeTransitionMode:Z

.field public mLastMinConnectionCapability:I

.field public mLevel:I

.field public mListener:Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;

.field public mNetwork:Landroid/net/Network;

.field public mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field public mNetworkInfo:Landroid/net/NetworkInfo;

.field public mWifiInfo:Landroid/net/wifi/WifiInfo;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;

.field public mWifiStandard:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 8
    move-result-object v0

    .line 11
    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;

    .line 12
    const/4 v2, 0x2

    .line 14
    invoke-direct {v1, v2}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;-><init>(I)V

    .line 15
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 18
    move-result-object v0

    .line 21
    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;

    .line 22
    const/4 v2, 0x3

    .line 24
    invoke-direct {v1, v2}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;-><init>(I)V

    .line 25
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 28
    move-result-object v0

    .line 31
    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;

    .line 32
    const/4 v2, 0x4

    .line 34
    invoke-direct {v1, v2}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;-><init>(I)V

    .line 35
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 38
    move-result-object v0

    .line 41
    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;

    .line 42
    const/4 v2, 0x5

    .line 44
    invoke-direct {v1, v2}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;-><init>(I)V

    .line 45
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 48
    move-result-object v0

    .line 51
    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;

    .line 52
    const/4 v2, 0x6

    .line 54
    invoke-direct {v1, v2}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;-><init>(I)V

    .line 55
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 58
    move-result-object v0

    .line 61
    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;

    .line 62
    const/4 v2, 0x7

    .line 64
    invoke-direct {v1, v2}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;-><init>(I)V

    .line 65
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 68
    move-result-object v0

    .line 71
    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;

    .line 72
    const/16 v2, 0x8

    .line 74
    invoke-direct {v1, v2}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;-><init>(I)V

    .line 76
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 79
    move-result-object v0

    .line 82
    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;

    .line 83
    const/16 v2, 0x9

    .line 85
    invoke-direct {v1, v2}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;-><init>(I)V

    .line 87
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 90
    move-result-object v0

    .line 93
    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;

    .line 94
    const/16 v2, 0xa

    .line 96
    invoke-direct {v1, v2}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;-><init>(I)V

    .line 98
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 101
    move-result-object v0

    .line 104
    sput-object v0, Lcom/android/wifitrackerlib/WifiEntry;->WIFI_PICKER_COMPARATOR:Ljava/util/Comparator;

    .line 105
    new-instance v0, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;

    .line 107
    const/4 v1, 0x1

    .line 109
    invoke-direct {v0, v1}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;-><init>(I)V

    .line 110
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 113
    return-void
    .line 116
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/net/wifi/WifiManager;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    .line 6
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCalledConnect:Z

    .line 9
    const/4 v1, 0x1

    .line 11
    iput v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLastMinConnectionCapability:I

    .line 12
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 14
    iput v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiStandard:I

    .line 17
    const-string v2, "Cannot construct with null handler!"

    .line 19
    invoke-static {p1, v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    const-string v2, "Cannot construct with null WifiManager!"

    .line 24
    invoke-static {p2, v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    .line 29
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mForSavedNetworksPage:Z

    .line 31
    iput-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 33
    const/16 p1, 0x8

    .line 35
    invoke-virtual {p2, p1}, Landroid/net/wifi/WifiManager;->isWifiStandardSupported(I)Z

    .line 37
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    const-string v0, "persist.vendor.wlan.disable.eht"

    .line 43
    const-string v2, ""

    .line 45
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 50
    const-string/jumbo v2, "true"

    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v0

    .line 57
    if-nez v0, :cond_0

    .line 58
    iput p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mDeviceWifiStandard:I

    .line 60
    goto :goto_0

    .line 62
    :cond_0
    const/4 p1, 0x6

    .line 63
    invoke-virtual {p2, p1}, Landroid/net/wifi/WifiManager;->isWifiStandardSupported(I)Z

    .line 64
    move-result v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    iput p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mDeviceWifiStandard:I

    .line 70
    goto :goto_0

    .line 72
    :cond_1
    const/4 p1, 0x5

    .line 73
    invoke-virtual {p2, p1}, Landroid/net/wifi/WifiManager;->isWifiStandardSupported(I)Z

    .line 74
    move-result v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    iput p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mDeviceWifiStandard:I

    .line 80
    goto :goto_0

    .line 82
    :cond_2
    const/4 p1, 0x4

    .line 83
    invoke-virtual {p2, p1}, Landroid/net/wifi/WifiManager;->isWifiStandardSupported(I)Z

    .line 84
    move-result p2

    .line 87
    if-eqz p2, :cond_3

    .line 88
    iput p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mDeviceWifiStandard:I

    .line 90
    goto :goto_0

    .line 92
    :cond_3
    iput v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mDeviceWifiStandard:I

    .line 93
    :goto_0
    return-void
    .line 95
.end method


# virtual methods
.method public abstract canConnect()Z
.end method

.method public canDisconnect()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public canSetMeteredChoice()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public canSignIn()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public abstract connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V
.end method

.method public abstract connectionInfoMatches(Landroid/net/wifi/WifiInfo;)Z
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/wifitrackerlib/WifiEntry;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 11
    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    .line 12
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p0

    .line 21
    return p0
    .line 22
.end method

.method public declared-synchronized getConnectedState()I
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    if-eqz v0, :cond_0

    .line 5
    monitor-exit p0

    .line 7
    const/4 p0, 0x2

    .line 8
    return p0

    .line 9
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 10
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    sget-object v2, Lcom/android/wifitrackerlib/WifiEntry$1;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    .line 15
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 17
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    .line 21
    move-result v0

    .line 24
    aget v0, v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    packed-switch v0, :pswitch_data_0

    .line 27
    monitor-exit p0

    .line 30
    return v1

    .line 31
    :pswitch_0
    monitor-exit p0

    .line 32
    const/4 p0, 0x1

    .line 33
    return p0

    .line 34
    :cond_1
    monitor-exit p0

    .line 35
    return v1

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    monitor-exit p0

    .line 38
    throw v0

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
    .line 40
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public getMeteredChoice()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getNetworkSelectionDescription()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    return-object p0
    .line 4
.end method

.method public getScanResultDescription()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    return-object p0
    .line 4
.end method

.method public final getSecurity()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurityTypes()Ljava/util/List;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/android/wifitrackerlib/Utils;->getSingleSecurityTypeFromMultipleSecurityTypes(Ljava/util/List;)I

    .line 6
    move-result p0

    .line 9
    const/4 v0, 0x3

    .line 10
    packed-switch p0, :pswitch_data_0

    .line 11
    :pswitch_0
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :pswitch_1
    return v0

    .line 16
    :pswitch_2
    const/16 p0, 0x9

    .line 17
    return p0

    .line 19
    :pswitch_3
    const/16 p0, 0x8

    .line 20
    return p0

    .line 22
    :pswitch_4
    const/4 p0, 0x7

    .line 23
    return p0

    .line 24
    :pswitch_5
    const/4 p0, 0x4

    .line 25
    return p0

    .line 26
    :pswitch_6
    const/4 p0, 0x6

    .line 27
    return p0

    .line 28
    :pswitch_7
    const/4 p0, 0x5

    .line 29
    return p0

    .line 30
    :pswitch_8
    return v0

    .line 31
    :pswitch_9
    const/4 p0, 0x2

    .line 32
    return p0

    .line 33
    :pswitch_a
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
    .line 36
.end method

.method public getSecurityTypes()Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public abstract getSsid()Ljava/lang/String;
.end method

.method public abstract getSummary(Z)Ljava/lang/String;
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    return-object p0
    .line 4
.end method

.method public getWeakNetSwitchTime()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public getWifiChannelUtilization()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final getWifiStandard()I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    .line 3
    move-result v0

    .line 6
    const/4 v1, 0x2

    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    .line 10
    if-nez v0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    .line 15
    invoke-direct {v1, v0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;-><init>(Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    monitor-exit p0

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_1
    if-eqz v1, :cond_2

    .line 24
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 26
    if-eqz v0, :cond_2

    .line 28
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    .line 30
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 36
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    .line 38
    move-result p0

    .line 41
    return p0

    .line 42
    :cond_2
    iget p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiStandard:I

    .line 43
    return p0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    monitor-exit p0

    .line 47
    throw v0
    .line 48
.end method

.method public final hasInternetAccess()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const/16 v0, 0x10

    .line 6
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 8
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
    .line 17
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public isAlreadyProvisioned()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final isLowQuality()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isPrimaryNetwork()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 10
    if-nez v0, :cond_1

    .line 12
    return v1

    .line 14
    :cond_1
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 15
    if-nez v2, :cond_2

    .line 17
    return v1

    .line 19
    :cond_2
    const/16 v2, 0x10

    .line 20
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 22
    move-result v0

    .line 25
    if-eqz v0, :cond_3

    .line 26
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 28
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 30
    move-result v0

    .line 33
    if-eqz v0, :cond_3

    .line 34
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 36
    const/4 v0, 0x4

    .line 38
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 39
    move-result p0

    .line 42
    if-nez p0, :cond_3

    .line 43
    const/4 v1, 0x1

    .line 45
    :cond_3
    return v1
    .line 46
.end method

.method public isMetered()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final isPrimaryNetwork()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 10
    if-nez v0, :cond_1

    .line 12
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 14
    if-eqz p0, :cond_2

    .line 16
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->isPrimary()Z

    .line 18
    move-result p0

    .line 21
    if-eqz p0, :cond_2

    .line 22
    :cond_1
    const/4 v1, 0x1

    .line 24
    :cond_2
    return v1
    .line 25
.end method

.method public isSaved()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isSubscription()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isSuggestion()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final notifyOnUpdated()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mListener:Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda1;

    .line 6
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, p0, v1}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda1;-><init>(Lcom/android/wifitrackerlib/WifiEntry;I)V

    .line 9
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    :cond_0
    return-void
    .line 17
.end method

.method public declared-synchronized onNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p2}, Lcom/android/wifitrackerlib/Utils;->getWifiInfo(Landroid/net/NetworkCapabilities;)Landroid/net/wifi/WifiInfo;

    .line 3
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-nez v0, :cond_0

    .line 7
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry;->connectionInfoMatches(Landroid/net/wifi/WifiInfo;)Z

    .line 11
    move-result v1

    .line 14
    if-nez v1, :cond_2

    .line 15
    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetwork:Landroid/net/Network;

    .line 17
    invoke-virtual {p1, p2}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result p2

    .line 22
    if-eqz p2, :cond_1

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiEntry;->onNetworkLost(Landroid/net/Network;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :cond_1
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :cond_2
    :try_start_2
    iput-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 30
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetwork:Landroid/net/Network;

    .line 32
    iput-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 34
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 36
    move-result p1

    .line 39
    const/16 p2, -0x7f

    .line 40
    if-eq p1, p2, :cond_3

    .line 42
    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 44
    invoke-static {p1, p2}, Lcom/android/wifitrackerlib/WifiEntryUtilsStub;->miuiCalculateSignalLevel(ILandroid/net/wifi/WifiManager;)I

    .line 46
    move-result p1

    .line 49
    iput p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    .line 50
    :cond_3
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    .line 52
    move-result p1

    .line 55
    const/4 p2, 0x2

    .line 56
    if-ne p1, p2, :cond_6

    .line 57
    iget-boolean p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCalledConnect:Z

    .line 59
    if-eqz p1, :cond_4

    .line 61
    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCalledConnect:Z

    .line 64
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    .line 66
    new-instance v0, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda1;

    .line 68
    invoke-direct {v0, p0, p2}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda1;-><init>(Lcom/android/wifitrackerlib/WifiEntry;I)V

    .line 70
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    :cond_4
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    .line 76
    if-nez p1, :cond_5

    .line 78
    new-instance p1, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    .line 80
    invoke-direct {p1}, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    .line 85
    :cond_5
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    .line 87
    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 89
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    .line 97
    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 99
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    .line 107
    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 109
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    :cond_6
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->updateSecurityTypes()V

    .line 117
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    monitor-exit p0

    .line 123
    return-void

    .line 124
    :catchall_0
    move-exception p1

    .line 125
    monitor-exit p0

    .line 126
    throw p1
    .line 127
.end method

.method public final declared-synchronized onNetworkLost(Landroid/net/Network;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetwork:Landroid/net/Network;

    .line 3
    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    .line 5
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-nez p1, :cond_0

    .line 9
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :try_start_1
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 14
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 16
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 18
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    .line 20
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectivityReport:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;

    .line 22
    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsDefaultNetwork:Z

    .line 25
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->updateSecurityTypes()V

    .line 27
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit p0

    .line 36
    throw p1
    .line 37
.end method

.method public onUpdated()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    .line 2
    return-void
    .line 5
.end method

.method public shouldEditBeforeConnect()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final shouldShowXLevelIcon()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectivityReport:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;

    .line 8
    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->hasInternetAccess()Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isLowQuality()Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->canSignIn()Z

    .line 24
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isPrimaryNetwork()Z

    .line 30
    move-result p0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    const/4 p0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p0, 0x0

    .line 38
    :goto_0
    return p0
    .line 39
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ",title:"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ",summary:"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const/4 v1, 0x1

    .line 31
    invoke-virtual {p0, v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary(Z)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ",isSaved:"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    .line 44
    move-result v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    const-string v1, ",isSubscription:"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    .line 56
    move-result v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, ",isSuggestion:"

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSuggestion()Z

    .line 68
    move-result v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ",level:"

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->shouldShowXLevelIcon()Z

    .line 85
    move-result v1

    .line 88
    if-eqz v1, :cond_0

    .line 89
    const-string v1, "X"

    .line 91
    goto :goto_0

    .line 93
    :cond_0
    const-string v1, ""

    .line 94
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, ",security:"

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurityTypes()Ljava/util/List;

    .line 104
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, ",standard:"

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiStandard()I

    .line 116
    move-result v1

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, ",connected:"

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    .line 128
    move-result v1

    .line 131
    const/4 v2, 0x2

    .line 132
    if-ne v1, v2, :cond_1

    .line 133
    const-string/jumbo v1, "true"

    .line 135
    goto :goto_1

    .line 138
    :cond_1
    const-string v1, "false"

    .line 139
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, ",connectedInfo:"

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    monitor-enter p0

    .line 149
    :try_start_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    .line 150
    move-result v1

    .line 153
    if-ne v1, v2, :cond_3

    .line 154
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    .line 156
    if-nez v1, :cond_2

    .line 158
    goto :goto_2

    .line 160
    :cond_2
    new-instance v2, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    .line 161
    invoke-direct {v2, v1}, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;-><init>(Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    .line 166
    goto :goto_3

    .line 167
    :cond_3
    :goto_2
    monitor-exit p0

    .line 168
    const/4 v2, 0x0

    .line 169
    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    const-string v1, ",hasInternet:"

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->hasInternetAccess()Z

    .line 178
    move-result v1

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 182
    const-string v1, ",isDefault:"

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-boolean v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsDefaultNetwork:Z

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 192
    const-string v1, ",isPrimary:"

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isPrimaryNetwork()Z

    .line 200
    move-result p0

    .line 203
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    move-result-object p0

    .line 210
    return-object p0

    .line 211
    :catchall_0
    move-exception v0

    .line 212
    monitor-exit p0

    .line 213
    throw v0
    .line 214
.end method

.method public final declared-synchronized updateLinkProperties(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetwork:Landroid/net/Network;

    .line 3
    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    .line 5
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-nez p1, :cond_0

    .line 9
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    .line 13
    if-nez p1, :cond_1

    .line 15
    new-instance p1, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    .line 17
    invoke-direct {p1}, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    .line 22
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    .line 29
    move-result-object v0

    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v0

    .line 36
    :catch_0
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v1

    .line 40
    if-eqz v1, :cond_4

    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 46
    check-cast v1, Landroid/net/LinkAddress;

    .line 47
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 49
    move-result-object v2

    .line 52
    instance-of v2, v2, Ljava/net/Inet4Address;

    .line 53
    if-eqz v2, :cond_3

    .line 55
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    .line 57
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 59
    move-result-object v3

    .line 62
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 63
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    const/4 v2, 0x4

    .line 69
    :try_start_2
    new-array v2, v2, [B

    .line 70
    fill-array-data v2, :array_0

    .line 72
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    .line 75
    move-result-object v2

    .line 78
    iget-object v3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    .line 79
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getPrefixLength()I

    .line 81
    move-result v1

    .line 84
    invoke-static {v2, v1}, Lcom/android/wifitrackerlib/Utils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    .line 85
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 89
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    goto :goto_0

    .line 95
    :cond_3
    :try_start_3
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 96
    move-result-object v2

    .line 99
    instance-of v2, v2, Ljava/net/Inet6Address;

    .line 100
    if-eqz v2, :cond_2

    .line 102
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 104
    move-result-object v1

    .line 107
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 108
    move-result-object v1

    .line 111
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    goto :goto_0

    .line 115
    :cond_4
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    .line 116
    iput-object p1, v0, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->ipv6Addresses:Ljava/util/List;

    .line 118
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    .line 120
    move-result-object p1

    .line 123
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 124
    move-result-object p1

    .line 127
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    move-result v0

    .line 131
    if-eqz v0, :cond_6

    .line 132
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    move-result-object v0

    .line 137
    check-cast v0, Landroid/net/RouteInfo;

    .line 138
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    .line 140
    move-result v1

    .line 143
    if-eqz v1, :cond_5

    .line 144
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    .line 146
    move-result-object v1

    .line 149
    invoke-virtual {v1}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    .line 150
    move-result-object v1

    .line 153
    instance-of v1, v1, Ljava/net/Inet4Address;

    .line 154
    if-eqz v1, :cond_5

    .line 156
    invoke-virtual {v0}, Landroid/net/RouteInfo;->hasGateway()Z

    .line 158
    move-result v1

    .line 161
    if-eqz v1, :cond_5

    .line 162
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    .line 164
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    .line 166
    move-result-object v0

    .line 169
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    :cond_6
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    .line 176
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    .line 178
    move-result-object p2

    .line 181
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 182
    move-result-object p2

    .line 185
    new-instance v0, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;

    .line 186
    const/16 v1, 0xb

    .line 188
    invoke-direct {v0, v1}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;-><init>(I)V

    .line 190
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 193
    move-result-object p2

    .line 196
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 197
    move-result-object v0

    .line 200
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 201
    move-result-object p2

    .line 204
    check-cast p2, Ljava/util/List;

    .line 205
    iput-object p2, p1, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->dnsServers:Ljava/util/List;

    .line 207
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 209
    monitor-exit p0

    .line 212
    return-void

    .line 213
    :catchall_0
    move-exception p1

    .line 214
    monitor-exit p0

    .line 215
    throw p1

    .line 216
    nop

    .line 217
    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
    .line 218
.end method

.method public updateSecurityTypes()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final updateTransitionModeCapa(Landroid/net/wifi/ScanResult;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 2
    const-string v1, "PSK"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 12
    const-string v1, "SAE"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsPskSaeTransitionMode:Z

    .line 25
    iget-object p1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 27
    const-string v0, "OWE_TRANSITION"

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 31
    move-result p1

    .line 34
    iput-boolean p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsOweTransitionMode:Z

    .line 35
    return-void
    .line 37
.end method

.method public final updateWifiGenerationInfo(Ljava/util/List;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mDeviceWifiStandard:I

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v1

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v2

    .line 11
    if-eqz v2, :cond_2

    .line 12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 17
    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 18
    invoke-virtual {v2}, Landroid/net/wifi/ScanResult;->getWifiStandard()I

    .line 20
    move-result v3

    .line 23
    if-ge v3, v0, :cond_1

    .line 24
    move v0, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v2}, Landroid/net/wifi/ScanResult;->getBand()I

    .line 28
    move-result v2

    .line 31
    const/4 v4, 0x1

    .line 32
    if-ne v2, v4, :cond_0

    .line 33
    const/4 v2, 0x6

    .line 35
    if-ne v3, v2, :cond_0

    .line 36
    const/4 v2, 0x5

    .line 38
    if-ne v0, v2, :cond_0

    .line 39
    const/4 v0, 0x4

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iget v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLastMinConnectionCapability:I

    .line 43
    sget v2, Lcom/android/wifitrackerlib/WifiEntryUtilsStub;->$r8$clinit:I

    .line 45
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 47
    move-result p1

    .line 50
    if-nez p1, :cond_3

    .line 51
    goto :goto_1

    .line 53
    :cond_3
    move v0, v1

    .line 54
    :goto_1
    iput v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLastMinConnectionCapability:I

    .line 55
    iput v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiStandard:I

    .line 57
    return-void
    .line 59
.end method
