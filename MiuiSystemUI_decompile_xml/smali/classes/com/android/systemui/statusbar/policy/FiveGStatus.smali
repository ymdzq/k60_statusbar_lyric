.class public abstract Lcom/android/systemui/statusbar/policy/FiveGStatus;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static isNr5G(Landroid/telephony/ServiceState;Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_MEDIATEK:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    if-nez p0, :cond_0

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrState()I

    .line 10
    move-result p0

    .line 13
    const/4 v0, 0x3

    .line 14
    const/4 v2, 0x1

    .line 15
    if-ne p0, v0, :cond_1

    .line 16
    return v2

    .line 18
    :cond_1
    const/4 v0, 0x2

    .line 19
    if-ne p0, v0, :cond_3

    .line 20
    const-string p0, "26001"

    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result p0

    .line 27
    if-nez p0, :cond_3

    .line 28
    const-string p0, "26012"

    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result p0

    .line 35
    if-nez p0, :cond_3

    .line 36
    const-string p0, "26015"

    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result p0

    .line 43
    if-nez p0, :cond_3

    .line 44
    const-string p0, "26017"

    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result p0

    .line 51
    if-eqz p0, :cond_2

    .line 52
    goto :goto_0

    .line 54
    :cond_2
    return v2

    .line 55
    :cond_3
    :goto_0
    return v1
    .line 56
.end method
