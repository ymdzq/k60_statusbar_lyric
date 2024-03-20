.class public final Lcom/android/wifitrackerlib/BaseWifiTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;


# direct methods
.method public constructor <init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    sget-boolean v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->sVerboseLogging:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 10
    iget-object v0, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    .line 12
    :cond_0
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 19
    const/4 v1, 0x2

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x1

    .line 22
    if-eqz v0, :cond_6

    .line 23
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 25
    const-string/jumbo v0, "wifi_state"

    .line 27
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 30
    move-result p2

    .line 33
    iput p2, p1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiState:I

    .line 34
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 36
    iget-object p2, p1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    .line 38
    iget p1, p1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiState:I

    .line 40
    const/4 v0, 0x3

    .line 42
    if-ne p1, v0, :cond_1

    .line 43
    move v2, v3

    .line 45
    :cond_1
    iget-boolean p1, p2, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->mIsWifiEnabled:Z

    .line 46
    iput-boolean v2, p2, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->mIsWifiEnabled:Z

    .line 48
    if-eq v2, p1, :cond_3

    .line 50
    if-eqz v2, :cond_2

    .line 52
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->possiblyStartScanning()V

    .line 54
    goto :goto_0

    .line 57
    :cond_2
    iget-object p1, p2, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 58
    iget-object p1, p1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    .line 60
    const-string v0, "Scanning stopped"

    .line 62
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 p1, 0x0

    .line 67
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 68
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 71
    iget-object p2, p1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mListener:Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;

    .line 73
    if-eqz p2, :cond_4

    .line 75
    new-instance v0, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda0;

    .line 77
    invoke-direct {v0, v1, p2}, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 79
    iget-object p1, p1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    .line 82
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    :cond_4
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 87
    check-cast p0, Lcom/android/wifitrackerlib/WifiPickerTracker;

    .line 89
    iget p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiState:I

    .line 91
    if-ne p1, v3, :cond_5

    .line 93
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->clearAllWifiEntries()V

    .line 95
    :cond_5
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateWifiEntries()V

    .line 98
    goto/16 :goto_2

    .line 101
    :cond_6
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result v0

    .line 108
    if-nez v0, :cond_e

    .line 109
    const-string v0, "com.qualcomm.qti.net.wifi.PARTIAL_SCAN_RESULTS"

    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    move-result v0

    .line 116
    if-eqz v0, :cond_7

    .line 117
    goto/16 :goto_1

    .line 119
    :cond_7
    const-string v0, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    move-result v0

    .line 126
    if-eqz v0, :cond_a

    .line 127
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 129
    check-cast p0, Lcom/android/wifitrackerlib/WifiPickerTracker;

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 136
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    .line 138
    move-result-object p2

    .line 141
    invoke-virtual {p0, p2}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateWifiConfigurations(Ljava/util/List;)V

    .line 142
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getPasspointConfigurations()Ljava/util/List;

    .line 145
    move-result-object p1

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updatePasspointConfigurations(Ljava/util/List;)V

    .line 149
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

    .line 152
    iget-wide v3, p1, Lcom/android/wifitrackerlib/ScanResultUpdater;->mMaxScanAgeMillis:J

    .line 154
    invoke-virtual {p1, v3, v4}, Lcom/android/wifitrackerlib/ScanResultUpdater;->getScanResults(J)Ljava/util/List;

    .line 156
    move-result-object p1

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateStandardWifiEntryScans(Ljava/util/List;)V

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateNetworkRequestEntryScans(Ljava/util/List;)V

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updatePasspointWifiEntryScans(Ljava/util/List;)V

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateOsuWifiEntryScans(Ljava/util/List;)V

    .line 169
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointUtilsStub:Lcom/android/wifitrackerlib/PasspointUtilsStub;

    .line 172
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    .line 177
    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mListener:Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;

    .line 179
    if-eqz p2, :cond_8

    .line 181
    new-instance v0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda7;

    .line 183
    invoke-direct {v0, p2, v2}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda7;-><init>(Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;I)V

    .line 185
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 188
    :cond_8
    if-eqz p2, :cond_9

    .line 191
    new-instance v0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda7;

    .line 193
    invoke-direct {v0, p2, v1}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda7;-><init>(Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;I)V

    .line 195
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    :cond_9
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateWifiEntries()V

    .line 201
    goto :goto_2

    .line 204
    :cond_a
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 205
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    move-result v0

    .line 210
    if-eqz v0, :cond_b

    .line 211
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 213
    invoke-virtual {p0, p2}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleNetworkStateChangedAction(Landroid/content/Intent;)V

    .line 215
    goto :goto_2

    .line 218
    :cond_b
    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 219
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    move-result v0

    .line 224
    if-eqz v0, :cond_c

    .line 225
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 227
    const-string/jumbo p1, "subscription"

    .line 229
    const/4 v0, -0x1

    .line 232
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 233
    move-result p1

    .line 236
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleDefaultSubscriptionChanged(I)V

    .line 237
    goto :goto_2

    .line 240
    :cond_c
    const-string v0, "android.net.wifi.WIFI_SLAVE_STATE_CHANGED"

    .line 241
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    move-result v0

    .line 246
    if-eqz v0, :cond_d

    .line 247
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 249
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    goto :goto_2

    .line 254
    :cond_d
    const-string v0, "android.net.wifi.SLAVE_STATE_CHANGE"

    .line 255
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    move-result p1

    .line 260
    if-eqz p1, :cond_f

    .line 261
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 263
    invoke-virtual {p0, p2}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleNetworkStateChangedAction(Landroid/content/Intent;)V

    .line 265
    goto :goto_2

    .line 268
    :cond_e
    :goto_1
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 269
    check-cast p0, Lcom/android/wifitrackerlib/WifiPickerTracker;

    .line 271
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    const-string p1, "resultsUpdated"

    .line 276
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 278
    move-result p1

    .line 281
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->conditionallyUpdateScanResults(Z)V

    .line 282
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->updateWifiEntries()V

    .line 285
    :cond_f
    :goto_2
    return-void
    .line 288
.end method
