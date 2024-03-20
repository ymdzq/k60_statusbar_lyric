.class public final Lcom/miui/lockscreeninfo/b;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:Landroid/text/TextPaint;

.field public c:I

.field public final d:I

.field public final e:I

.field public final f:F

.field public final g:F

.field public final h:F

.field public i:I

.field public j:[F

.field public k:[I

.field public l:[F

.field public m:F

.field public n:F

.field public o:F

.field public p:I

.field public final q:Landroid/graphics/Paint$FontMetricsInt;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;IIFFF)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/high16 v2, 0x3f800000    # 1.0f

    .line 9
    iput v2, v0, Lcom/miui/lockscreeninfo/b;->h:F

    .line 11
    const/4 v3, 0x0

    .line 13
    iput v3, v0, Lcom/miui/lockscreeninfo/b;->p:I

    .line 14
    iput-object v1, v0, Lcom/miui/lockscreeninfo/b;->a:Ljava/lang/CharSequence;

    .line 16
    move-object/from16 v4, p2

    .line 18
    iput-object v4, v0, Lcom/miui/lockscreeninfo/b;->b:Landroid/text/TextPaint;

    .line 20
    move/from16 v5, p3

    .line 22
    iput v5, v0, Lcom/miui/lockscreeninfo/b;->d:I

    .line 24
    move/from16 v5, p4

    .line 26
    iput v5, v0, Lcom/miui/lockscreeninfo/b;->e:I

    .line 28
    move/from16 v5, p5

    .line 30
    iput v5, v0, Lcom/miui/lockscreeninfo/b;->f:F

    .line 32
    move/from16 v5, p6

    .line 34
    iput v5, v0, Lcom/miui/lockscreeninfo/b;->g:F

    .line 36
    move/from16 v5, p7

    .line 38
    iput v5, v0, Lcom/miui/lockscreeninfo/b;->h:F

    .line 40
    invoke-virtual/range {p2 .. p2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 42
    move-result-object v4

    .line 45
    iput-object v4, v0, Lcom/miui/lockscreeninfo/b;->q:Landroid/graphics/Paint$FontMetricsInt;

    .line 46
    const/4 v4, 0x0

    .line 48
    iput v4, v0, Lcom/miui/lockscreeninfo/b;->o:F

    .line 49
    iput v3, v0, Lcom/miui/lockscreeninfo/b;->i:I

    .line 51
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    .line 53
    move-result v5

    .line 56
    const/4 v6, 0x1

    .line 57
    add-int/2addr v5, v6

    .line 58
    new-array v5, v5, [F

    .line 59
    iput-object v5, v0, Lcom/miui/lockscreeninfo/b;->j:[F

    .line 61
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    .line 63
    move-result v5

    .line 66
    add-int/2addr v5, v6

    .line 67
    new-array v5, v5, [I

    .line 68
    iput-object v5, v0, Lcom/miui/lockscreeninfo/b;->k:[I

    .line 70
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    .line 72
    move-result v5

    .line 75
    add-int/2addr v5, v6

    .line 76
    new-array v5, v5, [F

    .line 77
    iput-object v5, v0, Lcom/miui/lockscreeninfo/b;->l:[F

    .line 79
    iput v4, v0, Lcom/miui/lockscreeninfo/b;->n:F

    .line 81
    move v5, v3

    .line 83
    move v7, v5

    .line 84
    move v10, v4

    .line 85
    move v11, v10

    .line 86
    move v8, v6

    .line 87
    move v9, v8

    .line 88
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    .line 89
    move-result v12

    .line 92
    if-ge v5, v12, :cond_13

    .line 93
    invoke-static {v1, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 95
    move-result v12

    .line 98
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    .line 99
    move-result v13

    .line 102
    invoke-static {v12}, Ljava/lang/Character;->isWhitespace(I)Z

    .line 103
    move-result v14

    .line 106
    invoke-static {v12}, Lcom/miui/lockscreeninfo/c;->a(I)Z

    .line 107
    move-result v15

    .line 110
    if-nez v15, :cond_2

    .line 111
    invoke-static {v12}, Lcom/miui/lockscreeninfo/c;->c(I)Z

    .line 113
    move-result v15

    .line 116
    if-nez v15, :cond_2

    .line 117
    const/16 v15, 0x20

    .line 119
    if-lt v12, v15, :cond_1

    .line 121
    const/16 v15, 0x7f

    .line 123
    if-ne v12, v15, :cond_0

    .line 125
    goto :goto_1

    .line 127
    :cond_0
    move v15, v3

    .line 128
    goto :goto_2

    .line 129
    :cond_1
    :goto_1
    move v15, v6

    .line 130
    :goto_2
    if-nez v15, :cond_2

    .line 131
    move v15, v6

    .line 133
    goto :goto_3

    .line 134
    :cond_2
    move v15, v3

    .line 135
    :goto_3
    iget-object v3, v0, Lcom/miui/lockscreeninfo/b;->q:Landroid/graphics/Paint$FontMetricsInt;

    .line 136
    iget-object v4, v0, Lcom/miui/lockscreeninfo/b;->b:Landroid/text/TextPaint;

    .line 138
    const/16 v6, 0xa

    .line 140
    const-string/jumbo v2, "\u4e00"

    .line 142
    if-eqz v15, :cond_4

    .line 145
    iget v12, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 147
    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 149
    sub-int/2addr v12, v3

    .line 151
    int-to-float v3, v12

    .line 152
    if-eqz v14, :cond_3

    .line 153
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 155
    move-result v2

    .line 158
    const/high16 v4, 0x40000000    # 2.0f

    .line 159
    div-float/2addr v2, v4

    .line 161
    goto :goto_5

    .line 162
    :cond_3
    add-int v2, v5, v13

    .line 163
    invoke-virtual {v4, v1, v5, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    .line 165
    move-result v2

    .line 168
    goto :goto_5

    .line 169
    :cond_4
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 170
    move-result v14

    .line 173
    if-ne v14, v6, :cond_5

    .line 174
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 176
    move-result v3

    .line 179
    const/4 v2, 0x0

    .line 180
    goto :goto_5

    .line 181
    :cond_5
    invoke-static {v12}, Lcom/miui/lockscreeninfo/c;->c(I)Z

    .line 182
    move-result v12

    .line 185
    if-eqz v12, :cond_6

    .line 186
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 188
    move-result v2

    .line 191
    goto :goto_4

    .line 192
    :cond_6
    add-int v2, v5, v13

    .line 193
    invoke-virtual {v4, v1, v5, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    .line 195
    move-result v2

    .line 198
    :goto_4
    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 199
    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 201
    sub-int/2addr v4, v3

    .line 203
    int-to-float v3, v4

    .line 204
    move/from16 v16, v3

    .line 205
    move v3, v2

    .line 207
    move/from16 v2, v16

    .line 208
    :goto_5
    if-nez v9, :cond_8

    .line 210
    iget v4, v0, Lcom/miui/lockscreeninfo/b;->h:F

    .line 212
    if-eqz v15, :cond_7

    .line 214
    const v12, 0x3e4ccccd    # 0.2f

    .line 216
    add-float/2addr v4, v12

    .line 219
    :cond_7
    const/high16 v12, 0x3f800000    # 1.0f

    .line 220
    sub-float/2addr v4, v12

    .line 222
    mul-float/2addr v4, v10

    .line 223
    goto :goto_6

    .line 224
    :cond_8
    const/high16 v12, 0x3f800000    # 1.0f

    .line 225
    const/4 v4, 0x0

    .line 227
    :goto_6
    if-nez v9, :cond_a

    .line 228
    if-eqz v15, :cond_9

    .line 230
    goto :goto_7

    .line 232
    :cond_9
    add-float/2addr v4, v2

    .line 233
    goto :goto_8

    .line 234
    :cond_a
    :goto_7
    move v4, v2

    .line 235
    :goto_8
    add-float/2addr v4, v11

    .line 236
    iget v10, v0, Lcom/miui/lockscreeninfo/b;->e:I

    .line 237
    int-to-float v10, v10

    .line 239
    cmpl-float v14, v4, v10

    .line 240
    if-gtz v14, :cond_c

    .line 242
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 244
    move-result v14

    .line 247
    if-ne v14, v6, :cond_b

    .line 248
    if-eqz v5, :cond_b

    .line 250
    goto :goto_9

    .line 252
    :cond_b
    const/4 v14, 0x0

    .line 253
    goto :goto_a

    .line 254
    :cond_c
    :goto_9
    const/4 v14, 0x1

    .line 255
    :goto_a
    if-eqz v14, :cond_f

    .line 256
    iget v4, v0, Lcom/miui/lockscreeninfo/b;->o:F

    .line 258
    cmpg-float v4, v4, v11

    .line 260
    if-gez v4, :cond_d

    .line 262
    iput v11, v0, Lcom/miui/lockscreeninfo/b;->o:F

    .line 264
    :cond_d
    iget-object v4, v0, Lcom/miui/lockscreeninfo/b;->l:[F

    .line 266
    invoke-static {v11, v10}, Ljava/lang/Math;->min(FF)F

    .line 268
    move-result v11

    .line 271
    aput v11, v4, v7

    .line 272
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 274
    move-result v4

    .line 277
    if-ne v4, v6, :cond_e

    .line 278
    iget-object v4, v0, Lcom/miui/lockscreeninfo/b;->k:[I

    .line 280
    aput v5, v4, v7

    .line 282
    goto :goto_b

    .line 284
    :cond_e
    iget-object v4, v0, Lcom/miui/lockscreeninfo/b;->k:[I

    .line 285
    sub-int v6, v5, v8

    .line 287
    aput v6, v4, v7

    .line 289
    :goto_b
    iget v4, v0, Lcom/miui/lockscreeninfo/b;->c:I

    .line 291
    int-to-float v4, v4

    .line 293
    iget-object v6, v0, Lcom/miui/lockscreeninfo/b;->j:[F

    .line 294
    aget v6, v6, v7

    .line 296
    add-float/2addr v4, v6

    .line 298
    float-to-int v4, v4

    .line 299
    iput v4, v0, Lcom/miui/lockscreeninfo/b;->c:I

    .line 300
    add-int/lit8 v7, v7, 0x1

    .line 302
    move v11, v2

    .line 304
    goto :goto_c

    .line 305
    :cond_f
    iget v6, v0, Lcom/miui/lockscreeninfo/b;->o:F

    .line 306
    cmpg-float v6, v6, v4

    .line 308
    if-gez v6, :cond_10

    .line 310
    iput v4, v0, Lcom/miui/lockscreeninfo/b;->o:F

    .line 312
    :cond_10
    move v11, v4

    .line 314
    const/4 v9, 0x0

    .line 315
    :goto_c
    iget-object v4, v0, Lcom/miui/lockscreeninfo/b;->j:[F

    .line 316
    aget v6, v4, v7

    .line 318
    cmpg-float v6, v6, v3

    .line 320
    if-gez v6, :cond_11

    .line 322
    aput v3, v4, v7

    .line 324
    iget v4, v0, Lcom/miui/lockscreeninfo/b;->n:F

    .line 326
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    .line 328
    move-result v3

    .line 331
    iput v3, v0, Lcom/miui/lockscreeninfo/b;->n:F

    .line 332
    :cond_11
    add-int/2addr v5, v13

    .line 334
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    .line 335
    move-result v3

    .line 338
    if-lt v5, v3, :cond_12

    .line 339
    iget v3, v0, Lcom/miui/lockscreeninfo/b;->c:I

    .line 341
    int-to-float v3, v3

    .line 343
    iget-object v4, v0, Lcom/miui/lockscreeninfo/b;->j:[F

    .line 344
    aget v4, v4, v7

    .line 346
    add-float/2addr v3, v4

    .line 348
    float-to-int v3, v3

    .line 349
    iput v3, v0, Lcom/miui/lockscreeninfo/b;->c:I

    .line 350
    iget-object v3, v0, Lcom/miui/lockscreeninfo/b;->l:[F

    .line 352
    invoke-static {v11, v10}, Ljava/lang/Math;->min(FF)F

    .line 354
    move-result v4

    .line 357
    aput v4, v3, v7

    .line 358
    :cond_12
    move v10, v2

    .line 360
    move v2, v12

    .line 361
    move v8, v13

    .line 362
    const/4 v3, 0x0

    .line 363
    const/4 v4, 0x0

    .line 364
    const/4 v6, 0x1

    .line 365
    goto/16 :goto_0

    .line 366
    :cond_13
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    .line 368
    move-result v2

    .line 371
    if-lez v2, :cond_14

    .line 372
    add-int/lit8 v2, v7, 0x1

    .line 374
    iput v2, v0, Lcom/miui/lockscreeninfo/b;->i:I

    .line 376
    iget-object v2, v0, Lcom/miui/lockscreeninfo/b;->k:[I

    .line 378
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    .line 380
    move-result v1

    .line 383
    sub-int/2addr v1, v8

    .line 384
    aput v1, v2, v7

    .line 385
    :cond_14
    iget v1, v0, Lcom/miui/lockscreeninfo/b;->i:I

    .line 387
    const/4 v2, 0x1

    .line 389
    if-le v1, v2, :cond_15

    .line 390
    invoke-virtual {v0, v1}, Lcom/miui/lockscreeninfo/b;->c(I)F

    .line 392
    move-result v1

    .line 395
    float-to-int v1, v1

    .line 396
    iput v1, v0, Lcom/miui/lockscreeninfo/b;->c:I

    .line 397
    :cond_15
    iget v1, v0, Lcom/miui/lockscreeninfo/b;->c:I

    .line 399
    int-to-float v1, v1

    .line 401
    iput v1, v0, Lcom/miui/lockscreeninfo/b;->m:F

    .line 402
    iget v1, v0, Lcom/miui/lockscreeninfo/b;->i:I

    .line 404
    :goto_d
    iget v2, v0, Lcom/miui/lockscreeninfo/b;->m:F

    .line 406
    iget v3, v0, Lcom/miui/lockscreeninfo/b;->d:I

    .line 408
    int-to-float v3, v3

    .line 410
    cmpl-float v2, v2, v3

    .line 411
    if-lez v2, :cond_16

    .line 413
    if-lez v1, :cond_16

    .line 415
    add-int/lit8 v1, v1, -0x1

    .line 417
    invoke-virtual {v0, v1}, Lcom/miui/lockscreeninfo/b;->c(I)F

    .line 419
    move-result v2

    .line 422
    iput v2, v0, Lcom/miui/lockscreeninfo/b;->m:F

    .line 423
    goto :goto_d

    .line 425
    :cond_16
    iput v1, v0, Lcom/miui/lockscreeninfo/b;->p:I

    .line 426
    return-void
    .line 428
.end method


# virtual methods
.method public final c(I)F
    .locals 5

    .line 1
    iget v0, p0, Lcom/miui/lockscreeninfo/b;->n:F

    .line 2
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_0

    .line 5
    iget-object v2, p0, Lcom/miui/lockscreeninfo/b;->j:[F

    .line 7
    const/4 v3, 0x0

    .line 9
    aget v2, v2, v3

    .line 10
    :goto_0
    if-ge v1, p1, :cond_1

    .line 12
    iget v3, p0, Lcom/miui/lockscreeninfo/b;->f:F

    .line 14
    const/high16 v4, 0x3f800000    # 1.0f

    .line 16
    sub-float/2addr v3, v4

    .line 18
    iget-object v4, p0, Lcom/miui/lockscreeninfo/b;->j:[F

    .line 19
    aget v4, v4, v1

    .line 21
    mul-float/2addr v3, v4

    .line 23
    iget v4, p0, Lcom/miui/lockscreeninfo/b;->g:F

    .line 24
    add-float/2addr v3, v4

    .line 26
    add-float/2addr v3, v2

    .line 27
    add-float v2, v3, v0

    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    const/4 v2, 0x0

    .line 33
    :cond_1
    return v2
    .line 34
.end method
