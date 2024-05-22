.class public Lcom/android/settingslib/wifi/WifiTracker;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final MAX_SCAN_RESULT_AGE_MILLIS:J = 0x3a98L

.field public static sVerboseLogging:Z


# instance fields
.field public final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field public final mInternalAccessPoints:Ljava/util/List;

.field public mLastInfo:Landroid/net/wifi/WifiInfo;

.field public mLastNetworkInfo:Landroid/net/NetworkInfo;

.field public mLastScanSucceeded:Z

.field public final mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

.field public final mLock:Ljava/lang/Object;

.field public final mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field public final mRequestedScores:Ljava/util/Set;

.field public final mScanResultCache:Ljava/util/HashMap;

.field mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

.field public mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

.field public mStaleScanResults:Z

.field public final mWifiManager:Landroid/net/wifi/WifiManager;

.field mWorkHandler:Landroid/os/Handler;


# direct methods
.method public static -$$Nest$mupdateNetworkInfo(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    move v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    :goto_0
    if-nez v0, :cond_3

    .line 17
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    .line 19
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    .line 22
    check-cast p1, Ljava/util/ArrayList;

    .line 24
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 26
    move-result p1

    .line 29
    if-nez p1, :cond_2

    .line 30
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    .line 32
    check-cast p1, Ljava/util/ArrayList;

    .line 34
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 36
    iget-boolean p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mStaleScanResults:Z

    .line 39
    if-eqz p1, :cond_1

    .line 41
    goto :goto_1

    .line 43
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    .line 44
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->mDelegatee:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    .line 46
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v2, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor$$ExternalSyntheticLambda0;

    .line 51
    invoke-direct {v2, p1, v1}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListener;I)V

    .line 53
    new-instance p1, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor$$ExternalSyntheticLambda2;

    .line 56
    const-string v1, "Invoking onAccessPointsChanged callback"

    .line 58
    invoke-direct {p1, p0, v1, v2}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor$$ExternalSyntheticLambda2;-><init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 60
    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 63
    :cond_2
    :goto_1
    monitor-exit v0

    .line 66
    goto/16 :goto_6

    .line 67
    :catchall_0
    move-exception p0

    .line 69
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw p0

    .line 71
    :cond_3
    const/4 v0, 0x3

    .line 72
    if-eqz p1, :cond_5

    .line 73
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 75
    const-string v3, "WifiTracker"

    .line 77
    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 79
    move-result v3

    .line 82
    if-eqz v3, :cond_4

    .line 83
    const-string v3, "WifiTracker"

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    .line 87
    const-string v5, "mLastNetworkInfo set: "

    .line 89
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    iget-object v5, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 94
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v4

    .line 102
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_4
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 106
    move-result v3

    .line 109
    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 112
    move-result p1

    .line 115
    invoke-virtual {v4, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 116
    move-result p1

    .line 119
    if-eq v3, p1, :cond_5

    .line 120
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    .line 122
    iget-object v3, p1, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->mDelegatee:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    .line 124
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v4, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor$$ExternalSyntheticLambda0;

    .line 129
    invoke-direct {v4, v3, v2}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListener;I)V

    .line 131
    new-instance v3, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor$$ExternalSyntheticLambda2;

    .line 134
    const-string v5, "Invoking onConnectedChanged callback"

    .line 136
    invoke-direct {v3, p1, v5, v4}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor$$ExternalSyntheticLambda2;-><init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 138
    invoke-static {v3}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 141
    :cond_5
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 144
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 146
    move-result-object p1

    .line 149
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 150
    const-string p1, "WifiTracker"

    .line 152
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 154
    move-result p1

    .line 157
    if-eqz p1, :cond_6

    .line 158
    const-string p1, "WifiTracker"

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    .line 162
    const-string v3, "mLastInfo set as: "

    .line 164
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 169
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object v0

    .line 177
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_6
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 181
    if-eqz p1, :cond_7

    .line 183
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 185
    move-result p1

    .line 188
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 189
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    .line 191
    move-result-object v0

    .line 194
    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/wifi/WifiTracker;->getWifiConfigurationForNetworkId(ILjava/util/List;)Landroid/net/wifi/WifiConfiguration;

    .line 195
    move-result-object p1

    .line 198
    goto :goto_2

    .line 199
    :cond_7
    const/4 p1, 0x0

    .line 200
    :goto_2
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    .line 201
    monitor-enter v0

    .line 203
    :try_start_1
    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    .line 204
    check-cast v3, Ljava/util/ArrayList;

    .line 206
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 208
    move-result v3

    .line 211
    sub-int/2addr v3, v1

    .line 212
    move v4, v2

    .line 213
    move v5, v4

    .line 214
    :goto_3
    if-ltz v3, :cond_b

    .line 215
    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    .line 217
    check-cast v6, Ljava/util/ArrayList;

    .line 219
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 221
    move-result-object v6

    .line 224
    check-cast v6, Lcom/android/settingslib/wifi/AccessPoint;

    .line 225
    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    .line 227
    move-result v7

    .line 230
    iget-object v8, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 231
    iget-object v9, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 233
    invoke-virtual {v6, p1, v8, v9}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 235
    move-result v8

    .line 238
    if-eqz v8, :cond_9

    .line 239
    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    .line 241
    move-result v5

    .line 244
    if-eq v7, v5, :cond_8

    .line 245
    move v4, v1

    .line 247
    move v5, v4

    .line 248
    goto :goto_4

    .line 249
    :cond_8
    move v5, v1

    .line 250
    :cond_9
    :goto_4
    iget-object v7, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    .line 251
    const-wide/16 v8, 0x0

    .line 253
    invoke-virtual {v6, v7, v2, v8, v9}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiNetworkScoreCache;ZJ)Z

    .line 255
    move-result v6

    .line 258
    if-eqz v6, :cond_a

    .line 259
    move v4, v1

    .line 261
    move v5, v4

    .line 262
    :cond_a
    add-int/lit8 v3, v3, -0x1

    .line 263
    goto :goto_3

    .line 265
    :cond_b
    if-eqz v4, :cond_c

    .line 266
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    .line 268
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 270
    :cond_c
    if-eqz v5, :cond_e

    .line 273
    iget-boolean p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mStaleScanResults:Z

    .line 275
    if-eqz p1, :cond_d

    .line 277
    goto :goto_5

    .line 279
    :cond_d
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    .line 280
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->mDelegatee:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    .line 282
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    new-instance v2, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor$$ExternalSyntheticLambda0;

    .line 287
    invoke-direct {v2, p1, v1}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListener;I)V

    .line 289
    new-instance p1, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor$$ExternalSyntheticLambda2;

    .line 292
    const-string v1, "Invoking onAccessPointsChanged callback"

    .line 294
    invoke-direct {p1, p0, v1, v2}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor$$ExternalSyntheticLambda2;-><init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 296
    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 299
    :cond_e
    :goto_5
    monitor-exit v0

    .line 302
    :goto_6
    return-void

    .line 303
    :catchall_1
    move-exception p0

    .line 304
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 305
    throw p0
    .line 306
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/content/IntentFilter;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p6, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    const/4 v0, 0x0

    .line 7
    invoke-direct {p6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    iput-object p6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    new-instance p6, Ljava/lang/Object;

    .line 13
    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    .line 18
    new-instance p6, Ljava/util/ArrayList;

    .line 20
    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    .line 22
    iput-object p6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    .line 25
    new-instance p6, Landroid/util/ArraySet;

    .line 27
    invoke-direct {p6}, Landroid/util/ArraySet;-><init>()V

    .line 29
    iput-object p6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRequestedScores:Ljava/util/Set;

    .line 32
    const/4 p6, 0x1

    .line 34
    iput-boolean p6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mStaleScanResults:Z

    .line 35
    iput-boolean p6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastScanSucceeded:Z

    .line 37
    new-instance v1, Ljava/util/HashMap;

    .line 39
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    .line 44
    new-instance v1, Lcom/android/settingslib/wifi/WifiTracker$2;

    .line 46
    invoke-direct {v1, p0}, Lcom/android/settingslib/wifi/WifiTracker$2;-><init>(Lcom/android/settingslib/wifi/WifiTracker;)V

    .line 48
    iput-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    .line 53
    iput-object p3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 55
    new-instance p1, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    .line 57
    invoke-direct {p1, p0, p2}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;-><init>(Lcom/android/settingslib/wifi/WifiTracker;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;)V

    .line 59
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    .line 62
    iput-object p4, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 64
    if-eqz p3, :cond_0

    .line 66
    invoke-virtual {p3}, Landroid/net/wifi/WifiManager;->isVerboseLoggingEnabled()Z

    .line 68
    move-result p1

    .line 71
    if-eqz p1, :cond_0

    .line 72
    move v0, p6

    .line 74
    :cond_0
    sput-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->sVerboseLogging:Z

    .line 75
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    .line 77
    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 79
    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    .line 82
    move-result-object p1

    .line 85
    const/16 p2, 0xf

    .line 86
    invoke-virtual {p1, p2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 88
    move-result-object p1

    .line 91
    invoke-virtual {p1, p6}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 92
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 96
    iput-object p5, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 99
    new-instance p1, Landroid/os/HandlerThread;

    .line 101
    new-instance p2, Ljava/lang/StringBuilder;

    .line 103
    const-string p3, "WifiTracker{"

    .line 105
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 110
    move-result p3

    .line 113
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 114
    move-result-object p3

    .line 117
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string/jumbo p3, "}"

    .line 121
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object p2

    .line 130
    const/16 p3, 0xa

    .line 131
    invoke-direct {p1, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 133
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->setWorkThread(Landroid/os/HandlerThread;)V

    .line 139
    return-void
    .line 142
.end method

.method public static getCachedByKey(Ljava/lang/String;Ljava/util/List;)Lcom/android/settingslib/wifi/AccessPoint;
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 2
    move-result-object p1

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/settingslib/wifi/AccessPoint;

    .line 16
    iget-object v1, v0, Lcom/android/settingslib/wifi/AccessPoint;->mKey:Ljava/lang/String;

    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    .line 26
    return-object v0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return-object p0
    .line 31
.end method

.method public static isVerboseLoggingEnabled()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->sVerboseLogging:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    :goto_0
    return v0
    .line 9
.end method


# virtual methods
.method public final fetchScansAndConfigsAndUpdateAccessPoints()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    move-object v5, v1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 13
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isEnhancedOpenSupported()Z

    .line 15
    move-result v3

    .line 18
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    .line 19
    move-result v4

    .line 22
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWpa3SuiteBSupported()Z

    .line 23
    move-result v2

    .line 26
    new-instance v5, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object v0

    .line 35
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v6

    .line 39
    if-eqz v6, :cond_6

    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v6

    .line 45
    check-cast v6, Landroid/net/wifi/ScanResult;

    .line 46
    iget-object v7, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 48
    const-string v8, "PSK"

    .line 50
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 52
    move-result v7

    .line 55
    if-eqz v7, :cond_2

    .line 56
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    goto :goto_0

    .line 61
    :cond_2
    iget-object v7, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 62
    const-string v8, "SUITE_B_192"

    .line 64
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 66
    move-result v7

    .line 69
    if-eqz v7, :cond_3

    .line 70
    if-eqz v2, :cond_1

    .line 72
    :cond_3
    iget-object v7, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 74
    const-string v8, "SAE"

    .line 76
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 78
    move-result v7

    .line 81
    if-eqz v7, :cond_4

    .line 82
    if-eqz v4, :cond_1

    .line 84
    :cond_4
    iget-object v7, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 86
    const-string v8, "OWE"

    .line 88
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 90
    move-result v7

    .line 93
    if-eqz v7, :cond_5

    .line 94
    if-nez v3, :cond_5

    .line 96
    goto :goto_0

    .line 98
    :cond_5
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    goto :goto_0

    .line 102
    :cond_6
    :goto_1
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->isVerboseLoggingEnabled()Z

    .line 103
    move-result v0

    .line 106
    if-eqz v0, :cond_7

    .line 107
    const-string v0, "WifiTracker"

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    .line 111
    const-string v3, "Fetched scan results: "

    .line 113
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object v2

    .line 124
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_7
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 128
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    .line 130
    move-result-object v0

    .line 133
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 134
    if-eqz v2, :cond_8

    .line 136
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 138
    move-result v2

    .line 141
    invoke-virtual {p0, v2, v0}, Lcom/android/settingslib/wifi/WifiTracker;->getWifiConfigurationForNetworkId(ILjava/util/List;)Landroid/net/wifi/WifiConfiguration;

    .line 142
    move-result-object v2

    .line 145
    goto :goto_2

    .line 146
    :cond_8
    move-object v2, v1

    .line 147
    :goto_2
    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    .line 148
    monitor-enter v3

    .line 150
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/settingslib/wifi/WifiTracker;->updateScanResultCache(Ljava/util/List;)Landroid/util/ArrayMap;

    .line 151
    move-result-object v4

    .line 154
    new-instance v5, Ljava/util/ArrayList;

    .line 155
    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    .line 157
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 159
    new-instance v6, Ljava/util/ArrayList;

    .line 162
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 164
    new-instance v7, Ljava/util/ArrayList;

    .line 167
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 172
    move-result-object v4

    .line 175
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 176
    move-result-object v4

    .line 179
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    move-result v8

    .line 183
    const/4 v9, 0x0

    .line 184
    const/4 v10, 0x1

    .line 185
    if-eqz v8, :cond_f

    .line 186
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    move-result-object v8

    .line 191
    check-cast v8, Ljava/util/Map$Entry;

    .line 192
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 194
    move-result-object v11

    .line 197
    check-cast v11, Ljava/util/List;

    .line 198
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 200
    move-result-object v11

    .line 203
    :cond_9
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    move-result v12

    .line 207
    if-eqz v12, :cond_a

    .line 208
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    move-result-object v12

    .line 213
    check-cast v12, Landroid/net/wifi/ScanResult;

    .line 214
    invoke-static {v12}, Landroid/net/NetworkKey;->createFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/NetworkKey;

    .line 216
    move-result-object v12

    .line 219
    if-eqz v12, :cond_9

    .line 220
    iget-object v13, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRequestedScores:Ljava/util/Set;

    .line 222
    check-cast v13, Landroid/util/ArraySet;

    .line 224
    invoke-virtual {v13, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 226
    move-result v13

    .line 229
    if-nez v13, :cond_9

    .line 230
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    goto :goto_4

    .line 235
    :cond_a
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 236
    move-result-object v8

    .line 239
    check-cast v8, Ljava/util/List;

    .line 240
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 242
    move-result-object v11

    .line 245
    check-cast v11, Landroid/net/wifi/ScanResult;

    .line 246
    iget-object v12, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    .line 248
    sget v13, Lcom/android/settingslib/wifi/AccessPoint;->$r8$clinit:I

    .line 250
    iget-object v13, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 252
    iget-object v14, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 254
    invoke-static {v12, v11}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/content/Context;Landroid/net/wifi/ScanResult;)I

    .line 256
    move-result v11

    .line 259
    invoke-static {v13, v14, v11}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 260
    move-result-object v11

    .line 263
    invoke-static {v11, v5}, Lcom/android/settingslib/wifi/WifiTracker;->getCachedByKey(Ljava/lang/String;Ljava/util/List;)Lcom/android/settingslib/wifi/AccessPoint;

    .line 264
    move-result-object v11

    .line 267
    if-nez v11, :cond_b

    .line 268
    new-instance v11, Lcom/android/settingslib/wifi/AccessPoint;

    .line 270
    invoke-direct {v11, v12, v8}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Ljava/util/Collection;)V

    .line 272
    goto :goto_5

    .line 275
    :cond_b
    invoke-virtual {v11, v8}, Lcom/android/settingslib/wifi/AccessPoint;->setScanResults(Ljava/util/Collection;)V

    .line 276
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 279
    move-result-object v8

    .line 282
    new-instance v12, Lcom/android/settingslib/wifi/WifiTracker$$ExternalSyntheticLambda0;

    .line 283
    invoke-direct {v12, v11}, Lcom/android/settingslib/wifi/WifiTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 285
    invoke-interface {v8, v12}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 288
    move-result-object v8

    .line 291
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 292
    move-result-object v12

    .line 295
    invoke-interface {v8, v12}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 296
    move-result-object v8

    .line 299
    check-cast v8, Ljava/util/List;

    .line 300
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 302
    move-result v12

    .line 305
    if-nez v12, :cond_c

    .line 306
    invoke-virtual {v11, v1}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;)V

    .line 308
    goto :goto_6

    .line 311
    :cond_c
    if-ne v12, v10, :cond_d

    .line 312
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 314
    move-result-object v8

    .line 317
    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .line 318
    invoke-virtual {v11, v8}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;)V

    .line 320
    goto :goto_6

    .line 323
    :cond_d
    invoke-interface {v8}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 324
    move-result-object v10

    .line 327
    new-instance v12, Lcom/android/settingslib/wifi/WifiTracker$$ExternalSyntheticLambda1;

    .line 328
    invoke-direct {v12}, Lcom/android/settingslib/wifi/WifiTracker$$ExternalSyntheticLambda1;-><init>()V

    .line 330
    invoke-interface {v10, v12}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 333
    move-result-object v10

    .line 336
    invoke-interface {v10}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 337
    move-result-object v10

    .line 340
    invoke-virtual {v10}, Ljava/util/Optional;->isPresent()Z

    .line 341
    move-result v12

    .line 344
    if-eqz v12, :cond_e

    .line 345
    invoke-virtual {v10}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 347
    move-result-object v8

    .line 350
    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .line 351
    invoke-virtual {v11, v8}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;)V

    .line 353
    goto :goto_6

    .line 356
    :cond_e
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 357
    move-result-object v8

    .line 360
    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .line 361
    invoke-virtual {v11, v8}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;)V

    .line 363
    :goto_6
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    goto/16 :goto_3

    .line 369
    :catchall_0
    move-exception p0

    .line 371
    goto/16 :goto_c

    .line 372
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    .line 374
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    .line 376
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 378
    move-result-object v1

    .line 381
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 382
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 385
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->getAllMatchingWifiConfigs(Ljava/util/List;)Ljava/util/List;

    .line 387
    move-result-object v1

    .line 390
    invoke-virtual {p0, v1, v5}, Lcom/android/settingslib/wifi/WifiTracker;->updatePasspointAccessPoints(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 391
    move-result-object v1

    .line 394
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 395
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 398
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->getMatchingOsuProviders(Ljava/util/List;)Ljava/util/Map;

    .line 400
    move-result-object v0

    .line 403
    invoke-virtual {p0, v0, v5}, Lcom/android/settingslib/wifi/WifiTracker;->updateOsuAccessPoints(Ljava/util/Map;Ljava/util/List;)Ljava/util/List;

    .line 404
    move-result-object v0

    .line 407
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 408
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 411
    if-eqz v0, :cond_10

    .line 413
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 415
    if-eqz v0, :cond_10

    .line 417
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 419
    move-result-object v0

    .line 422
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 423
    move-result v1

    .line 426
    if-eqz v1, :cond_10

    .line 427
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 429
    move-result-object v1

    .line 432
    check-cast v1, Lcom/android/settingslib/wifi/AccessPoint;

    .line 433
    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 435
    iget-object v5, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 437
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 439
    goto :goto_7

    .line 442
    :cond_10
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 443
    move-result v0

    .line 446
    if-eqz v0, :cond_11

    .line 447
    if-eqz v2, :cond_11

    .line 449
    new-instance v0, Lcom/android/settingslib/wifi/AccessPoint;

    .line 451
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    .line 453
    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 455
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 458
    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 460
    invoke-virtual {v0, v2, v1, v4}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 462
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 468
    invoke-static {v0}, Landroid/net/NetworkKey;->createFromWifiInfo(Landroid/net/wifi/WifiInfo;)Landroid/net/NetworkKey;

    .line 470
    move-result-object v0

    .line 473
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    :cond_11
    invoke-virtual {p0, v7}, Lcom/android/settingslib/wifi/WifiTracker;->requestScoresForNetworkKeys(Ljava/util/Collection;)V

    .line 477
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 480
    move-result-object v0

    .line 483
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 484
    move-result v1

    .line 487
    if-eqz v1, :cond_12

    .line 488
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 490
    move-result-object v1

    .line 493
    check-cast v1, Lcom/android/settingslib/wifi/AccessPoint;

    .line 494
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    .line 496
    const-wide/16 v4, 0x0

    .line 498
    invoke-virtual {v1, v2, v9, v4, v5}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiNetworkScoreCache;ZJ)Z

    .line 500
    goto :goto_8

    .line 503
    :cond_12
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 504
    const-string v0, "WifiTracker"

    .line 507
    const/4 v1, 0x3

    .line 509
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 510
    move-result v0

    .line 513
    if-eqz v0, :cond_17

    .line 514
    const-string v0, "WifiTracker"

    .line 516
    const-string v1, "------ Dumping AccessPoints that were not seen on this scan ------"

    .line 518
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    .line 523
    check-cast v0, Ljava/util/ArrayList;

    .line 525
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 527
    move-result-object v0

    .line 530
    :cond_13
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 531
    move-result v1

    .line 534
    if-eqz v1, :cond_16

    .line 535
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 537
    move-result-object v1

    .line 540
    check-cast v1, Lcom/android/settingslib/wifi/AccessPoint;

    .line 541
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getTitle()Ljava/lang/String;

    .line 543
    move-result-object v1

    .line 546
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 547
    move-result-object v2

    .line 550
    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 551
    move-result v4

    .line 554
    if-eqz v4, :cond_15

    .line 555
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 557
    move-result-object v4

    .line 560
    check-cast v4, Lcom/android/settingslib/wifi/AccessPoint;

    .line 561
    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getTitle()Ljava/lang/String;

    .line 563
    move-result-object v5

    .line 566
    if-eqz v5, :cond_14

    .line 567
    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getTitle()Ljava/lang/String;

    .line 569
    move-result-object v4

    .line 572
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 573
    move-result v4

    .line 576
    if-eqz v4, :cond_14

    .line 577
    move v2, v10

    .line 579
    goto :goto_a

    .line 580
    :cond_15
    move v2, v9

    .line 581
    :goto_a
    if-nez v2, :cond_13

    .line 582
    const-string v2, "WifiTracker"

    .line 584
    new-instance v4, Ljava/lang/StringBuilder;

    .line 586
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 588
    const-string v5, "Did not find "

    .line 591
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    const-string v1, " in this scan"

    .line 599
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 604
    move-result-object v1

    .line 607
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    goto :goto_9

    .line 611
    :cond_16
    const-string v0, "WifiTracker"

    .line 612
    const-string v1, "---- Done dumping AccessPoints that were not seen on this scan ----"

    .line 614
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_17
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    .line 619
    check-cast v0, Ljava/util/ArrayList;

    .line 621
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 623
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    .line 626
    check-cast v0, Ljava/util/ArrayList;

    .line 628
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 630
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mStaleScanResults:Z

    .line 634
    if-eqz v0, :cond_18

    .line 636
    goto :goto_b

    .line 638
    :cond_18
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    .line 639
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->mDelegatee:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    .line 641
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    new-instance v1, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor$$ExternalSyntheticLambda0;

    .line 646
    invoke-direct {v1, v0, v10}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListener;I)V

    .line 648
    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor$$ExternalSyntheticLambda2;

    .line 651
    const-string v2, "Invoking onAccessPointsChanged callback"

    .line 653
    invoke-direct {v0, p0, v2, v1}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor$$ExternalSyntheticLambda2;-><init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 655
    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 658
    :goto_b
    return-void

    .line 661
    :goto_c
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 662
    throw p0
    .line 663
