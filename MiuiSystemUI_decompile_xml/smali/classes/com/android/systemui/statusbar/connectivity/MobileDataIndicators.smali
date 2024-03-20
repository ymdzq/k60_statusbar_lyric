.class public final Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final activityIn:Z

.field public final activityOut:Z

.field public final airplane:Z

.field public final dataConnected:Z

.field public final hideVolte:Z

.field public final hideVowifi:Z

.field public final isSignalOptimization:Z

.field public final qsDescription:Ljava/lang/CharSequence;

.field public final qsIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

.field public final qsType:I

.field public final roaming:Z

.field public final separateDataAndVoice:Z

.field public final showDataTypeDataDisconnected:Z

.field public final showMobileDataTypeInMMS:Z

.field public final showMobileDataTypeSingle:Z

.field public final showName:Ljava/lang/String;

.field public final showVonr:Z

.field public final slotId:I

.field public final sltConnected:Z

.field public final sltEnabled:Z

.field public final speechHd:Z

.field public final statusIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

.field public final statusType:I

.field public final subId:I

.field public final typeContentDescription:Ljava/lang/CharSequence;

.field public final typeContentDescriptionHtml:Ljava/lang/CharSequence;

.field public final volte:Z

.field public final volteId:I

.field public final volteNoSerivce:Z

.field public final vonr:Z

.field public final vonrId:I

.field public final vowifi:Z

