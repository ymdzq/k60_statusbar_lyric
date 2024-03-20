.class public final Lcom/android/wifitrackerlib/WifiPickerTracker;
.super Lcom/android/wifitrackerlib/BaseWifiTracker;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mActiveWifiEntries:Ljava/util/List;

.field public final mHotspotNetworkEntryCache:Ljava/util/List;

.field public final mKnownNetworkEntryCache:Ljava/util/List;

.field public final mListener:Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;

.field public final mLock:Ljava/lang/Object;

.field public mMergedCarrierEntry:Lcom/android/wifitrackerlib/MergedCarrierEntry;

.field public final mNetworkRequestConfigCache:Landroid/util/ArrayMap;

.field public mNetworkRequestEntry:Lcom/android/wifitrackerlib/NetworkRequestEntry;

.field public final mOsuWifiEntryCache:Ljava/util/Map;

.field public final mPasspointConfigCache:Ljava/util/Map;

.field public final mPasspointUtilsStub:Lcom/android/wifitrackerlib/PasspointUtilsStub;

.field public final mPasspointWifiConfigCache:Landroid/util/SparseArray;

.field public final mPasspointWifiEntryCache:Ljava/util/Map;

.field public final mStandardWifiConfigCache:Ljava/util/Map;

.field public final mStandardWifiEntryCache:Ljava/util/List;

.field public final mSuggestedConfigCache:Ljava/util/Map;

.field public final mSuggestedWifiEntryCache:Ljava/util/List;

.field public final mWifiEntries:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p13}, Lcom/android/wifitrackerlib/BaseWifiTracker;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;)V

    .line 2
    new-instance p1, Ljava/lang/Object;

    .line 5
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mLock:Ljava/lang/Object;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mActiveWifiEntries:Ljava/util/List;

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    .line 19
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mWifiEntries:Ljava/util/List;

    .line 24
    new-instance p1, Landroid/util/ArrayMap;

    .line 26
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiConfigCache:Ljava/util/Map;

    .line 31
    new-instance p1, Landroid/util/ArrayMap;

    .line 33
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedConfigCache:Ljava/util/Map;

    .line 38
    new-instance p1, Landroid/util/ArrayMap;

    .line 40
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mNetworkRequestConfigCache:Landroid/util/ArrayMap;

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    .line 47
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiEntryCache:Ljava/util/List;

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    .line 54
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedWifiEntryCache:Ljava/util/List;

    .line 59
    new-instance p1, Landroid/util/ArrayMap;

    .line 61
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointConfigCache:Ljava/util/Map;

    .line 66
    new-instance p1, Landroid/util/SparseArray;

    .line 68
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiConfigCache:Landroid/util/SparseArray;

    .line 73
    new-instance p1, Landroid/util/ArrayMap;

    .line 75
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    .line 80
    new-instance p1, Landroid/util/ArrayMap;

    .line 82
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mOsuWifiEntryCache:Ljava/util/Map;

    .line 87
    const/4 p1, 0x0

    .line 89
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointUtilsStub:Lcom/android/wifitrackerlib/PasspointUtilsStub;

    .line 90
    new-instance p1, Ljava/util/ArrayList;

    .line 92
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    new-instance p1, Ljava/util/ArrayList;

    .line 97
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mKnownNetworkEntryCache:Ljava/util/List;

    .line 102
    new-instance p1, Ljava/util/ArrayList;

    .line 104
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    new-instance p1, Ljava/util/ArrayList;

    .line 109
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mHotspotNetworkEntryCache:Ljava/util/List;

    .line 114
    iput-object p13, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mListener:Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;

    .line 116
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    .line 118
    sget-object p2, Lcom/android/wifitrackerlib/PasspointUtilsStub;->mInstance:Lcom/android/wifitrackerlib/PasspointUtilsStub;

    .line 120
    if-nez p2, :cond_1

    .line 122
    const-class p2, Lcom/android/wifitrackerlib/PasspointUtilsStub;

    .line 124
    monitor-enter p2

    .line 126
    :try_start_0
    sget-object p3, Lcom/android/wifitrackerlib/PasspointUtilsStub;->mInstance:Lcom/android/wifitrackerlib/PasspointUtilsStub;

    .line 127
    if-nez p3, :cond_0

    .line 129
    new-instance p3, Lcom/android/wifitrackerlib/PasspointUtilsStub;

    .line 131
    invoke-direct {p3, p1}, Lcom/android/wifitrackerlib/PasspointUtilsStub;-><init>(Landroid/content/Context;)V

    .line 133
    sput-object p3, Lcom/android/wifitrackerlib/PasspointUtilsStub;->mInstance:Lcom/android/wifitrackerlib/PasspointUtilsStub;

    .line 136
    :cond_0
    monitor-exit p2

    .line 138
    goto :goto_0

    .line 139
    :catchall_0
    move-exception p0

    .line 140
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    throw p0

    .line 142
    :cond_1
    :goto_0
    sget-object p1, Lcom/android/wifitrackerlib/PasspointUtilsStub;->mInstance:Lcom/android/wifitrackerlib/PasspointUtilsStub;

    .line 143
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointUtilsStub:Lcom/android/wifitrackerlib/PasspointUtilsStub;

    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    return-void
    .line 150
.end method


# virtual methods
.method public final clearAllWifiEntries()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiEntryCache:Ljava/util/List;

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedWifiEntryCache:Ljava/util/List;

    .line 9
    check-cast v0, Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 13
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    .line 16
    check-cast v0, Landroid/util/ArrayMap;

    .line 18
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 20
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mOsuWifiEntryCache:Ljava/util/Map;

    .line 23
    check-cast v0, Landroid/util/ArrayMap;

    .line 25
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 27
    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mNetworkRequestEntry:Lcom/android/wifitrackerlib/NetworkRequestEntry;

    .line 31
    iput-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mMergedCarrierEntry:Lcom/android/wifitrackerlib/MergedCarrierEntry;

    .line 33
    return-void
    .line 35
.end method

