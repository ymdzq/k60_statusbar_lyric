.class public Lcom/android/settings/wifi/WifiTrafficUtils;
.super Ljava/lang/Object;
.source "WifiTrafficUtils.java"


# direct methods
.method public static isTrafficPrioritySupport()Z
    .locals 1

    .line 52
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiAssistFeatureSupport;->isTrafficPriorityAvailable()Z

    move-result v0

    return v0
.end method