.field public final vowifiId:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/connectivity/IconState;Lcom/android/systemui/statusbar/connectivity/IconState;IIZZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZIZZZIZZIZZIZZZZZZLjava/lang/String;ZZZZ)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->statusIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->qsIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

    move v1, p3

    .line 4
    iput v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->statusType:I

    move v1, p4

    .line 5
    iput v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->qsType:I

    move v1, p5

    .line 6
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->activityIn:Z

    move v1, p6

    .line 7
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->activityOut:Z

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->typeContentDescription:Ljava/lang/CharSequence;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->typeContentDescriptionHtml:Ljava/lang/CharSequence;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->qsDescription:Ljava/lang/CharSequence;

    move v1, p10

    .line 11
    iput v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->subId:I

    move v1, p11

    .line 12
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->roaming:Z

    move v1, p12

    .line 13
    iput v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->slotId:I

    move v1, p13

    .line 14
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->airplane:Z

    move/from16 v1, p14

    .line 15
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->dataConnected:Z

    move/from16 v1, p15

    .line 16
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->volte:Z

    move/from16 v1, p16

    .line 17
    iput v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->volteId:I

    move/from16 v1, p17

    .line 18
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->hideVolte:Z

    move/from16 v1, p18

    .line 19
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->vowifi:Z

    move/from16 v1, p19

    .line 20
    iput v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->vowifiId:I

    move/from16 v1, p20

    .line 21
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->hideVowifi:Z

    move/from16 v1, p21

    .line 22
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->vonr:Z

    move/from16 v1, p22

    .line 23
    iput v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->vonrId:I

    move/from16 v1, p23

    .line 24
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->showVonr:Z

    move/from16 v1, p24

    .line 25
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->speechHd:Z

    move/from16 v1, p25

    .line 26
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->volteNoSerivce:Z

    move/from16 v1, p26

    .line 27
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->showDataTypeDataDisconnected:Z

    move/from16 v1, p27

    .line 28
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->showMobileDataTypeInMMS:Z

    move/from16 v1, p28

    .line 29
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->showMobileDataTypeSingle:Z

    move-object/from16 v1, p29

    .line 30
    iput-object v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->showName:Ljava/lang/String;

    move/from16 v1, p30

    .line 31
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->isSignalOptimization:Z

    move/from16 v1, p31

    .line 32
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->separateDataAndVoice:Z

    move/from16 v1, p32

    .line 33
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->sltEnabled:Z

    move/from16 v1, p33

    .line 34
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->sltConnected:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;

    .line 12
    iget-object v1, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->statusIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

    .line 14
    iget-object v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->statusIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

    .line 16
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->qsIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

    .line 25
    iget-object v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->qsIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

    .line 27
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    return v2

    .line 35
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->statusType:I

    .line 36
    iget v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->statusType:I

    .line 38
    if-eq v1, v3, :cond_4

    .line 40
    return v2

    .line 42
    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->qsType:I

    .line 43
    iget v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->qsType:I

    .line 45
    if-eq v1, v3, :cond_5

    .line 47
    return v2

    .line 49
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->activityIn:Z

    .line 50
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->activityIn:Z

    .line 52
    if-eq v1, v3, :cond_6

    .line 54
    return v2

    .line 56
    :cond_6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->activityOut:Z

    .line 57
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->activityOut:Z

    .line 59
    if-eq v1, v3, :cond_7

    .line 61
    return v2

    .line 63
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->typeContentDescription:Ljava/lang/CharSequence;

    .line 64
    iget-object v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->typeContentDescription:Ljava/lang/CharSequence;

    .line 66
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    move-result v1

    .line 71
    if-nez v1, :cond_8

    .line 72
    return v2

    .line 74
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->typeContentDescriptionHtml:Ljava/lang/CharSequence;

    .line 75
    iget-object v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->typeContentDescriptionHtml:Ljava/lang/CharSequence;

    .line 77
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    move-result v1

    .line 82
    if-nez v1, :cond_9

    .line 83
    return v2

    .line 85
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->qsDescription:Ljava/lang/CharSequence;

    .line 86
    iget-object v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->qsDescription:Ljava/lang/CharSequence;

    .line 88
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    move-result v1

    .line 93
    if-nez v1, :cond_a

    .line 94
    return v2

    .line 96
    :cond_a
    iget v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->subId:I

    .line 97
    iget v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->subId:I

    .line 99
    if-eq v1, v3, :cond_b

    .line 101
    return v2

    .line 103
    :cond_b
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->roaming:Z

    .line 104
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->roaming:Z

    .line 106
    if-eq v1, v3, :cond_c

    .line 108
    return v2

    .line 110
    :cond_c
    iget v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->slotId:I

    .line 111
    iget v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->slotId:I

    .line 113
    if-eq v1, v3, :cond_d

    .line 115
    return v2

    .line 117
    :cond_d
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->airplane:Z

    .line 118
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->airplane:Z

    .line 120
    if-eq v1, v3, :cond_e

    .line 122
    return v2

    .line 124
    :cond_e
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->dataConnected:Z

    .line 125
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->dataConnected:Z

    .line 127
    if-eq v1, v3, :cond_f

    .line 129
    return v2

    .line 131
    :cond_f
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->volte:Z

    .line 132
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->volte:Z

    .line 134
    if-eq v1, v3, :cond_10

    .line 136
    return v2

    .line 138
    :cond_10
    iget v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->volteId:I

    .line 139
    iget v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->volteId:I

    .line 141
    if-eq v1, v3, :cond_11

    .line 143
    return v2

    .line 145
    :cond_11
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->hideVolte:Z

    .line 146
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->hideVolte:Z

    .line 148
    if-eq v1, v3, :cond_12

    .line 150
    return v2

    .line 152
    :cond_12
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->vowifi:Z

    .line 153
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->vowifi:Z

    .line 155
    if-eq v1, v3, :cond_13

    .line 157
    return v2

    .line 159
    :cond_13
    iget v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->vowifiId:I

    .line 160
    iget v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->vowifiId:I

    .line 162
    if-eq v1, v3, :cond_14

    .line 164
    return v2

    .line 166
    :cond_14
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->hideVowifi:Z

    .line 167
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->hideVowifi:Z

    .line 169
    if-eq v1, v3, :cond_15

    .line 171
    return v2

    .line 173
    :cond_15
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->vonr:Z

    .line 174
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->vonr:Z

    .line 176
    if-eq v1, v3, :cond_16

    .line 178
    return v2

    .line 180
    :cond_16
    iget v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->vonrId:I

    .line 181
    iget v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->vonrId:I

    .line 183
    if-eq v1, v3, :cond_17

    .line 185
    return v2

    .line 187
    :cond_17
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->showVonr:Z

    .line 188
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->showVonr:Z

    .line 190
    if-eq v1, v3, :cond_18

    .line 192
    return v2

    .line 194
    :cond_18
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->speechHd:Z

    .line 195
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->speechHd:Z

    .line 197
    if-eq v1, v3, :cond_19

    .line 199
    return v2

    .line 201
    :cond_19
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->volteNoSerivce:Z

    .line 202
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->volteNoSerivce:Z

    .line 204
    if-eq v1, v3, :cond_1a

    .line 206
    return v2

    .line 208
    :cond_1a
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->showDataTypeDataDisconnected:Z

    .line 209
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->showDataTypeDataDisconnected:Z

    .line 211
    if-eq v1, v3, :cond_1b

    .line 213
    return v2

    .line 215
    :cond_1b
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->showMobileDataTypeInMMS:Z

    .line 216
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->showMobileDataTypeInMMS:Z

    .line 218
    if-eq v1, v3, :cond_1c

    .line 220
    return v2

    .line 222
    :cond_1c
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->showMobileDataTypeSingle:Z

    .line 223
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->showMobileDataTypeSingle:Z

    .line 225
    if-eq v1, v3, :cond_1d

    .line 227
    return v2

    .line 229
    :cond_1d
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->showName:Ljava/lang/String;

    .line 230
    iget-object v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->showName:Ljava/lang/String;

    .line 232
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 234
    move-result v1

    .line 237
    if-nez v1, :cond_1e

    .line 238
    return v2

    .line 240
    :cond_1e
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->isSignalOptimization:Z

    .line 241
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->isSignalOptimization:Z

    .line 243
    if-eq v1, v3, :cond_1f

    .line 245
    return v2

    .line 247
    :cond_1f
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->separateDataAndVoice:Z

    .line 248
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->separateDataAndVoice:Z

    .line 250
    if-eq v1, v3, :cond_20

    .line 252
    return v2

    .line 254
    :cond_20
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->sltEnabled:Z

    .line 255
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->sltEnabled:Z

    .line 257
    if-eq v1, v3, :cond_21

    .line 259
    return v2

    .line 261
    :cond_21
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->sltConnected:Z

    .line 262
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->sltConnected:Z

    .line 264
    if-eq p0, p1, :cond_22

    .line 266
    return v2

    .line 268
    :cond_22
    return v0
    .line 269
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->statusIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

    .line 3
    if-nez v1, :cond_0

    .line 5
    move v1, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/connectivity/IconState;->hashCode()I

    .line 9
    move-result v1

    .line 12
    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    .line 13
    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->qsIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

    .line 15
    if-nez v2, :cond_1

    .line 17
    move v2, v0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/connectivity/IconState;->hashCode()I

    .line 21
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v1, v2

    .line 25
    mul-int/lit8 v1, v1, 0x1f

    .line 26
    iget v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->statusType:I

    .line 28
    const/16 v3, 0x1f

    .line 30
    invoke-static {v2, v1, v3}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 32
    move-result v1

    .line 35
    iget v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->qsType:I

    .line 36
    invoke-static {v2, v1, v3}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 38
    move-result v1

    .line 41
    const/4 v2, 0x1

    .line 42
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->activityIn:Z

    .line 43
    if-eqz v3, :cond_2

    .line 45
    move v3, v2

    .line 47
    :cond_2
    add-int/2addr v1, v3

    .line 48
    mul-int/lit8 v1, v1, 0x1f

    .line 49
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->activityOut:Z

    .line 51
    if-eqz v3, :cond_3

    .line 53
    move v3, v2

    .line 55
    :cond_3
    add-int/2addr v1, v3

    .line 56
    mul-int/lit8 v1, v1, 0x1f

    .line 57
    iget-object v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->typeContentDescription:Ljava/lang/CharSequence;

    .line 59
    if-nez v3, :cond_4

    .line 61
    move v3, v0

    .line 63
    goto :goto_2

    .line 64
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 65
    move-result v3

    .line 68
    :goto_2
    add-int/2addr v1, v3

    .line 69
    mul-int/lit8 v1, v1, 0x1f

    .line 70
    iget-object v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->typeContentDescriptionHtml:Ljava/lang/CharSequence;

    .line 72
    if-nez v3, :cond_5

    .line 74
    move v3, v0

    .line 76
    goto :goto_3

    .line 77
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 78
    move-result v3

    .line 81
    :goto_3
    add-int/2addr v1, v3

    .line 82
    mul-int/lit8 v1, v1, 0x1f

    .line 83
    iget-object v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->qsDescription:Ljava/lang/CharSequence;

    .line 85
    if-nez v3, :cond_6

    .line 87
    move v3, v0

    .line 89
    goto :goto_4

    .line 90
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 91
    move-result v3

    .line 94
    :goto_4
    add-int/2addr v1, v3

    .line 95
    mul-int/lit8 v1, v1, 0x1f

    .line 96
    iget v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->subId:I

    .line 98
    const/16 v4, 0x1f

    .line 100
    invoke-static {v3, v1, v4}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 102
    move-result v1

    .line 105
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->roaming:Z

    .line 106
    if-eqz v3, :cond_7

    .line 108
    move v3, v2

    .line 110
    :cond_7
    add-int/2addr v1, v3

    .line 111
    mul-int/lit8 v1, v1, 0x1f

    .line 112
    add-int/2addr v1, v0

    .line 114
    mul-int/lit8 v1, v1, 0x1f

    .line 115
    iget v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->slotId:I

    .line 117
    const/16 v4, 0x1f

    .line 119
    invoke-static {v3, v1, v4}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 121
    move-result v1

    .line 124
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->airplane:Z

    .line 125
    if-eqz v3, :cond_8

    .line 127
    move v3, v2

    .line 129
    :cond_8
    add-int/2addr v1, v3

    .line 130
    mul-int/lit8 v1, v1, 0x1f

    .line 131
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->dataConnected:Z

    .line 133
    if-eqz v3, :cond_9

    .line 135
    move v3, v2

    .line 137
    :cond_9
    add-int/2addr v1, v3

    .line 138
    mul-int/lit8 v1, v1, 0x1f

    .line 139
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->volte:Z

    .line 141
    if-eqz v3, :cond_a

    .line 143
    move v3, v2

    .line 145
    :cond_a
    add-int/2addr v1, v3

    .line 146
    mul-int/lit8 v1, v1, 0x1f

    .line 147
    iget v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->volteId:I

    .line 149
    const/16 v4, 0x1f

    .line 151
    invoke-static {v3, v1, v4}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 153
    move-result v1

    .line 156
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->hideVolte:Z

    .line 157
    if-eqz v3, :cond_b

    .line 159
    move v3, v2

    .line 161
    :cond_b
    add-int/2addr v1, v3

    .line 162
    mul-int/lit8 v1, v1, 0x1f

    .line 163
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->vowifi:Z

    .line 165
    if-eqz v3, :cond_c

    .line 167
    move v3, v2

    .line 169
    :cond_c
    add-int/2addr v1, v3

    .line 170
    mul-int/lit8 v1, v1, 0x1f

    .line 171
    iget v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->vowifiId:I

    .line 173
    const/16 v4, 0x1f

    .line 175
    invoke-static {v3, v1, v4}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 177
    move-result v1

    .line 180
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->hideVowifi:Z

    .line 181
    if-eqz v3, :cond_d

    .line 183
    move v3, v2

    .line 185
    :cond_d
    add-int/2addr v1, v3

    .line 186
    mul-int/lit8 v1, v1, 0x1f

    .line 187
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->vonr:Z

    .line 189
    if-eqz v3, :cond_e

    .line 191
    move v3, v2

    .line 193
    :cond_e
    add-int/2addr v1, v3

    .line 194
    mul-int/lit8 v1, v1, 0x1f

    .line 195
    iget v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->vonrId:I

    .line 197
    const/16 v4, 0x1f

    .line 199
    invoke-static {v3, v1, v4}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 201
    move-result v1

    .line 204
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->showVonr:Z

    .line 205
    if-eqz v3, :cond_f

    .line 207
    move v3, v2

    .line 209
    :cond_f
    add-int/2addr v1, v3

    .line 210
    mul-int/lit8 v1, v1, 0x1f

    .line 211
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->speechHd:Z

    .line 213
    if-eqz v3, :cond_10

    .line 215
    move v3, v2

    .line 217
    :cond_10
    add-int/2addr v1, v3

    .line 218
    mul-int/lit8 v1, v1, 0x1f

    .line 219
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->volteNoSerivce:Z

    .line 221
    if-eqz v3, :cond_11

    .line 223
    move v3, v2

    .line 225
    :cond_11
    add-int/2addr v1, v3

    .line 226
    mul-int/lit8 v1, v1, 0x1f

    .line 227
    const/16 v3, 0x1f

    .line 229
    invoke-static {v0, v1, v3}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 231
    move-result v1

    .line 234
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->showDataTypeDataDisconnected:Z

    .line 235
    if-eqz v3, :cond_12

    .line 237
    move v3, v2

    .line 239
    :cond_12
    add-int/2addr v1, v3

    .line 240
    mul-int/lit8 v1, v1, 0x1f

    .line 241
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->showMobileDataTypeInMMS:Z

    .line 243
    if-eqz v3, :cond_13

    .line 245
    move v3, v2

    .line 247
    :cond_13
    add-int/2addr v1, v3

    .line 248
    mul-int/lit8 v1, v1, 0x1f

    .line 249
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->showMobileDataTypeSingle:Z

    .line 251
    if-eqz v3, :cond_14

    .line 253
    move v3, v2

    .line 255
    :cond_14
    add-int/2addr v1, v3

    .line 256
    mul-int/lit8 v1, v1, 0x1f

    .line 257
    iget-object v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->showName:Ljava/lang/String;

    .line 259
    if-nez v3, :cond_15

    .line 261
    goto :goto_5

    .line 263
    :cond_15
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 264
    move-result v0

    .line 267
    :goto_5
    add-int/2addr v1, v0

    .line 268
    mul-int/lit8 v1, v1, 0x1f

    .line 269
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->isSignalOptimization:Z

    .line 271
    if-eqz v0, :cond_16

    .line 273
    move v0, v2

    .line 275
    :cond_16
    add-int/2addr v1, v0

    .line 276
    mul-int/lit8 v1, v1, 0x1f

    .line 277
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->separateDataAndVoice:Z

    .line 279
    if-eqz v0, :cond_17

    .line 281
    move v0, v2

    .line 283
    :cond_17
    add-int/2addr v1, v0

    .line 284
    mul-int/lit8 v1, v1, 0x1f

    .line 285
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->sltEnabled:Z

    .line 287
    if-eqz v0, :cond_18

    .line 289
    move v0, v2

    .line 291
    :cond_18
    add-int/2addr v1, v0

    .line 292
    mul-int/lit8 v1, v1, 0x1f

    .line 293
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->sltConnected:Z

    .line 295
    if-eqz p0, :cond_19

    .line 297
    goto :goto_6

    .line 299
    :cond_19
    move v2, p0

    .line 300
    :goto_6
    add-int/2addr v1, v2

    .line 301
    return v1
    .line 302
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "MobileDataIndicators[statusIcon="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    const-string v1, ""

    .line 9
    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->statusIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

    .line 11
    if-eqz v2, :cond_0

    .line 13
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/connectivity/IconState;->toString()Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v2, v1

    .line 20
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, ",qsIcon="

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->qsIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

    .line 29
    if-eqz v2, :cond_1

    .line 31
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/connectivity/IconState;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 36
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, ",statusType="

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->statusType:I

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, ",qsType="

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->qsType:I

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, ",activityIn="

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->activityIn:Z

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, ",activityOut="

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->activityOut:Z

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, ",typeContentDescription="

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->typeContentDescription:Ljava/lang/CharSequence;

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, ",typeContentDescriptionHtml="

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->typeContentDescriptionHtml:Ljava/lang/CharSequence;

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, ",description="

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->qsDescription:Ljava/lang/CharSequence;

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, ",subId="

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->subId:I

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, ",roaming="

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->roaming:Z

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, ",showTriangle=false,slotId="

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->slotId:I

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    const-string v1, ",airplane="

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->airplane:Z

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, ",dataConnected="

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->dataConnected:Z

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, ",volte="

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->volte:Z

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 167
    const-string v1, ",volteId="

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->volteId:I

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    const-string v1, ",hideVolte="

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->hideVolte:Z

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, ",vowifi="

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->vowifi:Z

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 197
    const-string v1, ",vowifiId="

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->vowifiId:I

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    const-string v1, ",hideVowifi="

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->hideVowifi:Z

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 217
    const-string v1, ", vonr="

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->vonr:Z

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 227
    const-string v1, ", vonrId="

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    iget v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->vonrId:I

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    const-string v1, ", showVonr="

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->showVonr:Z

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 247
    const-string v1, ",speechHd="

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->speechHd:Z

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 257
    const-string v1, ",volteNoSerivce="

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->volteNoSerivce:Z

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 267
    const-string v1, ",fiveGDrawableId=0,showDataTypeDataDisconnected="

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->showDataTypeDataDisconnected:Z

    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 277
    const-string v1, ",showMobileDataTypeInMMS="

    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->showMobileDataTypeInMMS:Z

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 287
    const-string v1, ",showMobileDataTypeSingle="

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->showMobileDataTypeSingle:Z

    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 297
    const-string v1, ",showName="

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->showName:Ljava/lang/String;

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const-string v1, ",isSignalOptimization="

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->isSignalOptimization:Z

    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 317
    const-string v1, ",separateDataAndVoice="

    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->separateDataAndVoice:Z

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 327
    const-string v1, ",sltEnabled="

    .line 330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->sltEnabled:Z

    .line 335
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 337
    const-string v1, ",sltConnected="

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->sltConnected:Z

    .line 345
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 347
    const/16 p0, 0x5d

    .line 350
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    move-result-object p0

    .line 358
    return-object p0
    .line 359
.end method
