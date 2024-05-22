.class public final enum Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;
.super Ljava/lang/Enum;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

.field public static final enum FSI_DEVICE_IS_DREAMING:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

.field public static final enum FSI_DEVICE_NOT_INTERACTIVE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

.field public static final enum FSI_KEYGUARD_OCCLUDED:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

.field public static final enum FSI_KEYGUARD_SHOWING:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

.field public static final enum FSI_LOCKED_SHADE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

.field public static final enum FSI_SUPER_SAVE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

.field public static final enum NO_FSI_EXPECTED_TO_HUN:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

.field public static final enum NO_FSI_NOT_IMPORTANT_ENOUGH:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

.field public static final enum NO_FSI_NO_HUN_OR_KEYGUARD:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

.field public static final enum NO_FSI_SHOW_STICKY_HUN:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

.field public static final enum NO_FSI_SUPPRESSED_BY_DND:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

.field public static final enum NO_FSI_SUPPRESSED_ONLY_BY_DND:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

.field public static final enum NO_FSI_SUPPRESSIVE_BUBBLE_METADATA:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

.field public static final enum NO_FSI_SUPPRESSIVE_GROUP_ALERT_BEHAVIOR:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

.field public static final enum NO_FSI_SUSPENDED:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

.field public static final enum NO_FULL_SCREEN_INTENT:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;


