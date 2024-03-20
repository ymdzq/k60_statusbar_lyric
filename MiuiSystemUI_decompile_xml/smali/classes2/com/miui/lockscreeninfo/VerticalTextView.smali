.class public Lcom/miui/lockscreeninfo/VerticalTextView;
.super Lcom/miui/lockscreeninfo/BaseTextView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final j:Ljava/lang/String;


# instance fields
.field public d:Z

.field public g:F

.field public h:I

.field public i:Lcom/miui/lockscreeninfo/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/miui/lockscreeninfo/VerticalTextView;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Lcom/miui/lockscreeninfo/VerticalTextView;->j:Ljava/lang/String;

    .line 8
    return-void
    .line 10
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/lockscreeninfo/VerticalTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    const v0, 0x1010084    # @android:attr/textViewStyle

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/lockscreeninfo/VerticalTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/lockscreeninfo/BaseTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/lockscreeninfo/VerticalTextView;->d:Z

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/miui/lockscreeninfo/VerticalTextView;->g:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/lockscreeninfo/VerticalTextView;->h:I

    return-void
.end method

.method private getCJKVerticalSpacingMultiplier()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/lockscreeninfo/VerticalTextView;->g:F

    .line 2
    return p0
    .line 4
.end method


# virtual methods
.method public final b(I)F
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    .line 2
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    invoke-virtual {p0}, Lcom/miui/lockscreeninfo/VerticalTextView;->getGravity()I

    .line 7
    move-result v1

    .line 10
    and-int/lit8 v1, v1, 0x70

    .line 11
    const/16 v2, 0x30

    .line 13
    if-ne v1, v2, :cond_0

    .line 15
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    .line 17
    move-result p0

    .line 20
    int-to-float v0, p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/miui/lockscreeninfo/VerticalTextView;->getGravity()I

    .line 23
    move-result v1

    .line 26
    and-int/lit8 v1, v1, 0x70

    .line 27
    const/16 v2, 0x50

    .line 29
    const/4 v3, 0x0

    .line 31
    if-ne v1, v2, :cond_2

    .line 32
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    .line 34
    move-result v0

    .line 37
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    .line 38
    move-result v1

    .line 41
    sub-int/2addr v0, v1

    .line 42
    int-to-float v0, v0

    .line 43
    iget-object p0, p0, Lcom/miui/lockscreeninfo/VerticalTextView;->i:Lcom/miui/lockscreeninfo/b;

    .line 44
    iget-object p0, p0, Lcom/miui/lockscreeninfo/b;->l:[F

    .line 46
    array-length v1, p0

    .line 48
    if-ge p1, v1, :cond_1

    .line 49
    if-ltz p1, :cond_1

    .line 51
    aget v3, p0, p1

    .line 53
    :cond_1
    sub-float/2addr v0, v3

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p0}, Lcom/miui/lockscreeninfo/VerticalTextView;->getGravity()I

    .line 57
    move-result v1

    .line 60
    and-int/lit8 v1, v1, 0x70

    .line 61
    const/16 v2, 0x10

    .line 63
    if-ne v1, v2, :cond_4

    .line 65
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    .line 67
    move-result v0

    .line 70
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    .line 71
    move-result v1

    .line 74
    sub-int/2addr v0, v1

    .line 75
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    .line 76
    move-result v1

    .line 79
    add-int/2addr v1, v0

    .line 80
    int-to-float v0, v1

    .line 81
    iget-object p0, p0, Lcom/miui/lockscreeninfo/VerticalTextView;->i:Lcom/miui/lockscreeninfo/b;

    .line 82
    iget-object p0, p0, Lcom/miui/lockscreeninfo/b;->l:[F

    .line 84
    array-length v1, p0

    .line 86
    if-ge p1, v1, :cond_3

    .line 87
    if-ltz p1, :cond_3

    .line 89
    aget v3, p0, p1

    .line 91
    :cond_3
    sub-float/2addr v0, v3

    .line 93
    const/high16 p0, 0x40000000    # 2.0f

    .line 94
    div-float/2addr v0, p0

    .line 96
    :cond_4
    :goto_0
    return v0
    .line 97
.end method

.method public getGravity()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/lockscreeninfo/VerticalTextView;->h:I

    .line 2
    return p0
    .line 4
.end method

.method public getShowText()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/lockscreeninfo/VerticalTextView;->d:Z

    .line 2
    const-string v1, ""

    .line 4
    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/miui/lockscreeninfo/VerticalTextView;->i:Lcom/miui/lockscreeninfo/b;

    .line 8
    if-nez v0, :cond_0

    .line 10
    return-object v1

    .line 12
    :cond_0
    iget v0, v0, Lcom/miui/lockscreeninfo/b;->p:I

    .line 13
    if-lez v0, :cond_2

    .line 15
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 17
    move-result-object p0

    .line 20
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 26
    move-result-object v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    goto :goto_0

    .line 32
    :cond_2
    return-object v1
    .line 33
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v8, p1

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWidth()I

    .line 6
    move-result v1

    .line 9
    int-to-float v4, v1

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHeight()I

    .line 11
    move-result v1

    .line 14
    int-to-float v5, v1

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    move-object/from16 v1, p1

    .line 19
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 21
    move-result v9

    .line 24
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 25
    move-result-object v10

    .line 28
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 29
    move-result v1

    .line 32
    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDrawableState()[I

    .line 36
    move-result-object v1

    .line 39
    iput-object v1, v10, Landroid/text/TextPaint;->drawableState:[I

    .line 40
    invoke-virtual {v10}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 42
    move-result-object v11

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/miui/lockscreeninfo/VerticalTextView;->getShowText()Ljava/lang/String;

    .line 46
    move-result-object v12

    .line 49
    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    .line 50
    move-result-object v13

    .line 53
    iget-boolean v1, v0, Lcom/miui/lockscreeninfo/VerticalTextView;->d:Z

    .line 54
    const/16 v16, 0x1

    .line 56
    const/4 v7, 0x0

    .line 58
    if-eqz v1, :cond_1b

    .line 59
    iget-object v1, v0, Lcom/miui/lockscreeninfo/VerticalTextView;->i:Lcom/miui/lockscreeninfo/b;

    .line 61
    iget v6, v1, Lcom/miui/lockscreeninfo/b;->p:I

    .line 63
    iget v5, v1, Lcom/miui/lockscreeninfo/b;->i:I

    .line 65
    if-nez v5, :cond_0

    .line 67
    return-void

    .line 69
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 70
    iget-object v1, v0, Lcom/miui/lockscreeninfo/VerticalTextView;->i:Lcom/miui/lockscreeninfo/b;

    .line 73
    iget v2, v1, Lcom/miui/lockscreeninfo/b;->p:I

    .line 75
    invoke-virtual {v1, v2}, Lcom/miui/lockscreeninfo/b;->c(I)F

    .line 77
    move-result v1

    .line 80
    iget-object v2, v0, Lcom/miui/lockscreeninfo/VerticalTextView;->i:Lcom/miui/lockscreeninfo/b;

    .line 81
    iget v4, v2, Lcom/miui/lockscreeninfo/b;->n:F

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/miui/lockscreeninfo/VerticalTextView;->getGravity()I

    .line 85
    move-result v2

    .line 88
    const/16 v3, 0x66

    .line 89
    const/16 v17, 0x0

    .line 91
    if-ne v2, v3, :cond_1

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWidth()I

    .line 95
    move-result v1

    .line 98
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaddingRight()I

    .line 99
    move-result v2

    .line 102
    sub-int/2addr v1, v2

    .line 103
    int-to-float v1, v1

    .line 104
    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/lockscreeninfo/VerticalTextView;->getGravity()I

    .line 106
    move-result v2

    .line 109
    const/16 v3, 0x65

    .line 110
    if-ne v2, v3, :cond_2

    .line 112
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaddingLeft()I

    .line 114
    move-result v2

    .line 117
    int-to-float v2, v2

    .line 118
    add-float/2addr v1, v2

    .line 119
    :goto_0
    sub-float/2addr v1, v4

    .line 120
    goto :goto_1

    .line 121
    :cond_2
    move/from16 v1, v17

    .line 122
    :goto_1
    invoke-virtual {v0, v7}, Lcom/miui/lockscreeninfo/VerticalTextView;->b(I)F

    .line 124
    move-result v2

    .line 127
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    .line 128
    move-result v3

    .line 131
    const/high16 v18, 0x3f800000    # 1.0f

    .line 132
    sub-float v3, v3, v18

    .line 134
    mul-float/2addr v3, v4

    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    .line 137
    move-result v19

    .line 140
    add-float v19, v19, v3

    .line 141
    move v3, v1

    .line 143
    move/from16 v20, v3

    .line 144
    move v1, v7

    .line 146
    move/from16 v21, v1

    .line 147
    :goto_2
    array-length v7, v13

    .line 149
    if-ge v1, v7, :cond_1a

    .line 150
    invoke-static {v13, v1}, Ljava/lang/Character;->codePointAt([CI)I

    .line 152
    move-result v7

    .line 155
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    .line 156
    move-result v23

    .line 159
    invoke-static {v7}, Lcom/miui/lockscreeninfo/c;->a(I)Z

    .line 160
    move-result v24

    .line 163
    const/16 v15, 0x7f

    .line 164
    const/16 v14, 0x20

    .line 166
    if-nez v24, :cond_5

    .line 168
    invoke-static {v7}, Lcom/miui/lockscreeninfo/c;->c(I)Z

    .line 170
    move-result v24

    .line 173
    if-nez v24, :cond_5

    .line 174
    if-lt v7, v14, :cond_4

    .line 176
    if-ne v7, v15, :cond_3

    .line 178
    goto :goto_3

    .line 180
    :cond_3
    const/4 v7, 0x0

    .line 181
    goto :goto_4

    .line 182
    :cond_4
    :goto_3
    move/from16 v7, v16

    .line 183
    :goto_4
    if-nez v7, :cond_5

    .line 185
    move/from16 v24, v16

    .line 187
    goto :goto_5

    .line 189
    :cond_5
    const/16 v24, 0x0

    .line 190
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 192
    move-result v7

    .line 195
    if-eqz v24, :cond_6

    .line 196
    const/high16 v15, 0x42b40000    # 90.0f

    .line 198
    invoke-virtual {v8, v15, v3, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 200
    :cond_6
    iget-object v15, v0, Lcom/miui/lockscreeninfo/VerticalTextView;->i:Lcom/miui/lockscreeninfo/b;

    .line 203
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    const/4 v14, 0x2

    .line 208
    new-array v14, v14, [F

    .line 209
    fill-array-data v14, :array_0

    .line 211
    move/from16 v27, v3

    .line 214
    invoke-static {v12, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 216
    move-result v3

    .line 219
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    .line 220
    move-result v28

    .line 223
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(I)Z

    .line 224
    move-result v29

    .line 227
    invoke-static {v3}, Lcom/miui/lockscreeninfo/c;->a(I)Z

    .line 228
    move-result v30

    .line 231
    if-nez v30, :cond_9

    .line 232
    invoke-static {v3}, Lcom/miui/lockscreeninfo/c;->c(I)Z

    .line 234
    move-result v30

    .line 237
    if-nez v30, :cond_9

    .line 238
    move/from16 v30, v4

    .line 240
    const/16 v4, 0x20

    .line 242
    if-lt v3, v4, :cond_8

    .line 244
    const/16 v4, 0x7f

    .line 246
    if-ne v3, v4, :cond_7

    .line 248
    goto :goto_6

    .line 250
    :cond_7
    const/4 v4, 0x0

    .line 251
    goto :goto_7

    .line 252
    :cond_8
    :goto_6
    move/from16 v4, v16

    .line 253
    :goto_7
    if-nez v4, :cond_a

    .line 255
    move/from16 v4, v16

    .line 257
    goto :goto_8

    .line 259
    :cond_9
    move/from16 v30, v4

    .line 260
    :cond_a
    const/4 v4, 0x0

    .line 262
    :goto_8
    move/from16 v25, v5

    .line 263
    const-string/jumbo v5, "\u4e00"

    .line 265
    move/from16 v26, v6

    .line 268
    iget-object v6, v15, Lcom/miui/lockscreeninfo/b;->q:Landroid/graphics/Paint$FontMetricsInt;

    .line 270
    move/from16 v31, v7

    .line 272
    iget-object v7, v15, Lcom/miui/lockscreeninfo/b;->b:Landroid/text/TextPaint;

    .line 274
    if-eqz v4, :cond_c

    .line 276
    iget v3, v6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 278
    iget v4, v6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 280
    sub-int/2addr v3, v4

    .line 282
    int-to-float v3, v3

    .line 283
    if-eqz v29, :cond_b

    .line 284
    invoke-virtual {v7, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 286
    move-result v4

    .line 289
    const/high16 v5, 0x40000000    # 2.0f

    .line 290
    div-float/2addr v4, v5

    .line 292
    goto :goto_a

    .line 293
    :cond_b
    iget-object v4, v15, Lcom/miui/lockscreeninfo/b;->a:Ljava/lang/CharSequence;

    .line 294
    add-int v5, v28, v1

    .line 296
    invoke-virtual {v7, v4, v1, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    .line 298
    move-result v4

    .line 301
    goto :goto_a

    .line 302
    :cond_c
    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    .line 303
    move-result v4

    .line 306
    const/16 v15, 0xa

    .line 307
    if-ne v4, v15, :cond_d

    .line 309
    invoke-virtual {v7, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 311
    move-result v3

    .line 314
    move/from16 v15, v17

    .line 315
    goto :goto_b

    .line 317
    :cond_d
    invoke-static {v3}, Lcom/miui/lockscreeninfo/c;->c(I)Z

    .line 318
    move-result v3

    .line 321
    if-eqz v3, :cond_e

    .line 322
    invoke-virtual {v7, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 324
    move-result v3

    .line 327
    goto :goto_9

    .line 328
    :cond_e
    add-int v3, v28, v1

    .line 329
    invoke-virtual {v7, v12, v1, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    .line 331
    move-result v3

    .line 334
    :goto_9
    iget v4, v6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 335
    iget v5, v6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 337
    sub-int/2addr v4, v5

    .line 339
    int-to-float v4, v4

    .line 340
    :goto_a
    move v15, v4

    .line 341
    :goto_b
    const/4 v7, 0x0

    .line 342
    aput v3, v14, v7

    .line 343
    aput v15, v14, v16

    .line 345
    if-eqz v24, :cond_f

    .line 347
    iget v3, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 349
    goto :goto_c

    .line 351
    :cond_f
    iget v3, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 352
    :goto_c
    int-to-float v3, v3

    .line 354
    sub-float v6, v2, v3

    .line 355
    aget-char v3, v13, v1

    .line 357
    const/16 v4, 0xa

    .line 359
    if-eq v3, v4, :cond_10

    .line 361
    move/from16 v3, v16

    .line 363
    goto :goto_d

    .line 365
    :cond_10
    move v3, v7

    .line 366
    :goto_d
    move v14, v1

    .line 367
    if-eqz v3, :cond_11

    .line 368
    move-object/from16 v1, p1

    .line 370
    move/from16 v22, v2

    .line 372
    move-object v2, v13

    .line 374
    move v3, v14

    .line 375
    move/from16 v28, v30

    .line 376
    move/from16 v4, v23

    .line 378
    move-object/from16 v29, v11

    .line 380
    move/from16 v11, v25

    .line 382
    move/from16 v5, v27

    .line 384
    move-object/from16 v25, v12

    .line 386
    move/from16 v12, v26

    .line 388
    move/from16 v26, v7

    .line 390
    move/from16 v30, v9

    .line 392
    move/from16 v9, v31

    .line 394
    move-object v7, v10

    .line 396
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 397
    goto :goto_e

    .line 400
    :cond_11
    move/from16 v22, v2

    .line 401
    move-object/from16 v29, v11

    .line 403
    move/from16 v11, v25

    .line 405
    move/from16 v28, v30

    .line 407
    move/from16 v30, v9

    .line 409
    move-object/from16 v25, v12

    .line 411
    move/from16 v12, v26

    .line 413
    move/from16 v9, v31

    .line 415
    move/from16 v26, v7

    .line 417
    :goto_e
    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 419
    add-int v1, v14, v23

    .line 422
    array-length v2, v13

    .line 424
    if-ge v1, v2, :cond_12

    .line 425
    move/from16 v7, v16

    .line 427
    goto :goto_f

    .line 429
    :cond_12
    move/from16 v7, v26

    .line 430
    :goto_f
    if-eqz v7, :cond_19

    .line 432
    add-int/lit8 v2, v14, 0x1

    .line 434
    iget-object v3, v0, Lcom/miui/lockscreeninfo/VerticalTextView;->i:Lcom/miui/lockscreeninfo/b;

    .line 436
    iget-object v4, v3, Lcom/miui/lockscreeninfo/b;->k:[I

    .line 438
    array-length v5, v4

    .line 440
    move/from16 v7, v21

    .line 441
    if-ge v7, v5, :cond_13

    .line 443
    if-ltz v7, :cond_13

    .line 445
    aget v4, v4, v7

    .line 447
    goto :goto_10

    .line 449
    :cond_13
    move/from16 v4, v26

    .line 450
    :goto_10
    if-le v2, v4, :cond_14

    .line 452
    move/from16 v2, v16

    .line 454
    goto :goto_11

    .line 456
    :cond_14
    move/from16 v2, v26

    .line 457
    :goto_11
    if-eqz v2, :cond_16

    .line 459
    add-int/lit8 v2, v7, 0x1

    .line 461
    if-ge v2, v11, :cond_16

    .line 463
    if-lt v2, v12, :cond_15

    .line 465
    goto/16 :goto_1d

    .line 467
    :cond_15
    add-float v4, v19, v28

    .line 469
    sub-float v20, v20, v4

    .line 471
    invoke-virtual {v0, v2}, Lcom/miui/lockscreeninfo/VerticalTextView;->b(I)F

    .line 473
    move-result v3

    .line 476
    move/from16 v21, v2

    .line 477
    move v2, v3

    .line 479
    move/from16 v3, v20

    .line 480
    goto :goto_14

    .line 482
    :cond_16
    iget v2, v3, Lcom/miui/lockscreeninfo/b;->h:F

    .line 483
    if-eqz v24, :cond_17

    .line 485
    const v3, 0x3e4ccccd    # 0.2f

    .line 487
    add-float/2addr v2, v3

    .line 490
    :cond_17
    sub-float v2, v2, v18

    .line 491
    mul-float/2addr v2, v15

    .line 493
    if-eqz v24, :cond_18

    .line 494
    goto :goto_12

    .line 496
    :cond_18
    add-float/2addr v15, v2

    .line 497
    :goto_12
    add-float v2, v22, v15

    .line 498
    goto :goto_13

    .line 500
    :cond_19
    move/from16 v7, v21

    .line 501
    move/from16 v2, v22

    .line 503
    :goto_13
    move/from16 v21, v7

    .line 505
    move/from16 v3, v27

    .line 507
    :goto_14
    move v5, v11

    .line 509
    move v6, v12

    .line 510
    move-object/from16 v12, v25

    .line 511
    move/from16 v4, v28

    .line 513
    move-object/from16 v11, v29

    .line 515
    move/from16 v9, v30

    .line 517
    goto/16 :goto_2

    .line 519
    :cond_1a
    move/from16 v30, v9

    .line 521
    goto/16 :goto_1d

    .line 523
    :cond_1b
    move/from16 v26, v7

    .line 525
    move/from16 v30, v9

    .line 527
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 529
    move-result-object v1

    .line 532
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 533
    move-result-object v9

    .line 536
    new-instance v1, Landroid/text/TextPaint;

    .line 537
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 539
    move-result-object v2

    .line 542
    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 543
    const-string v2, " "

    .line 546
    const-string v3, "i"

    .line 548
    invoke-virtual {v9, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 550
    move-result-object v18

    .line 553
    new-instance v10, Landroid/text/StaticLayout;

    .line 554
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWidth()I

    .line 556
    move-result v2

    .line 559
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaddingRight()I

    .line 560
    move-result v3

    .line 563
    sub-int/2addr v2, v3

    .line 564
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaddingLeft()I

    .line 565
    move-result v3

    .line 568
    sub-int v20, v2, v3

    .line 569
    sget-object v21, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 571
    const/high16 v22, 0x3f800000    # 1.0f

    .line 573
    const v23, 0x3dcccccd    # 0.1f

    .line 575
    const/16 v24, 0x1

    .line 578
    move-object/from16 v17, v10

    .line 580
    move-object/from16 v19, v1

    .line 582
    invoke-direct/range {v17 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 584
    invoke-virtual {v10}, Landroid/text/StaticLayout;->getLineCount()I

    .line 587
    move-result v1

    .line 590
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getMaxLines()I

    .line 591
    move-result v2

    .line 594
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 595
    move-result v11

    .line 598
    move/from16 v12, v26

    .line 599
    :goto_15
    if-ge v12, v11, :cond_23

    .line 601
    invoke-virtual {v10, v12}, Landroid/text/StaticLayout;->getLineBaseline(I)I

    .line 603
    move-result v1

    .line 606
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaddingTop()I

    .line 607
    move-result v2

    .line 610
    add-int/2addr v2, v1

    .line 611
    if-lez v12, :cond_1c

    .line 612
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    .line 614
    move-result v1

    .line 617
    float-to-int v1, v1

    .line 618
    mul-int v7, v1, v12

    .line 619
    goto :goto_16

    .line 621
    :cond_1c
    move/from16 v7, v26

    .line 622
    :goto_16
    add-int v13, v2, v7

    .line 624
    invoke-virtual {v10, v12}, Landroid/text/StaticLayout;->getLineStart(I)I

    .line 626
    move-result v1

    .line 629
    invoke-virtual {v10, v12}, Landroid/text/StaticLayout;->getLineVisibleEnd(I)I

    .line 630
    move-result v2

    .line 633
    invoke-virtual {v9, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 634
    move-result-object v1

    .line 637
    const-string v2, "\n"

    .line 638
    const-string v3, ""

    .line 640
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 642
    move-result-object v1

    .line 645
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 646
    move-result-object v2

    .line 649
    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 650
    move-result v2

    .line 653
    invoke-virtual/range {p0 .. p0}, Lcom/miui/lockscreeninfo/VerticalTextView;->getGravity()I

    .line 654
    move-result v3

    .line 657
    const/16 v4, 0x67

    .line 658
    if-ne v3, v4, :cond_1e

    .line 660
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaddingLeft()I

    .line 662
    move-result v2

    .line 665
    int-to-float v2, v2

    .line 666
    int-to-float v3, v13

    .line 667
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 668
    move-result-object v4

    .line 671
    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 672
    const/high16 v14, 0x40000000    # 2.0f

    .line 675
    :cond_1d
    :goto_17
    const/16 v23, 0xa

    .line 677
    goto/16 :goto_1c

    .line 679
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/miui/lockscreeninfo/VerticalTextView;->getGravity()I

    .line 681
    move-result v3

    .line 684
    const/16 v4, 0x69

    .line 685
    if-ne v3, v4, :cond_1f

    .line 687
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 689
    move-result v3

    .line 692
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaddingRight()I

    .line 693
    move-result v4

    .line 696
    sub-int/2addr v3, v4

    .line 697
    int-to-float v3, v3

    .line 698
    sub-float/2addr v3, v2

    .line 699
    const/high16 v14, 0x40000000    # 2.0f

    .line 700
    goto :goto_18

    .line 702
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/miui/lockscreeninfo/VerticalTextView;->getGravity()I

    .line 703
    move-result v3

    .line 706
    const/16 v4, 0x68

    .line 707
    if-ne v3, v4, :cond_20

    .line 709
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 711
    move-result v3

    .line 714
    int-to-float v3, v3

    .line 715
    sub-float/2addr v3, v2

    .line 716
    const/high16 v14, 0x40000000    # 2.0f

    .line 717
    div-float/2addr v3, v14

    .line 719
    :goto_18
    int-to-float v2, v13

    .line 720
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 721
    move-result-object v4

    .line 724
    invoke-virtual {v8, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 725
    goto :goto_17

    .line 728
    :cond_20
    const/high16 v14, 0x40000000    # 2.0f

    .line 729
    invoke-virtual/range {p0 .. p0}, Lcom/miui/lockscreeninfo/VerticalTextView;->getGravity()I

    .line 731
    move-result v3

    .line 734
    const/16 v4, 0x6a

    .line 735
    if-ne v3, v4, :cond_1d

    .line 737
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaddingLeft()I

    .line 739
    move-result v3

    .line 742
    int-to-float v3, v3

    .line 743
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    .line 744
    move-result-object v15

    .line 747
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 748
    move-result v1

    .line 751
    int-to-float v1, v1

    .line 752
    sub-float/2addr v1, v2

    .line 753
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaddingLeft()I

    .line 754
    move-result v2

    .line 757
    int-to-float v2, v2

    .line 758
    sub-float/2addr v1, v2

    .line 759
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaddingRight()I

    .line 760
    move-result v2

    .line 763
    int-to-float v2, v2

    .line 764
    sub-float/2addr v1, v2

    .line 765
    array-length v2, v15

    .line 766
    add-int/lit8 v2, v2, -0x1

    .line 767
    int-to-float v2, v2

    .line 769
    div-float v17, v1, v2

    .line 770
    move/from16 v18, v3

    .line 772
    move/from16 v7, v26

    .line 774
    :goto_19
    array-length v1, v15

    .line 776
    if-ge v7, v1, :cond_1d

    .line 777
    invoke-static {v15, v7}, Ljava/lang/Character;->codePointAt([CI)I

    .line 779
    move-result v1

    .line 782
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    .line 783
    move-result v19

    .line 786
    aget-char v1, v15, v7

    .line 787
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 789
    move-result-object v1

    .line 792
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 793
    move-result-object v2

    .line 796
    invoke-static {v1, v2}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    .line 797
    move-result v20

    .line 800
    aget-char v1, v15, v7

    .line 801
    const/16 v6, 0xa

    .line 803
    if-eq v1, v6, :cond_21

    .line 805
    move/from16 v1, v16

    .line 807
    goto :goto_1a

    .line 809
    :cond_21
    move/from16 v1, v26

    .line 810
    :goto_1a
    if-eqz v1, :cond_22

    .line 812
    int-to-float v5, v13

    .line 814
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 815
    move-result-object v21

    .line 818
    move-object/from16 v1, p1

    .line 819
    move-object v2, v15

    .line 821
    move v3, v7

    .line 822
    move/from16 v4, v19

    .line 823
    move/from16 v22, v5

    .line 825
    move/from16 v5, v18

    .line 827
    move/from16 v23, v6

    .line 829
    move/from16 v6, v22

    .line 831
    move/from16 v22, v7

    .line 833
    move-object/from16 v7, v21

    .line 835
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 837
    goto :goto_1b

    .line 840
    :cond_22
    move/from16 v23, v6

    .line 841
    move/from16 v22, v7

    .line 843
    :goto_1b
    add-float v20, v20, v17

    .line 845
    add-float v18, v20, v18

    .line 847
    add-int v7, v22, v19

    .line 849
    goto :goto_19

    .line 851
    :goto_1c
    add-int/lit8 v12, v12, 0x1

    .line 852
    goto/16 :goto_15

    .line 854
    :cond_23
    :goto_1d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 856
    move/from16 v0, v30

    .line 859
    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 861
    return-void

    .line 864
    nop

    .line 865
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
    .line 866
.end method

.method public final onMeasure(II)V
    .locals 11

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 2
    iget-boolean v0, p0, Lcom/miui/lockscreeninfo/VerticalTextView;->d:Z

    .line 5
    if-eqz v0, :cond_4

    .line 7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 9
    move-result v0

    .line 12
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 13
    move-result v1

    .line 16
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 17
    move-result p1

    .line 20
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 21
    move-result p2

    .line 24
    new-instance v10, Lcom/miui/lockscreeninfo/b;

    .line 25
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 27
    move-result-object v3

    .line 30
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 31
    move-result-object v4

    .line 34
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    .line 35
    move-result v2

    .line 38
    sub-int v2, p1, v2

    .line 39
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    .line 41
    move-result v5

    .line 44
    sub-int v5, v2, v5

    .line 45
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    .line 47
    move-result v2

    .line 50
    sub-int v2, p2, v2

    .line 51
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    .line 53
    move-result v6

    .line 56
    sub-int v6, v2, v6

    .line 57
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    .line 59
    move-result v7

    .line 62
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    .line 63
    move-result v8

    .line 66
    invoke-direct {p0}, Lcom/miui/lockscreeninfo/VerticalTextView;->getCJKVerticalSpacingMultiplier()F

    .line 67
    move-result v9

    .line 70
    move-object v2, v10

    .line 71
    invoke-direct/range {v2 .. v9}, Lcom/miui/lockscreeninfo/b;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;IIFFF)V

    .line 72
    iput-object v10, p0, Lcom/miui/lockscreeninfo/VerticalTextView;->i:Lcom/miui/lockscreeninfo/b;

    .line 75
    iget v2, v10, Lcom/miui/lockscreeninfo/b;->m:F

    .line 77
    iget v3, v10, Lcom/miui/lockscreeninfo/b;->o:F

    .line 79
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    .line 81
    move-result v4

    .line 84
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    .line 85
    move-result v5

    .line 88
    add-int/2addr v5, v4

    .line 89
    int-to-float v4, v5

    .line 90
    add-float/2addr v2, v4

    .line 91
    const/high16 v4, 0x4f000000

    .line 92
    const/high16 v5, -0x80000000

    .line 94
    const/high16 v6, 0x40000000    # 2.0f

    .line 96
    if-ne v1, v6, :cond_0

    .line 98
    int-to-float p2, p2

    .line 100
    goto :goto_0

    .line 101
    :cond_0
    if-ne v1, v5, :cond_1

    .line 102
    int-to-float p2, p2

    .line 104
    invoke-static {v3, p2}, Ljava/lang/Math;->min(FF)F

    .line 105
    move-result p2

    .line 108
    goto :goto_0

    .line 109
    :cond_1
    move p2, v4

    .line 110
    :goto_0
    if-ne v0, v6, :cond_2

    .line 111
    int-to-float v4, p1

    .line 113
    goto :goto_1

    .line 114
    :cond_2
    if-ne v0, v5, :cond_3

    .line 115
    int-to-float p1, p1

    .line 117
    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    .line 118
    move-result v4

    .line 121
    :cond_3
    :goto_1
    float-to-int p1, v4

    .line 122
    float-to-int p2, p2

    .line 123
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    .line 124
    goto :goto_2

    .line 127
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    .line 128
    move-result p1

    .line 131
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 132
    move-result-object p2

    .line 135
    invoke-virtual {p2}, Landroid/text/Layout;->getTopPadding()I

    .line 136
    move-result p2

    .line 139
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    .line 140
    move-result v0

    .line 143
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    .line 144
    move-result v1

    .line 147
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 148
    :goto_2
    return-void
    .line 151
.end method

.method public setCJKVerticalSpace(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/lockscreeninfo/VerticalTextView;->g:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 4
    return-void
    .line 7
.end method

.method public setGravity(I)V
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    goto :goto_1

    .line 5
    :pswitch_0
    iput p1, p0, Lcom/miui/lockscreeninfo/VerticalTextView;->h:I

    .line 6
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :pswitch_1
    iput p1, p0, Lcom/miui/lockscreeninfo/VerticalTextView;->h:I

    .line 10
    const/4 p1, 0x1

    .line 12
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/lockscreeninfo/VerticalTextView;->setVerticalMode(Z)V

    .line 13
    :goto_1
    iget p1, p0, Lcom/miui/lockscreeninfo/VerticalTextView;->h:I

    .line 16
    invoke-super {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 18
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
    .line 22
.end method

.method public setTextSize(IF)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 2
    return-void
    .line 5
.end method

.method public setVerticalMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/lockscreeninfo/VerticalTextView;->d:Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 4
    return-void
    .line 7
.end method
