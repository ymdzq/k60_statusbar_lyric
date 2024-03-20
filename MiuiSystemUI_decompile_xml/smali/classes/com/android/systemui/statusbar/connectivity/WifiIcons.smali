.class public abstract Lcom/android/systemui/statusbar/connectivity/WifiIcons;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final QS_WIFI_6_FULL_ICONS:[I

.field public static final QS_WIFI_7_FULL_ICONS:[I

.field public static final QS_WIFI_FULL_ICONS:[I

.field public static final QS_WIFI_SIGNAL_STRENGTH:[[I

.field public static final WIFI_FULL_ICONS:[I

.field public static final WIFI_HOTSPOT_ICONS:[I

.field public static final WIFI_MLO_ICONS:[I

.field public static final WIFI_NO_INTERNET_ICONS:[I

.field public static final WIFI_SIGNAL_STRENGTH:[[I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    const v0, 0x7f081928    # @drawable/stat_sys_wifi_signal_3 'res/drawable/stat_sys_wifi_signal_3.xml'

    .line 2
    const v1, 0x7f08192b    # @drawable/stat_sys_wifi_signal_4 'res/drawable/stat_sys_wifi_signal_4.xml'

    .line 5
    const v2, 0x7f08191f    # @drawable/stat_sys_wifi_signal_0 'res/drawable/stat_sys_wifi_signal_0.xml'

    .line 8
    const v3, 0x7f081922    # @drawable/stat_sys_wifi_signal_1 'res/drawable/stat_sys_wifi_signal_1.xml'

    .line 11
    const v4, 0x7f081925    # @drawable/stat_sys_wifi_signal_2 'res/drawable/stat_sys_wifi_signal_2.xml'

    .line 14
    filled-new-array {v2, v3, v4, v0, v1}, [I

    .line 17
    move-result-object v0

    .line 20
    sput-object v0, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->WIFI_FULL_ICONS:[I

    .line 21
    const v1, 0x7f08183d    # @drawable/stat_sys_hotspot_signal_3 'res/drawable/stat_sys_hotspot_signal_3.xml'

    .line 23
    const v2, 0x7f081840    # @drawable/stat_sys_hotspot_signal_4 'res/drawable/stat_sys_hotspot_signal_4.xml'

    .line 26
    const v3, 0x7f081834    # @drawable/stat_sys_hotspot_signal_0 'res/drawable/stat_sys_hotspot_signal_0.xml'

    .line 29
    const v4, 0x7f081837    # @drawable/stat_sys_hotspot_signal_1 'res/drawable/stat_sys_hotspot_signal_1.xml'

    .line 32
    const v5, 0x7f08183a    # @drawable/stat_sys_hotspot_signal_2 'res/drawable/stat_sys_hotspot_signal_2.xml'

    .line 35
    filled-new-array {v3, v4, v5, v1, v2}, [I

    .line 38
    move-result-object v1

    .line 41
    sput-object v1, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->WIFI_HOTSPOT_ICONS:[I

    .line 42
    const v1, 0x7f081748    # @drawable/qs_detail_wifi_signal_3 'res/drawable/qs_detail_wifi_signal_3.xml'

    .line 44
    const v2, 0x7f081749    # @drawable/qs_detail_wifi_signal_4 'res/drawable/qs_detail_wifi_signal_4.xml'

    .line 47
    const v3, 0x7f081745    # @drawable/qs_detail_wifi_signal_0 'res/drawable/qs_detail_wifi_signal_0.xml'

    .line 50
    const v4, 0x7f081746    # @drawable/qs_detail_wifi_signal_1 'res/drawable/qs_detail_wifi_signal_1.xml'

    .line 53
    const v5, 0x7f081747    # @drawable/qs_detail_wifi_signal_2 'res/drawable/qs_detail_wifi_signal_2.xml'

    .line 56
    filled-new-array {v3, v4, v5, v1, v2}, [I

    .line 59
    move-result-object v1

    .line 62
    sput-object v1, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->QS_WIFI_FULL_ICONS:[I

    .line 63
    const v1, 0x7f08173d    # @drawable/qs_detail_wifi_6_signal_3 'res/drawable/qs_detail_wifi_6_signal_3.xml'

    .line 65
    const v2, 0x7f08173e    # @drawable/qs_detail_wifi_6_signal_4 'res/drawable/qs_detail_wifi_6_signal_4.xml'

    .line 68
    const v3, 0x7f08173a    # @drawable/qs_detail_wifi_6_signal_0 'res/drawable/qs_detail_wifi_6_signal_0.xml'

    .line 71
    const v4, 0x7f08173b    # @drawable/qs_detail_wifi_6_signal_1 'res/drawable/qs_detail_wifi_6_signal_1.xml'

    .line 74
    const v5, 0x7f08173c    # @drawable/qs_detail_wifi_6_signal_2 'res/drawable/qs_detail_wifi_6_signal_2.xml'

    .line 77
    filled-new-array {v3, v4, v5, v1, v2}, [I

    .line 80
    move-result-object v1

    .line 83
    sput-object v1, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->QS_WIFI_6_FULL_ICONS:[I

    .line 84
    const v1, 0x7f081742    # @drawable/qs_detail_wifi_7_signal_3 'res/drawable/qs_detail_wifi_7_signal_3.xml'

    .line 86
    const v2, 0x7f081743    # @drawable/qs_detail_wifi_7_signal_4 'res/drawable/qs_detail_wifi_7_signal_4.xml'

    .line 89
    const v3, 0x7f08173f    # @drawable/qs_detail_wifi_7_signal_0 'res/drawable/qs_detail_wifi_7_signal_0.xml'

    .line 92
    const v4, 0x7f081740    # @drawable/qs_detail_wifi_7_signal_1 'res/drawable/qs_detail_wifi_7_signal_1.xml'

    .line 95
    const v5, 0x7f081741    # @drawable/qs_detail_wifi_7_signal_2 'res/drawable/qs_detail_wifi_7_signal_2.xml'

    .line 98
    filled-new-array {v3, v4, v5, v1, v2}, [I

    .line 101
    move-result-object v1

    .line 104
    sput-object v1, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->QS_WIFI_7_FULL_ICONS:[I

    .line 105
    const v1, 0x7f0818d3    # @drawable/stat_sys_slave_wifi_signal_3 'res/drawable/stat_sys_slave_wifi_signal_3.xml'

    .line 107
    const v2, 0x7f0818d6    # @drawable/stat_sys_slave_wifi_signal_4 'res/drawable/stat_sys_slave_wifi_signal_4.xml'

    .line 110
    const v3, 0x7f0818ca    # @drawable/stat_sys_slave_wifi_signal_0 'res/drawable/stat_sys_slave_wifi_signal_0.xml'

    .line 113
    const v4, 0x7f0818cd    # @drawable/stat_sys_slave_wifi_signal_1 'res/drawable/stat_sys_slave_wifi_signal_1.xml'

    .line 116
    const v5, 0x7f0818d0    # @drawable/stat_sys_slave_wifi_signal_2 'res/drawable/stat_sys_slave_wifi_signal_2.xml'

    .line 119
    filled-new-array {v3, v4, v5, v1, v2}, [I

    .line 122
    move-result-object v1

    .line 125
    sput-object v1, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->WIFI_MLO_ICONS:[I

    .line 126
    const v1, 0x7f08193a    # @drawable/stat_sys_wifi_signal_unavailable_3 'res/drawable/stat_sys_wifi_signal_unavailable_3.xml'

    .line 128
    const v2, 0x7f08193d    # @drawable/stat_sys_wifi_signal_unavailable_4 'res/drawable/stat_sys_wifi_signal_unavailable_4.xml'

    .line 131
    const v3, 0x7f081931    # @drawable/stat_sys_wifi_signal_unavailable_0 'res/drawable/stat_sys_wifi_signal_unavailable_0.xml'

    .line 134
    const v4, 0x7f081934    # @drawable/stat_sys_wifi_signal_unavailable_1 'res/drawable/stat_sys_wifi_signal_unavailable_1.xml'

    .line 137
    const v5, 0x7f081937    # @drawable/stat_sys_wifi_signal_unavailable_2 'res/drawable/stat_sys_wifi_signal_unavailable_2.xml'

    .line 140
    filled-new-array {v3, v4, v5, v1, v2}, [I

    .line 143
    move-result-object v1

    .line 146
    sput-object v1, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->WIFI_NO_INTERNET_ICONS:[I

    .line 147
    filled-new-array {v1, v0}, [[I

    .line 149
    move-result-object v0

    .line 152
    sput-object v0, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    .line 153
    sput-object v0, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    .line 155
    return-void
    .line 157
.end method
