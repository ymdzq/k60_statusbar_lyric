.class public final Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/TelefonicaOperator;
.super Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;
.source "TelefonicaOperator.java"


# instance fields
.field private cm:Landroid/net/ConnectivityManager;

.field private wm:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 15
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;-><init>(Landroid/content/Context;)V

    const-string v0, "connectivity"

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/TelefonicaOperator;->cm:Landroid/net/ConnectivityManager;

    .line 17
    iget-object p1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/BaseOperator;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/TelefonicaOperator;->wm:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public stopTethering(I)V
    .locals 2

    const-string v0, "BaseOperator"

    const-string v1, "ready to stop Tethering!"

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 23
    iget-object p1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/TelefonicaOperator;->wm:Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/TelefonicaOperator;->cm:Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    :cond_0
    return-void
.end method
