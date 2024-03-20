.class public Lcom/android/wifitrackerlib/BaseWifiTracker;
.super Ljava/lang/Object;
.source "BaseWifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;,
        Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;
    }
.end annotation


# static fields
.field public static mEnableSharedConnectivityFeature:Z = false

.field private static sVerboseLogging:Z


# instance fields
.field protected final mActivityManager:Landroid/app/ActivityManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mConnectivityDiagnosticsCallback:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;

.field private final mConnectivityDiagnosticsExecutor:Ljava/util/concurrent/Executor;

.field protected final mConnectivityDiagnosticsManager:Landroid/net/ConnectivityDiagnosticsManager;

.field protected final mConnectivityManager:Landroid/net/ConnectivityManager;

.field protected final mContext:Landroid/content/Context;

.field private final mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field protected final mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

.field private mIsInitialized:Z

.field private mIsSlave:Z

.field private final mListener:Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;

.field protected final mMainHandler:Landroid/os/Handler;

.field protected final mMaxScanAgeMillis:J

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field protected final mScanIntervalMillis:J

.field protected final mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

.field private final mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

.field private mSharedConnectivityCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x22
    .end annotation
.end field

.field private final mSharedConnectivityExecutor:Ljava/util/concurrent/Executor;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x22
    .end annotation
.end field

.field protected mSharedConnectivityManager:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

.field private final mTag:Ljava/lang/String;

.field protected final mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiState:I

