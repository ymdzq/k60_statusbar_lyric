.class final enum Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;
.super Ljava/lang/Enum;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

.field public static final enum CHARGING:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

.field public static final enum CHARGING_DIGIT:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

.field public static final enum LOW:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

.field public static final enum LOW_DIGIT:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

.field public static final enum NORMAL:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

.field public static final enum NORMAL_DIGIT:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

.field public static final enum PERFORMANCE_MODE:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

.field public static final enum PERFORMANCE_MODE_DIGIT:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

.field public static final enum PERF_CHARGE_MODE:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

.field public static final enum PERF_CHARGE_MODE_DIGIT:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

.field public static final enum PERF_QC_MODE:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

.field public static final enum PERF_QC_MODE_DIGIT:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

.field public static final enum POWER_SAVE:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

.field public static final enum POWER_SAVE_DIGIT:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

.field public static final enum QUICK_CHARGING:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

.field public static final enum QUICK_CHARGING_DIGIT:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 20

    .line 1
    new-instance v1, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 2
    move-object v0, v1

    .line 4
    const-string v2, "UNKNOWN"

    .line 5
    const/4 v3, 0x0

    .line 7
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;-><init>(Ljava/lang/String;I)V

    .line 8
    new-instance v2, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 11
    move-object v1, v2

    .line 13
    const-string v3, "LOW"

    .line 14
    const/4 v4, 0x1

    .line 16
    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v2, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->LOW:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 20
    new-instance v3, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 22
    move-object v2, v3

    .line 24
    const-string v4, "LOW_DIGIT"

    .line 25
    const/4 v5, 0x2

    .line 27
    invoke-direct {v3, v4, v5}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;-><init>(Ljava/lang/String;I)V

    .line 28
    sput-object v3, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->LOW_DIGIT:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 31
    new-instance v4, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 33
    move-object v3, v4

    .line 35
    const-string v5, "NORMAL"

    .line 36
    const/4 v6, 0x3

    .line 38
    invoke-direct {v4, v5, v6}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v4, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->NORMAL:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 42
    new-instance v5, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 44
    move-object v4, v5

    .line 46
    const-string v6, "NORMAL_DIGIT"

    .line 47
    const/4 v7, 0x4

    .line 49
    invoke-direct {v5, v6, v7}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;-><init>(Ljava/lang/String;I)V

    .line 50
    sput-object v5, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->NORMAL_DIGIT:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 53
    new-instance v6, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 55
    move-object v5, v6

    .line 57
    const-string v7, "CHARGING"

    .line 58
    const/4 v8, 0x5

    .line 60
    invoke-direct {v6, v7, v8}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;-><init>(Ljava/lang/String;I)V

    .line 61
    sput-object v6, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->CHARGING:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 64
    new-instance v7, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 66
    move-object v6, v7

    .line 68
    const-string v8, "CHARGING_DIGIT"

    .line 69
    const/4 v9, 0x6

    .line 71
    invoke-direct {v7, v8, v9}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;-><init>(Ljava/lang/String;I)V

    .line 72
    sput-object v7, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->CHARGING_DIGIT:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 75
    new-instance v8, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 77
    move-object v7, v8

    .line 79
    const-string v9, "QUICK_CHARGING"

    .line 80
    const/4 v10, 0x7

    .line 82
    invoke-direct {v8, v9, v10}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;-><init>(Ljava/lang/String;I)V

    .line 83
    sput-object v8, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->QUICK_CHARGING:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 86
    new-instance v9, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 88
    move-object v8, v9

    .line 90
    const-string v10, "QUICK_CHARGING_DIGIT"

    .line 91
    const/16 v11, 0x8

    .line 93
    invoke-direct {v9, v10, v11}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;-><init>(Ljava/lang/String;I)V

    .line 95
    sput-object v9, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->QUICK_CHARGING_DIGIT:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 98
    new-instance v10, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 100
    move-object v9, v10

    .line 102
    const-string v11, "POWER_SAVE"

    .line 103
    const/16 v12, 0x9

    .line 105
    invoke-direct {v10, v11, v12}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;-><init>(Ljava/lang/String;I)V

    .line 107
    sput-object v10, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->POWER_SAVE:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 110
    new-instance v11, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 112
    move-object v10, v11

    .line 114
    const-string v12, "POWER_SAVE_DIGIT"

    .line 115
    const/16 v13, 0xa

    .line 117
    invoke-direct {v11, v12, v13}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;-><init>(Ljava/lang/String;I)V

    .line 119
    sput-object v11, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->POWER_SAVE_DIGIT:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 122
    new-instance v12, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 124
    move-object v11, v12

    .line 126
    const-string v13, "PERFORMANCE_MODE"

    .line 127
    const/16 v14, 0xb

    .line 129
    invoke-direct {v12, v13, v14}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;-><init>(Ljava/lang/String;I)V

    .line 131
    sput-object v12, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->PERFORMANCE_MODE:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 134
    new-instance v13, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 136
    move-object v12, v13

    .line 138
    const-string v14, "PERFORMANCE_MODE_DIGIT"

    .line 139
    const/16 v15, 0xc

    .line 141
    invoke-direct {v13, v14, v15}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;-><init>(Ljava/lang/String;I)V

    .line 143
    sput-object v13, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->PERFORMANCE_MODE_DIGIT:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 146
    new-instance v14, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 148
    move-object v13, v14

    .line 150
    const-string v15, "PERF_CHARGE_MODE"

    .line 151
    move-object/from16 v17, v0

    .line 153
    const/16 v0, 0xd

    .line 155
    invoke-direct {v14, v15, v0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;-><init>(Ljava/lang/String;I)V

    .line 157
    sput-object v14, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->PERF_CHARGE_MODE:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 160
    new-instance v0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 162
    move-object v14, v0

    .line 164
    const-string v15, "PERF_CHARGE_MODE_DIGIT"

    .line 165
    move-object/from16 v18, v1

    .line 167
    const/16 v1, 0xe

    .line 169
    invoke-direct {v0, v15, v1}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;-><init>(Ljava/lang/String;I)V

    .line 171
    sput-object v0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->PERF_CHARGE_MODE_DIGIT:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 174
    new-instance v0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 176
    move-object v15, v0

    .line 178
    const-string v1, "PERF_QC_MODE"

    .line 179
    move-object/from16 v19, v2

    .line 181
    const/16 v2, 0xf

    .line 183
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;-><init>(Ljava/lang/String;I)V

    .line 185
    sput-object v0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->PERF_QC_MODE:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 188
    new-instance v0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 190
    move-object/from16 v16, v0

    .line 192
    const-string v1, "PERF_QC_MODE_DIGIT"

    .line 194
    const/16 v2, 0x10

    .line 196
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;-><init>(Ljava/lang/String;I)V

    .line 198
    sput-object v0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->PERF_QC_MODE_DIGIT:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 201
    move-object/from16 v0, v17

    .line 203
    move-object/from16 v1, v18

    .line 205
    move-object/from16 v2, v19

    .line 207
    filled-new-array/range {v0 .. v16}, [Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 209
    move-result-object v0

    .line 212
    sput-object v0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->$VALUES:[Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 213
    return-void
    .line 215
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    return-void
    .line 5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->$VALUES:[Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 2
    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView$BatteryStatus;

    .line 8
    return-object v0
    .line 10
.end method
