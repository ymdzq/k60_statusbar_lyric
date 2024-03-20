.class public Lcom/android/settings/DeviceUtils;
.super Lcom/android/settings/msim/MSimUtils;
.source "DeviceUtils.java"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/settings/msim/MSimUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public getHotSpotMacBlackSet(Landroid/content/Context;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    invoke-static {p1}, Landroid/provider/MiuiSettings$System;->getHotSpotMacBlackSet(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 35
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0
.end method

.method public getTetherDeviceChangedAction()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, ""

    return-object p0
.end method

.method public getWifiStaSapConcurrency(Landroid/content/Context;)Z
    .locals 0

    const-string/jumbo p0, "wifi"

    .line 100
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    const/4 p0, 0x1

    return p0
.end method

.method public setHotSpotMacBlackSet(Landroid/content/Context;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 136
    invoke-static {p1, p2}, Landroid/provider/MiuiSettings$System;->setHotSpotMacBlackSet(Landroid/content/Context;Ljava/util/Set;)V

    return-void
.end method
