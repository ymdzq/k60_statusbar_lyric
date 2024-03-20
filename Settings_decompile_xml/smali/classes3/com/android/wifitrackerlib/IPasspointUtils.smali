.class public interface abstract Lcom/android/wifitrackerlib/IPasspointUtils;
.super Ljava/lang/Object;
.source "IPasspointUtils.java"


# virtual methods
.method public bindPasspointKeyService(Landroid/content/Context;)V
    .locals 0

    .line 0
    return-void
.end method

.method public getPasspointR1WifiEntries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isPasspointR1()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isPasspointR1Supported()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onNetworkLost(Landroid/net/Network;)V
    .locals 0

    .line 0
    return-void
.end method

.method public updatePasspointR1Entry(Ljava/util/List;Lcom/android/wifitrackerlib/PasspointWifiEntry;Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/WifiManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Lcom/android/wifitrackerlib/PasspointWifiEntry;",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Landroid/net/wifi/WifiManager;",
            ")V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public updatePasspointR1EntryCache(Ljava/util/List;Ljava/util/Map;Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/WifiManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/wifitrackerlib/PasspointWifiEntry;",
            ">;",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Landroid/net/wifi/WifiManager;",
            ")V"
        }
    .end annotation

    .line 0
    return-void
.end method
