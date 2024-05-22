.class public abstract Lcom/android/systemui/statusbar/mobile/MobileUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static isInService(Landroid/telephony/ServiceState;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    .line 6
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    .line 10
    move-result v2

    .line 13
    const/4 v3, 0x1

    .line 14
    const/4 v4, 0x2

    .line 15
    if-eq v1, v3, :cond_1

    .line 16
    if-ne v1, v4, :cond_9

    .line 18
    :cond_1
    if-nez v2, :cond_9

    .line 20
    invoke-virtual {p0, v4, v4}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    .line 22
    move-result-object v2

    .line 25
    const/4 v5, 0x5

    .line 26
    if-nez v2, :cond_2

    .line 27
    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    .line 30
    move-result v6

    .line 33
    if-eq v6, v3, :cond_4

    .line 34
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    .line 36
    move-result v2

    .line 39
    if-ne v2, v5, :cond_3

    .line 40
    goto :goto_1

    .line 42
    :cond_3
    :goto_0
    move v2, v0

    .line 43
    goto :goto_2

    .line 44
    :cond_4
    :goto_1
    move v2, v3

    .line 45
    :goto_2
    xor-int/2addr v2, v3

    .line 46
    if-nez v2, :cond_8

    .line 47
    invoke-virtual {p0, v4, v3}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    .line 49
    move-result-object p0

    .line 52
    if-nez p0, :cond_5

    .line 53
    goto :goto_3

    .line 55
    :cond_5
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    .line 56
    move-result v2

    .line 59
    if-eq v2, v3, :cond_7

    .line 60
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    .line 62
    move-result p0

    .line 65
    if-ne p0, v5, :cond_6

    .line 66
    goto :goto_4

    .line 68
    :cond_6
    :goto_3
    move p0, v0

    .line 69
    goto :goto_5

    .line 70
    :cond_7
    :goto_4
    move p0, v3

    .line 71
    :goto_5
    if-eqz p0, :cond_9

    .line 72
    :cond_8
    move v1, v0

    .line 74
    :cond_9
    const/4 p0, 0x3

    .line 75
    if-eq v1, p0, :cond_a

    .line 76
    if-eq v1, v3, :cond_a

    .line 78
    if-eq v1, v4, :cond_a

    .line 80
    move v0, v3

    .line 82
    :cond_a
    return v0
    .line 83
.end method
