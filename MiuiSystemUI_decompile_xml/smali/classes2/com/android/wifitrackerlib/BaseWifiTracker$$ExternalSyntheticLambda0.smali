.class public final synthetic Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto/16 :goto_1

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 9
    check-cast p0, Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    new-instance v2, Landroid/content/IntentFilter;

    .line 16
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 18
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 21
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    .line 26
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    const-string v0, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 31
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 36
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 41
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    const-string v0, "android.net.wifi.SLAVE_STATE_CHANGE"

    .line 46
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    const-string v0, "android.net.wifi.SLAVE_RSSI_CHANGED"

    .line 51
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    const-string v0, "android.net.wifi.WIFI_SLAVE_STATE_CHANGED"

    .line 56
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v0, "com.qualcomm.qti.net.wifi.PARTIAL_SCAN_RESULTS"

    .line 61
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    const/16 v0, 0x3e8

    .line 66
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 68
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    .line 71
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mBroadcastReceiver:Lcom/android/wifitrackerlib/BaseWifiTracker$1;

    .line 73
    const/4 v3, 0x0

    .line 75
    iget-object v4, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    .line 76
    const/4 v5, 0x2

    .line 78
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 79
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 82
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 84
    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$2;

    .line 86
    iget-object v3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    .line 88
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 90
    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mDefaultNetworkCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$2;

    .line 93
    invoke-virtual {v0, v2, v3}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 95
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityDiagnosticsCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$4;

    .line 98
    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityDiagnosticsManager:Landroid/net/ConnectivityDiagnosticsManager;

    .line 100
    iget-object v3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityDiagnosticsExecutor:Lcom/android/wifitrackerlib/BaseWifiTracker$5;

    .line 102
    invoke-virtual {v2, v1, v3, v0}, Landroid/net/ConnectivityDiagnosticsManager;->registerConnectivityDiagnosticsCallback(Landroid/net/NetworkRequest;Ljava/util/concurrent/Executor;Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;)V

    .line 104
    move-object v0, p0

    .line 107
    check-cast v0, Lcom/android/wifitrackerlib/WifiPickerTracker;

    .line 108
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->clearAllWifiEntries()V

    .line 110
    iget-object v1, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 113
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    .line 115
    move-result-object v2

    .line 118
    invoke-virtual {v0, v2}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateWifiConfigurations(Ljava/util/List;)V

    .line 119
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getPasspointConfigurations()Ljava/util/List;

    .line 122
    move-result-object v2

    .line 125
    invoke-virtual {v0, v2}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updatePasspointConfigurations(Ljava/util/List;)V

    .line 126
    iget-object v2, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

    .line 129
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    .line 131
    move-result-object v3

    .line 134
    invoke-virtual {v2, v3}, Lcom/android/wifitrackerlib/ScanResultUpdater;->update(Ljava/util/List;)V

    .line 135
    const/4 v2, 0x1

    .line 138
    invoke-virtual {v0, v2}, Lcom/android/wifitrackerlib/WifiPickerTracker;->conditionallyUpdateScanResults(Z)V

    .line 139
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 142
    move-result v3

    .line 145
    invoke-virtual {v0, v3}, Lcom/android/wifitrackerlib/WifiPickerTracker;->handleDefaultSubscriptionChanged(I)V

    .line 146
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    .line 149
    move-result-object v3

    .line 152
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 153
    move-result-object v1

    .line 156
    if-eqz v3, :cond_1

    .line 157
    iget-object v4, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 159
    invoke-virtual {v4, v3}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 161
    move-result-object v5

    .line 164
    if-eqz v5, :cond_0

    .line 165
    new-instance v6, Landroid/net/NetworkCapabilities$Builder;

    .line 167
    invoke-direct {v6, v5}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 169
    invoke-virtual {v6, v1}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    .line 172
    move-result-object v1

    .line 175
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    .line 176
    move-result-object v1

    .line 179
    invoke-virtual {v0, v3, v1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->handleNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 180
    :cond_0
    invoke-virtual {v4, v3}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 183
    move-result-object v1

    .line 186
    if-eqz v1, :cond_1

    .line 187
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getAllWifiEntries()Ljava/util/List;

    .line 189
    move-result-object v4

    .line 192
    check-cast v4, Ljava/util/ArrayList;

    .line 193
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 195
    move-result-object v4

    .line 198
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    move-result v5

    .line 202
    if-eqz v5, :cond_1

    .line 203
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 205
    move-result-object v5

    .line 208
    check-cast v5, Lcom/android/wifitrackerlib/WifiEntry;

    .line 209
    invoke-virtual {v5, v3, v1}, Lcom/android/wifitrackerlib/WifiEntry;->updateLinkProperties(Landroid/net/Network;Landroid/net/LinkProperties;)V

    .line 211
    goto :goto_0

    .line 214
    :cond_1
    iget-object v1, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    .line 215
    iget-object v3, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mListener:Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;

    .line 217
    if-eqz v3, :cond_2

    .line 219
    new-instance v4, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda7;

    .line 221
    const/4 v5, 0x0

    .line 223
    invoke-direct {v4, v3, v5}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda7;-><init>(Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;I)V

    .line 224
    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 227
    :cond_2
    if-eqz v3, :cond_3

    .line 230
    new-instance v4, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda7;

    .line 232
    const/4 v5, 0x2

    .line 234
    invoke-direct {v4, v3, v5}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda7;-><init>(Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;I)V

    .line 235
    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    :cond_3
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateWifiEntries()V

    .line 241
    iput-boolean v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsInitialized:Z

    .line 244
    return-void

    .line 246
    :pswitch_1
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 247
    check-cast p0, Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 249
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    .line 253
    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mBroadcastReceiver:Lcom/android/wifitrackerlib/BaseWifiTracker$1;

    .line 255
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 257
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$2;

    .line 260
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 262
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mDefaultNetworkCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$2;

    .line 265
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 267
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityDiagnosticsManager:Landroid/net/ConnectivityDiagnosticsManager;

    .line 270
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityDiagnosticsCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$4;

    .line 272
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityDiagnosticsManager;->unregisterConnectivityDiagnosticsCallback(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :catch_0
    return-void

    .line 277
    :goto_1
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 278
    check-cast p0, Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;

    .line 280
    check-cast p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    .line 282
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->scanForAccessPoints()V

    .line 284
    return-void

    .line 287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 288
.end method