.method public final conditionallyUpdateScanResults(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    .line 4
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    iget-object v3, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointUtilsStub:Lcom/android/wifitrackerlib/PasspointUtilsStub;

    .line 9
    if-ne v1, v2, :cond_0

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 13
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateStandardWifiEntryScans(Ljava/util/List;)V

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 20
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateSuggestedWifiEntryScans(Ljava/util/List;)V

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 27
    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updatePasspointWifiEntryScans(Ljava/util/List;)V

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 34
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateOsuWifiEntryScans(Ljava/util/List;)V

    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 41
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 47
    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateNetworkRequestEntryScans(Ljava/util/List;)V

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 54
    return-void

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

    .line 58
    iget-wide v4, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMaxScanAgeMillis:J

    .line 60
    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    .line 64
    move-result-object p1

    .line 67
    invoke-virtual {v1, p1}, Lcom/android/wifitrackerlib/ScanResultUpdater;->update(Ljava/util/List;)V

    .line 68
    goto :goto_0

    .line 71
    :cond_1
    iget-wide v6, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanIntervalMillis:J

    .line 72
    add-long/2addr v4, v6

    .line 74
    :goto_0
    invoke-virtual {v1, v4, v5}, Lcom/android/wifitrackerlib/ScanResultUpdater;->getScanResults(J)Ljava/util/List;

    .line 75
    move-result-object p1

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateStandardWifiEntryScans(Ljava/util/List;)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateSuggestedWifiEntryScans(Ljava/util/List;)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updatePasspointWifiEntryScans(Ljava/util/List;)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateOsuWifiEntryScans(Ljava/util/List;)V

    .line 88
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateNetworkRequestEntryScans(Ljava/util/List;)V

    .line 94
    return-void
    .line 97
.end method

.method public final getAllWifiEntries()Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiEntryCache:Ljava/util/List;

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedWifiEntryCache:Ljava/util/List;

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 14
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    .line 17
    check-cast v1, Landroid/util/ArrayMap;

    .line 19
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 21
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 25
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mOsuWifiEntryCache:Ljava/util/Map;

    .line 28
    check-cast v1, Landroid/util/ArrayMap;

    .line 30
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 32
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 36
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mNetworkRequestEntry:Lcom/android/wifitrackerlib/NetworkRequestEntry;

    .line 39
    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_0
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mMergedCarrierEntry:Lcom/android/wifitrackerlib/MergedCarrierEntry;

    .line 46
    if-eqz p0, :cond_1

    .line 48
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_1
    return-object v0
    .line 53
.end method

.method public final handleDefaultSubscriptionChanged(I)V
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mMergedCarrierEntry:Lcom/android/wifitrackerlib/MergedCarrierEntry;

    .line 5
    if-nez p1, :cond_0

    .line 7
    goto :goto_1

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mMergedCarrierEntry:Lcom/android/wifitrackerlib/MergedCarrierEntry;

    .line 11
    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mMergedCarrierEntry:Lcom/android/wifitrackerlib/MergedCarrierEntry;

    .line 14
    if-eqz v0, :cond_2

    .line 16
    iget v0, v0, Lcom/android/wifitrackerlib/MergedCarrierEntry;->mSubscriptionId:I

    .line 18
    if-ne p1, v0, :cond_2

    .line 20
    goto :goto_1

    .line 22
    :cond_2
    new-instance v0, Lcom/android/wifitrackerlib/MergedCarrierEntry;

    .line 23
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    .line 25
    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    .line 27
    iget-object v3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 29
    invoke-direct {v0, v1, v3, v2, p1}, Lcom/android/wifitrackerlib/MergedCarrierEntry;-><init>(Landroid/os/Handler;Landroid/net/wifi/WifiManager;Landroid/content/Context;I)V

    .line 31
    iput-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mMergedCarrierEntry:Lcom/android/wifitrackerlib/MergedCarrierEntry;

    .line 34
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    .line 36
    move-result-object p1

    .line 39
    if-eqz p1, :cond_4

    .line 40
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 42
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 44
    move-result-object v1

    .line 47
    if-eqz v1, :cond_3

    .line 48
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mMergedCarrierEntry:Lcom/android/wifitrackerlib/MergedCarrierEntry;

    .line 50
    new-instance v4, Landroid/net/NetworkCapabilities$Builder;

    .line 52
    invoke-direct {v4, v1}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 54
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 57
    move-result-object v1

    .line 60
    invoke-virtual {v4, v1}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    .line 61
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    .line 65
    move-result-object v1

    .line 68
    invoke-virtual {v2, p1, v1}, Lcom/android/wifitrackerlib/WifiEntry;->onNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 69
    :cond_3
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 72
    move-result-object v0

    .line 75
    if-eqz v0, :cond_4

    .line 76
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mMergedCarrierEntry:Lcom/android/wifitrackerlib/MergedCarrierEntry;

    .line 78
    invoke-virtual {v1, p1, v0}, Lcom/android/wifitrackerlib/WifiEntry;->updateLinkProperties(Landroid/net/Network;Landroid/net/LinkProperties;)V

    .line 80
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mListener:Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;

    .line 83
    if-eqz p1, :cond_5

    .line 85
    new-instance v0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda7;

    .line 87
    const/4 v1, 0x1

    .line 89
    invoke-direct {v0, p1, v1}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda7;-><init>(Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;I)V

    .line 90
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    .line 93
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    :cond_5
    :goto_1
    return-void
    .line 98
.end method

.method public final handleNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    iget-object v3, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiConfigCache:Ljava/util/Map;

    .line 8
    check-cast v3, Landroid/util/ArrayMap;

    .line 10
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 12
    move-result v4

    .line 15
    iget-object v5, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedConfigCache:Ljava/util/Map;

    .line 16
    check-cast v5, Landroid/util/ArrayMap;

    .line 18
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 20
    move-result v6

    .line 23
    add-int/2addr v6, v4

    .line 24
    iget-object v4, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiConfigCache:Landroid/util/SparseArray;

    .line 25
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 27
    move-result v7

    .line 30
    add-int/2addr v7, v6

    .line 31
    iget-object v6, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mNetworkRequestConfigCache:Landroid/util/ArrayMap;

    .line 32
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 34
    move-result v8

    .line 37
    add-int/2addr v8, v7

    .line 38
    if-nez v8, :cond_0

    .line 39
    iget-object v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 41
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    .line 43
    move-result-object v7

    .line 46
    invoke-virtual {v0, v7}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateWifiConfigurations(Ljava/util/List;)V

    .line 47
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getAllWifiEntries()Ljava/util/List;

    .line 50
    move-result-object v7

    .line 53
    check-cast v7, Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object v7

    .line 59
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v8

    .line 63
    if-eqz v8, :cond_1

    .line 64
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object v8

    .line 69
    check-cast v8, Lcom/android/wifitrackerlib/WifiEntry;

    .line 70
    invoke-virtual {v8, v1, v2}, Lcom/android/wifitrackerlib/WifiEntry;->onNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 72
    goto :goto_0

    .line 75
    :cond_1
    iget-object v7, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointUtilsStub:Lcom/android/wifitrackerlib/PasspointUtilsStub;

    .line 76
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    invoke-static/range {p2 .. p2}, Lcom/android/wifitrackerlib/Utils;->getWifiInfo(Landroid/net/NetworkCapabilities;)Landroid/net/wifi/WifiInfo;

    .line 81
    move-result-object v7

    .line 84
    const/4 v8, 0x1

    .line 85
    const/4 v9, 0x0

    .line 86
    if-eqz v7, :cond_6

    .line 87
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    .line 89
    move-result v10

    .line 92
    if-nez v10, :cond_6

    .line 93
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    .line 95
    move-result v10

    .line 98
    if-eqz v10, :cond_2

    .line 99
    goto/16 :goto_2

    .line 101
    :cond_2
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 103
    move-result v7

    .line 106
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 107
    move-result-object v3

    .line 110
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 111
    move-result-object v3

    .line 114
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    move-result v10

    .line 118
    if-eqz v10, :cond_6

    .line 119
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    move-result-object v10

    .line 124
    check-cast v10, Ljava/util/List;

    .line 125
    invoke-interface {v10}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 127
    move-result-object v11

    .line 130
    new-instance v12, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda1;

    .line 131
    const/4 v13, 0x3

    .line 133
    invoke-direct {v12, v13}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda1;-><init>(I)V

    .line 134
    invoke-interface {v11, v12}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 137
    move-result-object v11

    .line 140
    new-instance v12, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda3;

    .line 141
    invoke-direct {v12, v7}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda3;-><init>(I)V

    .line 143
    invoke-interface {v11, v12}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 146
    move-result-object v11

    .line 149
    invoke-interface {v11}, Ljava/util/stream/Stream;->count()J

    .line 150
    move-result-wide v11

    .line 153
    const-wide/16 v13, 0x0

    .line 154
    cmp-long v11, v11, v13

    .line 156
    if-nez v11, :cond_3

    .line 158
    goto :goto_1

    .line 160
    :cond_3
    new-instance v15, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    .line 161
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 163
    move-result-object v3

    .line 166
    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 167
    invoke-direct {v15, v3, v8}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;-><init>(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 169
    iget-object v3, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiEntryCache:Ljava/util/List;

    .line 172
    check-cast v3, Ljava/util/ArrayList;

    .line 174
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 176
    move-result-object v7

    .line 179
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    move-result v11

    .line 183
    if-eqz v11, :cond_5

    .line 184
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    move-result-object v11

    .line 189
    check-cast v11, Lcom/android/wifitrackerlib/StandardWifiEntry;

    .line 190
    iget-object v11, v11, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    .line 192
    invoke-virtual {v15, v11}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->equals(Ljava/lang/Object;)Z

    .line 194
    move-result v11

    .line 197
    if-eqz v11, :cond_4

    .line 198
    goto :goto_2

    .line 200
    :cond_5
    new-instance v7, Lcom/android/wifitrackerlib/StandardWifiEntry;

    .line 201
    iget-object v12, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    .line 203
    iget-object v13, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    .line 205
    iget-object v14, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    .line 207
    const/16 v17, 0x0

    .line 209
    iget-object v11, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 211
    move-object/from16 v18, v11

    .line 213
    move-object v11, v7

    .line 215
    move-object/from16 v16, v10

    .line 216
    invoke-direct/range {v11 .. v18}, Lcom/android/wifitrackerlib/StandardWifiEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;Ljava/util/List;Ljava/util/List;Landroid/net/wifi/WifiManager;)V

    .line 218
    invoke-virtual {v7, v1, v2}, Lcom/android/wifitrackerlib/StandardWifiEntry;->onNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 221
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v3, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 227
    invoke-virtual {v3, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    .line 229
    move-result-object v3

    .line 232
    iget-object v10, v7, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 233
    if-nez v10, :cond_6

    .line 235
    if-eqz v3, :cond_6

    .line 237
    iput-object v3, v7, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 239
    :cond_6
    :goto_2
    invoke-static/range {p2 .. p2}, Lcom/android/wifitrackerlib/Utils;->getWifiInfo(Landroid/net/NetworkCapabilities;)Landroid/net/wifi/WifiInfo;

    .line 241
    move-result-object v3

    .line 244
    if-eqz v3, :cond_c

    .line 245
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    .line 247
    move-result v7

    .line 250
    if-nez v7, :cond_c

    .line 251
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    .line 253
    move-result v7

    .line 256
    if-eqz v7, :cond_7

    .line 257
    goto :goto_4

    .line 259
    :cond_7
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 260
    move-result v3

    .line 263
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 264
    move-result-object v5

    .line 267
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 268
    move-result-object v5

    .line 271
    :cond_8
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 272
    move-result v7

    .line 275
    if-eqz v7, :cond_c

    .line 276
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 278
    move-result-object v7

    .line 281
    move-object v15, v7

    .line 282
    check-cast v15, Ljava/util/List;

    .line 283
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    .line 285
    move-result v7

    .line 288
    if-nez v7, :cond_8

    .line 289
    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 291
    move-result-object v7

    .line 294
    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 295
    iget v7, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 297
    if-eq v7, v3, :cond_9

    .line 299
    goto :goto_3

    .line 301
    :cond_9
    new-instance v14, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    .line 302
    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 304
    move-result-object v3

    .line 307
    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 308
    invoke-direct {v14, v3, v8}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;-><init>(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 310
    iget-object v3, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedWifiEntryCache:Ljava/util/List;

    .line 313
    check-cast v3, Ljava/util/ArrayList;

    .line 315
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 317
    move-result-object v5

    .line 320
    :cond_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 321
    move-result v7

    .line 324
    if-eqz v7, :cond_b

    .line 325
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 327
    move-result-object v7

    .line 330
    check-cast v7, Lcom/android/wifitrackerlib/StandardWifiEntry;

    .line 331
    iget-object v7, v7, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    .line 333
    invoke-virtual {v14, v7}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->equals(Ljava/lang/Object;)Z

    .line 335
    move-result v7

    .line 338
    if-eqz v7, :cond_a

    .line 339
    goto :goto_4

    .line 341
    :cond_b
    new-instance v5, Lcom/android/wifitrackerlib/StandardWifiEntry;

    .line 342
    iget-object v11, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    .line 344
    iget-object v12, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    .line 346
    iget-object v13, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    .line 348
    const/16 v16, 0x0

    .line 350
    iget-object v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 352
    move-object v10, v5

    .line 354
    move-object/from16 v17, v7

    .line 355
    invoke-direct/range {v10 .. v17}, Lcom/android/wifitrackerlib/StandardWifiEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;Ljava/util/List;Ljava/util/List;Landroid/net/wifi/WifiManager;)V

    .line 357
    invoke-virtual {v5, v1, v2}, Lcom/android/wifitrackerlib/StandardWifiEntry;->onNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 360
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_c
    :goto_4
    invoke-static/range {p2 .. p2}, Lcom/android/wifitrackerlib/Utils;->getWifiInfo(Landroid/net/NetworkCapabilities;)Landroid/net/wifi/WifiInfo;

    .line 366
    move-result-object v3

    .line 369
    if-eqz v3, :cond_11

    .line 370
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    .line 372
    move-result v5

    .line 375
    if-nez v5, :cond_d

    .line 376
    goto :goto_6

    .line 378
    :cond_d
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 379
    move-result v3

    .line 382
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 383
    move-result-object v3

    .line 386
    move-object v14, v3

    .line 387
    check-cast v14, Landroid/net/wifi/WifiConfiguration;

    .line 388
    if-nez v14, :cond_e

    .line 390
    goto :goto_6

    .line 392
    :cond_e
    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 393
    move-result-object v3

    .line 396
    invoke-static {v3}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->uniqueIdToPasspointWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;

    .line 397
    move-result-object v3

    .line 400
    iget-object v4, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    .line 401
    check-cast v4, Landroid/util/ArrayMap;

    .line 403
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 405
    move-result v3

    .line 408
    if-eqz v3, :cond_f

    .line 409
    goto :goto_6

    .line 411
    :cond_f
    iget-object v3, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointConfigCache:Ljava/util/Map;

    .line 412
    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 414
    move-result-object v5

    .line 417
    invoke-static {v5}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->uniqueIdToPasspointWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;

    .line 418
    move-result-object v5

    .line 421
    check-cast v3, Landroid/util/ArrayMap;

    .line 422
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    move-result-object v3

    .line 427
    move-object/from16 v19, v3

    .line 428
    check-cast v19, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 430
    if-eqz v19, :cond_10

    .line 432
    new-instance v3, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    .line 434
    iget-object v5, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    .line 436
    iget-object v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    .line 438
    iget-object v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    .line 440
    iget-object v10, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 442
    move-object v15, v3

    .line 444
    move-object/from16 v16, v5

    .line 445
    move-object/from16 v17, v7

    .line 447
    move-object/from16 v18, v8

    .line 449
    move-object/from16 v20, v10

    .line 451
    invoke-direct/range {v15 .. v20}, Lcom/android/wifitrackerlib/PasspointWifiEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/hotspot2/PasspointConfiguration;Landroid/net/wifi/WifiManager;)V

    .line 453
    goto :goto_5

    .line 456
    :cond_10
    new-instance v3, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    .line 457
    iget-object v11, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    .line 459
    iget-object v12, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    .line 461
    iget-object v13, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    .line 463
    iget-object v15, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 465
    move-object v10, v3

    .line 467
    invoke-direct/range {v10 .. v15}, Lcom/android/wifitrackerlib/PasspointWifiEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager;)V

    .line 468
    :goto_5
    invoke-virtual {v3, v1, v2}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->onNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 471
    iget-object v5, v3, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mKey:Ljava/lang/String;

    .line 474
    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    :cond_11
    :goto_6
    new-instance v3, Ljava/util/ArrayList;

    .line 479
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 481
    invoke-static/range {p2 .. p2}, Lcom/android/wifitrackerlib/Utils;->getWifiInfo(Landroid/net/NetworkCapabilities;)Landroid/net/wifi/WifiInfo;

    .line 484
    move-result-object v4

    .line 487
    if-eqz v4, :cond_13

    .line 488
    move v5, v9

    .line 490
    :goto_7
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 491
    move-result v7

    .line 494
    if-ge v5, v7, :cond_13

    .line 495
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 497
    move-result-object v7

    .line 500
    check-cast v7, Ljava/util/List;

    .line 501
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 503
    move-result v8

    .line 506
    if-nez v8, :cond_12

    .line 507
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 509
    move-result-object v8

    .line 512
    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .line 513
    iget v8, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 515
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 517
    move-result v10

    .line 520
    if-ne v8, v10, :cond_12

    .line 521
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 523
    goto :goto_8

    .line 526
    :cond_12
    add-int/lit8 v5, v5, 0x1

    .line 527
    goto :goto_7

    .line 529
    :cond_13
    :goto_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 530
    move-result v4

    .line 533
    if-eqz v4, :cond_14

    .line 534
    goto :goto_9

    .line 536
    :cond_14
    new-instance v14, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    .line 537
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 539
    move-result-object v4

    .line 542
    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 543
    invoke-direct {v14, v4, v9}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;-><init>(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 545
    iget-object v4, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mNetworkRequestEntry:Lcom/android/wifitrackerlib/NetworkRequestEntry;

    .line 548
    if-eqz v4, :cond_15

    .line 550
    iget-object v4, v4, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    .line 552
    invoke-virtual {v4, v14}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->equals(Ljava/lang/Object;)Z

    .line 554
    move-result v4

    .line 557
    if-nez v4, :cond_16

    .line 558
    :cond_15
    new-instance v4, Lcom/android/wifitrackerlib/NetworkRequestEntry;

    .line 560
    iget-object v11, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    .line 562
    iget-object v12, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    .line 564
    iget-object v13, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    .line 566
    iget-object v15, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 568
    move-object v10, v4

    .line 570
    invoke-direct/range {v10 .. v15}, Lcom/android/wifitrackerlib/NetworkRequestEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;Landroid/net/wifi/WifiManager;)V

    .line 571
    iput-object v4, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mNetworkRequestEntry:Lcom/android/wifitrackerlib/NetworkRequestEntry;

    .line 574
    invoke-virtual {v4, v3}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateConfig(Ljava/util/List;)V

    .line 576
    iget-object v3, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

    .line 579
    iget-wide v4, v3, Lcom/android/wifitrackerlib/ScanResultUpdater;->mMaxScanAgeMillis:J

    .line 581
    invoke-virtual {v3, v4, v5}, Lcom/android/wifitrackerlib/ScanResultUpdater;->getScanResults(J)Ljava/util/List;

    .line 583
    move-result-object v3

    .line 586
    invoke-virtual {v0, v3}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateNetworkRequestEntryScans(Ljava/util/List;)V

    .line 587
    :cond_16
    iget-object v3, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mNetworkRequestEntry:Lcom/android/wifitrackerlib/NetworkRequestEntry;

    .line 590
    invoke-virtual {v3, v1, v2}, Lcom/android/wifitrackerlib/StandardWifiEntry;->onNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 592
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateWifiEntries()V

    .line 595
    return-void
    .line 598
