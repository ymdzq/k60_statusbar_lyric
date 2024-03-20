.class public Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;
.super Ljava/lang/Object;
.source "SlaveWifiUtilsStub.java"


# static fields
.field private static volatile mInstance:Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;

.field private static volatile mSlaveWifiUtils:Ljava/lang/Class;

.field private static volatile mUtils:Lcom/android/wifitrackerlib/ISlaveWifiUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    :try_start_0
    const-class v0, Lcom/android/settingslib/wifi/SlaveWifiUtils;

    sput-object v0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mSlaveWifiUtils:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    :try_start_0
    sget-object p0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mSlaveWifiUtils:Ljava/lang/Class;

    if-eqz p0, :cond_1

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 60
    sget-object v0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mSlaveWifiUtils:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    if-eqz p0, :cond_0

    move-object p1, p0

    :cond_0
    aput-object p1, v1, v4

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wifitrackerlib/ISlaveWifiUtils;

    sput-object p0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mUtils:Lcom/android/wifitrackerlib/ISlaveWifiUtils;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;
    .locals 2

    .line 69
    sget-object v0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mInstance:Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;

    if-nez v0, :cond_1

    .line 70
    const-class v0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mInstance:Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;

    invoke-direct {v1, p0}, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mInstance:Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;

    .line 74
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 76
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mInstance:Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;

    return-object p0
.end method


# virtual methods
.method public connectToPrimaryApWithBssid(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)V
    .locals 0

    .line 114
    sget-object p0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mUtils:Lcom/android/wifitrackerlib/ISlaveWifiUtils;

    if-eqz p0, :cond_0

    .line 115
    sget-object p0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mUtils:Lcom/android/wifitrackerlib/ISlaveWifiUtils;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/wifitrackerlib/ISlaveWifiUtils;->connectToPrimaryApWithBssid(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public connectToSlaveAp(I)V
    .locals 0

    .line 96
    sget-object p0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mUtils:Lcom/android/wifitrackerlib/ISlaveWifiUtils;

    if-eqz p0, :cond_0

    .line 97
    sget-object p0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mUtils:Lcom/android/wifitrackerlib/ISlaveWifiUtils;

    invoke-interface {p0, p1}, Lcom/android/wifitrackerlib/ISlaveWifiUtils;->connectToSlaveAp(I)V

    :cond_0
    return-void
.end method

.method public connectToSlaveAp(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 102
    sget-object p0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mUtils:Lcom/android/wifitrackerlib/ISlaveWifiUtils;

    if-eqz p0, :cond_0

    .line 103
    sget-object p0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mUtils:Lcom/android/wifitrackerlib/ISlaveWifiUtils;

    invoke-interface {p0, p1}, Lcom/android/wifitrackerlib/ISlaveWifiUtils;->connectToSlaveAp(Landroid/net/wifi/WifiConfiguration;)V

    :cond_0
    return-void
.end method

.method public connectToSlaveApWithBssid(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)V
    .locals 0

    .line 108
    sget-object p0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mUtils:Lcom/android/wifitrackerlib/ISlaveWifiUtils;

    if-eqz p0, :cond_0

    .line 109
    sget-object p0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mUtils:Lcom/android/wifitrackerlib/ISlaveWifiUtils;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/wifitrackerlib/ISlaveWifiUtils;->connectToSlaveApWithBssid(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getSlaveWifiCurrentNetwork()Landroid/net/Network;
    .locals 0

    .line 128
    sget-object p0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mUtils:Lcom/android/wifitrackerlib/ISlaveWifiUtils;

    if-eqz p0, :cond_0

    .line 129
    sget-object p0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mUtils:Lcom/android/wifitrackerlib/ISlaveWifiUtils;

    invoke-interface {p0}, Lcom/android/wifitrackerlib/ISlaveWifiUtils;->getSlaveWifiCurrentNetwork()Landroid/net/Network;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWifiSlaveConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 136
    sget-object p0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mUtils:Lcom/android/wifitrackerlib/ISlaveWifiUtils;

    if-eqz p0, :cond_0

    .line 137
    sget-object p0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mUtils:Lcom/android/wifitrackerlib/ISlaveWifiUtils;

    invoke-interface {p0}, Lcom/android/wifitrackerlib/ISlaveWifiUtils;->getWifiSlaveConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public is24GHz(Landroid/net/wifi/ScanResult;)Z
    .locals 0

    .line 186
    sget-object p0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mUtils:Lcom/android/wifitrackerlib/ISlaveWifiUtils;

    if-eqz p0, :cond_0

    .line 187
    sget-object p0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mUtils:Lcom/android/wifitrackerlib/ISlaveWifiUtils;

    invoke-interface {p0, p1}, Lcom/android/wifitrackerlib/ISlaveWifiUtils;->is24GHz(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public is5GHz(Landroid/net/wifi/ScanResult;)Z
    .locals 0

    .line 194
    sget-object p0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mUtils:Lcom/android/wifitrackerlib/ISlaveWifiUtils;

    if-eqz p0, :cond_0

    .line 195
    sget-object p0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mUtils:Lcom/android/wifitrackerlib/ISlaveWifiUtils;

    invoke-interface {p0, p1}, Lcom/android/wifitrackerlib/ISlaveWifiUtils;->is5GHz(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public is6GHz(Landroid/net/wifi/ScanResult;)Z
    .locals 0

    .line 202
    sget-object p0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mUtils:Lcom/android/wifitrackerlib/ISlaveWifiUtils;

    if-eqz p0, :cond_0

    .line 203
    sget-object p0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mUtils:Lcom/android/wifitrackerlib/ISlaveWifiUtils;

    invoke-interface {p0, p1}, Lcom/android/wifitrackerlib/ISlaveWifiUtils;->is6GHz(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isMloBothActive()Z
    .locals 0

    .line 177
    sget-object p0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mUtils:Lcom/android/wifitrackerlib/ISlaveWifiUtils;

    if-eqz p0, :cond_0

    .line 178
    sget-object p0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mUtils:Lcom/android/wifitrackerlib/ISlaveWifiUtils;

    invoke-interface {p0}, Lcom/android/wifitrackerlib/ISlaveWifiUtils;->isMloBothActive()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSlaveWifiEnabled()Z
    .locals 0

    .line 88
    sget-object p0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mUtils:Lcom/android/wifitrackerlib/ISlaveWifiUtils;

    if-eqz p0, :cond_0

    .line 89
    sget-object p0, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->mUtils:Lcom/android/wifitrackerlib/ISlaveWifiUtils;

    invoke-interface {p0}, Lcom/android/wifitrackerlib/ISlaveWifiUtils;->isSlaveWifiEnabled()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
