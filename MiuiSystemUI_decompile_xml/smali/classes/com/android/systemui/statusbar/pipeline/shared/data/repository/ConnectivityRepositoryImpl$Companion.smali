.class public final Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$Companion;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static final access$toSlotSet(Ljava/util/List;Lcom/android/systemui/statusbar/pipeline/shared/data/model/ConnectivitySlots;)Ljava/util/Set;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 20
    move-object v2, v1

    .line 21
    check-cast v2, Ljava/lang/String;

    .line 22
    invoke-static {v2}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v2

    .line 27
    xor-int/lit8 v2, v2, 0x1

    .line 28
    if-eqz v2, :cond_0

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    goto :goto_0

    .line 35
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    .line 36
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object v0

    .line 44
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v1

    .line 48
    if-eqz v1, :cond_3

    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 54
    check-cast v1, Ljava/lang/String;

    .line 55
    iget-object v2, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ConnectivitySlots;->slotByName:Ljava/util/Map;

    .line 57
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    move-result-object v1

    .line 62
    check-cast v1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ConnectivitySlot;

    .line 63
    if-eqz v1, :cond_2

    .line 65
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    goto :goto_1

    .line 70
    :cond_3
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 71
    move-result-object p0

    .line 74
    return-object p0
    .line 75
.end method

.method public static synthetic getDEFAULT_HIDDEN_ICONS_RESOURCE$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getHIDDEN_ICONS_TUNABLE_KEY$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static getMainOrUnderlyingWifiInfo(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager;)Landroid/net/wifi/WifiInfo;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 3
    move-result v1

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v1, :cond_1

    .line 8
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 10
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    move v1, v0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    move v1, v2

    .line 19
    :goto_1
    const/4 v3, 0x0

    .line 20
    if-nez v1, :cond_2

    .line 21
    goto :goto_2

    .line 23
    :cond_2
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    .line 24
    move-result-object v1

    .line 27
    instance-of v4, v1, Landroid/net/vcn/VcnTransportInfo;

    .line 28
    if-eqz v4, :cond_3

    .line 30
    check-cast v1, Landroid/net/vcn/VcnTransportInfo;

    .line 32
    invoke-virtual {v1}, Landroid/net/vcn/VcnTransportInfo;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    .line 34
    move-result-object v1

    .line 37
    goto :goto_3

    .line 38
    :cond_3
    instance-of v4, v1, Landroid/net/wifi/WifiInfo;

    .line 39
    if-eqz v4, :cond_4

    .line 41
    check-cast v1, Landroid/net/wifi/WifiInfo;

    .line 43
    goto :goto_3

    .line 45
    :cond_4
    :goto_2
    move-object v1, v3

    .line 46
    :goto_3
    if-eqz v1, :cond_5

    .line 47
    return-object v1

    .line 49
    :cond_5
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 50
    move-result v4

    .line 53
    if-nez v4, :cond_6

    .line 54
    return-object v1

    .line 56
    :cond_6
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getUnderlyingNetworks()Ljava/util/List;

    .line 57
    move-result-object p0

    .line 60
    if-eqz p0, :cond_d

    .line 61
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object p0

    .line 66
    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result v1

    .line 70
    if-eqz v1, :cond_d

    .line 71
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object v1

    .line 76
    check-cast v1, Landroid/net/Network;

    .line 77
    invoke-virtual {p1, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 79
    move-result-object v1

    .line 82
    if-eqz v1, :cond_c

    .line 83
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 85
    move-result v4

    .line 88
    if-nez v4, :cond_9

    .line 89
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 91
    move-result v4

    .line 94
    if-eqz v4, :cond_8

    .line 95
    goto :goto_4

    .line 97
    :cond_8
    move v4, v0

    .line 98
    goto :goto_5

    .line 99
    :cond_9
    :goto_4
    move v4, v2

    .line 100
    :goto_5
    if-nez v4, :cond_a

    .line 101
    goto :goto_6

    .line 103
    :cond_a
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    .line 104
    move-result-object v1

    .line 107
    instance-of v4, v1, Landroid/net/vcn/VcnTransportInfo;

    .line 108
    if-eqz v4, :cond_b

    .line 110
    check-cast v1, Landroid/net/vcn/VcnTransportInfo;

    .line 112
    invoke-virtual {v1}, Landroid/net/vcn/VcnTransportInfo;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    .line 114
    move-result-object v1

    .line 117
    goto :goto_7

    .line 118
    :cond_b
    instance-of v4, v1, Landroid/net/wifi/WifiInfo;

    .line 119
    if-eqz v4, :cond_c

    .line 121
    check-cast v1, Landroid/net/wifi/WifiInfo;

    .line 123
    goto :goto_7

    .line 125
    :cond_c
    :goto_6
    move-object v1, v3

    .line 126
    :goto_7
    if-eqz v1, :cond_7

    .line 127
    move-object v3, v1

    .line 129
    :cond_d
    return-object v3
    .line 130
.end method
