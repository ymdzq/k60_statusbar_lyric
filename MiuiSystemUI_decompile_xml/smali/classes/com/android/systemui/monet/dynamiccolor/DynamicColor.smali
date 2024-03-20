.class public final Lcom/android/systemui/monet/dynamiccolor/DynamicColor;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final background:Ljava/util/function/Function;

.field public final chroma:Ljava/util/function/Function;

.field public final hctCache:Ljava/util/HashMap;

.field public final hue:Ljava/util/function/Function;

.field public final opacity:Ljava/util/function/Function;

.field public final tone:Ljava/util/function/Function;

.field public final toneDeltaConstraint:Ljava/util/function/Function;

.field public final toneMaxContrast:Ljava/util/function/Function;

.field public final toneMinContrast:Ljava/util/function/Function;


# direct methods
.method public constructor <init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->hctCache:Ljava/util/HashMap;

    .line 10
    iput-object p1, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->hue:Ljava/util/function/Function;

    .line 12
    iput-object p2, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->chroma:Ljava/util/function/Function;

    .line 14
    iput-object p3, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->tone:Ljava/util/function/Function;

    .line 16
    iput-object p4, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->opacity:Ljava/util/function/Function;

    .line 18
    iput-object p5, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->background:Ljava/util/function/Function;

    .line 20
    iput-object p6, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->toneMinContrast:Ljava/util/function/Function;

    .line 22
    iput-object p7, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->toneMaxContrast:Ljava/util/function/Function;

    .line 24
    iput-object p8, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->toneDeltaConstraint:Ljava/util/function/Function;

    .line 26
    return-void
    .line 28
.end method

