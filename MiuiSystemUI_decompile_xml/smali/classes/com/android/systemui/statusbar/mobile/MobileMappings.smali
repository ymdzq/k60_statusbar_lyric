.class public abstract Lcom/android/systemui/statusbar/mobile/MobileMappings;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final SUPPORT_CA:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "support_ca"

    .line 2
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    move-result v0

    .line 9
    sput-boolean v0, Lcom/android/systemui/statusbar/mobile/MobileMappings;->SUPPORT_CA:Z

    .line 10
    return-void
    .line 12
.end method

.method public static getIconKey(Landroid/telephony/TelephonyDisplayInfo;Landroid/telephony/ServiceState;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    .line 10
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/miui/utils/configs/MiuiConfigs;->IS_MEDIATEK:Z

    .line 16
    const/4 v2, 0x1

    .line 18
    if-eqz v1, :cond_5

    .line 19
    invoke-virtual {p0}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    .line 21
    move-result p0

    .line 24
    const/4 v1, 0x5

    .line 25
    if-eq p0, v1, :cond_4

    .line 26
    const/4 v1, 0x3

    .line 28
    if-ne p0, v1, :cond_2

    .line 29
    goto :goto_1

    .line 31
    :cond_2
    const/4 v1, 0x2

    .line 32
    if-eq p0, v1, :cond_3

    .line 33
    if-ne p0, v2, :cond_5

    .line 35
    :cond_3
    const/16 v1, 0x14

    .line 37
    if-eq v0, v1, :cond_5

    .line 39
    invoke-static {p0}, Lcom/android/systemui/statusbar/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_4
    :goto_1
    invoke-static {p0}, Lcom/android/systemui/statusbar/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_5
    const/16 p0, 0xd

    .line 51
    const/16 v1, 0x13

    .line 53
    if-ne v0, p0, :cond_7

    .line 55
    if-eqz p1, :cond_7

    .line 57
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    .line 59
    move-result p0

    .line 62
    if-nez p0, :cond_6

    .line 63
    sget-boolean p0, Lcom/android/systemui/statusbar/mobile/MobileMappings;->SUPPORT_CA:Z

    .line 65
    if-eqz p0, :cond_7

    .line 67
    sget-boolean p0, Lmiui/os/Build;->IS_CT_CUSTOMIZATION_TEST:Z

    .line 69
    if-eqz p0, :cond_7

    .line 71
    :cond_6
    move v0, v1

    .line 73
    :cond_7
    if-ne v0, v1, :cond_8

    .line 74
    invoke-static {v2}, Lcom/android/systemui/statusbar/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 79
    return-object p0

    .line 80
    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 84
    return-object p0
    .line 85
.end method

.method public static mapIconSets()Ljava/util/Map;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    const/4 v1, 0x5

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 8
    move-result-object v2

    .line 11
    sget-object v3, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 12
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const/4 v2, 0x6

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const/16 v2, 0xc

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const/16 v2, 0xe

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 39
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const/4 v2, 0x3

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 44
    move-result-object v4

    .line 47
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const/16 v4, 0x11

    .line 51
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 53
    move-result-object v4

    .line 56
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const/4 v3, 0x0

    .line 60
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 64
    sget-object v4, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 65
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const/4 v3, 0x2

    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 71
    move-result-object v4

    .line 74
    sget-object v5, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->E:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 75
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const/4 v4, 0x4

    .line 80
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 81
    move-result-object v4

    .line 84
    sget-object v5, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 85
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const/4 v4, 0x7

    .line 90
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 91
    move-result-object v4

    .line 94
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const/16 v4, 0x8

    .line 98
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 100
    move-result-object v4

    .line 103
    sget-object v5, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->H:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 104
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const/16 v4, 0x9

    .line 109
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 111
    move-result-object v4

    .line 114
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const/16 v4, 0xa

    .line 118
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 120
    move-result-object v4

    .line 123
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const/16 v4, 0xf

    .line 127
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 129
    move-result-object v4

    .line 132
    sget-object v5, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 133
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const/16 v4, 0xd

    .line 138
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 140
    move-result-object v4

    .line 143
    sget-object v5, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 144
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const/4 v4, 0x1

    .line 149
    invoke-static {v4}, Lcom/android/systemui/statusbar/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    .line 150
    move-result-object v4

    .line 153
    sget-object v5, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 154
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const/16 v4, 0x12

    .line 159
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 161
    move-result-object v4

    .line 164
    sget-object v5, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->WFC:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 165
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {v3}, Lcom/android/systemui/statusbar/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    .line 170
    move-result-object v3

    .line 173
    sget-object v4, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 174
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-static {v2}, Lcom/android/systemui/statusbar/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    .line 179
    move-result-object v2

    .line 182
    sget-object v3, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->NR_5G:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 183
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-static {v1}, Lcom/android/systemui/statusbar/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    .line 188
    move-result-object v1

    .line 191
    sget-object v2, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->NR_5G_PLUS:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 192
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const/16 v1, 0x14

    .line 197
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 199
    move-result-object v1

    .line 202
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    return-object v0
    .line 206
.end method

.method public static toDisplayIconKey(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0xd

    .line 3
    if-eq p0, v0, :cond_3

    .line 5
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_2

    .line 8
    const/4 v0, 0x3

    .line 10
    const/16 v1, 0x14

    .line 11
    if-eq p0, v0, :cond_1

    .line 13
    const/4 v0, 0x5

    .line 15
    if-eq p0, v0, :cond_0

    .line 16
    const-string/jumbo p0, "unsupported"

    .line 18
    return-object p0

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v0, "_Plus"

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v0, "_CA_Plus"

    .line 61
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 71
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 79
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v0, "_CA"

    .line 83
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object p0

    .line 91
    return-object p0
    .line 92
.end method
