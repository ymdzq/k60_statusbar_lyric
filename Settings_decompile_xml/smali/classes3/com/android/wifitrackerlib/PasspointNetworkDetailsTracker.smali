.class public Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;
.super Lcom/android/wifitrackerlib/NetworkDetailsTracker;
.source "PasspointNetworkDetailsTracker.java"


# instance fields
.field private final mChosenEntry:Lcom/android/wifitrackerlib/PasspointWifiEntry;

.field private mCurrentWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mOsuWifiEntry:Lcom/android/wifitrackerlib/OsuWifiEntry;


# direct methods
.method public static synthetic $r8$lambda$1IiZXbiEwXwN93EZoGjMv4kscHA(Ljava/lang/String;Landroid/net/wifi/hotspot2/PasspointConfiguration;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->lambda$new$0(Ljava/lang/String;Landroid/net/wifi/hotspot2/PasspointConfiguration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$3vz_GQkoNbGe_HQyXFol1RzVnQA(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->lambda$new$1(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$AVPgbLLfGdOtn9LyD7BtuXqMwWI(Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;Landroid/net/wifi/hotspot2/PasspointConfiguration;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->lambda$conditionallyUpdateConfig$2(Landroid/net/wifi/hotspot2/PasspointConfiguration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$m74dVHjluDB4e9Mt40g0KrqvD4Q(Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->lambda$conditionallyUpdateConfig$3(Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    return-void
.end method

.method constructor <init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLjava/lang/String;)V
    .locals 16

    move-object/from16 v14, p0

    move-object/from16 v15, p13

    const-string v13, "PasspointNetworkDetailsTracker"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    .line 93
    invoke-direct/range {v0 .. v13}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLjava/lang/String;)V

    .line 96
    iget-object v0, v14, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 97
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getPasspointConfigurations()Ljava/util/List;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, v15}, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    new-instance v1, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    iget-object v2, v14, Lcom/android/wifitrackerlib/BaseWifiTracker;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    iget-object v3, v14, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v4, v14, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    .line 104
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    iget-object v5, v14, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v6, 0x0

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v0

    move-object/from16 p6, v5

    move/from16 p7, v6

    invoke-direct/range {p1 .. p7}, Lcom/android/wifitrackerlib/PasspointWifiEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/hotspot2/PasspointConfiguration;Landroid/net/wifi/WifiManager;Z)V

    iput-object v1, v14, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/PasspointWifiEntry;

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, v14, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 108
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1, v15}, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    new-instance v1, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    iget-object v2, v14, Lcom/android/wifitrackerlib/BaseWifiTracker;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    iget-object v3, v14, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v4, v14, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    .line 116
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v14, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v6, 0x0

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v0

    move-object/from16 p6, v5

    move/from16 p7, v6

    invoke-direct/range {p1 .. p7}, Lcom/android/wifitrackerlib/PasspointWifiEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager;Z)V

    iput-object v1, v14, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/PasspointWifiEntry;

    .line 126
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->updateStartInfo()V

    return-void

    .line 119
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot find config for given PasspointWifiEntry key!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private cacheNewScanResults()V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/wifitrackerlib/ScanResultUpdater;->update(Ljava/util/List;)V

    return-void
.end method

.method private conditionallyUpdateConfig()V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getPasspointConfigurations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker$$ExternalSyntheticLambda2;-><init>(Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;)V

    .line 282
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 285
    invoke-interface {v0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker$$ExternalSyntheticLambda3;-><init>(Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private conditionallyUpdateScanResults(Z)V
    .locals 8

    .line 252
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 253
    iget-object p1, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/PasspointWifiEntry;

    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mCurrentWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->updateScanResultInfo(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 259
    :cond_0
    iget-wide v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMaxScanAgeMillis:J

    if-eqz p1, :cond_1

    .line 261
    invoke-direct {p0}, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->cacheNewScanResults()V

    goto :goto_0

    .line 265
    :cond_1
    iget-wide v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanIntervalMillis:J

    add-long/2addr v0, v2

    .line 268
    :goto_0
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

    invoke-virtual {p1, v0, v1}, Lcom/android/wifitrackerlib/ScanResultUpdater;->getScanResults(J)Ljava/util/List;

    move-result-object v3

    .line 269
    invoke-direct {p0, v3}, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->updatePasspointWifiEntryScans(Ljava/util/List;)V

    .line 270
    invoke-direct {p0, v3}, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->updateOsuWifiEntryScans(Ljava/util/List;)V

    .line 272
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/wifitrackerlib/PasspointUtilsStub;->getInstance(Landroid/content/Context;)Lcom/android/wifitrackerlib/PasspointUtilsStub;

    move-result-object v2

    iget-object v4, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/PasspointWifiEntry;

    iget-object v5, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v2 .. v7}, Lcom/android/wifitrackerlib/PasspointUtilsStub;->updatePasspointR1Entry(Ljava/util/List;Lcom/android/wifitrackerlib/PasspointWifiEntry;Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/WifiManager;)V

    return-void
.end method

.method private synthetic lambda$conditionallyUpdateConfig$2(Landroid/net/wifi/hotspot2/PasspointConfiguration;)Z
    .locals 0

    .line 283
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->uniqueIdToPasspointWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/PasspointWifiEntry;

    .line 284
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    .line 282
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$conditionallyUpdateConfig$3(Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/PasspointWifiEntry;

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->updatePasspointConfig(Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Ljava/lang/String;Landroid/net/wifi/hotspot2/PasspointConfiguration;)Z
    .locals 0

    .line 100
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->uniqueIdToPasspointWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$new$1(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1

    .line 110
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->uniqueIdToPasspointWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateOsuWifiEntryScans(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Scan Result list should not be null!"

    .line 213
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 216
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->getMatchingOsuProviders(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 217
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 219
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 218
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->getMatchingPasspointConfigsForOsuProviders(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mOsuWifiEntry:Lcom/android/wifitrackerlib/OsuWifiEntry;

    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/OsuWifiEntry;->getOsuProvider()Landroid/net/wifi/hotspot2/OsuProvider;

    move-result-object v0

    .line 222
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {v1, p1}, Lcom/android/wifitrackerlib/OsuWifiEntry;->updateScanResultInfo(Ljava/util/List;)V

    goto :goto_0

    .line 226
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/OsuProvider;

    .line 228
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-eqz v3, :cond_1

    .line 229
    iget-object v4, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/PasspointWifiEntry;

    invoke-virtual {v4}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 230
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->uniqueIdToPasspointWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 229
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 231
    new-instance v0, Lcom/android/wifitrackerlib/OsuWifiEntry;

    iget-object v4, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    iget-object v5, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v9, 0x0

    move-object v3, v0

    move-object v7, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/wifitrackerlib/OsuWifiEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/hotspot2/OsuProvider;Landroid/net/wifi/WifiManager;Z)V

    iput-object v0, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mOsuWifiEntry:Lcom/android/wifitrackerlib/OsuWifiEntry;

    .line 233
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/android/wifitrackerlib/OsuWifiEntry;->updateScanResultInfo(Ljava/util/List;)V

    .line 234
    iget-object p1, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mOsuWifiEntry:Lcom/android/wifitrackerlib/OsuWifiEntry;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/wifitrackerlib/OsuWifiEntry;->setAlreadyProvisioned(Z)V

    .line 235
    iget-object p1, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/PasspointWifiEntry;

    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mOsuWifiEntry:Lcom/android/wifitrackerlib/OsuWifiEntry;

    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->setOsuWifiEntry(Lcom/android/wifitrackerlib/OsuWifiEntry;)V

    return-void

    .line 242
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mOsuWifiEntry:Lcom/android/wifitrackerlib/OsuWifiEntry;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 243
    iget-object p1, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/PasspointWifiEntry;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->setOsuWifiEntry(Lcom/android/wifitrackerlib/OsuWifiEntry;)V

    .line 244
    iput-object v0, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mOsuWifiEntry:Lcom/android/wifitrackerlib/OsuWifiEntry;

    :cond_3
    return-void
.end method

.method private updatePasspointWifiEntryScans(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Scan Result list should not be null!"

    .line 188
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 191
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->getAllMatchingWifiConfigs(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 192
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 193
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 194
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->uniqueIdToPasspointWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 196
    iget-object v3, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/PasspointWifiEntry;

    invoke-virtual {v3}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    iput-object v1, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mCurrentWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 198
    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/PasspointWifiEntry;

    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    const/4 v2, 0x0

    .line 199
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const/4 v2, 0x1

    .line 200
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 198
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->updateScanResultInfo(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 206
    :cond_1
    iget-object p1, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/PasspointWifiEntry;

    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mCurrentWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->updateScanResultInfo(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private updateStartInfo()V
    .locals 3

    const/4 v0, 0x1

    .line 165
    invoke-direct {p0, v0}, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->conditionallyUpdateScanResults(Z)V

    .line 166
    invoke-direct {p0}, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->conditionallyUpdateConfig()V

    .line 167
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 169
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 170
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 174
    new-instance v2, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v2, v1}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 176
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 174
    invoke-virtual {p0, v0, v1}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->handleNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 181
    invoke-virtual {p0, v0, v1}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->handleLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->mChosenEntry:Lcom/android/wifitrackerlib/PasspointWifiEntry;

    return-object p0
.end method

.method protected handleConfiguredNetworksChangedAction(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "Intent cannot be null!"

    .line 159
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-direct {p0}, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->conditionallyUpdateConfig()V

    return-void
.end method

.method protected handleOnStart()V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->updateStartInfo()V

    return-void
.end method

.method protected handleScanResultsAvailableAction(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "Intent cannot be null!"

    .line 151
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "resultsUpdated"

    const/4 v1, 0x1

    .line 153
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 152
    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->conditionallyUpdateScanResults(Z)V

    return-void
.end method

.method protected handleWifiStateChangedAction()V
    .locals 1

    const/4 v0, 0x1

    .line 145
    invoke-direct {p0, v0}, Lcom/android/wifitrackerlib/PasspointNetworkDetailsTracker;->conditionallyUpdateScanResults(Z)V

    return-void
.end method
