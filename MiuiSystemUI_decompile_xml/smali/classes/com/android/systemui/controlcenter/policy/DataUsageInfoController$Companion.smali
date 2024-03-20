.class public abstract Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$Companion;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static getTrafficMessage(ILjava/util/Map;Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    return-object v0

    .line 5
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p0

    .line 9
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;

    .line 14
    if-nez p0, :cond_1

    .line 16
    return-object v0

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->trafficValue:Ljava/lang/String;

    .line 19
    if-nez p1, :cond_2

    .line 21
    return-object v0

    .line 23
    :cond_2
    const/4 v1, 0x2

    .line 24
    const/4 v2, 0x1

    .line 25
    iget v3, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->trafficUnit:I

    .line 26
    if-eqz v3, :cond_6

    .line 28
    if-eq v3, v2, :cond_5

    .line 30
    if-eq v3, v1, :cond_4

    .line 32
    const/4 v4, 0x3

    .line 34
    if-eq v3, v4, :cond_3

    .line 35
    move-object v3, v0

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    const v3, 0x7f130bac    # @string/traffic_unit_gigabyte 'GB'

    .line 39
    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 45
    goto :goto_0

    .line 46
    :cond_4
    const v3, 0x7f130bae    # @string/traffic_unit_megabyte 'MB'

    .line 47
    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 50
    move-result-object v3

    .line 53
    goto :goto_0

    .line 54
    :cond_5
    const v3, 0x7f130bad    # @string/traffic_unit_kilobyte 'KB'

    .line 55
    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 58
    move-result-object v3

    .line 61
    goto :goto_0

    .line 62
    :cond_6
    const v3, 0x7f130bab    # @string/traffic_unit_byte 'B'

    .line 63
    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 66
    move-result-object v3

    .line 69
    :goto_0
    if-nez v3, :cond_7

    .line 70
    return-object v0

    .line 72
    :cond_7
    iget p0, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->trafficType:I

    .line 73
    if-eqz p0, :cond_a

    .line 75
    if-eq p0, v2, :cond_9

    .line 77
    if-eq p0, v1, :cond_8

    .line 79
    goto :goto_1

    .line 81
    :cond_8
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 82
    move-result-object p0

    .line 85
    filled-new-array {p1, v3}, [Ljava/lang/Object;

    .line 86
    move-result-object p1

    .line 89
    const p2, 0x7f130950    # @string/qs_traffic_message_type_used 'Used %1$s %2$s'

    .line 90
    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 96
    goto :goto_1

    .line 97
    :cond_9
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 98
    move-result-object p0

    .line 101
    filled-new-array {p1, v3}, [Ljava/lang/Object;

    .line 102
    move-result-object p1

    .line 105
    const p2, 0x7f13094f    # @string/qs_traffic_message_type_remain '%1$s %2$s remaining'

    .line 106
    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 112
    goto :goto_1

    .line 113
    :cond_a
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 114
    move-result-object p0

    .line 117
    filled-new-array {p1, v3}, [Ljava/lang/Object;

    .line 118
    move-result-object p1

    .line 121
    const p2, 0x7f13094e    # @string/qs_traffic_message_type_exceed '%1$s %2$s over limit'

    .line 122
    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    move-result-object v0

    .line 128
    :goto_1
    return-object v0
    .line 129
.end method
