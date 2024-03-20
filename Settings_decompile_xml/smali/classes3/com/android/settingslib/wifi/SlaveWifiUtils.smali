.class public Lcom/android/settingslib/wifi/SlaveWifiUtils;
.super Ljava/lang/Object;
.source "SlaveWifiUtils.java"

# interfaces
.implements Lcom/android/wifitrackerlib/ISlaveWifiUtils;


# static fields
.field private static volatile mInstance:Lcom/android/settingslib/wifi/SlaveWifiUtils;


# instance fields
.field private mIsSupportDualWifi:Z

.field private mSlaveWifiManager:Ljava/lang/Object;

.field private method_connectToPrimaryAp_bssid:Ljava/lang/reflect/Method;

.field private method_connectToSlaveAp:Ljava/lang/reflect/Method;

.field private method_connectToSlaveAp_bssid:Ljava/lang/reflect/Method;

.field private method_connectToSlaveAp_config:Ljava/lang/reflect/Method;

.field private method_disconnectSlaveWifi:Ljava/lang/reflect/Method;

.field private method_getAutoDisableDefault:Ljava/lang/reflect/Method;

.field private method_getInstance:Ljava/lang/reflect/Method;

.field private method_getSlaveDhcpInfo:Ljava/lang/reflect/Method;

.field private method_getSlaveWifiCurrentNetwork:Ljava/lang/reflect/Method;

.field private method_getSlaveWifiState:Ljava/lang/reflect/Method;

.field private method_getWifiSlaveConnectionInfo:Ljava/lang/reflect/Method;

.field private method_isCombineBandHbsSupport:Ljava/lang/reflect/Method;

.field private method_isMloBothActive:Ljava/lang/reflect/Method;

.field private method_isSlaveWifiEnabled:Ljava/lang/reflect/Method;

.field private method_setWifiSlaveEnabled:Ljava/lang/reflect/Method;

.field private method_supportDbsDualWifi:Ljava/lang/reflect/Method;

.field private method_supportDualWifi:Ljava/lang/reflect/Method;

