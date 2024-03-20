.class public Lcom/android/wifitrackerlib/CrossSubnetUtils;
.super Ljava/lang/Object;
.source "CrossSubnetUtils.java"


# static fields
.field private static mIsValidated:Z

.field private static mNetwork:Landroid/net/Network;

.field private static mWifiInfo:Landroid/net/wifi/WifiInfo;


# direct methods
.method public static clear(Landroid/net/Network;)V
    .locals 1

    .line 53
    sget-object v0, Lcom/android/wifitrackerlib/CrossSubnetUtils;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Network;->getNetId()I

    move-result v0

    invoke-virtual {p0}, Landroid/net/Network;->getNetId()I

    move-result p0

    if-ne v0, p0, :cond_1

    :cond_0
    const/4 p0, 0x0

    .line 54
    sput-boolean p0, Lcom/android/wifitrackerlib/CrossSubnetUtils;->mIsValidated:Z

    const/4 p0, 0x0

    .line 55
    sput-object p0, Lcom/android/wifitrackerlib/CrossSubnetUtils;->mNetwork:Landroid/net/Network;

    .line 56
    sput-object p0, Lcom/android/wifitrackerlib/CrossSubnetUtils;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    :cond_1
    return-void
.end method

.method public static isWifiNetwork(Landroid/net/NetworkCapabilities;)Z
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 61
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/wifitrackerlib/Utils;->getWifiInfo(Landroid/net/NetworkCapabilities;)Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static replaceNetworkCapabilitiesIfNeeded(Landroid/net/Network;Landroid/net/NetworkCapabilities;Z)Landroid/net/NetworkCapabilities;
    .locals 4

    .line 24
    invoke-static {p1}, Lcom/android/wifitrackerlib/CrossSubnetUtils;->isWifiNetwork(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 27
    :cond_0
    sget-object v0, Lcom/android/wifitrackerlib/CrossSubnetUtils;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 28
    sget-boolean v1, Lcom/android/wifitrackerlib/CrossSubnetUtils;->mIsValidated:Z

    .line 29
    sget-object v2, Lcom/android/wifitrackerlib/CrossSubnetUtils;->mNetwork:Landroid/net/Network;

    .line 30
    invoke-static {p1}, Lcom/android/wifitrackerlib/Utils;->getWifiInfo(Landroid/net/NetworkCapabilities;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    sput-object v3, Lcom/android/wifitrackerlib/CrossSubnetUtils;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 31
    sput-object p0, Lcom/android/wifitrackerlib/CrossSubnetUtils;->mNetwork:Landroid/net/Network;

    const/16 p0, 0x10

    .line 32
    invoke-virtual {p1, p0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    sput-boolean v3, Lcom/android/wifitrackerlib/CrossSubnetUtils;->mIsValidated:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 34
    sget-object v3, Lcom/android/wifitrackerlib/CrossSubnetUtils;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/wifitrackerlib/CrossSubnetUtils;->mNetwork:Landroid/net/Network;

    if-eqz v3, :cond_1

    .line 36
    invoke-virtual {v3}, Landroid/net/Network;->getNetId()I

    move-result v3

    invoke-virtual {v2}, Landroid/net/Network;->getNetId()I

    move-result v2

    if-eq v3, v2, :cond_1

    .line 37
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    sget-object v2, Lcom/android/wifitrackerlib/CrossSubnetUtils;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v2, "CrossSubnetUtils"

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const-string v0, "May be currently ROAMING and has been VALIDATED before."

    .line 40
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 42
    invoke-virtual {v0, p0}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p0

    .line 43
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object p1

    .line 45
    :cond_2
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-boolean p0, Lcom/android/wifitrackerlib/CrossSubnetUtils;->mIsValidated:Z

    if-eq p0, v1, :cond_4

    .line 46
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_3

    const-string/jumbo p2, "secondary"

    goto :goto_1

    :cond_3
    const-string p2, "primary"

    :goto_1
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Wifi validated old : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " current: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lcom/android/wifitrackerlib/CrossSubnetUtils;->mIsValidated:Z

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object p1
.end method
