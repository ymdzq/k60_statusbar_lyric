.class public Lcom/android/wifitrackerlib/StandardWifiEntry;
.super Lcom/android/wifitrackerlib/WifiEntry;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mCurrentScanResults:Ljava/util/List;

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public mHasAddConfigUserRestriction:Z

.field public final mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

.field public mIsAdminRestricted:Z

.field public final mIsEnhancedOpenSupported:Z

.field public mIsUserShareable:Z

.field public final mIsWpa3SaeSupported:Z

.field public final mIsWpa3SuiteBSupported:Z

.field public final mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

.field public final mMatchingScanResults:Ljava/util/Map;

.field public final mMatchingWifiConfigs:Ljava/util/Map;

.field public mShouldAutoOpenCaptivePortal:Z

.field public final mTargetScanResults:Ljava/util/List;

.field public final mTargetSecurityTypes:Ljava/util/List;

.field public mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;Landroid/net/wifi/WifiManager;)V
    .locals 1

    .line 1
    invoke-direct {p0, p3, p5}, Lcom/android/wifitrackerlib/WifiEntry;-><init>(Landroid/os/Handler;Landroid/net/wifi/WifiManager;)V

    .line 2
    new-instance p3, Landroid/util/ArrayMap;

    invoke-direct {p3}, Landroid/util/ArrayMap;-><init>()V

    iput-object p3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingScanResults:Ljava/util/Map;

    .line 3
    new-instance p3, Landroid/util/ArrayMap;

    invoke-direct {p3}, Landroid/util/ArrayMap;-><init>()V

    iput-object p3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingWifiConfigs:Ljava/util/Map;

    .line 4
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetScanResults:Ljava/util/List;

    .line 5
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    const/4 p3, 0x0

    .line 6
    iput-boolean p3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsUserShareable:Z

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mCurrentScanResults:Ljava/util/List;

    .line 8
    iput-boolean p3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mShouldAutoOpenCaptivePortal:Z

    .line 9
    iput-boolean p3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsAdminRestricted:Z

    .line 10
    iput-boolean p3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mHasAddConfigUserRestriction:Z

    .line 11
    iput-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    .line 12
    iput-object p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    .line 13
    iput-object p4, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    .line 14
    invoke-virtual {p5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 15
    invoke-virtual {p5}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsWpa3SaeSupported:Z

    .line 16
    invoke-virtual {p5}, Landroid/net/wifi/WifiManager;->isWpa3SuiteBSupported()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsWpa3SuiteBSupported:Z

    .line 17
    invoke-virtual {p5}, Landroid/net/wifi/WifiManager;->isEnhancedOpenSupported()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsEnhancedOpenSupported:Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 18
    iput-boolean p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsWpa3SaeSupported:Z

    .line 19
    iput-boolean p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsWpa3SuiteBSupported:Z

    .line 20
    iput-boolean p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsEnhancedOpenSupported:Z

    .line 21
    :goto_0
    iget-object p2, p1, Lcom/android/wifitrackerlib/WifiTrackerInjector;->mUserManager:Landroid/os/UserManager;

    .line 22
    iput-object p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mUserManager:Landroid/os/UserManager;

    .line 23
    iget-object p1, p1, Lcom/android/wifitrackerlib/WifiTrackerInjector;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 24
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateSecurityTypes()V

    .line 25
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateAdminRestrictions()V

    return-void
.end method

.method public constructor <init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;Ljava/util/List;Ljava/util/List;Landroid/net/wifi/WifiManager;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    .line 26
    invoke-direct/range {v0 .. v5}, Lcom/android/wifitrackerlib/StandardWifiEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;Landroid/net/wifi/WifiManager;)V

    if-eqz p5, :cond_0

    .line 27
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 28
    invoke-virtual {p0, p5}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateConfig(Ljava/util/List;)V

    :cond_0
    if-eqz p6, :cond_1

    .line 29
    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 30
    invoke-virtual {p0, p6}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateScanResultInfo(Ljava/util/List;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized canConnect()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    .line 3
    const/4 v1, -0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq v0, v1, :cond_c

    .line 7
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto/16 :goto_2

    .line 15
    :cond_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    iget-boolean v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mHasAddConfigUserRestriction:Z

    .line 18
    const/4 v3, 0x1

    .line 20
    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isSaved()Z

    .line 23
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isSuggestion()Z

    .line 29
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    :cond_1
    iget-boolean v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsAdminRestricted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    if-eqz v0, :cond_3

    .line 37
    :cond_2
    :try_start_2
    monitor-exit p0

    .line 39
    move v0, v3

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 42
    move v0, v2

    .line 43
    :goto_0
    if-eqz v0, :cond_4

    .line 44
    monitor-exit p0

    .line 46
    return v2

    .line 47
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    .line 48
    const/4 v4, 0x3

    .line 50
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object v4

    .line 54
    check-cast v0, Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 57
    move-result v0

    .line 60
    if-eqz v0, :cond_b

    .line 61
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 63
    if-eqz v0, :cond_b

    .line 65
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 67
    if-eqz v0, :cond_b

    .line 69
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->isAuthenticationSimBased()Z

    .line 71
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 74
    if-nez v0, :cond_5

    .line 75
    monitor-exit p0

    .line 77
    return v3

    .line 78
    :cond_5
    :try_start_4
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    .line 79
    const-class v4, Landroid/telephony/SubscriptionManager;

    .line 81
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 83
    move-result-object v0

    .line 86
    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 87
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    .line 89
    move-result-object v0

    .line 92
    if-eqz v0, :cond_a

    .line 93
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 95
    move-result v4

    .line 98
    if-nez v4, :cond_6

    .line 99
    goto :goto_1

    .line 101
    :cond_6
    iget-object v4, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 102
    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->carrierId:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 104
    if-ne v4, v1, :cond_7

    .line 106
    monitor-exit p0

    .line 108
    return v3

    .line 109
    :cond_7
    :try_start_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 110
    move-result-object v0

    .line 113
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    move-result v1

    .line 117
    if-eqz v1, :cond_9

    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    move-result-object v1

    .line 123
    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 124
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    .line 126
    move-result v1

    .line 129
    iget-object v4, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 130
    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->carrierId:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 132
    if-ne v1, v4, :cond_8

    .line 134
    monitor-exit p0

    .line 136
    return v3

    .line 137
    :cond_9
    monitor-exit p0

    .line 138
    return v2

    .line 139
    :cond_a
    :goto_1
    monitor-exit p0

    .line 140
    return v2

    .line 141
    :cond_b
    monitor-exit p0

    .line 142
    return v3

    .line 143
    :catchall_0
    move-exception v0

    .line 144
    :try_start_6
    monitor-exit p0

    .line 145
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 146
    :cond_c
    :goto_2
    monitor-exit p0

    .line 147
    return v2

    .line 148
    :catchall_1
    move-exception v0

    .line 149
    monitor-exit p0

    .line 150
    throw v0
    .line 151
.end method

.method public final canDisconnect()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    .line 2
    move-result p0

    .line 5
    const/4 v0, 0x2

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
    .line 12
.end method

.method public canSetAutoJoinEnabled()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isSaved()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isSuggestion()Z

    .line 8
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
    .line 18
.end method

.method public canSetMeteredChoice()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
    .line 11
.end method

.method public final declared-synchronized canSignIn()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetwork:Landroid/net/Network;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const/16 v1, 0x11

    .line 11
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 13
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    monitor-exit p0

    .line 22
    return v0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    monitor-exit p0

    .line 25
    throw v0
    .line 26
.end method

.method public declared-synchronized connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;Z)V
    .locals 9

    .line 3
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mShouldAutoOpenCaptivePortal:Z

    .line 5
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->stopRestrictingAutoJoinToSubscriptionId()V

    .line 6
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isSaved()Z

    move-result v1

    const/4 v2, 0x0

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 8
    iget-object v4, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isSuggestion()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    iget-object v7, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    const-string v8, "\""

    if-eqz v6, :cond_1

    .line 10
    new-instance p1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    iget-object v4, v7, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    .line 13
    iget-object v4, v4, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSsid:Ljava/lang/String;

    .line 14
    invoke-static {p2, v4, v8}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 15
    iput-object p2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 16
    invoke-virtual {p1, v5}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 17
    new-instance p2, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;

    invoke-direct {p2, p0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;-><init>(Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 18
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 19
    new-instance p0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    iget-object p2, v7, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    .line 22
    iget-object p2, p2, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSsid:Ljava/lang/String;

    .line 23
    invoke-static {p1, p2, v8}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 24
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 25
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    const/4 p1, 0x0

    .line 26
    invoke-virtual {v0, p0, p1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_4

    .line 27
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    new-instance p1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    iget-object v1, v7, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    .line 31
    iget-object v1, v1, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSsid:Ljava/lang/String;

    .line 32
    invoke-static {p2, v1, v8}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 33
    iput-object p2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 34
    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 35
    new-instance p2, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;

    invoke-direct {p2, p0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;-><init>(Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_4

    :cond_2
    if-eqz p1, :cond_a

    .line 36
    new-instance p0, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda3;

    invoke-direct {p0, p1, p2}, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda3;-><init>(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;I)V

    invoke-virtual {v4, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 37
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 38
    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v1, :cond_4

    .line 39
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->isAuthenticationSimBased()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, p2

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    if-eqz v1, :cond_9

    .line 40
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const-string/jumbo v3, "telephony_subscription_service"

    .line 41
    iget-object v5, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionManager;

    if-nez v3, :cond_5

    goto :goto_2

    .line 42
    :cond_5
    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 43
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    const/4 v5, -0x1

    if-ne v1, v5, :cond_7

    goto :goto_3

    .line 44
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v3, Lcom/android/wifitrackerlib/Utils$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/android/wifitrackerlib/Utils$$ExternalSyntheticLambda1;-><init>(I)V

    .line 45
    invoke-interface {p2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p2

    goto :goto_3

    :cond_8
    :goto_2
    move p2, v2

    :goto_3
    if-nez p2, :cond_9

    if-eqz p1, :cond_a

    .line 46
    new-instance p0, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda3;

    invoke-direct {p0, p1, v2}, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda3;-><init>(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;I)V

    invoke-virtual {v4, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 47
    :cond_9
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    new-instance p2, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;

    invoke-direct {p2, p0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;-><init>(Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    :cond_a
    :goto_4
    return-void
.end method

.method public declared-synchronized connectionInfoMatches(Landroid/net/wifi/WifiInfo;)Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    .line 3
    move-result v0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_3

    .line 8
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingWifiConfigs:Ljava/util/Map;

    .line 17
    check-cast v0, Landroid/util/ArrayMap;

    .line 19
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 21
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v0

    .line 28
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 38
    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 39
    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 41
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 43
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    if-ne v2, v3, :cond_1

    .line 47
    monitor-exit p0

    .line 49
    const/4 p0, 0x1

    .line 50
    return p0

    .line 51
    :cond_2
    monitor-exit p0

    .line 52
    return v1

    .line 53
    :cond_3
    :goto_0
    monitor-exit p0

    .line 54
    return v1

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    monitor-exit p0

    .line 57
    throw p1
    .line 58
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    .line 2
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->toString()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public declared-synchronized getMeteredChoice()I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isSuggestion()Z

    .line 3
    move-result v0

    .line 6
    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    monitor-exit p0

    .line 18
    return v1

    .line 19
    :cond_0
    const/4 v1, 0x2

    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    monitor-exit p0

    .line 23
    return v1

    .line 24
    :cond_1
    monitor-exit p0

    .line 25
    const/4 p0, 0x0

    .line 26
    return p0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    monitor-exit p0

    .line 29
    throw v0
    .line 30
.end method

.method public final getNetworkSelectionDescription()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/android/wifitrackerlib/Utils;->getNetworkSelectionDescription(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 9
    return-object p0
    .line 10
.end method

.method public final declared-synchronized getScanResultDescription()Ljava/lang/String;
    .locals 3

    const-string v0, "["

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetScanResults:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x960

    const/16 v2, 0x9c4

    .line 4
    invoke-virtual {p0, v0, v2}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getScanResultDescription(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x1324

    const/16 v2, 0x170c

    .line 5
    invoke-virtual {p0, v0, v2}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getScanResultDescription(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x1725

    const/16 v2, 0x1bd5

    .line 6
    invoke-virtual {p0, v0, v2}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getScanResultDescription(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0xe3d0

    const v2, 0x11238

    .line 7
    invoke-virtual {p0, v0, v2}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getScanResultDescription(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getScanResultDescription(II)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetScanResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda0;-><init>(II)V

    .line 11
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda1;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda1;-><init>(I)V

    .line 12
    invoke-static {p2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 13
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    const-string p1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    return-object p1

    .line 16
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    if-le p2, v1, :cond_1

    .line 18
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda1;-><init>(I)V

    .line 19
    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p2

    const-string v1, "max="

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 22
    new-instance p2, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v0, v1, v2}, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda2;-><init>(Lcom/android/wifitrackerlib/StandardWifiEntry;Ljava/lang/StringBuilder;J)V

    invoke-interface {p1, p2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getScanResults()Ljava/util/Set;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mCurrentScanResults:Ljava/util/List;

    .line 8
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 13
    return-object v0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    monitor-exit p0

    .line 16
    throw v0
    .line 17
.end method

.method public final declared-synchronized getSecurityTypes()Ljava/util/List;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    .line 10
    return-object v0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    monitor-exit p0

    .line 13
    throw v0
    .line 14
.end method

.method public final getSsid()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    .line 2
    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    .line 4
    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSsid:Ljava/lang/String;

    .line 6
    return-object p0
    .line 8
.end method

.method public declared-synchronized getSummary(Z)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, "getConnectedState() returned unknown state: "

    .line 2
    monitor-enter p0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/StringJoiner;

    .line 5
    iget-object v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    .line 7
    const v3, 0x7f130cda    # @string/wifitrackerlib_summary_separator ' / '

    .line 9
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 15
    invoke-direct {v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    .line 19
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    const/4 v3, 0x1

    .line 25
    if-eq v2, v3, :cond_1

    .line 26
    const/4 v3, 0x2

    .line 28
    if-eq v2, v3, :cond_0

    .line 29
    const-string v3, "StandardWifiEntry"

    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 44
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v0, 0x0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    .line 50
    iget-object v3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 52
    iget-object v4, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 54
    iget-boolean v5, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsDefaultNetwork:Z

    .line 56
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isLowQuality()Z

    .line 58
    move-result v6

    .line 61
    iget-object v7, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectivityReport:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;

    .line 62
    invoke-static/range {v2 .. v7}, Lcom/android/wifitrackerlib/Utils;->getConnectedDescription(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Landroid/net/NetworkCapabilities;ZZLandroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    .line 69
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 71
    invoke-static {v0, v2}, Lcom/android/wifitrackerlib/Utils;->getConnectingDescription(Landroid/content/Context;Landroid/net/NetworkInfo;)Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    .line 78
    iget-object v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    .line 80
    iget-object v3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 82
    iget-boolean v4, p0, Lcom/android/wifitrackerlib/WifiEntry;->mForSavedNetworksPage:Z

    .line 84
    invoke-static {v0, v2, v3, v4, p1}, Lcom/android/wifitrackerlib/Utils;->getDisconnectedDescription(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;ZZ)Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 89
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    move-result v2

    .line 93
    if-nez v2, :cond_3

    .line 94
    invoke-virtual {v1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    .line 99
    const-string v2, ""

    .line 101
    if-eqz v0, :cond_6

    .line 103
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->canSetAutoJoinEnabled()Z

    .line 105
    move-result v3

    .line 108
    if-nez v3, :cond_4

    .line 109
    goto :goto_1

    .line 111
    :cond_4
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isAutoJoinEnabled()Z

    .line 112
    move-result v3

    .line 115
    if-eqz v3, :cond_5

    .line 116
    goto :goto_1

    .line 118
    :cond_5
    const v2, 0x7f130cc5    # @string/wifitrackerlib_auto_connect_disable 'Auto-connect is off'

    .line 119
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 122
    move-result-object v2

    .line 125
    :cond_6
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 126
    move-result v0

    .line 129
    if-nez v0, :cond_7

    .line 130
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 132
    :cond_7
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    .line 135
    invoke-static {v0, p0}, Lcom/android/wifitrackerlib/Utils;->getMeteredDescription(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/String;

    .line 137
    move-result-object v0

    .line 140
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 141
    move-result v2

    .line 144
    if-nez v2, :cond_8

    .line 145
    invoke-virtual {v1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 147
    :cond_8
    if-nez p1, :cond_9

    .line 150
    invoke-static {p0}, Lcom/android/wifitrackerlib/Utils;->getVerboseLoggingDescription(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/String;

    .line 152
    move-result-object p1

    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 156
    move-result v0

    .line 159
    if-nez v0, :cond_9

    .line 160
    invoke-virtual {v1, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 162
    :cond_9
    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    .line 165
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    .line 169
    return-object p1

    .line 170
    :catchall_0
    move-exception p1

    .line 171
    monitor-exit p0

    .line 172
    throw p1
    .line 173
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    .line 2
    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    .line 4
    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSsid:Ljava/lang/String;

    .line 6
    return-object p0
    .line 8
.end method

.method public final getWeakNetSwitchTime()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isPrimaryNetwork()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    .line 12
    move-result p0

    .line 15
    const/4 v0, 0x2

    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    sget p0, Lcom/android/wifitrackerlib/WifiEntryUtilsStub;->$r8$clinit:I

    .line 20
    :cond_1
    :goto_0
    return-void
    .line 22
.end method

.method public final getWifiChannelUtilization()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isPrimaryNetwork()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    .line 12
    move-result p0

    .line 15
    const/4 v0, 0x2

    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    sget p0, Lcom/android/wifitrackerlib/WifiEntryUtilsStub;->$r8$clinit:I

    .line 20
    :cond_1
    :goto_0
    return-void
    .line 22
.end method

.method public declared-synchronized getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isSaved()Z

    .line 3
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-nez v0, :cond_0

    .line 7
    monitor-exit p0

    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    monitor-exit p0

    .line 14
    return-object v0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    monitor-exit p0

    .line 17
    throw v0
    .line 18
.end method

.method public declared-synchronized isAutoJoinEnabled()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    if-nez v0, :cond_0

    .line 5
    monitor-exit p0

    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    :try_start_1
    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit p0

    .line 12
    return v0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    monitor-exit p0

    .line 15
    throw v0
    .line 16
.end method

.method public declared-synchronized isMetered()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getMeteredChoice()I

    .line 3
    move-result v0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-eqz v0, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :cond_1
    :goto_0
    monitor-exit p0

    .line 20
    return v1

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    monitor-exit p0

    .line 23
    throw v0
    .line 24
.end method

.method public declared-synchronized isSaved()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    .line 7
    if-nez v1, :cond_0

    .line 9
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    .line 11
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    monitor-exit p0

    .line 20
    return v0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    monitor-exit p0

    .line 23
    throw v0
    .line 24
.end method

.method public declared-synchronized isSuggestion()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    monitor-exit p0

    .line 14
    return v0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    monitor-exit p0

    .line 17
    throw v0
    .line 18
.end method

.method public final declared-synchronized onNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/wifitrackerlib/WifiEntry;->onNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 3
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->canSignIn()Z

    .line 6
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    iget-boolean p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mShouldAutoOpenCaptivePortal:Z

    .line 12
    if-eqz p1, :cond_0

    .line 14
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mShouldAutoOpenCaptivePortal:Z

    .line 17
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->canSignIn()Z

    .line 19
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    .line 25
    const-class p2, Landroid/net/ConnectivityManager;

    .line 27
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 32
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 33
    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetwork:Landroid/net/Network;

    .line 35
    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->startCaptivePortalApp(Landroid/net/Network;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_0
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    monitor-exit p0

    .line 43
    throw p1
    .line 44
.end method

.method public final declared-synchronized shouldEditBeforeConnect()Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 3
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    monitor-exit p0

    .line 10
    return v1

    .line 11
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    .line 16
    move-result v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasEverConnected()Z

    .line 22
    move-result v2

    .line 25
    if-nez v2, :cond_2

    .line 26
    :cond_1
    const/4 v2, 0x2

    .line 28
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    .line 29
    move-result v2

    .line 32
    if-gtz v2, :cond_3

    .line 33
    const/16 v2, 0x8

    .line 35
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    .line 37
    move-result v2

    .line 40
    if-gtz v2, :cond_3

    .line 41
    const/4 v2, 0x5

    .line 43
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    .line 44
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    if-lez v0, :cond_2

    .line 48
    goto :goto_0

    .line 50
    :cond_2
    monitor-exit p0

    .line 51
    return v1

    .line 52
    :cond_3
    :goto_0
    monitor-exit p0

    .line 53
    const/4 p0, 0x1

    .line 54
    return p0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    monitor-exit p0

    .line 57
    throw v0
    .line 58
.end method

.method public final updateAdminRestrictions()V
    .locals 7

    .line 1
    sget v0, Landroidx/core/os/BuildCompat;->$r8$clinit:I

    .line 2
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mUserManager:Landroid/os/UserManager;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const-string v1, "no_add_wifi_config"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 13
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mHasAddConfigUserRestriction:Z

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 16
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_6

    .line 19
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getMinimumRequiredWifiSecurityLevel()I

    .line 21
    move-result v2

    .line 24
    const/4 v3, 0x1

    .line 25
    if-eqz v2, :cond_4

    .line 26
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getSecurityTypes()Ljava/util/List;

    .line 28
    move-result-object v4

    .line 31
    check-cast v4, Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v4

    .line 37
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v5

    .line 41
    if-eqz v5, :cond_3

    .line 42
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v5

    .line 47
    check-cast v5, Ljava/lang/Integer;

    .line 48
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 50
    move-result v5

    .line 53
    const/4 v6, -0x1

    .line 54
    packed-switch v5, :pswitch_data_0

    .line 55
    :pswitch_0
    move v5, v6

    .line 58
    goto :goto_1

    .line 59
    :pswitch_1
    const/4 v5, 0x3

    .line 60
    goto :goto_1

    .line 61
    :pswitch_2
    const/4 v5, 0x2

    .line 62
    goto :goto_1

    .line 63
    :pswitch_3
    move v5, v3

    .line 64
    goto :goto_1

    .line 65
    :pswitch_4
    move v5, v1

    .line 66
    :goto_1
    if-ne v5, v6, :cond_2

    .line 67
    goto :goto_0

    .line 69
    :cond_2
    if-gt v2, v5, :cond_1

    .line 70
    move v2, v3

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    move v2, v1

    .line 74
    :goto_2
    if-nez v2, :cond_4

    .line 75
    iput-boolean v3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsAdminRestricted:Z

    .line 77
    return-void

    .line 79
    :cond_4
    sget v2, Landroidx/core/os/BuildCompat;->$r8$clinit:I

    .line 80
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getWifiSsidPolicy()Landroid/app/admin/WifiSsidPolicy;

    .line 82
    move-result-object v0

    .line 85
    if-eqz v0, :cond_6

    .line 86
    invoke-virtual {v0}, Landroid/app/admin/WifiSsidPolicy;->getPolicyType()I

    .line 88
    move-result v2

    .line 91
    invoke-virtual {v0}, Landroid/app/admin/WifiSsidPolicy;->getSsids()Ljava/util/Set;

    .line 92
    move-result-object v0

    .line 95
    if-nez v2, :cond_5

    .line 96
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getSsid()Ljava/lang/String;

    .line 98
    move-result-object v4

    .line 101
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 102
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 104
    move-result-object v4

    .line 107
    invoke-static {v4}, Landroid/net/wifi/WifiSsid;->fromBytes([B)Landroid/net/wifi/WifiSsid;

    .line 108
    move-result-object v4

    .line 111
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 112
    move-result v4

    .line 115
    if-nez v4, :cond_5

    .line 116
    iput-boolean v3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsAdminRestricted:Z

    .line 118
    return-void

    .line 120
    :cond_5
    if-ne v2, v3, :cond_6

    .line 121
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getSsid()Ljava/lang/String;

    .line 123
    move-result-object v2

    .line 126
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 127
    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 129
    move-result-object v2

    .line 132
    invoke-static {v2}, Landroid/net/wifi/WifiSsid;->fromBytes([B)Landroid/net/wifi/WifiSsid;

    .line 133
    move-result-object v2

    .line 136
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 137
    move-result v0

    .line 140
    if-eqz v0, :cond_6

    .line 141
    iput-boolean v3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsAdminRestricted:Z

    .line 143
    return-void

    .line 145
    :cond_6
    iput-boolean v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsAdminRestricted:Z

    .line 146
    return-void

    .line 148
    nop

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
    .line 150
.end method

.method public final declared-synchronized updateConfig(Ljava/util/List;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_0

    .line 3
    :try_start_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 5
    move-result-object p1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    .line 9
    iget-object v0, v0, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    .line 11
    iget-object v1, v0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSsid:Ljava/lang/String;

    .line 13
    iget-object v0, v0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSecurityTypes:Ljava/util/Set;

    .line 15
    iget-object v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingWifiConfigs:Ljava/util/Map;

    .line 17
    check-cast v2, Landroid/util/ArrayMap;

    .line 19
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p1

    .line 27
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v2

    .line 31
    if-eqz v2, :cond_8

    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 37
    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 38
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 40
    invoke-static {v3}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 45
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 46
    move-result v3

    .line 49
    if-eqz v3, :cond_7

    .line 50
    invoke-static {v2}, Lcom/android/wifitrackerlib/Utils;->getSecurityTypesFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)Ljava/util/List;

    .line 52
    move-result-object v3

    .line 55
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object v3

    .line 59
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v4

    .line 63
    if-eqz v4, :cond_1

    .line 64
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object v4

    .line 69
    check-cast v4, Ljava/lang/Integer;

    .line 70
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 72
    move-result v4

    .line 75
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object v5

    .line 79
    move-object v6, v0

    .line 80
    check-cast v6, Landroid/util/ArraySet;

    .line 81
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 83
    move-result v5

    .line 86
    if-eqz v5, :cond_6

    .line 87
    const/4 v5, 0x4

    .line 89
    if-eq v4, v5, :cond_5

    .line 90
    const/4 v5, 0x5

    .line 92
    if-eq v4, v5, :cond_4

    .line 93
    const/4 v5, 0x6

    .line 95
    if-eq v4, v5, :cond_3

    .line 96
    const/4 v5, 0x1

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    iget-boolean v5, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsEnhancedOpenSupported:Z

    .line 100
    goto :goto_1

    .line 102
    :cond_4
    iget-boolean v5, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsWpa3SuiteBSupported:Z

    .line 103
    goto :goto_1

    .line 105
    :cond_5
    iget-boolean v5, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsWpa3SaeSupported:Z

    .line 106
    :goto_1
    if-eqz v5, :cond_2

    .line 108
    iget-object v5, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingWifiConfigs:Ljava/util/Map;

    .line 110
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    move-result-object v4

    .line 115
    check-cast v5, Landroid/util/ArrayMap;

    .line 116
    invoke-virtual {v5, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    goto :goto_0

    .line 121
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    .line 124
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    const-string v1, "Attempted to update with wrong security! Expected one of: "

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, ", Actual: "

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, ", Config: "

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object v0

    .line 156
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 157
    throw p1

    .line 160
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    .line 163
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    const-string v3, "Attempted to update with wrong SSID! Expected: "

    .line 168
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, ", Actual: "

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 181
    invoke-static {v1}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    move-result-object v1

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, ", Config: "

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    move-result-object v0

    .line 201
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 202
    throw p1

    .line 205
    :cond_8
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateSecurityTypes()V

    .line 206
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateTargetScanResultInfo()V

    .line 209
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit p0

    .line 215
    return-void

    .line 216
    :catchall_0
    move-exception p1

    .line 217
    monitor-exit p0

    .line 218
    throw p1
    .line 219
.end method

.method public final declared-synchronized updateScanResultInfo(Ljava/util/List;)V
    .locals 8

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
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    .line 10
    iget-object v0, v0, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    .line 12
    iget-object v0, v0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSsid:Ljava/lang/String;

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v1

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 29
    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 30
    iget-object v3, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 32
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 34
    move-result v3

    .line 37
    if-eqz v3, :cond_1

    .line 38
    iget-object v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {v2}, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->getInstance(Landroid/content/Context;)Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;

    .line 42
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    iget-object v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {v2}, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->getInstance(Landroid/content/Context;)Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;

    .line 51
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    iget-object v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {v2}, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->getInstance(Landroid/content/Context;)Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;

    .line 60
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    goto :goto_0

    .line 67
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    const-string v3, "Attempted to update with wrong SSID! Expected: "

    .line 75
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v0, ", Actual: "

    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v0, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v0, ", ScanResult: "

    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 104
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 105
    throw p1

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingScanResults:Ljava/util/Map;

    .line 109
    check-cast v0, Landroid/util/ArrayMap;

    .line 111
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 113
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    .line 116
    iget-object v0, v0, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    .line 118
    iget-object v0, v0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSecurityTypes:Ljava/util/Set;

    .line 120
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 122
    move-result-object v1

    .line 125
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    move-result v2

    .line 129
    if-eqz v2, :cond_b

    .line 130
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    move-result-object v2

    .line 135
    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 136
    new-instance v3, Ljava/util/ArrayList;

    .line 138
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 140
    invoke-virtual {v2}, Landroid/net/wifi/ScanResult;->getSecurityTypes()[I

    .line 143
    move-result-object v4

    .line 146
    array-length v5, v4

    .line 147
    const/4 v6, 0x0

    .line 148
    :goto_1
    if-ge v6, v5, :cond_4

    .line 149
    aget v7, v4, v6

    .line 151
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    move-result-object v7

    .line 156
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v6, v6, 0x1

    .line 160
    goto :goto_1

    .line 162
    :catchall_0
    move-exception p1

    .line 163
    goto/16 :goto_4

    .line 164
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 166
    move-result-object v3

    .line 169
    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    move-result v4

    .line 173
    if-eqz v4, :cond_3

    .line 174
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    move-result-object v4

    .line 179
    check-cast v4, Ljava/lang/Integer;

    .line 180
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 182
    move-result v4

    .line 185
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    move-result-object v5

    .line 189
    move-object v6, v0

    .line 190
    check-cast v6, Landroid/util/ArraySet;

    .line 191
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 193
    move-result v5

    .line 196
    if-eqz v5, :cond_5

    .line 197
    const/4 v5, 0x4

    .line 199
    if-eq v4, v5, :cond_8

    .line 200
    const/4 v5, 0x5

    .line 202
    if-eq v4, v5, :cond_7

    .line 203
    const/4 v5, 0x6

    .line 205
    if-eq v4, v5, :cond_6

    .line 206
    const/4 v5, 0x1

    .line 208
    goto :goto_3

    .line 209
    :cond_6
    iget-boolean v5, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsEnhancedOpenSupported:Z

    .line 210
    goto :goto_3

    .line 212
    :cond_7
    iget-boolean v5, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsWpa3SuiteBSupported:Z

    .line 213
    goto :goto_3

    .line 215
    :cond_8
    iget-boolean v5, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsWpa3SaeSupported:Z

    .line 216
    :goto_3
    if-nez v5, :cond_9

    .line 218
    goto :goto_2

    .line 220
    :cond_9
    iget-object v5, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingScanResults:Ljava/util/Map;

    .line 221
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    move-result-object v6

    .line 226
    check-cast v5, Landroid/util/ArrayMap;

    .line 227
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 229
    move-result v5

    .line 232
    if-nez v5, :cond_a

    .line 233
    iget-object v5, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingScanResults:Ljava/util/Map;

    .line 235
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    move-result-object v6

    .line 240
    new-instance v7, Ljava/util/ArrayList;

    .line 241
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 243
    check-cast v5, Landroid/util/ArrayMap;

    .line 246
    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_a
    iget-object v5, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingScanResults:Ljava/util/Map;

    .line 251
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 253
    move-result-object v4

    .line 256
    check-cast v5, Landroid/util/ArrayMap;

    .line 257
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    move-result-object v4

    .line 262
    check-cast v4, Ljava/util/List;

    .line 263
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    goto :goto_2

    .line 268
    :cond_b
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateSecurityTypes()V

    .line 269
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mCurrentScanResults:Ljava/util/List;

    .line 272
    check-cast v0, Ljava/util/ArrayList;

    .line 274
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 276
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mCurrentScanResults:Ljava/util/List;

    .line 279
    check-cast v0, Ljava/util/ArrayList;

    .line 281
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 283
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mCurrentScanResults:Ljava/util/List;

    .line 286
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiEntry;->updateWifiGenerationInfo(Ljava/util/List;)V

    .line 288
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateTargetScanResultInfo()V

    .line 291
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    monitor-exit p0

    .line 297
    return-void

    .line 298
    :goto_4
    monitor-exit p0

    .line 299
    throw p1
    .line 300
.end method

.method public final declared-synchronized updateSecurityTypes()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getCurrentSecurityType()I

    .line 12
    move-result v0

    .line 15
    const/4 v1, -0x1

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    .line 19
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 21
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getCurrentSecurityType()I

    .line 23
    move-result v1

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v1

    .line 30
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingWifiConfigs:Ljava/util/Map;

    .line 34
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 36
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    .line 40
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 42
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    .line 48
    iget-boolean v1, v1, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->mIsTargetingNewNetworks:Z

    .line 50
    if-eqz v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingScanResults:Ljava/util/Map;

    .line 54
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 56
    move-result-object v1

    .line 59
    iget-object v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    .line 60
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    .line 65
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 67
    move-result v1

    .line 70
    if-eqz v1, :cond_2

    .line 71
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    .line 73
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    .line 78
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 80
    move-result v1

    .line 83
    if-eqz v1, :cond_3

    .line 84
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    .line 86
    iget-object v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    .line 88
    iget-object v2, v2, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    .line 90
    iget-object v2, v2, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSecurityTypes:Ljava/util/Set;

    .line 92
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    :cond_3
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingWifiConfigs:Ljava/util/Map;

    .line 97
    iget-object v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    .line 99
    invoke-static {v2}, Lcom/android/wifitrackerlib/Utils;->getSingleSecurityTypeFromMultipleSecurityTypes(Ljava/util/List;)I

    .line 101
    move-result v2

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    move-result-object v2

    .line 108
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    move-result-object v1

    .line 112
    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 113
    iput-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 115
    if-nez v1, :cond_4

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    .line 119
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 121
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    .line 124
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    .line 126
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingWifiConfigs:Ljava/util/Map;

    .line 129
    invoke-static {v1}, Lcom/android/wifitrackerlib/Utils;->getSingleSecurityTypeFromMultipleSecurityTypes(Ljava/util/List;)I

    .line 131
    move-result v1

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    move-result-object v1

    .line 138
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    move-result-object v0

    .line 142
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 143
    iput-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 145
    :cond_4
    new-instance v0, Landroid/util/ArraySet;

    .line 147
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 149
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    .line 152
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 154
    move-result-object v1

    .line 157
    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    move-result v2

    .line 161
    if-eqz v2, :cond_6

    .line 162
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    move-result-object v2

    .line 167
    check-cast v2, Ljava/lang/Integer;

    .line 168
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 170
    move-result v2

    .line 173
    iget-object v3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingScanResults:Ljava/util/Map;

    .line 174
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    move-result-object v4

    .line 179
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 180
    move-result v3

    .line 183
    if-eqz v3, :cond_5

    .line 184
    iget-object v3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingScanResults:Ljava/util/Map;

    .line 186
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    move-result-object v2

    .line 191
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    move-result-object v2

    .line 195
    check-cast v2, Ljava/util/Collection;

    .line 196
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 198
    goto :goto_0

    .line 201
    :cond_6
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetScanResults:Ljava/util/List;

    .line 202
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 204
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetScanResults:Ljava/util/List;

    .line 207
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit p0

    .line 212
    return-void

    .line 213
    :catchall_0
    move-exception v0

    .line 214
    monitor-exit p0

    .line 215
    throw v0
    .line 216
.end method

.method public final declared-synchronized updateTargetScanResultInfo()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetScanResults:Ljava/util/List;

    .line 3
    invoke-static {v0}, Lcom/android/wifitrackerlib/Utils;->getBestScanResultByLevel(Ljava/util/List;)Landroid/net/wifi/ScanResult;

    .line 5
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry;->updateTransitionModeCapa(Landroid/net/wifi/ScanResult;)V

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    .line 14
    move-result v1

    .line 17
    if-nez v1, :cond_2

    .line 18
    if-eqz v0, :cond_1

    .line 20
    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    .line 22
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 24
    invoke-static {v0, v1}, Lcom/android/wifitrackerlib/WifiEntryUtilsStub;->miuiCalculateSignalLevel(ILandroid/net/wifi/WifiManager;)I

    .line 26
    move-result v0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, -0x1

    .line 31
    :goto_0
    iput v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetScanResults:Ljava/util/List;

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry;->updateWifiGenerationInfo(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    monitor-exit p0

    .line 42
    throw v0
    .line 43
.end method