.method public static calculateDynamicTone(Lcom/android/systemui/monet/scheme/DynamicScheme;Ljava/util/function/Function;Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;Ljava/util/function/BiFunction;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda2;Ljava/util/function/Function;)D
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 4
    move-object/from16 v2, p4

    .line 6
    move-object/from16 v3, p5

    .line 8
    move-object/from16 v4, p6

    .line 10
    move-object/from16 v5, p1

    .line 12
    move-object/from16 v6, p7

    .line 14
    invoke-interface {v5, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v5

    .line 19
    check-cast v5, Ljava/lang/Double;

    .line 20
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 22
    move-result-wide v7

    .line 25
    if-nez v2, :cond_0

    .line 26
    const/4 v2, 0x0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 33
    check-cast v2, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 34
    :goto_0
    if-nez v2, :cond_1

    .line 36
    return-wide v7

    .line 38
    :cond_1
    iget-object v9, v2, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->tone:Ljava/util/function/Function;

    .line 39
    invoke-interface {v9, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object v9

    .line 44
    check-cast v9, Ljava/lang/Double;

    .line 45
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    .line 47
    move-result-wide v9

    .line 50
    invoke-static {v7, v8, v9, v10}, Lcom/android/systemui/monet/contrast/Contrast;->ratioOfTones(DD)D

    .line 51
    move-result-wide v9

    .line 54
    invoke-virtual {v1, v2}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object v11

    .line 58
    check-cast v11, Ljava/lang/Double;

    .line 59
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    .line 61
    move-result-wide v11

    .line 64
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 65
    move-result-object v13

    .line 68
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 69
    move-result-object v14

    .line 72
    move-object/from16 v15, p3

    .line 73
    invoke-interface {v15, v13, v14}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    move-result-object v13

    .line 78
    check-cast v13, Ljava/lang/Double;

    .line 79
    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    .line 81
    move-result-wide v13

    .line 84
    invoke-static {v11, v12, v13, v14}, Lcom/android/systemui/monet/contrast/Contrast;->ratioOfTones(DD)D

    .line 85
    move-result-wide v15

    .line 88
    if-nez v4, :cond_2

    .line 89
    goto :goto_1

    .line 91
    :cond_2
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 92
    move-result-object v5

    .line 95
    invoke-virtual {v4, v5}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda2;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    move-result-object v5

    .line 99
    if-nez v5, :cond_3

    .line 100
    :goto_1
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 102
    goto :goto_2

    .line 104
    :cond_3
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 105
    move-result-object v5

    .line 108
    invoke-virtual {v4, v5}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda2;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    move-result-object v4

    .line 112
    check-cast v4, Ljava/lang/Double;

    .line 113
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 115
    move-result-wide v4

    .line 118
    :goto_2
    if-nez v6, :cond_4

    .line 119
    move-wide/from16 p3, v13

    .line 121
    goto :goto_3

    .line 123
    :cond_4
    move-wide/from16 p3, v13

    .line 124
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 126
    move-result-object v13

    .line 129
    invoke-interface {v6, v13}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    move-result-object v13

    .line 133
    if-nez v13, :cond_5

    .line 134
    :goto_3
    const-wide/high16 v9, 0x4035000000000000L    # 21.0

    .line 136
    goto :goto_4

    .line 138
    :cond_5
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 139
    move-result-object v9

    .line 142
    invoke-interface {v6, v9}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    move-result-object v6

    .line 146
    check-cast v6, Ljava/lang/Double;

    .line 147
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    .line 149
    move-result-wide v9

    .line 152
    :goto_4
    cmpg-double v6, v15, v4

    .line 153
    if-gez v6, :cond_6

    .line 155
    goto :goto_5

    .line 157
    :cond_6
    cmpl-double v4, v15, v9

    .line 158
    if-lez v4, :cond_7

    .line 160
    move-wide v4, v9

    .line 162
    goto :goto_5

    .line 163
    :cond_7
    move-wide v4, v15

    .line 164
    :goto_5
    cmpl-double v6, v4, v15

    .line 165
    if-nez v6, :cond_8

    .line 167
    move-wide/from16 v13, p3

    .line 169
    goto :goto_6

    .line 171
    :cond_8
    invoke-static {v11, v12, v4, v5}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->contrastingTone(DD)D

    .line 172
    move-result-wide v13

    .line 175
    :goto_6
    iget-object v2, v2, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->background:Ljava/util/function/Function;

    .line 176
    if-eqz v2, :cond_9

    .line 178
    invoke-interface {v2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    move-result-object v2

    .line 183
    if-nez v2, :cond_a

    .line 184
    :cond_9
    invoke-static {v13, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->enableLightForeground(D)D

    .line 186
    move-result-wide v13

    .line 189
    :cond_a
    if-nez v3, :cond_b

    .line 190
    const/4 v5, 0x0

    .line 192
    goto :goto_7

    .line 193
    :cond_b
    invoke-interface {v3, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    move-result-object v2

    .line 197
    move-object v5, v2

    .line 198
    check-cast v5, Lcom/android/systemui/monet/dynamiccolor/ToneDeltaConstraint;

    .line 199
    :goto_7
    if-nez v5, :cond_c

    .line 201
    goto/16 :goto_b

    .line 203
    :cond_c
    iget-object v2, v5, Lcom/android/systemui/monet/dynamiccolor/ToneDeltaConstraint;->keepAway:Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 205
    invoke-virtual {v1, v2}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    move-result-object v1

    .line 210
    check-cast v1, Ljava/lang/Double;

    .line 211
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 213
    move-result-wide v3

    .line 216
    sub-double v9, v13, v3

    .line 217
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    .line 219
    move-result-wide v9

    .line 222
    const-wide/high16 v11, 0x402e000000000000L    # 15.0

    .line 223
    cmpl-double v1, v9, v11

    .line 225
    if-ltz v1, :cond_d

    .line 227
    goto/16 :goto_b

    .line 229
    :cond_d
    iget-object v1, v5, Lcom/android/systemui/monet/dynamiccolor/ToneDeltaConstraint;->keepAwayPolarity:Lcom/android/systemui/monet/dynamiccolor/TonePolarity;

    .line 231
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 233
    move-result v1

    .line 236
    const-wide/high16 v15, 0x4059000000000000L    # 100.0

    .line 237
    if-eqz v1, :cond_16

    .line 239
    const/4 v5, 0x1

    .line 241
    if-eq v1, v5, :cond_13

    .line 242
    const/4 v3, 0x2

    .line 244
    if-eq v1, v3, :cond_e

    .line 245
    goto :goto_b

    .line 247
    :cond_e
    iget-object v1, v2, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->tone:Ljava/util/function/Function;

    .line 248
    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    move-result-object v0

    .line 253
    check-cast v0, Ljava/lang/Double;

    .line 254
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 256
    move-result-wide v0

    .line 259
    cmpl-double v0, v7, v0

    .line 260
    const/4 v1, 0x0

    .line 262
    if-lez v0, :cond_f

    .line 263
    move v0, v5

    .line 265
    goto :goto_8

    .line 266
    :cond_f
    move v0, v1

    .line 267
    :goto_8
    sub-double/2addr v9, v11

    .line 268
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    .line 269
    move-result-wide v2

    .line 272
    if-eqz v0, :cond_10

    .line 273
    add-double v6, v13, v2

    .line 275
    cmpg-double v0, v6, v15

    .line 277
    if-gtz v0, :cond_11

    .line 279
    goto :goto_9

    .line 281
    :cond_10
    cmpg-double v0, v13, v2

    .line 282
    if-gez v0, :cond_11

    .line 284
    goto :goto_9

    .line 286
    :cond_11
    move v5, v1

    .line 287
    :goto_9
    if-eqz v5, :cond_12

    .line 288
    add-double/2addr v13, v2

    .line 290
    goto :goto_b

    .line 291
    :cond_12
    sub-double/2addr v13, v2

    .line 292
    goto :goto_b

    .line 293
    :cond_13
    sub-double/2addr v3, v11

    .line 294
    const-wide/16 v0, 0x0

    .line 295
    cmpg-double v2, v3, v0

    .line 297
    if-gez v2, :cond_14

    .line 299
    const-wide/16 v13, 0x0

    .line 301
    goto :goto_b

    .line 303
    :cond_14
    cmpl-double v0, v3, v15

    .line 304
    if-lez v0, :cond_15

    .line 306
    :goto_a
    move-wide v13, v15

    .line 308
    goto :goto_b

    .line 309
    :cond_15
    move-wide v13, v3

    .line 310
    goto :goto_b

    .line 311
    :cond_16
    add-double/2addr v3, v11

    .line 312
    const-wide/16 v0, 0x0

    .line 313
    cmpg-double v2, v3, v0

    .line 315
    if-gez v2, :cond_17

    .line 317
    move-wide v13, v0

    .line 319
    goto :goto_b

    .line 320
    :cond_17
    cmpl-double v0, v3, v15

    .line 321
    if-lez v0, :cond_15

    .line 323
    goto :goto_a

    .line 325
    :goto_b
    return-wide v13
    .line 326
.end method

.method public static contrastingTone(DD)D
    .locals 23

    .line 1
    move-wide/from16 v0, p0

    .line 2
    const-wide/16 v2, 0x0

    .line 4
    cmpg-double v4, v0, v2

    .line 6
    const-wide/high16 v7, 0x4030000000000000L    # 16.0

    .line 8
    const-wide/high16 v9, 0x405d000000000000L    # 116.0

    .line 10
    const-wide v13, 0x3fa47ae147ae147bL    # 0.04

    .line 12
    const-wide/high16 v15, 0x4014000000000000L    # 5.0

    .line 17
    const-wide/high16 v17, 0x4059000000000000L    # 100.0

    .line 19
    if-ltz v4, :cond_4

    .line 21
    cmpl-double v19, v0, v17

    .line 23
    if-lez v19, :cond_0

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    invoke-static/range {p0 .. p1}, Lcom/android/systemui/monet/utils/ColorUtils;->yFromLstar(D)D

    .line 28
    move-result-wide v11

    .line 31
    add-double v20, v11, v15

    .line 32
    mul-double v20, v20, p2

    .line 34
    sub-double v5, v20, v15

    .line 36
    cmpg-double v20, v5, v2

    .line 38
    if-ltz v20, :cond_4

    .line 40
    cmpl-double v20, v5, v17

    .line 42
    if-lez v20, :cond_1

    .line 44
    goto :goto_0

    .line 46
    :cond_1
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->max(DD)D

    .line 47
    move-result-wide v20

    .line 50
    cmpl-double v22, v20, v11

    .line 51
    if-nez v22, :cond_2

    .line 53
    move-wide v11, v5

    .line 55
    :cond_2
    add-double v20, v20, v15

    .line 56
    add-double/2addr v11, v15

    .line 58
    div-double v20, v20, v11

    .line 59
    sub-double v11, v20, p2

    .line 61
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    .line 63
    move-result-wide v11

    .line 66
    cmpg-double v20, v20, p2

    .line 67
    if-gez v20, :cond_3

    .line 69
    cmpl-double v11, v11, v13

    .line 71
    if-lez v11, :cond_3

    .line 73
    goto :goto_0

    .line 75
    :cond_3
    div-double v5, v5, v17

    .line 76
    invoke-static {v5, v6}, Lcom/android/systemui/monet/utils/ColorUtils;->labF(D)D

    .line 78
    move-result-wide v5

    .line 81
    mul-double/2addr v5, v9

    .line 82
    sub-double/2addr v5, v7

    .line 83
    const-wide v11, 0x3fd999999999999aL    # 0.4

    .line 84
    add-double/2addr v5, v11

    .line 89
    cmpg-double v11, v5, v2

    .line 90
    if-ltz v11, :cond_4

    .line 92
    cmpl-double v11, v5, v17

    .line 94
    if-lez v11, :cond_5

    .line 96
    :cond_4
    :goto_0
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    .line 98
    :cond_5
    cmpg-double v11, v5, v2

    .line 100
    if-gez v11, :cond_6

    .line 102
    move-wide/from16 v5, v17

    .line 104
    :cond_6
    if-ltz v4, :cond_c

    .line 106
    cmpl-double v4, v0, v17

    .line 108
    if-lez v4, :cond_7

    .line 110
    goto :goto_2

    .line 112
    :cond_7
    invoke-static/range {p0 .. p1}, Lcom/android/systemui/monet/utils/ColorUtils;->yFromLstar(D)D

    .line 113
    move-result-wide v11

    .line 116
    add-double v20, v11, v15

    .line 117
    div-double v20, v20, p2

    .line 119
    sub-double v7, v20, v15

    .line 121
    cmpg-double v4, v7, v2

    .line 123
    if-ltz v4, :cond_c

    .line 125
    cmpl-double v4, v7, v17

    .line 127
    if-lez v4, :cond_8

    .line 129
    goto :goto_2

    .line 131
    :cond_8
    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->max(DD)D

    .line 132
    move-result-wide v20

    .line 135
    cmpl-double v4, v20, v7

    .line 136
    if-nez v4, :cond_9

    .line 138
    goto :goto_1

    .line 140
    :cond_9
    move-wide v11, v7

    .line 141
    :goto_1
    add-double v20, v20, v15

    .line 142
    add-double/2addr v11, v15

    .line 144
    div-double v20, v20, v11

    .line 145
    sub-double v11, v20, p2

    .line 147
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    .line 149
    move-result-wide v11

    .line 152
    cmpg-double v4, v20, p2

    .line 153
    if-gez v4, :cond_a

    .line 155
    cmpl-double v4, v11, v13

    .line 157
    if-lez v4, :cond_a

    .line 159
    goto :goto_2

    .line 161
    :cond_a
    div-double v7, v7, v17

    .line 162
    invoke-static {v7, v8}, Lcom/android/systemui/monet/utils/ColorUtils;->labF(D)D

    .line 164
    move-result-wide v7

    .line 167
    mul-double/2addr v7, v9

    .line 168
    const-wide/high16 v9, 0x4030000000000000L    # 16.0

    .line 169
    sub-double/2addr v7, v9

    .line 171
    const-wide v9, 0x3fd999999999999aL    # 0.4

    .line 172
    sub-double/2addr v7, v9

    .line 177
    cmpg-double v4, v7, v2

    .line 178
    if-ltz v4, :cond_c

    .line 180
    cmpl-double v4, v7, v17

    .line 182
    if-lez v4, :cond_b

    .line 184
    goto :goto_2

    .line 186
    :cond_b
    move-wide v11, v7

    .line 187
    goto :goto_3

    .line 188
    :cond_c
    :goto_2
    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    .line 189
    :goto_3
    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->max(DD)D

    .line 191
    move-result-wide v2

    .line 194
    invoke-static {v5, v6, v0, v1}, Lcom/android/systemui/monet/contrast/Contrast;->ratioOfTones(DD)D

    .line 195
    move-result-wide v7

    .line 198
    invoke-static {v2, v3, v0, v1}, Lcom/android/systemui/monet/contrast/Contrast;->ratioOfTones(DD)D

    .line 199
    move-result-wide v9

    .line 202
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->round(D)J

    .line 203
    move-result-wide v0

    .line 206
    const-wide/16 v11, 0x3c

    .line 207
    cmp-long v0, v0, v11

    .line 209
    const/4 v1, 0x1

    .line 211
    const/4 v4, 0x0

    .line 212
    if-gez v0, :cond_d

    .line 213
    move v0, v1

    .line 215
    goto :goto_4

    .line 216
    :cond_d
    move v0, v4

    .line 217
    :goto_4
    if-eqz v0, :cond_11

    .line 218
    sub-double v11, v7, v9

    .line 220
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    .line 222
    move-result-wide v11

    .line 225
    const-wide v13, 0x3fb999999999999aL    # 0.1

    .line 226
    cmpg-double v0, v11, v13

    .line 231
    if-gez v0, :cond_e

    .line 233
    cmpg-double v0, v7, p2

    .line 235
    if-gez v0, :cond_e

    .line 237
    cmpg-double v0, v9, p2

    .line 239
    if-gez v0, :cond_e

    .line 241
    goto :goto_5

    .line 243
    :cond_e
    move v1, v4

    .line 244
    :goto_5
    cmpl-double v0, v7, p2

    .line 245
    if-gez v0, :cond_10

    .line 247
    cmpl-double v0, v7, v9

    .line 249
    if-gez v0, :cond_10

    .line 251
    if-eqz v1, :cond_f

    .line 253
    goto :goto_6

    .line 255
    :cond_f
    return-wide v2

    .line 256
    :cond_10
    :goto_6
    return-wide v5

    .line 257
    :cond_11
    cmpl-double v0, v9, p2

    .line 258
    if-gez v0, :cond_12

    .line 260
    cmpl-double v0, v9, v7

    .line 262
    if-ltz v0, :cond_13

    .line 264
    :cond_12
    move-wide v5, v2

    .line 266
    :cond_13
    return-wide v5
    .line 267
.end method

.method public static enableLightForeground(D)D
    .locals 7

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    .line 2
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x3c

    .line 6
    cmp-long v0, v0, v2

    .line 8
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-gez v0, :cond_0

    .line 12
    move v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    :goto_0
    if-eqz v0, :cond_2

    .line 17
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    .line 19
    move-result-wide v3

    .line 22
    const-wide/16 v5, 0x31

    .line 23
    cmp-long v0, v3, v5

    .line 25
    if-gtz v0, :cond_1

    .line 27
    goto :goto_1

    .line 29
    :cond_1
    move v1, v2

    .line 30
    :goto_1
    if-nez v1, :cond_2

    .line 31
    const-wide p0, 0x4048800000000000L    # 49.0

    .line 33
    :cond_2
    return-wide p0
    .line 38
.end method

.method public static fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;
    .locals 10

    .line 1
    new-instance v9, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 2
    new-instance v1, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda3;

    .line 4
    const/4 v0, 0x0

    .line 6
    invoke-direct {v1, v0, p0}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 7
    new-instance v2, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda3;

    .line 10
    const/4 v3, 0x1

    .line 12
    invoke-direct {v2, v3, p0}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 13
    const/4 v4, 0x0

    .line 16
    new-instance v6, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda4;

    .line 17
    invoke-direct {v6, p1, p2, p3, v0}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;I)V

    .line 19
    new-instance v7, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda4;

    .line 22
    invoke-direct {v7, p1, p2, p3, v3}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;I)V

    .line 24
    move-object v0, v9

    .line 27
    move-object v3, p1

    .line 28
    move-object v5, p2

    .line 29
    move-object v8, p3

    .line 30
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)V

    .line 31
    return-object v9
    .line 34
.end method


# virtual methods
.method public final getArgb(Lcom/android/systemui/monet/scheme/DynamicScheme;)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->hctCache:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v1

    .line 7
    check-cast v1, Lcom/android/systemui/monet/hct/Hct;

    .line 8
    if-eqz v1, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->hue:Ljava/util/function/Function;

    .line 13
    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/Double;

    .line 19
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 21
    move-result-wide v2

    .line 24
    iget-object v1, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->chroma:Ljava/util/function/Function;

    .line 25
    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/Double;

    .line 31
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 33
    move-result-wide v4

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->getTone(Lcom/android/systemui/monet/scheme/DynamicScheme;)D

    .line 37
    move-result-wide v6

    .line 40
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/monet/hct/Hct;->from(DDD)Lcom/android/systemui/monet/hct/Hct;

    .line 41
    move-result-object v1

    .line 44
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 45
    move-result v2

    .line 48
    const/4 v3, 0x4

    .line 49
    if-le v2, v3, :cond_1

    .line 50
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 52
    :cond_1
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :goto_0
    iget v0, v1, Lcom/android/systemui/monet/hct/Hct;->argb:I

    .line 58
    iget-object p0, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->opacity:Ljava/util/function/Function;

    .line 60
    if-nez p0, :cond_2

    .line 62
    return v0

    .line 64
    :cond_2
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-result-object p0

    .line 68
    check-cast p0, Ljava/lang/Double;

    .line 69
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 71
    move-result-wide p0

    .line 74
    const-wide v1, 0x406fe00000000000L    # 255.0

    .line 75
    mul-double/2addr p0, v1

    .line 80
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    .line 81
    move-result-wide p0

    .line 84
    long-to-int p0, p0

    .line 85
    if-gez p0, :cond_3

    .line 86
    const/4 p0, 0x0

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    const/16 p1, 0xff

    .line 90
    if-le p0, p1, :cond_4

    .line 92
    move p0, p1

    .line 94
    :cond_4
    :goto_1
    const p1, 0xffffff

    .line 95
    and-int/2addr p1, v0

    .line 98
    shl-int/lit8 p0, p0, 0x18

    .line 99
    or-int/2addr p0, p1

    .line 101
    return p0
    .line 102
.end method

.method public final getTone(Lcom/android/systemui/monet/scheme/DynamicScheme;)D
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-object v2, v0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->tone:Ljava/util/function/Function;

    .line 6
    invoke-interface {v2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v3

    .line 11
    check-cast v3, Ljava/lang/Double;

    .line 12
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 14
    move-result-wide v3

    .line 17
    iget-wide v5, v1, Lcom/android/systemui/monet/scheme/DynamicScheme;->contrastLevel:D

    .line 18
    const-wide/16 v7, 0x0

    .line 20
    cmpg-double v9, v5, v7

    .line 22
    const/4 v10, 0x1

    .line 24
    const/4 v11, 0x0

    .line 25
    if-gez v9, :cond_0

    .line 26
    move v9, v10

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v9, v11

    .line 30
    :goto_0
    cmpl-double v5, v5, v7

    .line 31
    iget-object v6, v0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->toneMinContrast:Ljava/util/function/Function;

    .line 33
    iget-object v7, v0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->toneMaxContrast:Ljava/util/function/Function;

    .line 35
    if-eqz v5, :cond_2

    .line 37
    invoke-interface {v2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 42
    check-cast v3, Ljava/lang/Double;

    .line 43
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 45
    move-result-wide v3

    .line 48
    if-eqz v9, :cond_1

    .line 49
    invoke-interface {v6, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v5

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-interface {v7, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    move-result-object v5

    .line 59
    :goto_1
    check-cast v5, Ljava/lang/Double;

    .line 60
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 62
    move-result-wide v12

    .line 65
    sub-double/2addr v12, v3

    .line 66
    iget-wide v14, v1, Lcom/android/systemui/monet/scheme/DynamicScheme;->contrastLevel:D

    .line 67
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    .line 69
    move-result-wide v14

    .line 72
    mul-double/2addr v14, v12

    .line 73
    add-double/2addr v3, v14

    .line 74
    :cond_2
    iget-object v5, v0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->background:Ljava/util/function/Function;

    .line 75
    if-nez v5, :cond_3

    .line 77
    const/4 v5, 0x0

    .line 79
    goto :goto_2

    .line 80
    :cond_3
    invoke-interface {v5, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    move-result-object v5

    .line 84
    check-cast v5, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 85
    :goto_2
    if-eqz v5, :cond_8

    .line 87
    iget-object v8, v5, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->background:Ljava/util/function/Function;

    .line 89
    if-eqz v8, :cond_4

    .line 91
    invoke-interface {v8, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    move-result-object v8

    .line 96
    if-eqz v8, :cond_4

    .line 97
    move v8, v10

    .line 99
    goto :goto_3

    .line 100
    :cond_4
    move v8, v11

    .line 101
    :goto_3
    invoke-interface {v2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    move-result-object v2

    .line 105
    check-cast v2, Ljava/lang/Double;

    .line 106
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 108
    move-result-wide v12

    .line 111
    iget-object v2, v5, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->tone:Ljava/util/function/Function;

    .line 112
    invoke-interface {v2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    move-result-object v2

    .line 117
    check-cast v2, Ljava/lang/Double;

    .line 118
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 120
    move-result-wide v14

    .line 123
    invoke-static {v12, v13, v14, v15}, Lcom/android/systemui/monet/contrast/Contrast;->ratioOfTones(DD)D

    .line 124
    move-result-wide v12

    .line 127
    if-eqz v9, :cond_5

    .line 128
    invoke-interface {v6, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    move-result-object v2

    .line 133
    check-cast v2, Ljava/lang/Double;

    .line 134
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 136
    move-result-wide v6

    .line 139
    iget-object v2, v5, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->toneMinContrast:Ljava/util/function/Function;

    .line 140
    invoke-interface {v2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    move-result-object v2

    .line 145
    check-cast v2, Ljava/lang/Double;

    .line 146
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 148
    move-result-wide v14

    .line 151
    invoke-static {v6, v7, v14, v15}, Lcom/android/systemui/monet/contrast/Contrast;->ratioOfTones(DD)D

    .line 152
    move-result-wide v6

    .line 155
    move-wide v14, v12

    .line 156
    if-eqz v8, :cond_9

    .line 157
    move-wide v12, v6

    .line 159
    goto :goto_5

    .line 160
    :cond_5
    invoke-interface {v7, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    move-result-object v2

    .line 164
    check-cast v2, Ljava/lang/Double;

    .line 165
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 167
    move-result-wide v6

    .line 170
    iget-object v2, v5, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->toneMaxContrast:Ljava/util/function/Function;

    .line 171
    invoke-interface {v2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    move-result-object v2

    .line 176
    check-cast v2, Ljava/lang/Double;

    .line 177
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 179
    move-result-wide v14

    .line 182
    invoke-static {v6, v7, v14, v15}, Lcom/android/systemui/monet/contrast/Contrast;->ratioOfTones(DD)D

    .line 183
    move-result-wide v6

    .line 186
    if-eqz v8, :cond_6

    .line 187
    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->min(DD)D

    .line 189
    move-result-wide v14

    .line 192
    goto :goto_4

    .line 193
    :cond_6
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 194
    :goto_4
    if-eqz v8, :cond_7

    .line 196
    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(DD)D

    .line 198
    move-result-wide v6

    .line 201
    move-wide v12, v14

    .line 202
    move-wide v14, v6

    .line 203
    goto :goto_5

    .line 204
    :cond_7
    move-wide v12, v14

    .line 205
    const-wide/high16 v14, 0x4035000000000000L    # 21.0

    .line 206
    goto :goto_5

    .line 208
    :cond_8
    const-wide/high16 v14, 0x4035000000000000L    # 21.0

    .line 209
    :cond_9
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 211
    :goto_5
    iget-object v2, v0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->tone:Ljava/util/function/Function;

    .line 213
    new-instance v6, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;

    .line 215
    invoke-direct {v6, v1, v11}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/monet/scheme/DynamicScheme;I)V

    .line 217
    new-instance v7, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda1;

    .line 220
    invoke-direct {v7, v3, v4}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda1;-><init>(D)V

    .line 222
    new-instance v4, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda3;

    .line 225
    const/4 v3, 0x2

    .line 227
    invoke-direct {v4, v3, v5}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 228
    iget-object v5, v0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->toneDeltaConstraint:Ljava/util/function/Function;

    .line 231
    new-instance v8, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda2;

    .line 233
    invoke-direct {v8, v12, v13, v11}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda2;-><init>(DI)V

    .line 235
    new-instance v9, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda2;

    .line 238
    invoke-direct {v9, v14, v15, v10}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda2;-><init>(DI)V

    .line 240
    move-object/from16 v0, p1

    .line 243
    move-object v1, v2

    .line 245
    move-object v2, v6

    .line 246
    move-object v3, v7

    .line 247
    move-object v6, v8

    .line 248
    move-object v7, v9

    .line 249
    invoke-static/range {v0 .. v7}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->calculateDynamicTone(Lcom/android/systemui/monet/scheme/DynamicScheme;Ljava/util/function/Function;Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;Ljava/util/function/BiFunction;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda2;Ljava/util/function/Function;)D

    .line 250
    move-result-wide v0

    .line 253
    return-wide v0
    .line 254
.end method