.field private method_supportHbsDualWifi:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 87
    const-class v0, Ljava/lang/String;

    const-string v1, "connectToSlaveAp"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 65
    iput-object v2, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->mSlaveWifiManager:Ljava/lang/Object;

    .line 68
    iput-object v2, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_getInstance:Ljava/lang/reflect/Method;

    .line 69
    iput-object v2, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_setWifiSlaveEnabled:Ljava/lang/reflect/Method;

    .line 70
    iput-object v2, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_getWifiSlaveConnectionInfo:Ljava/lang/reflect/Method;

    .line 71
    iput-object v2, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_getSlaveWifiCurrentNetwork:Ljava/lang/reflect/Method;

    .line 72
    iput-object v2, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_getSlaveDhcpInfo:Ljava/lang/reflect/Method;

    .line 73
    iput-object v2, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_disconnectSlaveWifi:Ljava/lang/reflect/Method;

    .line 74
    iput-object v2, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_connectToSlaveAp:Ljava/lang/reflect/Method;

    .line 75
    iput-object v2, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_connectToSlaveAp_config:Ljava/lang/reflect/Method;

    .line 76
    iput-object v2, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_connectToSlaveAp_bssid:Ljava/lang/reflect/Method;

    .line 77
    iput-object v2, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_connectToPrimaryAp_bssid:Ljava/lang/reflect/Method;

    .line 78
    iput-object v2, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_getSlaveWifiState:Ljava/lang/reflect/Method;

    .line 79
    iput-object v2, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_isSlaveWifiEnabled:Ljava/lang/reflect/Method;

    .line 80
    iput-object v2, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_getAutoDisableDefault:Ljava/lang/reflect/Method;

    .line 81
    iput-object v2, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_supportDualWifi:Ljava/lang/reflect/Method;

    .line 82
    iput-object v2, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_supportDbsDualWifi:Ljava/lang/reflect/Method;

    .line 83
    iput-object v2, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_supportHbsDualWifi:Ljava/lang/reflect/Method;

    .line 84
    iput-object v2, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_isCombineBandHbsSupport:Ljava/lang/reflect/Method;

    .line 85
    iput-object v2, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_isMloBothActive:Ljava/lang/reflect/Method;

    :try_start_0
    const-string v3, "android.net.wifi.SlaveWifiManager"

    .line 89
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 91
    invoke-direct {p0, v3}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->getSlaveServiceName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->mSlaveWifiManager:Ljava/lang/Object;

    const-string/jumbo p1, "supportDualWifi"

    .line 92
    invoke-virtual {v3, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_supportDualWifi:Ljava/lang/reflect/Method;

    const-string/jumbo p1, "supportHbsDualWifi"

    .line 93
    invoke-virtual {v3, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_supportHbsDualWifi:Ljava/lang/reflect/Method;

    const-string/jumbo p1, "supportDbsDualWifi"

    .line 94
    invoke-virtual {v3, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_supportDbsDualWifi:Ljava/lang/reflect/Method;

    .line 95
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->supportDualWifi()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->mIsSupportDualWifi:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo p1, "setWifiSlaveEnabled"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    .line 99
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, p1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_setWifiSlaveEnabled:Ljava/lang/reflect/Method;

    const-string p1, "getWifiSlaveConnectionInfo"

    .line 100
    invoke-virtual {v3, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_getWifiSlaveConnectionInfo:Ljava/lang/reflect/Method;

    const-string p1, "getSlaveWifiCurrentNetwork"

    .line 101
    invoke-virtual {v3, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_getSlaveWifiCurrentNetwork:Ljava/lang/reflect/Method;

    const-string p1, "getSlaveDhcpInfo"

    .line 102
    invoke-virtual {v3, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_getSlaveDhcpInfo:Ljava/lang/reflect/Method;

    const-string p1, "disconnectSlaveWifi"

    .line 103
    invoke-virtual {v3, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_disconnectSlaveWifi:Ljava/lang/reflect/Method;

    new-array p1, v4, [Ljava/lang/Class;

    .line 104
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, p1, v7

    invoke-virtual {v3, v1, p1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_connectToSlaveAp:Ljava/lang/reflect/Method;

    new-array p1, v4, [Ljava/lang/Class;

    .line 105
    const-class v6, Landroid/net/wifi/WifiConfiguration;

    aput-object v6, p1, v7

    invoke-virtual {v3, v1, p1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_connectToSlaveAp_config:Ljava/lang/reflect/Method;

    const-string p1, "connectToSlaveApWithBssid"

    const/4 v1, 0x3

    new-array v6, v1, [Ljava/lang/Class;

    .line 106
    const-class v8, Landroid/net/wifi/WifiConfiguration;

    aput-object v8, v6, v7

    aput-object v5, v6, v4

    const/4 v8, 0x2

    aput-object v0, v6, v8

    invoke-virtual {v3, p1, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_connectToSlaveAp_bssid:Ljava/lang/reflect/Method;

    const-string p1, "connectToPrimaryApWithBssid"

    new-array v1, v1, [Ljava/lang/Class;

    .line 107
    const-class v6, Landroid/net/wifi/WifiConfiguration;

    aput-object v6, v1, v7

    aput-object v5, v1, v4

    aput-object v0, v1, v8

    invoke-virtual {v3, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_connectToPrimaryAp_bssid:Ljava/lang/reflect/Method;

    const-string p1, "getSlaveWifiState"

    .line 108
    invoke-virtual {v3, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_getSlaveWifiState:Ljava/lang/reflect/Method;

    const-string p1, "isSlaveWifiEnabled"

    .line 109
    invoke-virtual {v3, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_isSlaveWifiEnabled:Ljava/lang/reflect/Method;

    const-string p1, "getAutoDisableDefault"

    new-array v0, v4, [Ljava/lang/Class;

    .line 110
    const-class v1, Landroid/content/Context;

    aput-object v1, v0, v7

    invoke-virtual {v3, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_getAutoDisableDefault:Ljava/lang/reflect/Method;

    const-string p1, "isCombineBandHbsSupport"

    new-array v0, v8, [Ljava/lang/Class;

    aput-object v5, v0, v7

    aput-object v5, v0, v4

    .line 112
    invoke-virtual {v3, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_isCombineBandHbsSupport:Ljava/lang/reflect/Method;

    const-string p1, "isMloBothActive"

    .line 114
    invoke-virtual {v3, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_isMloBothActive:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "the device don\'t support dual wifi, return "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SlaveWifiUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private checkIsVaild()Z
    .locals 1

    .line 348
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->mIsSupportDualWifi:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->mSlaveWifiManager:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getDBSBssid(Lcom/android/wifitrackerlib/WifiEntry;Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10

    .line 389
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getTargetScanResults()Ljava/util/List;

    move-result-object p0

    .line 392
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/high16 v0, -0x80000000

    const-string v1, ""

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    if-eqz p3, :cond_1

    .line 393
    invoke-static {p1}, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->getInstance(Landroid/content/Context;)Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->is24GHz(Landroid/net/wifi/ScanResult;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    if-nez p3, :cond_0

    .line 394
    invoke-static {p1}, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->getInstance(Landroid/content/Context;)Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/wifitrackerlib/SlaveWifiUtilsStub;->is5GHz(Landroid/net/wifi/ScanResult;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 395
    iget-object v7, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const/4 v8, 0x0

    const/16 v9, 0x10

    move-object v4, p2

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 397
    iget-object p0, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    return-object p0

    .line 398
    :cond_3
    iget v3, v2, Landroid/net/wifi/ScanResult;->level:I

    if-le v3, v0, :cond_0

    .line 399
    iget-object v0, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object v1, v0

    move v0, v3

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settingslib/wifi/SlaveWifiUtils;
    .locals 3

    .line 123
    sget-object v0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->mInstance:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    if-nez v0, :cond_2

    .line 124
    const-class v0, Lcom/android/settingslib/wifi/SlaveWifiUtils;

    monitor-enter v0

    .line 125
    :try_start_0
    sget-object v1, Lcom/android/settingslib/wifi/SlaveWifiUtils;->mInstance:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    if-nez v1, :cond_1

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 128
    new-instance v2, Lcom/android/settingslib/wifi/SlaveWifiUtils;

    if-eqz v1, :cond_0

    move-object p0, v1

    :cond_0
    invoke-direct {v2, p0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/settingslib/wifi/SlaveWifiUtils;->mInstance:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    .line 130
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 132
    :cond_2
    :goto_0
    sget-object p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->mInstance:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    return-object p0
.end method

.method private getSlaveServiceName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0

    :try_start_0
    const-string p0, "SERVICE_NAME"

    .line 138
    invoke-virtual {p1, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    .line 139
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 141
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    :goto_0
    return-object p0
.end method


# virtual methods
.method public connectToPrimaryApWithBssid(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)V
    .locals 3

    .line 308
    invoke-direct {p0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->checkIsVaild()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 312
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_connectToPrimaryAp_bssid:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->mSlaveWifiManager:Ljava/lang/Object;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 314
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "method_connectToSlaveAp_bssid Exception:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SlaveWifiUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public connectToSlaveAp(I)V
    .locals 3

    .line 275
    invoke-direct {p0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->checkIsVaild()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 279
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_connectToSlaveAp:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->mSlaveWifiManager:Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 281
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "connectToSlaveAp Exception:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SlaveWifiUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public connectToSlaveAp(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    .line 286
    invoke-direct {p0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->checkIsVaild()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 290
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_connectToSlaveAp_config:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->mSlaveWifiManager:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 292
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "method_connectToSlaveAp_config Exception:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SlaveWifiUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public connectToSlaveApWithBssid(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)V
    .locals 3

    .line 297
    invoke-direct {p0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->checkIsVaild()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 301
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_connectToSlaveAp_bssid:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->mSlaveWifiManager:Ljava/lang/Object;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 303
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "method_connectToSlaveAp_bssid Exception:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SlaveWifiUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public disconnectSlaveWifi()Z
    .locals 3

    .line 206
    invoke-direct {p0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->checkIsVaild()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 209
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_disconnectSlaveWifi:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->mSlaveWifiManager:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnectSlaveWifi Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SlaveWifiUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getHBSBssid(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 6

    .line 408
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTargetScanResults()Ljava/util/List;

    move-result-object p1

    .line 411
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 413
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v4

    iget v5, v3, Landroid/net/wifi/ScanResult;->frequency:I

    .line 412
    invoke-virtual {p0, v4, v5}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->isCombineBandHbsSupport(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 414
    iget v4, v3, Landroid/net/wifi/ScanResult;->level:I

    if-le v4, v0, :cond_0

    .line 415
    iget-object v2, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move v0, v4

    goto :goto_0

    .line 422
    :cond_1
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->isPrimary()Z

    move-result p0

    if-nez p0, :cond_2

    const/16 p0, -0x48

    if-ge v0, p0, :cond_2

    .line 424
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "level = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " < -72"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SlaveWifiUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    return-object v2
.end method

.method public getSlaveDhcpInfo()Landroid/net/DhcpInfo;
    .locals 4

    const-string v0, "SlaveWifiUtils"

    .line 191
    invoke-direct {p0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->checkIsVaild()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 196
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_getSlaveDhcpInfo:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->mSlaveWifiManager:Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/DhcpInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSlaveDhcpInfo Exception:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSlaveDhcpInfo:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public getSlaveWifiCurrentNetwork()Landroid/net/Network;
    .locals 4

    const-string v0, "SlaveWifiUtils"

    .line 176
    invoke-direct {p0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->checkIsVaild()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 181
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_getSlaveWifiCurrentNetwork:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->mSlaveWifiManager:Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Network;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSlaveWifiCurrentNetwork Exception:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSlaveWifiCurrentNetwork:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public getSlaveWifiState()I
    .locals 4

    const-string v0, "SlaveWifiUtils"

    .line 319
    invoke-direct {p0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->checkIsVaild()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    .line 324
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_getSlaveWifiState:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->mSlaveWifiManager:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSlaveWifiState Exception:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSlaveWifiState:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public getWifiSlaveConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 4

    const-string v0, "SlaveWifiUtils"

    .line 161
    invoke-direct {p0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->checkIsVaild()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 166
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_getWifiSlaveConnectionInfo:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->mSlaveWifiManager:Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiSlaveConnectionInfo Exception:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWifiSlaveConnectionInfo:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public is24GHz(Landroid/net/wifi/ScanResult;)Z
    .locals 0

    .line 379
    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiUtils;->is24GHz(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method

.method public is5GHz(Landroid/net/wifi/ScanResult;)Z
    .locals 0

    .line 375
    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiUtils;->is5GHz(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method

.method public is6GHz(Landroid/net/wifi/ScanResult;)Z
    .locals 0

    .line 383
    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiUtils;->is6GHz(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method

.method public isCombineBandHbsSupport(II)Z
    .locals 4

    .line 252
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_isCombineBandHbsSupport:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->mSlaveWifiManager:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 255
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    .line 254
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 257
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "supportHbsDualWifi Exception:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SlaveWifiUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isMloBothActive()Z
    .locals 3

    .line 264
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_isMloBothActive:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->mSlaveWifiManager:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "supportHbsDualWifi Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SlaveWifiUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSlaveWifiEnabled()Z
    .locals 4

    const-string v0, "SlaveWifiUtils"

    .line 334
    invoke-direct {p0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->checkIsVaild()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 337
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 339
    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_isSlaveWifiEnabled:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->mSlaveWifiManager:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSlaveWifiEnabled Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSlaveWifiEnabled:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isUiVisible(Landroid/content/Context;)Z
    .locals 1

    .line 352
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->supportDualWifi()Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 355
    :cond_0
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "Redmi Note 8 Pro"

    .line 356
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return p1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public setWifiSlaveEnabled(Z)Z
    .locals 4

    .line 147
    invoke-direct {p0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->checkIsVaild()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 150
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 152
    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_setWifiSlaveEnabled:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->mSlaveWifiManager:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 154
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWifiSlaveEnabled Exception:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SlaveWifiUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public supportDbsDualWifi()Z
    .locals 3

    .line 231
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_supportDbsDualWifi:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->mSlaveWifiManager:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "supportHbsDualWifi Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SlaveWifiUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public supportDualWifi()Z
    .locals 3

    .line 220
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_supportDualWifi:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->mSlaveWifiManager:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "supportDualWifi Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SlaveWifiUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public supportHbsDualWifi()Z
    .locals 3

    .line 241
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->method_supportHbsDualWifi:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/settingslib/wifi/SlaveWifiUtils;->mSlaveWifiManager:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "supportHbsDualWifi Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SlaveWifiUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