.end method

.method public forceUpdate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 4
    move-result-object v1

    .line 7
    iput-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 8
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 10
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    .line 16
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 20
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->fetchScansAndConfigsAndUpdateAccessPoints()V

    .line 22
    return-void
    .line 25
.end method

.method public final getWifiConfigurationForNetworkId(ILjava/util/List;)Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .line 1
    if-eqz p2, :cond_1

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p2

    .line 7
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 18
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 20
    if-eqz v1, :cond_0

    .line 22
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 24
    if-ne p1, v1, :cond_0

    .line 26
    return-object v0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    return-object p0
    .line 30
.end method

.method public final requestScoresForNetworkKeys(Ljava/util/Collection;)V
    .locals 4

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 5
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    return-void

    .line 11
    :cond_0
    const-string v1, "WifiTracker"

    .line 12
    const/4 v2, 0x3

    .line 14
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 15
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    const-string v1, "WifiTracker"

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    const-string v3, "Requesting scores for Network Keys: "

    .line 25
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 36
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 42
    move-result v2

    .line 45
    new-array v2, v2, [Landroid/net/NetworkKey;

    .line 46
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 51
    check-cast v0, [Landroid/net/NetworkKey;

    .line 52
    invoke-virtual {v1, v0}, Landroid/net/NetworkScoreManager;->requestScores([Landroid/net/NetworkKey;)Z

    .line 54
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    .line 57
    monitor-enter v0

    .line 59
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRequestedScores:Ljava/util/Set;

    .line 60
    check-cast p0, Landroid/util/ArraySet;

    .line 62
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 64
    monitor-exit v0

    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw p0
    .line 71
.end method

.method public setWorkThread(Landroid/os/HandlerThread;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 4
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Landroid/os/Handler;

    .line 11
    new-instance p1, Landroid/net/wifi/WifiNetworkScoreCache;

    .line 13
    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker$1;

    .line 15
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Landroid/os/Handler;

    .line 17
    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/wifi/WifiTracker$1;-><init>(Lcom/android/settingslib/wifi/WifiTracker;Landroid/os/Handler;)V

    .line 19
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    .line 22
    invoke-direct {p1, v1, v0}, Landroid/net/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;)V

    .line 24
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    .line 27
    return-void
    .line 29
.end method

.method public updateOsuAccessPoints(Ljava/util/Map;Ljava/util/List;)Ljava/util/List;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 7
    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 11
    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->getMatchingPasspointConfigsForOsuProviders(Ljava/util/Set;)Ljava/util/Map;

    .line 13
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 17
    move-result-object v1

    .line 20
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 21
    move-result-object v2

    .line 24
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v2

    .line 28
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v3

    .line 32
    if-eqz v3, :cond_2

    .line 33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 38
    check-cast v3, Landroid/net/wifi/hotspot2/OsuProvider;

    .line 39
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 41
    move-result v4

    .line 44
    if-nez v4, :cond_0

    .line 45
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-result-object v4

    .line 50
    check-cast v4, Ljava/util/List;

    .line 51
    invoke-static {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Landroid/net/wifi/hotspot2/OsuProvider;)Ljava/lang/String;

    .line 53
    move-result-object v5

    .line 56
    invoke-static {v5, p2}, Lcom/android/settingslib/wifi/WifiTracker;->getCachedByKey(Ljava/lang/String;Ljava/util/List;)Lcom/android/settingslib/wifi/AccessPoint;

    .line 57
    move-result-object v5

    .line 60
    if-nez v5, :cond_1

    .line 61
    new-instance v5, Lcom/android/settingslib/wifi/AccessPoint;

    .line 63
    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    .line 65
    invoke-direct {v5, v6, v3, v4}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/hotspot2/OsuProvider;Ljava/util/Collection;)V

    .line 67
    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {v5, v4}, Lcom/android/settingslib/wifi/AccessPoint;->setScanResults(Ljava/util/Collection;)V

    .line 71
    :goto_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    goto :goto_0

    .line 77
    :cond_2
    return-object v0
    .line 78
.end method

.method public updatePasspointAccessPoints(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v1, Landroid/util/ArraySet;

    .line 7
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p1

    .line 15
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v2

    .line 19
    if-eqz v2, :cond_2

    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 25
    check-cast v2, Landroid/util/Pair;

    .line 26
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 28
    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 30
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    .line 32
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 34
    move-result v4

    .line 37
    if-eqz v4, :cond_0

    .line 38
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 40
    check-cast v4, Ljava/util/Map;

    .line 42
    const/4 v5, 0x0

    .line 44
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v5

    .line 48
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object v4

    .line 52
    check-cast v4, Ljava/util/List;

    .line 53
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 55
    check-cast v2, Ljava/util/Map;

    .line 57
    const/4 v5, 0x1

    .line 59
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v5

    .line 63
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    move-result-object v2

    .line 67
    check-cast v2, Ljava/util/List;

    .line 68
    invoke-static {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    .line 70
    move-result-object v5

    .line 73
    invoke-static {v5, p2}, Lcom/android/settingslib/wifi/WifiTracker;->getCachedByKey(Ljava/lang/String;Ljava/util/List;)Lcom/android/settingslib/wifi/AccessPoint;

    .line 74
    move-result-object v5

    .line 77
    if-nez v5, :cond_1

    .line 78
    new-instance v5, Lcom/android/settingslib/wifi/AccessPoint;

    .line 80
    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    .line 82
    invoke-direct {v5, v6, v3, v4, v2}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 84
    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {v5, v3}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;)V

    .line 88
    invoke-virtual {v5, v4, v2}, Lcom/android/settingslib/wifi/AccessPoint;->setScanResultsPasspoint(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 91
    :goto_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    goto :goto_0

    .line 97
    :cond_2
    return-object v0
    .line 98
.end method

.method public final updateScanResultCache(Ljava/util/List;)Landroid/util/ArrayMap;
    .locals 10

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    move-result-object p1

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    .line 10
    if-eqz v0, :cond_2

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 18
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 20
    if-eqz v2, :cond_0

    .line 22
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 24
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 31
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    goto :goto_0

    .line 36
    :cond_2
    iget-boolean p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastScanSucceeded:Z

    .line 37
    if-eqz p1, :cond_3

    .line 39
    const-wide/16 v2, 0x3a98

    .line 41
    goto :goto_1

    .line 43
    :cond_3
    const-wide/16 v2, 0x7530

    .line 44
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 46
    move-result-wide v4

    .line 49
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 50
    move-result-object p1

    .line 53
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object p1

    .line 57
    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result v0

    .line 61
    if-eqz v0, :cond_5

    .line 62
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v0

    .line 67
    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 68
    iget-wide v6, v0, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 70
    const-wide/16 v8, 0x3e8

    .line 72
    div-long/2addr v6, v8

    .line 74
    sub-long v6, v4, v6

    .line 75
    cmp-long v0, v6, v2

    .line 77
    if-lez v0, :cond_4

    .line 79
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 81
    goto :goto_2

    .line 84
    :cond_5
    new-instance p1, Landroid/util/ArrayMap;

    .line 85
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 87
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 90
    move-result-object v0

    .line 93
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 94
    move-result-object v0

    .line 97
    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    move-result v1

    .line 101
    if-eqz v1, :cond_9

    .line 102
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    move-result-object v1

    .line 107
    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 108
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 110
    if-eqz v2, :cond_6

    .line 112
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 114
    move-result v2

    .line 117
    if-eqz v2, :cond_6

    .line 118
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 120
    const-string v3, "[IBSS]"

    .line 122
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 124
    move-result v2

    .line 127
    if-eqz v2, :cond_7

    .line 128
    goto :goto_3

    .line 130
    :cond_7
    sget v2, Lcom/android/settingslib/wifi/AccessPoint;->$r8$clinit:I

    .line 131
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 133
    iget-object v3, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 135
    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    .line 137
    invoke-static {v4, v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/content/Context;Landroid/net/wifi/ScanResult;)I

    .line 139
    move-result v4

    .line 142
    invoke-static {v2, v3, v4}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 143
    move-result-object v2

    .line 146
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 147
    move-result v3

    .line 150
    if-eqz v3, :cond_8

    .line 151
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    move-result-object v2

    .line 156
    check-cast v2, Ljava/util/List;

    .line 157
    goto :goto_4

    .line 159
    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    .line 160
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 162
    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    move-object v2, v3

    .line 168
    :goto_4
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    goto :goto_3

    .line 172
    :cond_9
    return-object p1
    .line 173
.end method
