.class public Lcom/android/settings/MiuiOptionUtils$Wifi;
.super Ljava/lang/Object;
.source "MiuiOptionUtils.java"


# direct methods
.method public static touchHotspotState(Landroid/content/Context;I)I
    .locals 3

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "wifi"

    .line 103
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v1, "connectivity"

    .line 104
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 105
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    if-ne p1, v0, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    .line 110
    new-instance v0, Lcom/android/settings/MiuiOptionUtils$Wifi$1;

    invoke-direct {v0}, Lcom/android/settings/MiuiOptionUtils$Wifi$1;-><init>()V

    invoke-virtual {p0, v2, v2, v0}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    goto :goto_1

    .line 122
    :cond_2
    invoke-virtual {p0, v2}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    :goto_1
    return p1

    :cond_3
    :goto_2
    return v0
.end method

.method public static touchWLANState(Landroid/content/Context;I)I
    .locals 5

    const-string/jumbo v0, "wifi"

    .line 68
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 70
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    return v2

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eq p1, v2, :cond_3

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_2

    .line 85
    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_1

    .line 87
    :cond_2
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :goto_1
    return p1

    :cond_3
    return v0
.end method
