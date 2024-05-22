.class public final enum Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;
.super Ljava/lang/Enum;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

.field public static final enum GA_BUGREPORT_LONG_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

.field public static final enum GA_BUGREPORT_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

.field public static final enum GA_CLOSE_BACK:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

.field public static final enum GA_CLOSE_TAP_OUTSIDE:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

.field public static final enum GA_EMERGENCY_DIALER_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

.field public static final enum GA_LOCKDOWN_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

.field public static final enum GA_OPEN_QS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

.field public static final enum GA_POWER_MENU_CLOSE:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

.field public static final enum GA_POWER_MENU_OPEN:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

.field public static final enum GA_REBOOT_LONG_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

.field public static final enum GA_REBOOT_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

.field public static final enum GA_SCREENSHOT_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

.field public static final enum GA_SHUTDOWN_LONG_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

.field public static final enum GA_SHUTDOWN_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;


# instance fields
.field private final mId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 23

    .line 1
    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 2
    move-object v0, v1

    .line 4
    const/16 v2, 0x151

    .line 5
    const-string v3, "GA_POWER_MENU_OPEN"

    .line 7
    const/4 v4, 0x0

    .line 9
    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    .line 10
    sput-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_POWER_MENU_OPEN:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 13
    new-instance v2, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 15
    move-object v1, v2

    .line 17
    const/16 v3, 0x1d7

    .line 18
    const-string v4, "GA_POWER_MENU_CLOSE"

    .line 20
    const/4 v5, 0x1

    .line 22
    invoke-direct {v2, v4, v5, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    .line 23
    sput-object v2, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_POWER_MENU_CLOSE:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 26
    new-instance v3, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 28
    move-object v2, v3

    .line 30
    const/16 v4, 0x158

    .line 31
    const-string v5, "GA_BUGREPORT_PRESS"

    .line 33
    const/4 v6, 0x2

    .line 35
    invoke-direct {v3, v5, v6, v4}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    .line 36
    sput-object v3, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_BUGREPORT_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 39
    new-instance v4, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 41
    move-object v3, v4

    .line 43
    const/16 v5, 0x159

    .line 44
    const-string v6, "GA_BUGREPORT_LONG_PRESS"

    .line 46
    const/4 v7, 0x3

    .line 48
    invoke-direct {v4, v6, v7, v5}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    .line 49
    sput-object v4, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_BUGREPORT_LONG_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 52
    new-instance v5, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 54
    move-object v4, v5

    .line 56
    const/16 v6, 0x15a

    .line 57
    const-string v7, "GA_EMERGENCY_DIALER_PRESS"

    .line 59
    const/4 v8, 0x4

    .line 61
    invoke-direct {v5, v7, v8, v6}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    .line 62
    sput-object v5, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_EMERGENCY_DIALER_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 65
    new-instance v6, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 67
    move-object v5, v6

    .line 69
    const/16 v7, 0x15b

    .line 70
    const-string v8, "GA_SCREENSHOT_PRESS"

    .line 72
    const/4 v9, 0x5

    .line 74
    invoke-direct {v6, v8, v9, v7}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    .line 75
    sput-object v6, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_SCREENSHOT_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 78
    new-instance v7, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 80
    move-object v6, v7

    .line 82
    const/16 v8, 0x15c

    .line 83
    const-string v9, "GA_SCREENSHOT_LONG_PRESS"

    .line 85
    const/4 v10, 0x6

    .line 87
    invoke-direct {v7, v9, v10, v8}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    .line 88
    new-instance v8, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 91
    move-object v7, v8

    .line 93
    const/16 v9, 0x322

    .line 94
    const-string v10, "GA_SHUTDOWN_PRESS"

    .line 96
    const/4 v11, 0x7

    .line 98
    invoke-direct {v8, v10, v11, v9}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    .line 99
    sput-object v8, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_SHUTDOWN_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 102
    new-instance v9, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 104
    move-object v8, v9

    .line 106
    const/16 v10, 0x323

    .line 107
    const-string v11, "GA_SHUTDOWN_LONG_PRESS"

    .line 109
    const/16 v12, 0x8

    .line 111
    invoke-direct {v9, v11, v12, v10}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    .line 113
    sput-object v9, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_SHUTDOWN_LONG_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 116
    new-instance v10, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 118
    move-object v9, v10

    .line 120
    const/16 v11, 0x15d

    .line 121
    const-string v12, "GA_REBOOT_PRESS"

    .line 123
    const/16 v13, 0x9

    .line 125
    invoke-direct {v10, v12, v13, v11}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    .line 127
    sput-object v10, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_REBOOT_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 130
    new-instance v11, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 132
    move-object v10, v11

    .line 134
    const/16 v12, 0x324

    .line 135
    const-string v13, "GA_REBOOT_LONG_PRESS"

    .line 137
    const/16 v14, 0xa

    .line 139
    invoke-direct {v11, v13, v14, v12}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    .line 141
    sput-object v11, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_REBOOT_LONG_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 144
    new-instance v12, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 146
    move-object v11, v12

    .line 148
    const/16 v13, 0x162

    .line 149
    const-string v14, "GA_LOCKDOWN_PRESS"

    .line 151
    const/16 v15, 0xb

    .line 153
    invoke-direct {v12, v14, v15, v13}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    .line 155
    sput-object v12, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_LOCKDOWN_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 158
    new-instance v13, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 160
    move-object v12, v13

    .line 162
    const/16 v14, 0x325

    .line 163
    const-string v15, "GA_OPEN_QS"

    .line 165
    move-object/from16 v19, v0

    .line 167
    const/16 v0, 0xc

    .line 169
    invoke-direct {v13, v15, v0, v14}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    .line 171
    sput-object v13, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_OPEN_QS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 174
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 176
    move-object v13, v0

    .line 178
    const/16 v14, 0x326

    .line 179
    const-string v15, "GA_OPEN_POWER_VOLUP"

    .line 181
    move-object/from16 v20, v1

    .line 183
    const/16 v1, 0xd

    .line 185
    invoke-direct {v0, v15, v1, v14}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    .line 187
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 190
    move-object v14, v0

    .line 192
    const/16 v1, 0x327

    .line 193
    const-string v15, "GA_OPEN_LONG_PRESS_POWER"

    .line 195
    move-object/from16 v21, v2

    .line 197
    const/16 v2, 0xe

    .line 199
    invoke-direct {v0, v15, v2, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    .line 201
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 204
    move-object v15, v0

    .line 206
    const/16 v1, 0x328

    .line 207
    const-string v2, "GA_CLOSE_LONG_PRESS_POWER"

    .line 209
    move-object/from16 v22, v3

    .line 211
    const/16 v3, 0xf

    .line 213
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    .line 215
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 218
    move-object/from16 v16, v0

    .line 220
    const/16 v1, 0x329

    .line 222
    const-string v2, "GA_CLOSE_BACK"

    .line 224
    const/16 v3, 0x10

    .line 226
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    .line 228
    sput-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_CLOSE_BACK:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 231
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 233
    move-object/from16 v17, v0

    .line 235
    const/16 v1, 0x32a

    .line 237
    const-string v2, "GA_CLOSE_TAP_OUTSIDE"

    .line 239
    const/16 v3, 0x11

    .line 241
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    .line 243
    sput-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_CLOSE_TAP_OUTSIDE:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 246
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 248
    move-object/from16 v18, v0

    .line 250
    const/16 v1, 0x32b

    .line 252
    const-string v2, "GA_CLOSE_POWER_VOLUP"

    .line 254
    const/16 v3, 0x12

    .line 256
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;-><init>(Ljava/lang/String;II)V

    .line 258
    move-object/from16 v0, v19

    .line 261
    move-object/from16 v1, v20

    .line 263
    move-object/from16 v2, v21

    .line 265
    move-object/from16 v3, v22

    .line 267
    filled-new-array/range {v0 .. v18}, [Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 269
    move-result-object v0

    .line 272
    sput-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->$VALUES:[Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 273
    return-void
    .line 275
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->mId:I

    .line 5
    return-void
    .line 7
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->$VALUES:[Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 2
    invoke-virtual {v0}, [Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 8
    return-object v0
    .line 10
.end method


# virtual methods
.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->mId:I

    .line 2
    return p0
    .line 4
.end method
