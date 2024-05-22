.class public final Lcom/android/settingslib/wifi/WifiTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/wifi/WifiTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    .line 6
    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 8
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isVerboseLoggingEnabled()Z

    .line 10
    move-result v0

    .line 13
    sput-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->sVerboseLogging:Z

    .line 14
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x1

    .line 23
    const/4 v3, 0x0

    .line 24
    if-eqz v0, :cond_8

    .line 25
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    .line 27
    const-string/jumbo p1, "wifi_state"

    .line 29
    const/4 v0, 0x4

    .line 32
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 33
    move-result p1

    .line 36
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->isVerboseLoggingEnabled()Z

    .line 37
    move-result p2

    .line 40
    if-eqz p2, :cond_0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    const-string p2, "WifiTracker"

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    const-string/jumbo v4, "updateWifiState: "

    .line 50
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 62
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    const/4 p2, 0x3

    .line 66
    if-ne p1, p2, :cond_3

    .line 67
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    .line 69
    monitor-enter p2

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    .line 72
    if-eqz v0, :cond_2

    .line 74
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->isVerboseLoggingEnabled()Z

    .line 76
    move-result v2

    .line 79
    if-eqz v2, :cond_1

    .line 80
    const-string v2, "WifiTracker"

    .line 82
    const-string v3, "Scanner resume"

    .line 84
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_1
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 89
    move-result v2

    .line 92
    if-nez v2, :cond_2

    .line 93
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 95
    :cond_2
    monitor-exit p2

    .line 98
    goto :goto_2

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    throw p0

    .line 102
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    .line 103
    monitor-enter v0

    .line 105
    :try_start_1
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    .line 106
    check-cast p2, Ljava/util/ArrayList;

    .line 108
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 110
    move-result p2

    .line 113
    if-nez p2, :cond_5

    .line 114
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    .line 116
    check-cast p2, Ljava/util/ArrayList;

    .line 118
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 120
    iget-boolean p2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mStaleScanResults:Z

    .line 123
    if-eqz p2, :cond_4

    .line 125
    goto :goto_0

    .line 127
    :cond_4
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    .line 128
    iget-object v4, p2, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->mDelegatee:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    .line 130
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v5, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor$$ExternalSyntheticLambda0;

    .line 135
    invoke-direct {v5, v4, v2}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListener;I)V

    .line 137
    new-instance v4, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor$$ExternalSyntheticLambda2;

    .line 140
    const-string v6, "Invoking onAccessPointsChanged callback"

    .line 142
    invoke-direct {v4, p2, v6, v5}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor$$ExternalSyntheticLambda2;-><init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 144
    invoke-static {v4}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 147
    :cond_5
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 150
    iput-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 151
    iput-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 153
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    .line 155
    monitor-enter p2

    .line 157
    :try_start_2
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    .line 158
    if-eqz v0, :cond_7

    .line 160
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->isVerboseLoggingEnabled()Z

    .line 162
    move-result v3

    .line 165
    if-eqz v3, :cond_6

    .line 166
    const-string v3, "WifiTracker"

    .line 168
    const-string v4, "Scanner pause"

    .line 170
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    goto :goto_1

    .line 175
    :catchall_1
    move-exception p0

    .line 176
    goto :goto_3

    .line 177
    :cond_6
    :goto_1
    iput v1, v0, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->mRetry:I

    .line 178
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 180
    :cond_7
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 183
    iput-boolean v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mStaleScanResults:Z

    .line 184
    :goto_2
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    new-instance p2, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor$$ExternalSyntheticLambda1;

    .line 191
    invoke-direct {p2, p0, p1}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;I)V

    .line 193
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    move-result-object p1

    .line 199
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 200
    move-result-object p1

    .line 203
    const-string v0, "Invoking onWifiStateChanged callback with state %d"

    .line 204
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 206
    move-result-object p1

    .line 209
    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor$$ExternalSyntheticLambda2;

    .line 210
    invoke-direct {v0, p0, p1, p2}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor$$ExternalSyntheticLambda2;-><init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 212
    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 215
    goto :goto_5

    .line 218
    :goto_3
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 219
    throw p0

    .line 220
    :catchall_2
    move-exception p0

    .line 221
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 222
    throw p0

    .line 223
    :cond_8
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    .line 224
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    move-result v0

    .line 229
    if-eqz v0, :cond_9

    .line 230
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    .line 232
    iput-boolean v1, p1, Lcom/android/settingslib/wifi/WifiTracker;->mStaleScanResults:Z

    .line 234
    const-string/jumbo v0, "resultsUpdated"

    .line 236
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 239
    move-result p2

    .line 242
    iput-boolean p2, p1, Lcom/android/settingslib/wifi/WifiTracker;->mLastScanSucceeded:Z

    .line 243
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    .line 245
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->fetchScansAndConfigsAndUpdateAccessPoints()V

    .line 247
    goto :goto_5

    .line 250
    :cond_9
    const-string v0, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 251
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    move-result v0

    .line 256
    if-nez v0, :cond_c

    .line 257
    const-string v0, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    .line 259
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    move-result v0

    .line 264
    if-eqz v0, :cond_a

    .line 265
    goto :goto_4

    .line 267
    :cond_a
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 268
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 270
    move-result v0

    .line 273
    if-eqz v0, :cond_b

    .line 274
    const-string p1, "networkInfo"

    .line 276
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 278
    move-result-object p1

    .line 281
    check-cast p1, Landroid/net/NetworkInfo;

    .line 282
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    .line 284
    invoke-static {p2, p1}, Lcom/android/settingslib/wifi/WifiTracker;->-$$Nest$mupdateNetworkInfo(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V

    .line 286
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    .line 289
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->fetchScansAndConfigsAndUpdateAccessPoints()V

    .line 291
    goto :goto_5

    .line 294
    :cond_b
    const-string p2, "android.net.wifi.RSSI_CHANGED"

    .line 295
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    move-result p1

    .line 300
    if-eqz p1, :cond_d

    .line 301
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    .line 303
    invoke-static {p0, v3}, Lcom/android/settingslib/wifi/WifiTracker;->-$$Nest$mupdateNetworkInfo(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V

    .line 305
    goto :goto_5

    .line 308
    :cond_c
    :goto_4
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    .line 309
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->fetchScansAndConfigsAndUpdateAccessPoints()V

    .line 311
    :cond_d
    :goto_5
    return-void
    .line 314
.end method
