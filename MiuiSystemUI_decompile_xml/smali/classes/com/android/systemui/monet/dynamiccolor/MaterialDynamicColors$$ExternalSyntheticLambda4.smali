.class public final synthetic Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget p0, p0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    sget-object v0, Lcom/android/systemui/monet/scheme/Variant;->MONOCHROME:Lcom/android/systemui/monet/scheme/Variant;

    .line 4
    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    .line 6
    const-wide/high16 v3, 0x4054000000000000L    # 80.0

    .line 8
    const-wide v5, 0x4056800000000000L    # 90.0

    .line 10
    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    .line 15
    const-wide/high16 v9, 0x403e000000000000L    # 30.0

    .line 17
    const/4 v11, 0x1

    .line 19
    const/4 v12, 0x0

    .line 20
    packed-switch p0, :pswitch_data_0

    .line 21
    goto/16 :goto_e

    .line 24
    :pswitch_0
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 26
    iget-boolean p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 28
    if-eqz p0, :cond_0

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    move-wide v3, v9

    .line 33
    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 34
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_1
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 39
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralVariantPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 41
    return-object p0

    .line 43
    :pswitch_2
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 44
    iget-boolean p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 46
    if-eqz p0, :cond_1

    .line 48
    const-wide/high16 v5, 0x4036000000000000L    # 22.0

    .line 50
    :cond_1
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 52
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :pswitch_3
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 57
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 59
    return-object p0

    .line 61
    :pswitch_4
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 62
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 64
    if-ne p0, v0, :cond_2

    .line 66
    goto :goto_1

    .line 68
    :cond_2
    move v11, v12

    .line 69
    :goto_1
    if-eqz v11, :cond_3

    .line 70
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 72
    move-result-object p0

    .line 75
    goto :goto_2

    .line 76
    :cond_3
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 77
    move-result-object p0

    .line 80
    :goto_2
    return-object p0

    .line 81
    :pswitch_5
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 82
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->primaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 84
    return-object p0

    .line 86
    :pswitch_6
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 87
    iget-boolean p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 89
    if-eqz p0, :cond_4

    .line 91
    move-wide v3, v9

    .line 93
    :cond_4
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 94
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    :pswitch_7
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 99
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralVariantPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 101
    return-object p0

    .line 103
    :pswitch_8
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 104
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 106
    if-ne p0, v0, :cond_5

    .line 108
    goto :goto_3

    .line 110
    :cond_5
    move v11, v12

    .line 111
    :goto_3
    if-eqz v11, :cond_6

    .line 112
    goto :goto_4

    .line 114
    :cond_6
    move-wide v1, v7

    .line 115
    :goto_4
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 116
    move-result-object p0

    .line 119
    return-object p0

    .line 120
    :pswitch_9
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 121
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->tertiaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 123
    return-object p0

    .line 125
    :pswitch_a
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 126
    iget-boolean p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 128
    if-eqz p0, :cond_7

    .line 130
    move-wide v5, v9

    .line 132
    :cond_7
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 133
    move-result-object p0

    .line 136
    return-object p0

    .line 137
    :pswitch_b
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 138
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->errorPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 140
    return-object p0

    .line 142
    :pswitch_c
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 143
    iget-boolean p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 145
    if-eqz p0, :cond_8

    .line 147
    move-wide v5, v7

    .line 149
    :cond_8
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 150
    move-result-object p0

    .line 153
    return-object p0

    .line 154
    :pswitch_d
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 155
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 157
    return-object p0

    .line 159
    :pswitch_e
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 160
    iget-boolean p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 162
    if-eqz p0, :cond_9

    .line 164
    goto :goto_5

    .line 166
    :cond_9
    const-wide/high16 v7, 0x4058000000000000L    # 96.0

    .line 167
    :goto_5
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 169
    move-result-object p0

    .line 172
    return-object p0

    .line 173
    :pswitch_f
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 174
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 176
    return-object p0

    .line 178
    :pswitch_10
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 179
    iget-boolean p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 181
    if-eqz p0, :cond_a

    .line 183
    const-wide/high16 p0, 0x4031000000000000L    # 17.0

    .line 185
    goto :goto_6

    .line 187
    :cond_a
    const-wide/high16 p0, 0x4057000000000000L    # 92.0

    .line 188
    :goto_6
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 190
    move-result-object p0

    .line 193
    return-object p0

    .line 194
    :pswitch_11
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 195
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 197
    return-object p0

    .line 199
    :pswitch_12
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 200
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->secondaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 202
    return-object p0

    .line 204
    :pswitch_13
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 205
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 207
    if-ne p0, v0, :cond_b

    .line 209
    goto :goto_7

    .line 211
    :cond_b
    move v11, v12

    .line 212
    :goto_7
    iget-boolean p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 213
    if-eqz v11, :cond_d

    .line 215
    if-eqz p0, :cond_c

    .line 217
    move-wide v1, v7

    .line 219
    :cond_c
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 220
    move-result-object p0

    .line 223
    goto :goto_8

    .line 224
    :cond_d
    if-eqz p0, :cond_e

    .line 225
    const-wide/high16 v1, 0x4034000000000000L    # 20.0

    .line 227
    :cond_e
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 229
    move-result-object p0

    .line 232
    :goto_8
    return-object p0

    .line 233
    :pswitch_14
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 234
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->secondaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 236
    return-object p0

    .line 238
    :pswitch_15
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 239
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 241
    if-ne p0, v0, :cond_f

    .line 243
    goto :goto_9

    .line 245
    :cond_f
    move v11, v12

    .line 246
    :goto_9
    if-eqz v11, :cond_10

    .line 247
    move-wide v3, v9

    .line 249
    :cond_10
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 250
    move-result-object p0

    .line 253
    return-object p0

    .line 254
    :pswitch_16
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 255
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->tertiaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 257
    return-object p0

    .line 259
    :pswitch_17
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 260
    invoke-static {p1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->isFidelity(Lcom/android/systemui/monet/scheme/DynamicScheme;)Z

    .line 262
    move-result p0

    .line 265
    if-eqz p0, :cond_11

    .line 266
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->sourceColorHct:Lcom/android/systemui/monet/hct/Hct;

    .line 268
    invoke-static {p0, p1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->performAlbers(Lcom/android/systemui/monet/hct/Hct;Lcom/android/systemui/monet/scheme/DynamicScheme;)D

    .line 270
    move-result-wide p0

    .line 273
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 274
    move-result-object p0

    .line 277
    goto :goto_c

    .line 278
    :cond_11
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 279
    if-ne p0, v0, :cond_12

    .line 281
    goto :goto_a

    .line 283
    :cond_12
    move v11, v12

    .line 284
    :goto_a
    iget-boolean p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 285
    if-eqz v11, :cond_14

    .line 287
    if-eqz p0, :cond_13

    .line 289
    const-wide p0, 0x4055400000000000L    # 85.0

    .line 291
    goto :goto_b

    .line 296
    :cond_13
    const-wide/high16 p0, 0x4039000000000000L    # 25.0

    .line 297
    :goto_b
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 299
    move-result-object p0

    .line 302
    goto :goto_c

    .line 303
    :cond_14
    if-eqz p0, :cond_15

    .line 304
    move-wide v5, v9

    .line 306
    :cond_15
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 307
    move-result-object p0

    .line 310
    :goto_c
    return-object p0

    .line 311
    :pswitch_18
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 312
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->primaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 314
    return-object p0

    .line 316
    :pswitch_19
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 317
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->primaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 319
    iget-object p0, p0, Lcom/android/systemui/monet/palettes/TonalPalette;->keyColor:Lcom/android/systemui/monet/hct/Hct;

    .line 321
    iget-wide p0, p0, Lcom/android/systemui/monet/hct/Hct;->tone:D

    .line 323
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 325
    move-result-object p0

    .line 328
    return-object p0

    .line 329
    :pswitch_1a
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 330
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->primaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 332
    return-object p0

    .line 334
    :pswitch_1b
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 335
    iget-boolean p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 337
    if-eqz p0, :cond_16

    .line 339
    const-wide/high16 p0, 0x4018000000000000L    # 6.0

    .line 341
    goto :goto_d

    .line 343
    :cond_16
    const-wide p0, 0x4058800000000000L    # 98.0

    .line 344
    :goto_d
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 349
    move-result-object p0

    .line 352
    return-object p0

    .line 353
    :pswitch_1c
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 354
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 356
    return-object p0

    .line 358
    :goto_e
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 359
    const-wide/16 p0, 0x0

    .line 361
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 363
    move-result-object p0

    .line 366
    return-object p0

    .line 367
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 368
.end method