.end method

.method public final handleNetworkStateChangedAction(Landroid/content/Intent;)V
    .locals 5

    .line 1
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 15
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 17
    move-result-object v0

    .line 20
    const-string v2, "networkInfo"

    .line 21
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 23
    move-result-object p1

    .line 26
    check-cast p1, Landroid/net/NetworkInfo;

    .line 27
    goto :goto_0

    .line 29
    :cond_0
    move-object p1, v1

    .line 30
    move-object v0, p1

    .line 31
    :goto_0
    if-eqz v0, :cond_5

    .line 32
    if-nez p1, :cond_1

    .line 34
    goto :goto_2

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getAllWifiEntries()Ljava/util/List;

    .line 37
    move-result-object v2

    .line 40
    check-cast v2, Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v2

    .line 46
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v3

    .line 50
    if-eqz v3, :cond_4

    .line 51
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v3

    .line 56
    check-cast v3, Lcom/android/wifitrackerlib/WifiEntry;

    .line 57
    monitor-enter v3

    .line 59
    :try_start_0
    invoke-virtual {v3, v0}, Lcom/android/wifitrackerlib/WifiEntry;->connectionInfoMatches(Landroid/net/wifi/WifiInfo;)Z

    .line 60
    move-result v4

    .line 63
    if-nez v4, :cond_3

    .line 64
    iget-object v4, v3, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 66
    if-eqz v4, :cond_2

    .line 68
    iput-object v1, v3, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 70
    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_2
    monitor-exit v3

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    :try_start_1
    iput-object p1, v3, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 77
    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    monitor-exit v3

    .line 82
    goto :goto_1

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    monitor-exit v3

    .line 85
    throw p0

    .line 86
    :cond_4
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateWifiEntries()V

    .line 87
    :cond_5
    :goto_2
    return-void
    .line 90
