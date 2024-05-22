.class public abstract Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$Companion;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static getTetherStateString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 5
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    const-string p0, "AVAILABLE"

    .line 12
    goto :goto_5

    .line 14
    :cond_1
    :goto_0
    if-nez p0, :cond_2

    .line 15
    goto :goto_1

    .line 17
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 18
    move-result v0

    .line 21
    const/4 v1, 0x2

    .line 22
    if-ne v0, v1, :cond_3

    .line 23
    const-string p0, "CONNECTING"

    .line 25
    goto :goto_5

    .line 27
    :cond_3
    :goto_1
    if-nez p0, :cond_4

    .line 28
    goto :goto_2

    .line 30
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 31
    move-result v0

    .line 34
    const/4 v1, 0x3

    .line 35
    if-ne v0, v1, :cond_5

    .line 36
    const-string p0, "TETHERED_CELLUAR"

    .line 38
    goto :goto_5

    .line 40
    :cond_5
    :goto_2
    if-nez p0, :cond_6

    .line 41
    goto :goto_3

    .line 43
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 44
    move-result v0

    .line 47
    const/4 v1, 0x4

    .line 48
    if-ne v0, v1, :cond_7

    .line 49
    const-string p0, "TETHERED_WIFI"

    .line 51
    goto :goto_5

    .line 53
    :cond_7
    :goto_3
    if-nez p0, :cond_8

    .line 54
    goto :goto_4

    .line 56
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 57
    move-result p0

    .line 60
    const/4 v0, 0x5

    .line 61
    if-ne p0, v0, :cond_9

    .line 62
    const-string p0, "CONNECT_ERROR"

    .line 64
    goto :goto_5

    .line 66
    :cond_9
    :goto_4
    const-string p0, "UNAVAILABLE"

    .line 67
    :goto_5
    return-object p0
    .line 69
.end method
