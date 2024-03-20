.class public interface abstract Lcom/android/wifitrackerlib/ISlaveWifiUtils;
.super Ljava/lang/Object;
.source "ISlaveWifiUtils.java"


# virtual methods
.method public abstract connectToPrimaryApWithBssid(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)V
.end method

.method public abstract connectToSlaveAp(I)V
.end method

.method public abstract connectToSlaveAp(Landroid/net/wifi/WifiConfiguration;)V
.end method

.method public abstract connectToSlaveApWithBssid(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)V
.end method

.method public abstract getSlaveWifiCurrentNetwork()Landroid/net/Network;
.end method

.method public abstract getWifiSlaveConnectionInfo()Landroid/net/wifi/WifiInfo;
.end method

.method public abstract is24GHz(Landroid/net/wifi/ScanResult;)Z
.end method

.method public abstract is5GHz(Landroid/net/wifi/ScanResult;)Z
.end method

.method public abstract is6GHz(Landroid/net/wifi/ScanResult;)Z
.end method

.method public abstract isMloBothActive()Z
.end method

.method public abstract isSlaveWifiEnabled()Z
.end method
