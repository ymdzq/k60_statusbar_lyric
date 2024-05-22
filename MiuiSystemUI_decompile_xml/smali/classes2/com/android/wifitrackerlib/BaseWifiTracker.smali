.class public abstract Lcom/android/wifitrackerlib/BaseWifiTracker;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static sVerboseLogging:Z


# instance fields
.field public final mBroadcastReceiver:Lcom/android/wifitrackerlib/BaseWifiTracker$1;

.field public final mConnectivityDiagnosticsCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$4;

.field public final mConnectivityDiagnosticsExecutor:Lcom/android/wifitrackerlib/BaseWifiTracker$5;

.field public final mConnectivityDiagnosticsManager:Landroid/net/ConnectivityDiagnosticsManager;

.field public final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field public final mDefaultNetworkCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$2;

.field public final mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

.field public mIsInitialized:Z

.field public final mListener:Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mMaxScanAgeMillis:J

.field public final mNetworkCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$2;

.field public final mNetworkRequest:Landroid/net/NetworkRequest;

.field public final mScanIntervalMillis:J

.field public final mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

.field public final mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

.field public final mSharedConnectivityExecutor:Lcom/android/wifitrackerlib/BaseWifiTracker$5;

.field public final mTag:Ljava/lang/String;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;

.field public mWifiState:I

.field public final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;)V
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p3

    .line 3
    move-wide/from16 v2, p9

    .line 4
    move-wide/from16 v4, p11

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v6, 0x1

    .line 11
    iput v6, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiState:I

    .line 12
    const/4 v7, 0x0

    .line 14
    iput-boolean v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsInitialized:Z

    .line 15
    new-instance v8, Lcom/android/wifitrackerlib/BaseWifiTracker$1;

    .line 17
    invoke-direct {v8, p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$1;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V

    .line 19
    iput-object v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mBroadcastReceiver:Lcom/android/wifitrackerlib/BaseWifiTracker$1;

    .line 22
    new-instance v8, Landroid/net/NetworkRequest$Builder;

    .line 24
    invoke-direct {v8}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 26
    invoke-virtual {v8}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    .line 29
    move-result-object v8

    .line 32
    const/16 v9, 0xf

    .line 33
    invoke-virtual {v8, v9}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 35
    move-result-object v8

    .line 38
    invoke-virtual {v8, v6}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 39
    move-result-object v8

    .line 42
    invoke-virtual {v8, v7}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 43
    move-result-object v8

    .line 46
    invoke-virtual {v8}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 47
    move-result-object v8

    .line 50
    iput-object v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 51
    new-instance v8, Lcom/android/wifitrackerlib/BaseWifiTracker$2;

    .line 53
    invoke-direct {v8, p0, v7}, Lcom/android/wifitrackerlib/BaseWifiTracker$2;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;I)V

    .line 55
    iput-object v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$2;

    .line 58
    new-instance v8, Lcom/android/wifitrackerlib/BaseWifiTracker$2;

    .line 60
    invoke-direct {v8, p0, v6}, Lcom/android/wifitrackerlib/BaseWifiTracker$2;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;I)V

    .line 62
    iput-object v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mDefaultNetworkCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$2;

    .line 65
    new-instance v8, Lcom/android/wifitrackerlib/BaseWifiTracker$4;

    .line 67
    invoke-direct {v8, p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$4;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V

    .line 69
    iput-object v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityDiagnosticsCallback:Lcom/android/wifitrackerlib/BaseWifiTracker$4;

    .line 72
    new-instance v8, Lcom/android/wifitrackerlib/BaseWifiTracker$5;

    .line 74
    invoke-direct {v8, p0, v7}, Lcom/android/wifitrackerlib/BaseWifiTracker$5;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;I)V

    .line 76
    iput-object v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityDiagnosticsExecutor:Lcom/android/wifitrackerlib/BaseWifiTracker$5;

    .line 79
    new-instance v7, Lcom/android/wifitrackerlib/BaseWifiTracker$5;

    .line 81
    invoke-direct {v7, p0, v6}, Lcom/android/wifitrackerlib/BaseWifiTracker$5;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;I)V

    .line 83
    iput-object v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSharedConnectivityExecutor:Lcom/android/wifitrackerlib/BaseWifiTracker$5;

    .line 86
    move-object v6, p1

    .line 88
    iput-object v6, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    .line 89
    const-class v6, Landroid/app/ActivityManager;

    .line 91
    invoke-virtual {p3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 93
    move-result-object v6

    .line 96
    check-cast v6, Landroid/app/ActivityManager;

    .line 97
    new-instance v6, Lcom/android/wifitrackerlib/BaseWifiTracker$8;

    .line 99
    invoke-direct {v6, p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$8;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V

    .line 101
    move-object v7, p2

    .line 104
    invoke-virtual {p2, v6}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 105
    iput-object v1, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    .line 108
    move-object v6, p4

    .line 110
    iput-object v6, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 111
    move-object v7, p5

    .line 113
    iput-object v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 114
    const-class v7, Landroid/net/ConnectivityDiagnosticsManager;

    .line 116
    invoke-virtual {p3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 118
    move-result-object v1

    .line 121
    check-cast v1, Landroid/net/ConnectivityDiagnosticsManager;

    .line 122
    iput-object v1, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityDiagnosticsManager:Landroid/net/ConnectivityDiagnosticsManager;

    .line 124
    move-object/from16 v1, p6

    .line 126
    iput-object v1, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    .line 128
    move-object/from16 v1, p7

    .line 130
    iput-object v1, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    .line 132
    iput-wide v2, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMaxScanAgeMillis:J

    .line 134
    iput-wide v4, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanIntervalMillis:J

    .line 136
    move-object/from16 v7, p13

    .line 138
    iput-object v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mListener:Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;

    .line 140
    const-string v7, "WifiPickerTracker"

    .line 142
    iput-object v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    .line 144
    new-instance v7, Lcom/android/wifitrackerlib/ScanResultUpdater;

    .line 146
    add-long/2addr v2, v4

    .line 148
    move-object/from16 v4, p8

    .line 149
    invoke-direct {v7, v4, v2, v3}, Lcom/android/wifitrackerlib/ScanResultUpdater;-><init>(Ljava/time/Clock;J)V

    .line 151
    iput-object v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

    .line 154
    new-instance v2, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    .line 156
    invoke-virtual/range {p7 .. p7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 158
    move-result-object v1

    .line 161
    invoke-direct {v2, p0, v1}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;Landroid/os/Looper;)V

    .line 162
    iput-object v2, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    .line 165
    invoke-virtual {p4}, Landroid/net/wifi/WifiManager;->isVerboseLoggingEnabled()Z

    .line 167
    move-result v0

    .line 170
    sput-boolean v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->sVerboseLogging:Z

    .line 171
    return-void
    .line 173
.end method


# virtual methods
.method public abstract handleDefaultSubscriptionChanged(I)V
.end method

.method public abstract handleNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
.end method

.method public abstract handleNetworkStateChangedAction(Landroid/content/Intent;)V
.end method
