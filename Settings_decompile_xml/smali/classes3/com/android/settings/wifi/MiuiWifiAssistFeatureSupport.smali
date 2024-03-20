.class public Lcom/android/settings/wifi/MiuiWifiAssistFeatureSupport;
.super Ljava/lang/Object;
.source "MiuiWifiAssistFeatureSupport.java"


# static fields
.field private static final IS_INTERNATIONAL_BUILD:Z

.field private static final IS_JP_KDDI_VERSION:Z

.field private static final IS_STABLE_VERSION:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    sput-boolean v0, Lcom/android/settings/wifi/MiuiWifiAssistFeatureSupport;->IS_INTERNATIONAL_BUILD:Z

    .line 23
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    sput-boolean v0, Lcom/android/settings/wifi/MiuiWifiAssistFeatureSupport;->IS_STABLE_VERSION:Z

    .line 24
    sget-boolean v0, Lcom/android/settings/RegionUtils;->IS_JP_KDDI:Z

    sput-boolean v0, Lcom/android/settings/wifi/MiuiWifiAssistFeatureSupport;->IS_JP_KDDI_VERSION:Z

    return-void
.end method

.method public static getWifiWakeupStatus()I
    .locals 1

    .line 44
    sget-boolean v0, Lcom/android/settings/wifi/MiuiWifiAssistFeatureSupport;->IS_JP_KDDI_VERSION:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method public static isAmlSlaveWifiSupported(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "AmlSlaveWifiService"

    .line 69
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/AmlSlaveWifiManager;

    const-string v1, "MiuiWifiService"

    .line 70
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/MiuiWifiManager;

    if-nez p0, :cond_0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Landroid/net/wifi/AmlSlaveWifiManager;->isSupportDualWifi()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isDualSimSupported(Landroid/content/Context;)Z
    .locals 1

    .line 64
    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiAssistFeatureSupport;->isLinkTurbAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/wifi/linkturbo/LinkTurboUtils;->shouldHideSmartDualSimButton(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDualWifiSupported(Landroid/content/Context;)Z
    .locals 1

    .line 59
    invoke-static {p0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/wifi/SlaveWifiUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->isUiVisible(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isLinkTurbAvailable(Landroid/content/Context;)Z
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/android/settings/wifi/linkturbo/LinkTurboClient;->isLinkTurboSupported(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isTrafficPriorityAvailable()Z
    .locals 2

    const-string/jumbo v0, "sys.net.support.netprio"

    const/4 v1, 0x0

    .line 38
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isWifiAssistAvailable(Landroid/content/Context;)Z
    .locals 5

    .line 81
    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiAssistFeatureSupport;->isWifiAssistantAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 84
    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiAssistFeatureSupport;->isDualWifiSupported(Landroid/content/Context;)Z

    move-result v1

    .line 85
    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiAssistFeatureSupport;->isDualSimSupported(Landroid/content/Context;)Z

    .line 86
    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiAssistFeatureSupport;->isLinkTurbAvailable(Landroid/content/Context;)Z

    move-result v2

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Judge whether the Wifi Assist Fragment is available { CanWifiAssistant : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , isDualWifiSupported : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , linkTurbAvailable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " }"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MiuiWifiAssistFeatureSupport"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    .line 92
    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiAssistFeatureSupport;->isAmlSlaveWifiSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Wifi Assist Function is null, So the fragment should be hidden."

    .line 97
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const-string p0, "Wifi Assist Fragment is available!"

    .line 93
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public static isWifiAssistantAvailable(Landroid/content/Context;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 30
    invoke-static {p0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    sget-boolean p0, Lcom/android/settings/wifi/MiuiWifiAssistFeatureSupport;->IS_INTERNATIONAL_BUILD:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isWifiWakeupAvailable()Z
    .locals 1

    .line 49
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiAssistFeatureSupport;->getWifiWakeupStatus()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
