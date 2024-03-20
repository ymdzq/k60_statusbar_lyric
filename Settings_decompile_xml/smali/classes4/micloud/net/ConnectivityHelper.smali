.class public Lmicloud/net/ConnectivityHelper;
.super Ljava/lang/Object;
.source "ConnectivityHelper.java"


# static fields
.field private static sInstance:Lmicloud/net/ConnectivityHelper;


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private volatile mMacAddress:Ljava/lang/String;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "connectivity"

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lmicloud/net/ConnectivityHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string v0, "wifi"

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lmicloud/net/ConnectivityHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lmicloud/net/ConnectivityHelper;
    .locals 2

    const-class v0, Lmicloud/net/ConnectivityHelper;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lmicloud/net/ConnectivityHelper;->sInstance:Lmicloud/net/ConnectivityHelper;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lmicloud/net/ConnectivityHelper;

    invoke-direct {v1, p0}, Lmicloud/net/ConnectivityHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lmicloud/net/ConnectivityHelper;->sInstance:Lmicloud/net/ConnectivityHelper;

    .line 26
    :cond_0
    sget-object p0, Lmicloud/net/ConnectivityHelper;->sInstance:Lmicloud/net/ConnectivityHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getMacAddress()Ljava/lang/String;
    .locals 2

    .line 88
    iget-object v0, p0, Lmicloud/net/ConnectivityHelper;->mMacAddress:Ljava/lang/String;

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lmicloud/net/ConnectivityHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lmicloud/net/ConnectivityHelper;->mMacAddress:Ljava/lang/String;

    :cond_1
    return-object v0
.end method