.field protected final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$_Kue8IYmt_5Efeu5LmSyOzdo0Vc(Lcom/android/wifitrackerlib/BaseWifiTracker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->lambda$onStop$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$kz-d5DCFwo5GvFsKtvpXux3rI9Y(Lcom/android/wifitrackerlib/BaseWifiTracker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->lambda$onStart$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIsSlave(Lcom/android/wifitrackerlib/BaseWifiTracker;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsSlave:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanner(Lcom/android/wifitrackerlib/BaseWifiTracker;)Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTag(Lcom/android/wifitrackerlib/BaseWifiTracker;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiState(Lcom/android/wifitrackerlib/BaseWifiTracker;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmWifiState(Lcom/android/wifitrackerlib/BaseWifiTracker;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$misAppVisible(Lcom/android/wifitrackerlib/BaseWifiTracker;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isAppVisible()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyOnWifiStateChanged(Lcom/android/wifitrackerlib/BaseWifiTracker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->notifyOnWifiStateChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;Ljava/lang/String;)V
    .locals 11

    move-object v0, p0

    move-object v1, p3

    move-wide/from16 v2, p9

    move-wide/from16 v4, p11

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x0

    .line 115
    iput-boolean v6, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsSlave:Z

    const/4 v7, 0x1

    .line 124
    iput v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiState:I

    .line 126
    iput-boolean v6, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsInitialized:Z

    .line 129
    new-instance v8, Lcom/android/wifitrackerlib/BaseWifiTracker$1;

    invoke-direct {v8, p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$1;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V

    iput-object v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v8, 0x0

    .line 185
    iput-object v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSharedConnectivityManager:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    .line 189
    new-instance v9, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v9}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 190
    invoke-virtual {v9}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v9

    const/16 v10, 0xf

    .line 191
    invoke-virtual {v9, v10}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v9

    .line 192
    invoke-virtual {v9, v7}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v9

    .line 193
    invoke-virtual {v9, v6}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v6

    .line 194
    invoke-virtual {v6}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v6

    iput-object v6, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 196
    new-instance v6, Lcom/android/wifitrackerlib/BaseWifiTracker$2;

    invoke-direct {v6, p0, v7}, Lcom/android/wifitrackerlib/BaseWifiTracker$2;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;I)V

    iput-object v6, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 241
    new-instance v6, Lcom/android/wifitrackerlib/BaseWifiTracker$3;

    invoke-direct {v6, p0, v7}, Lcom/android/wifitrackerlib/BaseWifiTracker$3;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;I)V

    iput-object v6, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 257
    new-instance v6, Lcom/android/wifitrackerlib/BaseWifiTracker$4;

    invoke-direct {v6, p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$4;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V

    iput-object v6, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityDiagnosticsCallback:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;

    .line 267
    new-instance v6, Lcom/android/wifitrackerlib/BaseWifiTracker$5;

    invoke-direct {v6, p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$5;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V

    iput-object v6, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityDiagnosticsExecutor:Ljava/util/concurrent/Executor;

    .line 274
    new-instance v6, Lcom/android/wifitrackerlib/BaseWifiTracker$6;

    invoke-direct {v6, p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$6;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V

    iput-object v6, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSharedConnectivityExecutor:Ljava/util/concurrent/Executor;

    .line 282
    iput-object v8, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSharedConnectivityCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    move-object v6, p1

    .line 375
    iput-object v6, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    .line 376
    const-class v6, Landroid/app/ActivityManager;

    invoke-virtual {p3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    iput-object v6, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mActivityManager:Landroid/app/ActivityManager;

    .line 377
    new-instance v6, Lcom/android/wifitrackerlib/BaseWifiTracker$8;

    invoke-direct {v6, p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$8;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V

    move-object v7, p2

    invoke-virtual {p2, v6}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 403
    iput-object v1, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    move-object v6, p4

    .line 404
    iput-object v6, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v7, p5

    .line 405
    iput-object v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 406
    const-class v7, Landroid/net/ConnectivityDiagnosticsManager;

    .line 407
    invoke-virtual {p3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityDiagnosticsManager;

    iput-object v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityDiagnosticsManager:Landroid/net/ConnectivityDiagnosticsManager;

    .line 408
    sget-boolean v7, Lcom/android/wifitrackerlib/BaseWifiTracker;->mEnableSharedConnectivityFeature:Z

    if-eqz v7, :cond_0

    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastU()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 409
    const-class v7, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    invoke-virtual {p3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    iput-object v1, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSharedConnectivityManager:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    .line 410
    invoke-direct {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->createSharedConnectivityCallback()Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    move-result-object v1

    iput-object v1, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSharedConnectivityCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    :cond_0
    move-object/from16 v1, p6

    .line 412
    iput-object v1, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    move-object/from16 v1, p7

    .line 413
    iput-object v1, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    .line 414
    iput-wide v2, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMaxScanAgeMillis:J

    .line 415
    iput-wide v4, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanIntervalMillis:J

    move-object/from16 v7, p13

    .line 416
    iput-object v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mListener:Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;

    move-object/from16 v7, p14

    .line 417
    iput-object v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    .line 419
    new-instance v7, Lcom/android/wifitrackerlib/ScanResultUpdater;

    add-long/2addr v2, v4

    move-object/from16 v4, p8

    invoke-direct {v7, v4, v2, v3}, Lcom/android/wifitrackerlib/ScanResultUpdater;-><init>(Ljava/time/Clock;J)V

    iput-object v7, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

    .line 421
    new-instance v2, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    invoke-virtual/range {p7 .. p7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, p0, v1, v8}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;Landroid/os/Looper;Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner-IA;)V

    iput-object v2, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    .line 422
    invoke-virtual {p4}, Landroid/net/wifi/WifiManager;->isVerboseLoggingEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->sVerboseLogging:Z

    return-void
.end method

.method private createSharedConnectivityCallback()Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x22
    .end annotation

    .line 289
    new-instance v0, Lcom/android/wifitrackerlib/BaseWifiTracker$7;

    invoke-direct {v0, p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$7;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V

    return-object v0
.end method

.method private isAppVisible()Z
    .locals 1

    .line 998
    new-instance p0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {p0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 1000
    invoke-static {p0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 1001
    iget p0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v0, 0xc8

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSupplicantStateActive(Landroid/net/wifi/SupplicantState;)Z
    .locals 0

    .line 570
    sget-object p0, Lcom/android/wifitrackerlib/BaseWifiTracker$9;->$SwitchMap$android$net$wifi$SupplicantState:[I

    invoke-virtual {p1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isVerboseLoggingEnabled()Z
    .locals 1

    .line 121
    sget-boolean v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->sVerboseLogging:Z

    return v0
.end method

.method private synthetic lambda$onStart$0()V
    .locals 6

    .line 435
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 436
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.SCAN_RESULTS"

    .line 437
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 438
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 439
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 440
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.SLAVE_STATE_CHANGE"

    .line 442
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.SLAVE_RSSI_CHANGED"

    .line 443
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.WIFI_SLAVE_STATE_CHANGED"

    .line 444
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.qualcomm.qti.net.wifi.PARTIAL_SCAN_RESULTS"

    .line 445
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    .line 450
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 451
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 454
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 456
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 458
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityDiagnosticsManager:Landroid/net/ConnectivityDiagnosticsManager;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityDiagnosticsExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityDiagnosticsCallback:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/ConnectivityDiagnosticsManager;->registerConnectivityDiagnosticsCallback(Landroid/net/NetworkRequest;Ljava/util/concurrent/Executor;Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;)V

    .line 460
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSharedConnectivityManager:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSharedConnectivityCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    if-eqz v0, :cond_0

    .line 461
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSharedConnectivityManager:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSharedConnectivityExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSharedConnectivityCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;)V

    .line 465
    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleOnStart()V

    const/4 v0, 0x1

    .line 466
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsInitialized:Z

    return-void
.end method

.method private synthetic lambda$onStop$1()V
    .locals 2

    .line 488
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 489
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 490
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 491
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityDiagnosticsManager:Landroid/net/ConnectivityDiagnosticsManager;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityDiagnosticsCallback:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityDiagnosticsManager;->unregisterConnectivityDiagnosticsCallback(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;)V

    .line 493
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSharedConnectivityManager:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSharedConnectivityCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    if-eqz v0, :cond_0

    .line 494
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSharedConnectivityManager:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSharedConnectivityCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    .line 496
    invoke-virtual {v0, v1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->unregisterCallback(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    const-string v0, "onStop: unregisterCallback failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private notifyOnWifiStateChanged()V
    .locals 2

    .line 1009
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mListener:Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;

    if-eqz v0, :cond_0

    .line 1010
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda2;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getWifiState()I
    .locals 0

    .line 554
    iget p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiState:I

    return p0
.end method

.method protected handleConfiguredNetworksChangedAction(Landroid/content/Intent;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected handleConnectivityReportAvailable(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method protected handleDefaultNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method protected handleDefaultNetworkLost()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method protected handleDefaultSubscriptionChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method protected handleHotspotNetworkConnectionStatusChanged(Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x22
    .end annotation

    .line 0
    return-void
.end method

.method protected handleHotspotNetworksUpdated(Ljava/util/List;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x22
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method protected handleKnownNetworkConnectionStatusChanged(Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x22
    .end annotation

    .line 0
    return-void
.end method

.method protected handleKnownNetworksUpdated(Ljava/util/List;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x22
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method protected handleLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method protected handleMloConnectedState(Lcom/android/wifitrackerlib/WifiEntry;Z)V
    .locals 4

    .line 585
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 589
    :cond_0
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 590
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 591
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v2, v0, :cond_1

    goto :goto_0

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-eqz p2, :cond_4

    .line 599
    iget-object p2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 600
    invoke-virtual {p2, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 602
    new-instance v2, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v2, p2}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 604
    invoke-virtual {v2, v1}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object p2

    .line 602
    invoke-virtual {p1, v0, p2}, Lcom/android/wifitrackerlib/WifiEntry;->onNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 606
    :cond_3
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 608
    invoke-virtual {p1, v0, p0}, Lcom/android/wifitrackerlib/WifiEntry;->updateLinkProperties(Landroid/net/Network;Landroid/net/LinkProperties;)V

    goto :goto_0

    .line 611
    :cond_4
    invoke-virtual {p1, v0}, Lcom/android/wifitrackerlib/WifiEntry;->onNetworkLost(Landroid/net/Network;)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected handleNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method protected handleNetworkLost(Landroid/net/Network;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method protected handleNetworkStateChangedAction(Landroid/content/Intent;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method protected handleOnStart()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method protected handleRegisterCallbackFailed(Ljava/lang/Exception;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x22
    .end annotation

    .line 0
    return-void
.end method

.method protected handleScanResultsAvailableAction(Landroid/content/Intent;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected handleServiceConnected()V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x22
    .end annotation

    .line 0
    return-void
.end method

.method protected handleServiceDisconnected()V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x22
    .end annotation

    .line 0
    return-void
.end method

.method protected handleSharedConnectivitySettingsChanged(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x22
    .end annotation

    .line 0
    return-void
.end method

.method protected handleWifiStateChangedAction()V
    .locals 0

    .line 0
    return-void
.end method

.method isInitialized()Z
    .locals 0

    .line 540
    iget-boolean p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsInitialized:Z

    return p0
.end method

.method protected isMloEntryNeed()Z
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    .line 560
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 561
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    .line 562
    invoke-static {v1}, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->getInstance(Landroid/content/Context;)Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->getWifiSlaveConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 563
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    .line 565
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isSupplicantStateActive(Landroid/net/wifi/SupplicantState;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    .line 566
    invoke-static {p0}, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->getInstance(Landroid/content/Context;)Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->isMloBothActive()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSlave()Z
    .locals 0

    .line 341
    iget-boolean p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsSlave:Z

    return p0
.end method

.method public isSlaveWifiEnabled()Z
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->getInstance(Landroid/content/Context;)Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->isSlaveWifiEnabled()Z

    move-result p0

    return p0
.end method

.method public onDestroy()V
    .locals 2

    .line 515
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 516
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 517
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 518
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityDiagnosticsManager:Landroid/net/ConnectivityDiagnosticsManager;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityDiagnosticsCallback:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityDiagnosticsManager;->unregisterConnectivityDiagnosticsCallback(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;)V

    .line 520
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSharedConnectivityManager:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSharedConnectivityCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    if-eqz v0, :cond_0

    .line 521
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSharedConnectivityManager:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSharedConnectivityCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    .line 523
    invoke-virtual {v0, v1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->unregisterCallback(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    const-string v0, "onDestroyed: unregisterCallback failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 473
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    invoke-static {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->-$$Nest$monResume(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 430
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    invoke-static {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->-$$Nest$monStart(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V

    .line 434
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 482
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    invoke-static {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->-$$Nest$monStop(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V

    .line 486
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setIsSlave(Z)V
    .locals 0

    .line 337
    iput-boolean p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsSlave:Z

    return-void
.end method
