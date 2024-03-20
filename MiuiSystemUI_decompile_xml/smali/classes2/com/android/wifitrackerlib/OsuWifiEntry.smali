.class public final Lcom/android/wifitrackerlib/OsuWifiEntry;
.super Lcom/android/wifitrackerlib/WifiEntry;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mCurrentScanResults:Ljava/util/List;

.field public final mHasAddConfigUserRestriction:Z

.field public mIsAlreadyProvisioned:Z

.field public final mKey:Ljava/lang/String;

.field public final mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

.field public mOsuStatusString:Ljava/lang/String;

.field public mSsid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/hotspot2/OsuProvider;Landroid/net/wifi/WifiManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p5}, Lcom/android/wifitrackerlib/WifiEntry;-><init>(Landroid/os/Handler;Landroid/net/wifi/WifiManager;)V

    .line 2
    new-instance p3, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object p3, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mCurrentScanResults:Ljava/util/List;

    .line 10
    const/4 p3, 0x0

    .line 12
    iput-boolean p3, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mIsAlreadyProvisioned:Z

    .line 13
    iput-boolean p3, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mHasAddConfigUserRestriction:Z

    .line 15
    const-string p3, "Cannot construct with null osuProvider!"

    .line 17
    invoke-static {p4, p3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    iput-object p2, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mContext:Landroid/content/Context;

    .line 22
    iput-object p4, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    .line 24
    invoke-static {p4}, Lcom/android/wifitrackerlib/OsuWifiEntry;->osuProviderToOsuWifiEntryKey(Landroid/net/wifi/hotspot2/OsuProvider;)Ljava/lang/String;

    .line 26
    move-result-object p2

    .line 29
    iput-object p2, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mKey:Ljava/lang/String;

    .line 30
    iget-object p1, p1, Lcom/android/wifitrackerlib/WifiTrackerInjector;->mUserManager:Landroid/os/UserManager;

    .line 32
    sget p2, Landroidx/core/os/BuildCompat;->$r8$clinit:I

    .line 34
    if-eqz p1, :cond_0

    .line 36
    const-string p2, "no_add_wifi_config"

    .line 38
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    .line 40
    move-result p1

    .line 43
    iput-boolean p1, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mHasAddConfigUserRestriction:Z

    .line 44
    :cond_0
    return-void
    .line 46
.end method

.method public static osuProviderToOsuWifiEntryKey(Landroid/net/wifi/hotspot2/OsuProvider;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "Cannot create key with null OsuProvider!"

    .line 2
    invoke-static {p0, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string v1, "OsuWifiEntry:"

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/OsuProvider;->getFriendlyName()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, ","

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/OsuProvider;->getServerUri()Landroid/net/Uri;

    .line 26
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 40
    return-object p0
    .line 41
.end method


# virtual methods
.method public final declared-synchronized canConnect()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    iget-boolean v0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mHasAddConfigUserRestriction:Z

    .line 4
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-boolean v0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mIsAlreadyProvisioned:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    if-nez v0, :cond_0

    .line 12
    :try_start_2
    monitor-exit p0

    .line 14
    move v0, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    move v0, v2

    .line 18
    :goto_0
    if-eqz v0, :cond_1

    .line 19
    monitor-exit p0

    .line 21
    return v2

    .line 22
    :cond_1
    :try_start_3
    iget v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    .line 23
    const/4 v3, -0x1

    .line 25
    if-eq v0, v3, :cond_2

    .line 26
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    .line 28
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 31
    if-nez v0, :cond_2

    .line 32
    goto :goto_1

    .line 34
    :cond_2
    move v1, v2

    .line 35
    :goto_1
    monitor-exit p0

    .line 36
    return v1

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto :goto_2

    .line 39
    :catchall_1
    move-exception v0

    .line 40
    :try_start_4
    monitor-exit p0

    .line 41
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 42
    :goto_2
    monitor-exit p0

    .line 43
    throw v0
    .line 44
.end method

.method public final declared-synchronized connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    .line 3
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 5
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->stopRestrictingAutoJoinToSubscriptionId()V

    .line 7
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 10
    iget-object v0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    .line 12
    iget-object v1, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 16
    move-result-object v1

    .line 19
    new-instance v2, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;

    .line 20
    invoke-direct {v2, p0}, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;-><init>(Lcom/android/wifitrackerlib/OsuWifiEntry;)V

    .line 22
    invoke-virtual {p1, v0, v1, v2}, Landroid/net/wifi/WifiManager;->startSubscriptionProvisioning(Landroid/net/wifi/hotspot2/OsuProvider;Ljava/util/concurrent/Executor;Landroid/net/wifi/hotspot2/ProvisioningCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit p0

    .line 31
    throw p1
.end method

.method public final connectionInfoMatches(Landroid/net/wifi/WifiInfo;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getPasspointProviderFriendlyName()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 11
    iget-object p0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    .line 12
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/OsuProvider;->getFriendlyName()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 17
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 18
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
    .line 27
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mKey:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getScanResultDescription()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    return-object p0
    .line 4
.end method

.method public final declared-synchronized getSsid()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mSsid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
    .line 9
.end method

.method public final declared-synchronized getSummary(Z)Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    iget-boolean v0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mHasAddConfigUserRestriction:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-boolean v0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mIsAlreadyProvisioned:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8
    if-nez v0, :cond_0

    .line 10
    :try_start_2
    monitor-exit p0

    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    monitor-exit p0

    .line 15
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    iget-object p1, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mContext:Landroid/content/Context;

    .line 19
    const v0, 0x7f130cbe    # @string/wifitrackerlib_admin_restricted_network 'Not allowed by your organization'

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    monitor-exit p0

    .line 28
    return-object p1

    .line 29
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mOsuStatusString:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    if-eqz v0, :cond_2

    .line 32
    monitor-exit p0

    .line 34
    return-object v0

    .line 35
    :cond_2
    :try_start_4
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/OsuWifiEntry;->isAlreadyProvisioned()Z

    .line 36
    move-result v0

    .line 39
    if-eqz v0, :cond_4

    .line 40
    if-eqz p1, :cond_3

    .line 42
    iget-object p1, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mContext:Landroid/content/Context;

    .line 44
    const v0, 0x7f130ceb    # @string/wifitrackerlib_wifi_passpoint_expired 'Expired'

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    iget-object p1, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mContext:Landroid/content/Context;

    .line 54
    const v0, 0x7f130cd5    # @string/wifitrackerlib_tap_to_renew_subscription_and_connect 'Tap to renew subscription and connect'

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 59
    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 62
    :goto_1
    monitor-exit p0

    .line 63
    return-object p1

    .line 64
    :cond_4
    :try_start_5
    iget-object p1, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mContext:Landroid/content/Context;

    .line 65
    const v0, 0x7f130cd6    # @string/wifitrackerlib_tap_to_sign_up 'Tap to sign up'

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 70
    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 73
    monitor-exit p0

    .line 74
    return-object p1

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    goto :goto_2

    .line 77
    :catchall_1
    move-exception p1

    .line 78
    :try_start_6
    monitor-exit p0

    .line 79
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 80
    :goto_2
    monitor-exit p0

    .line 81
    throw p1
    .line 82
.end method

.method public final declared-synchronized getTitle()Ljava/lang/String;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    .line 3
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/OsuProvider;->getFriendlyName()Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-nez v1, :cond_0

    .line 13
    monitor-exit p0

    .line 15
    return-object v0

    .line 16
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mSsid:Ljava/lang/String;

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    iget-object v0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mSsid:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    monitor-exit p0

    .line 27
    return-object v0

    .line 28
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    .line 29
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/OsuProvider;->getServerUri()Landroid/net/Uri;

    .line 31
    move-result-object v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    monitor-exit p0

    .line 41
    return-object v0

    .line 42
    :cond_2
    :try_start_3
    const-string v0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    monitor-exit p0

    .line 45
    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    monitor-exit p0

    .line 48
    throw v0
    .line 49
.end method

.method public final declared-synchronized isAlreadyProvisioned()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mIsAlreadyProvisioned:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
    .line 9
.end method

.method public final declared-synchronized updateScanResultInfo(Ljava/util/List;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_0

    .line 3
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mCurrentScanResults:Ljava/util/List;

    .line 10
    check-cast v0, Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 14
    iget-object v0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mCurrentScanResults:Ljava/util/List;

    .line 17
    check-cast v0, Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 21
    invoke-static {p1}, Lcom/android/wifitrackerlib/Utils;->getBestScanResultByLevel(Ljava/util/List;)Landroid/net/wifi/ScanResult;

    .line 24
    move-result-object p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiEntry;->updateTransitionModeCapa(Landroid/net/wifi/ScanResult;)V

    .line 30
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mSsid:Ljava/lang/String;

    .line 35
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    .line 37
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 43
    iget p1, p1, Landroid/net/wifi/ScanResult;->level:I

    .line 45
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(I)I

    .line 47
    move-result p1

    .line 50
    iput p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    .line 51
    goto :goto_0

    .line 53
    :cond_1
    const/4 p1, -0x1

    .line 54
    iput p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    .line 55
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mCurrentScanResults:Ljava/util/List;

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiEntry;->updateWifiGenerationInfo(Ljava/util/List;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    monitor-exit p0

    .line 68
    throw p1
    .line 69
.end method