.end method

.method public final updateNetworkRequestEntryScans(Ljava/util/List;)V
    .locals 3

    .line 1
    const-string v0, "Scan Result list should not be null!"

    .line 2
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mNetworkRequestEntry:Lcom/android/wifitrackerlib/NetworkRequestEntry;

    .line 7
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 11
    :cond_0
    iget-object v0, v0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    .line 12
    iget-object v0, v0, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    .line 14
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 16
    move-result-object p1

    .line 19
    new-instance v1, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda4;

    .line 20
    const/4 v2, 0x0

    .line 22
    invoke-direct {v1, v0, v2}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda4;-><init>(Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;I)V

    .line 23
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 26
    move-result-object p1

    .line 29
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 30
    move-result-object v0

    .line 33
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 37
    check-cast p1, Ljava/util/List;

    .line 38
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mNetworkRequestEntry:Lcom/android/wifitrackerlib/NetworkRequestEntry;

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateScanResultInfo(Ljava/util/List;)V

    .line 42
    return-void
    .line 45
.end method

.method public final updateOsuWifiEntryScans(Ljava/util/List;)V
    .locals 11

    .line 1
    const-string v0, "Scan Result list should not be null!"

    .line 2
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 7
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->getMatchingOsuProviders(Ljava/util/List;)Ljava/util/Map;

    .line 9
    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 13
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->getMatchingPasspointConfigsForOsuProviders(Ljava/util/Set;)Ljava/util/Map;

    .line 17
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mOsuWifiEntryCache:Ljava/util/Map;

    .line 21
    check-cast v1, Landroid/util/ArrayMap;

    .line 23
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 25
    move-result-object v2

    .line 28
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v2

    .line 32
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 42
    check-cast v3, Lcom/android/wifitrackerlib/OsuWifiEntry;

    .line 43
    iget-object v4, v3, Lcom/android/wifitrackerlib/OsuWifiEntry;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    .line 45
    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-result-object v4

    .line 50
    check-cast v4, Ljava/util/List;

    .line 51
    invoke-virtual {v3, v4}, Lcom/android/wifitrackerlib/OsuWifiEntry;->updateScanResultInfo(Ljava/util/List;)V

    .line 53
    goto :goto_0

    .line 56
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 57
    move-result-object v2

    .line 60
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 61
    move-result-object v2

    .line 64
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result v3

    .line 68
    if-eqz v3, :cond_1

    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v3

    .line 74
    check-cast v3, Landroid/net/wifi/hotspot2/OsuProvider;

    .line 75
    new-instance v10, Lcom/android/wifitrackerlib/OsuWifiEntry;

    .line 77
    iget-object v5, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    .line 79
    iget-object v6, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    .line 81
    iget-object v7, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    .line 83
    iget-object v9, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 85
    move-object v4, v10

    .line 87
    move-object v8, v3

    .line 88
    invoke-direct/range {v4 .. v9}, Lcom/android/wifitrackerlib/OsuWifiEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/hotspot2/OsuProvider;Landroid/net/wifi/WifiManager;)V

    .line 89
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    move-result-object v4

    .line 95
    check-cast v4, Ljava/util/List;

    .line 96
    invoke-virtual {v10, v4}, Lcom/android/wifitrackerlib/OsuWifiEntry;->updateScanResultInfo(Ljava/util/List;)V

    .line 98
    invoke-static {v3}, Lcom/android/wifitrackerlib/OsuWifiEntry;->osuProviderToOsuWifiEntryKey(Landroid/net/wifi/hotspot2/OsuProvider;)Ljava/lang/String;

    .line 101
    move-result-object v3

    .line 104
    invoke-virtual {v1, v3, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    goto :goto_1

    .line 108
    :cond_1
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 109
    move-result-object p1

    .line 112
    new-instance v2, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda2;

    .line 113
    const/4 v3, 0x3

    .line 115
    invoke-direct {v2, p0, v0, v3}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/util/Map;I)V

    .line 116
    invoke-interface {p1, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 119
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 122
    move-result-object p0

    .line 125
    new-instance p1, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda0;

    .line 126
    const/16 v0, 0xf

    .line 128
    invoke-direct {p1, v0}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 130
    invoke-interface {p0, p1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 133
    return-void
    .line 136
.end method

.method public final updatePasspointConfigurations(Ljava/util/List;)V
    .locals 3

    .line 1
    const-string v0, "Config list should not be null!"

    .line 2
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointConfigCache:Ljava/util/Map;

    .line 7
    check-cast v0, Landroid/util/ArrayMap;

    .line 9
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 11
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 14
    move-result-object p1

    .line 17
    new-instance v1, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda1;

    .line 18
    const/16 v2, 0x8

    .line 20
    invoke-direct {v1, v2}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda1;-><init>(I)V

    .line 22
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    .line 25
    move-result-object v2

    .line 28
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    .line 29
    move-result-object v1

    .line 32
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 36
    check-cast p1, Ljava/util/Map;

    .line 37
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 39
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    .line 42
    check-cast p1, Landroid/util/ArrayMap;

    .line 44
    invoke-virtual {p1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 46
    move-result-object p1

    .line 49
    new-instance v0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda6;

    .line 50
    const/4 v1, 0x1

    .line 52
    invoke-direct {v0, p0, v1}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda6;-><init>(Lcom/android/wifitrackerlib/WifiPickerTracker;I)V

    .line 53
    invoke-interface {p1, v0}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 56
    return-void
    .line 59
.end method

.method public final updatePasspointWifiEntryScans(Ljava/util/List;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    const-string v2, "Scan Result list should not be null!"

    .line 6
    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    new-instance v2, Ljava/util/TreeSet;

    .line 11
    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 13
    iget-object v3, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 16
    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->getAllMatchingWifiConfigs(Ljava/util/List;)Ljava/util/List;

    .line 18
    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v1

    .line 25
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v3

    .line 29
    const/4 v4, 0x0

    .line 30
    if-eqz v3, :cond_b

    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 36
    check-cast v3, Landroid/util/Pair;

    .line 37
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 39
    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 41
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 43
    check-cast v6, Ljava/util/Map;

    .line 45
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v4

    .line 50
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v4

    .line 54
    check-cast v4, Ljava/util/List;

    .line 55
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 57
    check-cast v3, Ljava/util/Map;

    .line 59
    const/4 v6, 0x1

    .line 61
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object v6

    .line 65
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    move-result-object v3

    .line 69
    check-cast v3, Ljava/util/List;

    .line 70
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 72
    move-result-object v6

    .line 75
    invoke-static {v6}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->uniqueIdToPasspointWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object v12

    .line 79
    invoke-virtual {v2, v12}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v6, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    .line 83
    check-cast v6, Landroid/util/ArrayMap;

    .line 85
    invoke-virtual {v6, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 87
    move-result v6

    .line 90
    if-nez v6, :cond_2

    .line 91
    iget-boolean v6, v5, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    .line 93
    if-eqz v6, :cond_1

    .line 95
    iget-object v13, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    .line 97
    new-instance v14, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    .line 99
    iget-object v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    .line 101
    iget-object v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    .line 103
    iget-object v9, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    .line 105
    iget-object v11, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 107
    move-object v6, v14

    .line 109
    move-object v10, v5

    .line 110
    invoke-direct/range {v6 .. v11}, Lcom/android/wifitrackerlib/PasspointWifiEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager;)V

    .line 111
    check-cast v13, Landroid/util/ArrayMap;

    .line 114
    invoke-virtual {v13, v12, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    goto :goto_1

    .line 119
    :cond_1
    iget-object v6, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointConfigCache:Ljava/util/Map;

    .line 120
    check-cast v6, Landroid/util/ArrayMap;

    .line 122
    invoke-virtual {v6, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 124
    move-result v6

    .line 127
    if-eqz v6, :cond_0

    .line 128
    iget-object v6, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    .line 130
    new-instance v7, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    .line 132
    iget-object v14, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    .line 134
    iget-object v15, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    .line 136
    iget-object v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    .line 138
    iget-object v9, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointConfigCache:Ljava/util/Map;

    .line 140
    check-cast v9, Landroid/util/ArrayMap;

    .line 142
    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    move-result-object v9

    .line 147
    move-object/from16 v17, v9

    .line 148
    check-cast v17, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 150
    iget-object v9, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 152
    move-object v13, v7

    .line 154
    move-object/from16 v16, v8

    .line 155
    move-object/from16 v18, v9

    .line 157
    invoke-direct/range {v13 .. v18}, Lcom/android/wifitrackerlib/PasspointWifiEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/hotspot2/PasspointConfiguration;Landroid/net/wifi/WifiManager;)V

    .line 159
    check-cast v6, Landroid/util/ArrayMap;

    .line 162
    invoke-virtual {v6, v12, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_2
    :goto_1
    iget-object v6, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    .line 167
    check-cast v6, Landroid/util/ArrayMap;

    .line 169
    invoke-virtual {v6, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    move-result-object v6

    .line 174
    check-cast v6, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    .line 175
    const-string v7, "\""

    .line 177
    monitor-enter v6

    .line 179
    :try_start_0
    iput-object v5, v6, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 180
    iget-object v5, v6, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mCurrentHomeScanResults:Ljava/util/List;

    .line 182
    check-cast v5, Ljava/util/ArrayList;

    .line 184
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 186
    iget-object v5, v6, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mCurrentRoamingScanResults:Ljava/util/List;

    .line 189
    check-cast v5, Ljava/util/ArrayList;

    .line 191
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 193
    if-eqz v4, :cond_3

    .line 196
    iget-object v5, v6, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mCurrentHomeScanResults:Ljava/util/List;

    .line 198
    check-cast v5, Ljava/util/ArrayList;

    .line 200
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 202
    :cond_3
    if-eqz v3, :cond_4

    .line 205
    iget-object v5, v6, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mCurrentRoamingScanResults:Ljava/util/List;

    .line 207
    check-cast v5, Ljava/util/ArrayList;

    .line 209
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 211
    :cond_4
    iget-object v5, v6, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 214
    const/4 v8, -0x1

    .line 216
    if-eqz v5, :cond_9

    .line 217
    new-instance v5, Ljava/util/ArrayList;

    .line 219
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 221
    if-eqz v4, :cond_5

    .line 224
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 226
    move-result v9

    .line 229
    if-nez v9, :cond_5

    .line 230
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 232
    invoke-virtual {v6, v4}, Lcom/android/wifitrackerlib/WifiEntry;->updateWifiGenerationInfo(Ljava/util/List;)V

    .line 235
    goto :goto_2

    .line 238
    :cond_5
    if-eqz v3, :cond_6

    .line 239
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 241
    move-result v4

    .line 244
    if-nez v4, :cond_6

    .line 245
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 247
    invoke-virtual {v6, v3}, Lcom/android/wifitrackerlib/WifiEntry;->updateWifiGenerationInfo(Ljava/util/List;)V

    .line 250
    :cond_6
    :goto_2
    invoke-static {v5}, Lcom/android/wifitrackerlib/Utils;->getBestScanResultByLevel(Ljava/util/List;)Landroid/net/wifi/ScanResult;

    .line 253
    move-result-object v3

    .line 256
    if-eqz v3, :cond_7

    .line 257
    iget-object v4, v6, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 259
    new-instance v5, Ljava/lang/StringBuilder;

    .line 261
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    iget-object v7, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 266
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const-string v7, "\""

    .line 271
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    move-result-object v5

    .line 279
    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 280
    invoke-virtual {v6, v3}, Lcom/android/wifitrackerlib/WifiEntry;->updateTransitionModeCapa(Landroid/net/wifi/ScanResult;)V

    .line 282
    :cond_7
    invoke-virtual {v6}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->getConnectedState()I

    .line 285
    move-result v4

    .line 288
    if-nez v4, :cond_a

    .line 289
    if-eqz v3, :cond_8

    .line 291
    iget-object v4, v6, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 293
    iget v3, v3, Landroid/net/wifi/ScanResult;->level:I

    .line 295
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(I)I

    .line 297
    move-result v8

    .line 300
    :cond_8
    iput v8, v6, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    .line 301
    goto :goto_3

    .line 303
    :cond_9
    iput v8, v6, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    .line 304
    :cond_a
    :goto_3
    invoke-virtual {v6}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    monitor-exit v6

    .line 309
    goto/16 :goto_0

    .line 310
    :catchall_0
    move-exception v0

    .line 312
    monitor-exit v6

    .line 313
    throw v0

    .line 314
    :cond_b
    iget-object v0, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    .line 315
    check-cast v0, Landroid/util/ArrayMap;

    .line 317
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 319
    move-result-object v0

    .line 322
    new-instance v1, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda5;

    .line 323
    invoke-direct {v1, v2, v4}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda5;-><init>(Ljava/util/Set;I)V

    .line 325
    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 328
    return-void
    .line 331
.end method

.method public final updateStandardWifiEntryScans(Ljava/util/List;)V
    .locals 13

    .line 1
    const-string v0, "Scan Result list should not be null!"

    .line 2
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 7
    move-result-object p1

    .line 10
    new-instance v0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda0;

    .line 11
    const/16 v1, 0xa

    .line 13
    invoke-direct {v0, v1}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 15
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 18
    move-result-object p1

    .line 21
    new-instance v0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda1;

    .line 22
    const/4 v1, 0x5

    .line 24
    invoke-direct {v0, v1}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda1;-><init>(I)V

    .line 25
    invoke-static {v0}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    .line 28
    move-result-object v0

    .line 31
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 35
    check-cast p1, Ljava/util/Map;

    .line 36
    new-instance v0, Landroid/util/ArraySet;

    .line 38
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 40
    move-result-object v1

    .line 43
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 44
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiEntryCache:Ljava/util/List;

    .line 47
    new-instance v2, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda2;

    .line 49
    const/4 v3, 0x1

    .line 51
    invoke-direct {v2, v0, p1, v3}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/util/Map;I)V

    .line 52
    check-cast v1, Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 57
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 60
    move-result-object v0

    .line 63
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    move-result v2

    .line 67
    if-eqz v2, :cond_0

    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    move-result-object v2

    .line 73
    check-cast v2, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    .line 74
    new-instance v8, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    .line 76
    invoke-direct {v8, v2, v3}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;-><init>(Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;Z)V

    .line 78
    new-instance v12, Lcom/android/wifitrackerlib/StandardWifiEntry;

    .line 81
    iget-object v5, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    .line 83
    iget-object v6, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    .line 85
    iget-object v7, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    .line 87
    iget-object v4, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiConfigCache:Ljava/util/Map;

    .line 89
    check-cast v4, Landroid/util/ArrayMap;

    .line 91
    invoke-virtual {v4, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    move-result-object v4

    .line 96
    move-object v9, v4

    .line 97
    check-cast v9, Ljava/util/List;

    .line 98
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    move-result-object v2

    .line 103
    move-object v10, v2

    .line 104
    check-cast v10, Ljava/util/List;

    .line 105
    iget-object v11, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 107
    move-object v4, v12

    .line 109
    invoke-direct/range {v4 .. v11}, Lcom/android/wifitrackerlib/StandardWifiEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;Ljava/util/List;Ljava/util/List;Landroid/net/wifi/WifiManager;)V

    .line 110
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    goto :goto_0

    .line 116
    :cond_0
    new-instance p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda0;

    .line 117
    const/16 p1, 0xb

    .line 119
    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 121
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 124
    return-void
    .line 127
.end method

.method public final updateSuggestedWifiEntryScans(Ljava/util/List;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    const-string v2, "Scan Result list should not be null!"

    .line 6
    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    iget-object v2, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 11
    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->getWifiConfigForMatchedNetworkSuggestionsSharedWithUser(Ljava/util/List;)Ljava/util/List;

    .line 13
    move-result-object v2

    .line 16
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 17
    move-result-object v2

    .line 20
    new-instance v3, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda1;

    .line 21
    const/4 v4, 0x6

    .line 23
    invoke-direct {v3, v4}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda1;-><init>(I)V

    .line 24
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 27
    move-result-object v2

    .line 30
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 31
    move-result-object v3

    .line 34
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 38
    check-cast v2, Ljava/util/Set;

    .line 39
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 41
    move-result-object v1

    .line 44
    new-instance v3, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda0;

    .line 45
    const/16 v4, 0xc

    .line 47
    invoke-direct {v3, v4}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 49
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 52
    move-result-object v1

    .line 55
    new-instance v3, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda1;

    .line 56
    const/4 v4, 0x7

    .line 58
    invoke-direct {v3, v4}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda1;-><init>(I)V

    .line 59
    invoke-static {v3}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    .line 62
    move-result-object v3

    .line 65
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 66
    move-result-object v1

    .line 69
    check-cast v1, Ljava/util/Map;

    .line 70
    new-instance v3, Landroid/util/ArraySet;

    .line 72
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 74
    iget-object v4, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedWifiEntryCache:Ljava/util/List;

    .line 77
    new-instance v5, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda9;

    .line 79
    invoke-direct {v5, v3, v1, v2}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda9;-><init>(Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;)V

    .line 81
    check-cast v4, Ljava/util/ArrayList;

    .line 84
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 86
    iget-object v5, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedConfigCache:Ljava/util/Map;

    .line 89
    check-cast v5, Landroid/util/ArrayMap;

    .line 91
    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 93
    move-result-object v6

    .line 96
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 97
    move-result-object v6

    .line 100
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    move-result v7

    .line 104
    if-eqz v7, :cond_2

    .line 105
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    move-result-object v7

    .line 110
    check-cast v7, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    .line 111
    iget-object v8, v7, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    .line 113
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 115
    move-result v9

    .line 118
    if-nez v9, :cond_1

    .line 119
    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 121
    move-result v9

    .line 124
    if-nez v9, :cond_0

    .line 125
    goto :goto_0

    .line 127
    :cond_0
    new-instance v15, Lcom/android/wifitrackerlib/StandardWifiEntry;

    .line 128
    iget-object v9, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    .line 130
    iget-object v10, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    .line 132
    iget-object v11, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    .line 134
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    move-result-object v12

    .line 139
    move-object v13, v12

    .line 140
    check-cast v13, Ljava/util/List;

    .line 141
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    move-result-object v8

    .line 146
    move-object v14, v8

    .line 147
    check-cast v14, Ljava/util/List;

    .line 148
    iget-object v12, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 150
    move-object v8, v15

    .line 152
    move-object/from16 v16, v12

    .line 153
    move-object v12, v7

    .line 155
    move-object/from16 p1, v1

    .line 156
    move-object v1, v15

    .line 158
    move-object/from16 v15, v16

    .line 159
    invoke-direct/range {v8 .. v15}, Lcom/android/wifitrackerlib/StandardWifiEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;Ljava/util/List;Ljava/util/List;Landroid/net/wifi/WifiManager;)V

    .line 161
    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 164
    move-result v7

    .line 167
    monitor-enter v1

    .line 168
    :try_start_0
    iput-boolean v7, v1, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsUserShareable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit v1

    .line 171
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    goto :goto_1

    .line 175
    :catchall_0
    move-exception v0

    .line 176
    move-object v2, v0

    .line 177
    monitor-exit v1

    .line 178
    throw v2

    .line 179
    :cond_1
    move-object/from16 p1, v1

    .line 180
    :goto_1
    move-object/from16 v1, p1

    .line 182
    goto :goto_0

    .line 184
    :cond_2
    new-instance v0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda0;

    .line 185
    const/16 v1, 0xd

    .line 187
    invoke-direct {v0, v1}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 189
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 192
    return-void
    .line 195
.end method

.method public final updateWifiConfigurations(Ljava/util/List;)V
    .locals 6

    .line 1
    const-string v0, "Config list should not be null!"

    .line 2
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiConfigCache:Ljava/util/Map;

    .line 7
    check-cast v0, Landroid/util/ArrayMap;

    .line 9
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 11
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedConfigCache:Ljava/util/Map;

    .line 14
    check-cast v1, Landroid/util/ArrayMap;

    .line 16
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 18
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mNetworkRequestConfigCache:Landroid/util/ArrayMap;

    .line 21
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object p1

    .line 29
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v3

    .line 33
    const/4 v4, 0x1

    .line 34
    if-eqz v3, :cond_7

    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 40
    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 41
    iget-boolean v5, v3, Landroid/net/wifi/WifiConfiguration;->carrierMerged:Z

    .line 43
    if-eqz v5, :cond_0

    .line 45
    goto :goto_0

    .line 47
    :cond_0
    new-instance v5, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    .line 48
    invoke-direct {v5, v3, v4}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;-><init>(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 50
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    .line 53
    move-result v4

    .line 56
    if-eqz v4, :cond_1

    .line 57
    iget-object v4, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiConfigCache:Landroid/util/SparseArray;

    .line 59
    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 61
    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    goto :goto_0

    .line 66
    :cond_1
    iget-boolean v4, v3, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    .line 67
    if-eqz v4, :cond_3

    .line 69
    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 71
    move-result v4

    .line 74
    if-nez v4, :cond_2

    .line 75
    new-instance v4, Ljava/util/ArrayList;

    .line 77
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-virtual {v1, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_2
    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    move-result-object v4

    .line 88
    check-cast v4, Ljava/util/List;

    .line 89
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    goto :goto_0

    .line 94
    :cond_3
    iget-boolean v4, v3, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSpecifier:Z

    .line 95
    if-eqz v4, :cond_5

    .line 97
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 99
    move-result v4

    .line 102
    if-nez v4, :cond_4

    .line 103
    new-instance v4, Ljava/util/ArrayList;

    .line 105
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 107
    invoke-virtual {v2, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_4
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    move-result-object v4

    .line 116
    check-cast v4, Ljava/util/List;

    .line 117
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    goto :goto_0

    .line 122
    :cond_5
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 123
    move-result v4

    .line 126
    if-nez v4, :cond_6

    .line 127
    new-instance v4, Ljava/util/ArrayList;

    .line 129
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-virtual {v0, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_6
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    move-result-object v4

    .line 140
    check-cast v4, Ljava/util/List;

    .line 141
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    goto :goto_0

    .line 146
    :cond_7
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 147
    move-result-object p1

    .line 150
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 151
    move-result-object p1

    .line 154
    new-instance v0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda1;

    .line 155
    const/16 v1, 0x9

    .line 157
    invoke-direct {v0, v1}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda1;-><init>(I)V

    .line 159
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 162
    move-result-object p1

    .line 165
    new-instance v0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda0;

    .line 166
    const/16 v1, 0xe

    .line 168
    invoke-direct {v0, v1}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 170
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 173
    move-result-object p1

    .line 176
    new-instance v0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda1;

    .line 177
    const/16 v1, 0xa

    .line 179
    invoke-direct {v0, v1}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda1;-><init>(I)V

    .line 181
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 184
    move-result-object p1

    .line 187
    invoke-interface {p1}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    .line 188
    move-result-object p1

    .line 191
    invoke-interface {p1}, Ljava/util/stream/Stream;->count()J

    .line 192
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiEntryCache:Ljava/util/List;

    .line 195
    new-instance v0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda8;

    .line 197
    invoke-direct {v0, v4, p0}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    .line 199
    check-cast p1, Ljava/util/ArrayList;

    .line 202
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 204
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedWifiEntryCache:Ljava/util/List;

    .line 207
    new-instance v0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda6;

    .line 209
    const/4 v1, 0x2

    .line 211
    invoke-direct {v0, p0, v1}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda6;-><init>(Lcom/android/wifitrackerlib/WifiPickerTracker;I)V

    .line 212
    check-cast p1, Ljava/util/ArrayList;

    .line 215
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 217
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

    .line 220
    iget-wide v0, p1, Lcom/android/wifitrackerlib/ScanResultUpdater;->mMaxScanAgeMillis:J

    .line 222
    invoke-virtual {p1, v0, v1}, Lcom/android/wifitrackerlib/ScanResultUpdater;->getScanResults(J)Ljava/util/List;

    .line 224
    move-result-object p1

    .line 227
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateSuggestedWifiEntryScans(Ljava/util/List;)V

    .line 228
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mNetworkRequestEntry:Lcom/android/wifitrackerlib/NetworkRequestEntry;

    .line 231
    if-eqz p0, :cond_8

    .line 233
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    .line 235
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    move-result-object p1

    .line 240
    check-cast p1, Ljava/util/List;

    .line 241
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateConfig(Ljava/util/List;)V

    .line 243
    :cond_8
    return-void
    .line 246
.end method

.method public final updateWifiEntries()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mActiveWifiEntries:Ljava/util/List;

    .line 5
    check-cast v1, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 9
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mActiveWifiEntries:Ljava/util/List;

    .line 12
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiEntryCache:Ljava/util/List;

    .line 14
    check-cast v1, Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 18
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mActiveWifiEntries:Ljava/util/List;

    .line 21
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedWifiEntryCache:Ljava/util/List;

    .line 23
    check-cast v1, Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 27
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mActiveWifiEntries:Ljava/util/List;

    .line 30
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    .line 32
    check-cast v2, Landroid/util/ArrayMap;

    .line 34
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 36
    move-result-object v2

    .line 39
    check-cast v1, Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 42
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mNetworkRequestEntry:Lcom/android/wifitrackerlib/NetworkRequestEntry;

    .line 45
    if-eqz v1, :cond_0

    .line 47
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mActiveWifiEntries:Ljava/util/List;

    .line 49
    check-cast v2, Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mActiveWifiEntries:Ljava/util/List;

    .line 56
    new-instance v2, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda0;

    .line 58
    const/4 v3, 0x2

    .line 60
    invoke-direct {v2, v3}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 61
    check-cast v1, Ljava/util/ArrayList;

    .line 64
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 66
    new-instance v1, Landroid/util/ArraySet;

    .line 69
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 71
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mActiveWifiEntries:Ljava/util/List;

    .line 74
    check-cast v2, Ljava/util/ArrayList;

    .line 76
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 78
    move-result-object v2

    .line 81
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    move-result v3

    .line 85
    if-eqz v3, :cond_2

    .line 86
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    move-result-object v3

    .line 91
    check-cast v3, Lcom/android/wifitrackerlib/WifiEntry;

    .line 92
    instance-of v4, v3, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    .line 94
    if-eqz v4, :cond_1

    .line 96
    check-cast v3, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    .line 98
    iget-object v3, v3, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mKey:Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;

    .line 100
    iget-object v3, v3, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    .line 102
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 104
    goto :goto_0

    .line 107
    :cond_2
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mActiveWifiEntries:Ljava/util/List;

    .line 108
    new-instance v3, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda5;

    .line 110
    const/4 v4, 0x1

    .line 112
    invoke-direct {v3, v1, v4}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda5;-><init>(Ljava/util/Set;I)V

    .line 113
    check-cast v2, Ljava/util/ArrayList;

    .line 116
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 118
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mActiveWifiEntries:Ljava/util/List;

    .line 121
    sget-object v2, Lcom/android/wifitrackerlib/WifiEntry;->WIFI_PICKER_COMPARATOR:Ljava/util/Comparator;

    .line 123
    check-cast v1, Ljava/util/ArrayList;

    .line 125
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 127
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mWifiEntries:Ljava/util/List;

    .line 130
    check-cast v1, Ljava/util/ArrayList;

    .line 132
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 134
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedWifiEntryCache:Ljava/util/List;

    .line 137
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 139
    move-result-object v1

    .line 142
    new-instance v2, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda6;

    .line 143
    const/4 v3, 0x0

    .line 145
    invoke-direct {v2, p0, v3}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda6;-><init>(Lcom/android/wifitrackerlib/WifiPickerTracker;I)V

    .line 146
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 149
    move-result-object v1

    .line 152
    new-instance v2, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda1;

    .line 153
    const/4 v3, 0x4

    .line 155
    invoke-direct {v2, v3}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda1;-><init>(I)V

    .line 156
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 159
    move-result-object v1

    .line 162
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 163
    move-result-object v2

    .line 166
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 167
    move-result-object v1

    .line 170
    check-cast v1, Ljava/util/Set;

    .line 171
    new-instance v2, Landroid/util/ArraySet;

    .line 173
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 175
    iget-object v5, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    .line 178
    check-cast v5, Landroid/util/ArrayMap;

    .line 180
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 182
    move-result-object v5

    .line 185
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 186
    move-result-object v5

    .line 189
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 190
    move-result v6

    .line 193
    if-eqz v6, :cond_3

    .line 194
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 196
    move-result-object v6

    .line 199
    check-cast v6, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    .line 200
    invoke-virtual {v6}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->getAllUtf8Ssids()Ljava/util/Set;

    .line 202
    move-result-object v6

    .line 205
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 206
    goto :goto_1

    .line 209
    :cond_3
    new-instance v5, Landroid/util/ArraySet;

    .line 210
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 212
    iget-object v6, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mKnownNetworkEntryCache:Ljava/util/List;

    .line 215
    check-cast v6, Ljava/util/ArrayList;

    .line 217
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 219
    move-result-object v6

    .line 222
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 223
    move-result v7

    .line 226
    if-eqz v7, :cond_4

    .line 227
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 229
    move-result-object v7

    .line 232
    check-cast v7, Lcom/android/wifitrackerlib/KnownNetworkEntry;

    .line 233
    iget-object v7, v7, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    .line 235
    iget-object v7, v7, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    .line 237
    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 239
    goto :goto_2

    .line 242
    :cond_4
    new-instance v5, Landroid/util/ArraySet;

    .line 243
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 245
    iget-object v6, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mHotspotNetworkEntryCache:Ljava/util/List;

    .line 248
    check-cast v6, Ljava/util/ArrayList;

    .line 250
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 252
    move-result-object v6

    .line 255
    :cond_5
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 256
    move-result v7

    .line 259
    if-eqz v7, :cond_6

    .line 260
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 262
    move-result-object v7

    .line 265
    check-cast v7, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    .line 266
    iget-object v7, v7, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mKey:Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;

    .line 268
    iget-boolean v8, v7, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->mIsVirtualEntry:Z

    .line 270
    if-nez v8, :cond_5

    .line 272
    iget-object v7, v7, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    .line 274
    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 276
    goto :goto_3

    .line 279
    :cond_6
    iget-object v5, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiEntryCache:Ljava/util/List;

    .line 280
    check-cast v5, Ljava/util/ArrayList;

    .line 282
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 284
    move-result-object v5

    .line 287
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 288
    move-result v6

    .line 291
    if-eqz v6, :cond_a

    .line 292
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 294
    move-result-object v6

    .line 297
    check-cast v6, Lcom/android/wifitrackerlib/StandardWifiEntry;

    .line 298
    invoke-virtual {v6}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateAdminRestrictions()V

    .line 300
    iget-object v7, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mActiveWifiEntries:Ljava/util/List;

    .line 303
    check-cast v7, Ljava/util/ArrayList;

    .line 305
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 307
    move-result v7

    .line 310
    if-eqz v7, :cond_7

    .line 311
    goto :goto_4

    .line 313
    :cond_7
    invoke-virtual {v6}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isSaved()Z

    .line 314
    move-result v7

    .line 317
    if-nez v7, :cond_9

    .line 318
    iget-object v7, v6, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    .line 320
    iget-object v7, v7, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    .line 322
    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 324
    move-result v7

    .line 327
    if-eqz v7, :cond_8

    .line 328
    goto :goto_4

    .line 330
    :cond_8
    invoke-virtual {v6}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getSsid()Ljava/lang/String;

    .line 331
    move-result-object v7

    .line 334
    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 335
    move-result v7

    .line 338
    if-eqz v7, :cond_9

    .line 339
    goto :goto_4

    .line 341
    :cond_9
    iget-object v7, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mWifiEntries:Ljava/util/List;

    .line 342
    check-cast v7, Ljava/util/ArrayList;

    .line 344
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    goto :goto_4

    .line 349
    :cond_a
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mWifiEntries:Ljava/util/List;

    .line 350
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedWifiEntryCache:Ljava/util/List;

    .line 352
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 354
    move-result-object v2

    .line 357
    new-instance v5, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda0;

    .line 358
    invoke-direct {v5, v3}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 360
    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 363
    move-result-object v2

    .line 366
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 367
    move-result-object v3

    .line 370
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 371
    move-result-object v2

    .line 374
    check-cast v2, Ljava/util/Collection;

    .line 375
    check-cast v1, Ljava/util/ArrayList;

    .line 377
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 379
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mWifiEntries:Ljava/util/List;

    .line 382
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    .line 384
    check-cast v2, Landroid/util/ArrayMap;

    .line 386
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 388
    move-result-object v2

    .line 391
    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 392
    move-result-object v2

    .line 395
    new-instance v3, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda0;

    .line 396
    const/4 v5, 0x5

    .line 398
    invoke-direct {v3, v5}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 399
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 402
    move-result-object v2

    .line 405
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 406
    move-result-object v3

    .line 409
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 410
    move-result-object v2

    .line 413
    check-cast v2, Ljava/util/Collection;

    .line 414
    check-cast v1, Ljava/util/ArrayList;

    .line 416
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 418
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mWifiEntries:Ljava/util/List;

    .line 421
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mOsuWifiEntryCache:Ljava/util/Map;

    .line 423
    check-cast v2, Landroid/util/ArrayMap;

    .line 425
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 427
    move-result-object v2

    .line 430
    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 431
    move-result-object v2

    .line 434
    new-instance v3, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda0;

    .line 435
    const/4 v5, 0x6

    .line 437
    invoke-direct {v3, v5}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 438
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 441
    move-result-object v2

    .line 444
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 445
    move-result-object v3

    .line 448
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 449
    move-result-object v2

    .line 452
    check-cast v2, Ljava/util/Collection;

    .line 453
    check-cast v1, Ljava/util/ArrayList;

    .line 455
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 457
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mWifiEntries:Ljava/util/List;

    .line 460
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointUtilsStub:Lcom/android/wifitrackerlib/PasspointUtilsStub;

    .line 462
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 464
    new-instance v2, Ljava/util/ArrayList;

    .line 467
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 469
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 472
    move-result-object v2

    .line 475
    new-instance v3, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda0;

    .line 476
    const/4 v5, 0x7

    .line 478
    invoke-direct {v3, v5}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 479
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 482
    move-result-object v2

    .line 485
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 486
    move-result-object v3

    .line 489
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 490
    move-result-object v2

    .line 493
    check-cast v2, Ljava/util/Collection;

    .line 494
    check-cast v1, Ljava/util/ArrayList;

    .line 496
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 498
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mWifiEntries:Ljava/util/List;

    .line 501
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 503
    move-result-object v2

    .line 506
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 507
    move-result-object v2

    .line 510
    new-instance v3, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda0;

    .line 511
    const/16 v5, 0x8

    .line 513
    invoke-direct {v3, v5}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 515
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 518
    move-result-object v2

    .line 521
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 522
    move-result-object v3

    .line 525
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 526
    move-result-object v2

    .line 529
    check-cast v2, Ljava/util/Collection;

    .line 530
    check-cast v1, Ljava/util/ArrayList;

    .line 532
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 534
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mWifiEntries:Ljava/util/List;

    .line 537
    sget-object v2, Lcom/android/wifitrackerlib/WifiEntry;->WIFI_PICKER_COMPARATOR:Ljava/util/Comparator;

    .line 539
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 541
    sget-boolean v1, Lcom/android/wifitrackerlib/BaseWifiTracker;->sVerboseLogging:Z

    .line 544
    if-eqz v1, :cond_b

    .line 546
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mActiveWifiEntries:Ljava/util/List;

    .line 548
    check-cast v1, Ljava/util/ArrayList;

    .line 550
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 552
    move-result-object v1

    .line 555
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 556
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mWifiEntries:Ljava/util/List;

    .line 559
    check-cast v1, Ljava/util/ArrayList;

    .line 561
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 563
    move-result-object v1

    .line 566
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 567
    :cond_b
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mListener:Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;

    .line 571
    if-eqz v0, :cond_c

    .line 573
    new-instance v1, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda7;

    .line 575
    invoke-direct {v1, v0, v4}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda7;-><init>(Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;I)V

    .line 577
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    .line 580
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 582
    :cond_c
    return-void

    .line 585
    :catchall_0
    move-exception p0

    .line 586
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 587
    throw p0
    .line 588
.end method
