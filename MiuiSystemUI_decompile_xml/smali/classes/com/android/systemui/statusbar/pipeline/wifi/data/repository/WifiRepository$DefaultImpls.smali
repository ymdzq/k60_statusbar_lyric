.class public abstract Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository$DefaultImpls;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static isWifiConnectedWithValidSsid(Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;)Z
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;->getWifiNetwork()Lkotlinx/coroutines/flow/StateFlow;

    .line 2
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel;

    .line 10
    instance-of v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    .line 12
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    check-cast p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    .line 17
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->ssid:Ljava/lang/String;

    .line 19
    const/4 v0, 0x1

    .line 21
    if-eqz p0, :cond_0

    .line 22
    const-string v2, "<unknown ssid>"

    .line 24
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result p0

    .line 29
    if-nez p0, :cond_0

    .line 30
    move p0, v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move p0, v1

    .line 34
    :goto_0
    if-eqz p0, :cond_1

    .line 35
    move v1, v0

    .line 37
    :cond_1
    return v1
    .line 38
.end method
