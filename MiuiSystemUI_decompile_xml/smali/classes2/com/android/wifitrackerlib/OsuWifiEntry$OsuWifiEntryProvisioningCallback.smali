.class public final Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;
.super Landroid/net/wifi/hotspot2/ProvisioningCallback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;


# direct methods
.method public constructor <init>(Lcom/android/wifitrackerlib/OsuWifiEntry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    .line 2
    invoke-direct {p0}, Landroid/net/wifi/hotspot2/ProvisioningCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onProvisioningComplete()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    .line 5
    iget-object v2, v1, Lcom/android/wifitrackerlib/OsuWifiEntry;->mContext:Landroid/content/Context;

    .line 7
    const v3, 0x7f130cd5    # @string/wifitrackerlib_osu_sign_up_complete 'Sign-up complete. Connecting…'

    .line 9
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 15
    iput-object v2, v1, Lcom/android/wifitrackerlib/OsuWifiEntry;->mOsuStatusString:Ljava/lang/String;

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iget-object v0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    .line 19
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    .line 21
    iget-object v0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    .line 24
    iget-object v1, v0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 26
    iget-object v0, v0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    .line 28
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 30
    move-result-object v0

    .line 33
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->getMatchingPasspointConfigsForOsuProviders(Ljava/util/Set;)Ljava/util/Map;

    .line 34
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    .line 38
    iget-object v1, v1, Lcom/android/wifitrackerlib/OsuWifiEntry;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    .line 40
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 45
    check-cast v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 46
    iget-object v1, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    .line 48
    iget-object v1, v1, Lcom/android/wifitrackerlib/WifiEntry;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    .line 50
    const/4 v2, 0x2

    .line 52
    if-nez v0, :cond_1

    .line 53
    if-eqz v1, :cond_0

    .line 55
    invoke-interface {v1, v2}, Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;->onConnectResult(I)V

    .line 57
    :cond_0
    return-void

    .line 60
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUniqueId()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 64
    iget-object v3, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    .line 65
    iget-object v3, v3, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 67
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    .line 69
    move-result-object v4

    .line 72
    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->getAllMatchingWifiConfigs(Ljava/util/List;)Ljava/util/List;

    .line 73
    move-result-object v3

    .line 76
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 77
    move-result-object v3

    .line 80
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    move-result v4

    .line 84
    if-eqz v4, :cond_4

    .line 85
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    move-result-object v4

    .line 90
    check-cast v4, Landroid/util/Pair;

    .line 91
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 93
    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 95
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 97
    move-result-object v6

    .line 100
    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 101
    move-result v6

    .line 104
    if-eqz v6, :cond_2

    .line 105
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 107
    check-cast v0, Ljava/util/Map;

    .line 109
    const/4 v3, 0x0

    .line 111
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    move-result-object v3

    .line 115
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    move-result-object v0

    .line 119
    check-cast v0, Ljava/util/List;

    .line 120
    iget-object v3, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 122
    check-cast v3, Ljava/util/Map;

    .line 124
    const/4 v4, 0x1

    .line 126
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    move-result-object v4

    .line 130
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    move-result-object v3

    .line 134
    check-cast v3, Ljava/util/List;

    .line 135
    if-eqz v0, :cond_3

    .line 137
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 139
    move-result v4

    .line 142
    if-nez v4, :cond_3

    .line 143
    invoke-static {v0}, Lcom/android/wifitrackerlib/Utils;->getBestScanResultByLevel(Ljava/util/List;)Landroid/net/wifi/ScanResult;

    .line 145
    move-result-object v0

    .line 148
    goto :goto_0

    .line 149
    :cond_3
    if-eqz v3, :cond_4

    .line 150
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 152
    move-result v0

    .line 155
    if-nez v0, :cond_4

    .line 156
    invoke-static {v3}, Lcom/android/wifitrackerlib/Utils;->getBestScanResultByLevel(Ljava/util/List;)Landroid/net/wifi/ScanResult;

    .line 158
    move-result-object v0

    .line 161
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 162
    const-string v2, "\""

    .line 164
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 169
    const-string v2, "\""

    .line 171
    invoke-static {v1, v0, v2}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    move-result-object v0

    .line 176
    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 177
    iget-object p0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    .line 179
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 181
    const/4 v0, 0x0

    .line 183
    invoke-virtual {p0, v5, v0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 184
    return-void

    .line 187
    :cond_4
    if-eqz v1, :cond_5

    .line 188
    invoke-interface {v1, v2}, Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;->onConnectResult(I)V

    .line 190
    :cond_5
    return-void

    .line 193
    :catchall_0
    move-exception p0

    .line 194
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    throw p0
    .line 196
.end method

.method public final onProvisioningFailure(I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    .line 2
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    .line 5
    iget-object v1, v0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mOsuStatusString:Ljava/lang/String;

    .line 7
    iget-object v0, v0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mContext:Landroid/content/Context;

    .line 9
    const v2, 0x7f130cd2    # @string/wifitrackerlib_osu_completing_sign_up 'Completing sign-up…'

    .line 11
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 17
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    .line 24
    iget-object v1, v0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mContext:Landroid/content/Context;

    .line 26
    const v2, 0x7f130cd6    # @string/wifitrackerlib_osu_sign_up_failed 'Couldn’t complete sign-up. Tap to try again.'

    .line 28
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 34
    iput-object v1, v0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mOsuStatusString:Ljava/lang/String;

    .line 35
    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    .line 38
    iget-object v1, v0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mContext:Landroid/content/Context;

    .line 40
    const v2, 0x7f130cd3    # @string/wifitrackerlib_osu_connect_failed 'Couldn’t connect'

    .line 42
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 48
    iput-object v1, v0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mOsuStatusString:Ljava/lang/String;

    .line 49
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    iget-object p1, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    .line 52
    iget-object p1, p1, Lcom/android/wifitrackerlib/WifiEntry;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    .line 54
    if-eqz p1, :cond_1

    .line 56
    const/4 v0, 0x2

    .line 58
    invoke-interface {p1, v0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;->onConnectResult(I)V

    .line 59
    :cond_1
    iget-object p0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    .line 62
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    .line 64
    return-void

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    throw p0
    .line 70
.end method

.method public final onProvisioningStatus(I)V
    .locals 2

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    const/4 p1, 0x0

    .line 5
    goto :goto_0

    .line 6
    :pswitch_0
    iget-object p1, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    .line 7
    iget-object p1, p1, Lcom/android/wifitrackerlib/OsuWifiEntry;->mContext:Landroid/content/Context;

    .line 9
    const v0, 0x7f130cd2    # @string/wifitrackerlib_osu_completing_sign_up 'Completing sign-up…'

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :pswitch_1
    iget-object p1, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    .line 19
    iget-object p1, p1, Lcom/android/wifitrackerlib/OsuWifiEntry;->mContext:Landroid/content/Context;

    .line 21
    const v0, 0x7f130cd4    # @string/wifitrackerlib_osu_opening_provider 'Opening %1$s'

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    .line 30
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/OsuWifiEntry;->getTitle()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 35
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 39
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 43
    :goto_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    .line 44
    monitor-enter v0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    .line 47
    iget-object v1, v1, Lcom/android/wifitrackerlib/OsuWifiEntry;->mOsuStatusString:Ljava/lang/String;

    .line 49
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 51
    move-result v1

    .line 54
    if-nez v1, :cond_0

    .line 55
    const/4 v1, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    const/4 v1, 0x0

    .line 59
    :goto_1
    iget-object p0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    .line 60
    iput-object p1, p0, Lcom/android/wifitrackerlib/OsuWifiEntry;->mOsuStatusString:Ljava/lang/String;

    .line 62
    if-eqz v1, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    .line 66
    :cond_1
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p0

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
    .line 74
.end method