# instance fields
.field public final shouldLaunch:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 2
    const/4 v1, 0x0

    .line 4
    const-string v2, "NO_FSI_SHOW_STICKY_HUN"

    .line 5
    invoke-direct {v0, v1, v1, v2}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;-><init>(ZILjava/lang/String;)V

    .line 7
    sput-object v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FSI_SHOW_STICKY_HUN:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 10
    new-instance v2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 12
    const/4 v3, 0x1

    .line 14
    const-string v4, "NO_FULL_SCREEN_INTENT"

    .line 15
    invoke-direct {v2, v1, v3, v4}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;-><init>(ZILjava/lang/String;)V

    .line 17
    sput-object v2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FULL_SCREEN_INTENT:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 20
    new-instance v4, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 22
    const-string v5, "NO_FSI_SUPPRESSED_BY_DND"

    .line 24
    const/4 v6, 0x2

    .line 26
    invoke-direct {v4, v1, v6, v5}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;-><init>(ZILjava/lang/String;)V

    .line 27
    sput-object v4, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FSI_SUPPRESSED_BY_DND:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 30
    new-instance v5, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 32
    const-string v6, "NO_FSI_SUPPRESSED_ONLY_BY_DND"

    .line 34
    const/4 v7, 0x3

    .line 36
    invoke-direct {v5, v1, v7, v6}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;-><init>(ZILjava/lang/String;)V

    .line 37
    sput-object v5, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FSI_SUPPRESSED_ONLY_BY_DND:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 40
    new-instance v6, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 42
    const-string v7, "NO_FSI_NOT_IMPORTANT_ENOUGH"

    .line 44
    const/4 v8, 0x4

    .line 46
    invoke-direct {v6, v1, v8, v7}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;-><init>(ZILjava/lang/String;)V

    .line 47
    sput-object v6, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FSI_NOT_IMPORTANT_ENOUGH:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 50
    new-instance v7, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 52
    const-string v8, "NO_FSI_SUPPRESSIVE_GROUP_ALERT_BEHAVIOR"

    .line 54
    const/4 v9, 0x5

    .line 56
    invoke-direct {v7, v1, v9, v8}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;-><init>(ZILjava/lang/String;)V

    .line 57
    sput-object v7, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FSI_SUPPRESSIVE_GROUP_ALERT_BEHAVIOR:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 60
    new-instance v8, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 62
    const-string v9, "NO_FSI_SUPPRESSIVE_BUBBLE_METADATA"

    .line 64
    const/4 v10, 0x6

    .line 66
    invoke-direct {v8, v1, v10, v9}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;-><init>(ZILjava/lang/String;)V

    .line 67
    sput-object v8, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FSI_SUPPRESSIVE_BUBBLE_METADATA:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 70
    new-instance v9, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 72
    const-string v10, "FSI_DEVICE_NOT_INTERACTIVE"

    .line 74
    const/4 v11, 0x7

    .line 76
    invoke-direct {v9, v3, v11, v10}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;-><init>(ZILjava/lang/String;)V

    .line 77
    sput-object v9, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->FSI_DEVICE_NOT_INTERACTIVE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 80
    new-instance v10, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 82
    const-string v11, "FSI_DEVICE_IS_DREAMING"

    .line 84
    const/16 v12, 0x8

    .line 86
    invoke-direct {v10, v3, v12, v11}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;-><init>(ZILjava/lang/String;)V

    .line 88
    sput-object v10, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->FSI_DEVICE_IS_DREAMING:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 91
    new-instance v11, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 93
    const-string v12, "FSI_KEYGUARD_SHOWING"

    .line 95
    const/16 v13, 0x9

    .line 97
    invoke-direct {v11, v3, v13, v12}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;-><init>(ZILjava/lang/String;)V

    .line 99
    sput-object v11, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->FSI_KEYGUARD_SHOWING:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 102
    new-instance v12, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 104
    const-string v13, "NO_FSI_EXPECTED_TO_HUN"

    .line 106
    const/16 v14, 0xa

    .line 108
    invoke-direct {v12, v1, v14, v13}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;-><init>(ZILjava/lang/String;)V

    .line 110
    sput-object v12, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FSI_EXPECTED_TO_HUN:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 113
    new-instance v13, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 115
    const-string v14, "FSI_KEYGUARD_OCCLUDED"

    .line 117
    const/16 v15, 0xb

    .line 119
    invoke-direct {v13, v3, v15, v14}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;-><init>(ZILjava/lang/String;)V

    .line 121
    sput-object v13, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->FSI_KEYGUARD_OCCLUDED:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 124
    new-instance v14, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 126
    const-string v15, "FSI_LOCKED_SHADE"

    .line 128
    const/16 v1, 0xc

    .line 130
    invoke-direct {v14, v3, v1, v15}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;-><init>(ZILjava/lang/String;)V

    .line 132
    sput-object v14, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->FSI_LOCKED_SHADE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 135
    new-instance v15, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 137
    const-string v1, "NO_FSI_NO_HUN_OR_KEYGUARD"

    .line 139
    const/16 v3, 0xd

    .line 141
    move-object/from16 v17, v14

    .line 143
    const/4 v14, 0x0

    .line 145
    invoke-direct {v15, v14, v3, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;-><init>(ZILjava/lang/String;)V

    .line 146
    sput-object v15, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FSI_NO_HUN_OR_KEYGUARD:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 149
    new-instance v3, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 151
    const-string v1, "FSI_SUPER_SAVE"

    .line 153
    const/16 v14, 0xe

    .line 155
    move-object/from16 v18, v15

    .line 157
    const/4 v15, 0x1

    .line 159
    invoke-direct {v3, v15, v14, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;-><init>(ZILjava/lang/String;)V

    .line 160
    sput-object v3, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->FSI_SUPER_SAVE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 163
    new-instance v15, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 165
    const-string v1, "NO_FSI_SUSPENDED"

    .line 167
    const/16 v14, 0xf

    .line 169
    move-object/from16 v16, v3

    .line 171
    const/4 v3, 0x0

    .line 173
    invoke-direct {v15, v3, v14, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;-><init>(ZILjava/lang/String;)V

    .line 174
    sput-object v15, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->NO_FSI_SUSPENDED:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 177
    move-object v1, v2

    .line 179
    move-object v2, v4

    .line 180
    move-object/from16 v14, v16

    .line 181
    move-object v3, v5

    .line 183
    move-object v4, v6

    .line 184
    move-object v5, v7

    .line 185
    move-object v6, v8

    .line 186
    move-object v7, v9

    .line 187
    move-object v8, v10

    .line 188
    move-object v9, v11

    .line 189
    move-object v10, v12

    .line 190
    move-object v11, v13

    .line 191
    move-object/from16 v12, v17

    .line 192
    move-object/from16 v13, v18

    .line 194
    filled-new-array/range {v0 .. v15}, [Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 196
    move-result-object v0

    .line 199
    sput-object v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->$VALUES:[Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 200
    return-void
    .line 202
.end method

.method public constructor <init>(ZILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->shouldLaunch:Z

    .line 5
    return-void
    .line 7
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->$VALUES:[Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 2
    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider$FullScreenIntentDecision;

    .line 8
    return-object v0
    .line 10
.end method
