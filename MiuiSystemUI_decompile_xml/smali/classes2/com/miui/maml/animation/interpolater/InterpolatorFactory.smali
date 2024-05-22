.class public Lcom/miui/maml/animation/interpolater/InterpolatorFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "InterpolatorFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;[Lcom/miui/maml/data/Expression;)Landroid/view/animation/Interpolator;
    .locals 11

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-object v1

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    array-length v3, p1

    .line 14
    if-lez v3, :cond_1

    .line 15
    move v3, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move v3, v0

    .line 19
    :goto_0
    const/16 v4, 0x28

    .line 20
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    .line 22
    move-result v4

    .line 25
    const/16 v5, 0x29

    .line 26
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    .line 28
    move-result v5

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v7, -0x1

    .line 33
    if-eq v4, v7, :cond_4

    .line 34
    if-eq v5, v7, :cond_4

    .line 36
    add-int/2addr v4, v2

    .line 38
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    move-result-object v4

    .line 42
    const-string v5, ","

    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 45
    move-result v5

    .line 48
    if-eq v5, v7, :cond_2

    .line 49
    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 54
    add-int/2addr v5, v2

    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 56
    move-result-object v5

    .line 59
    move-object v7, v5

    .line 60
    move v5, v2

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    const-string v5, ""

    .line 63
    move-object v7, v5

    .line 65
    move v5, v0

    .line 66
    move-object v0, v4

    .line 67
    :goto_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 68
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    if-eqz v5, :cond_3

    .line 72
    :try_start_1
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 74
    move-result v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    goto :goto_2

    .line 78
    :catch_0
    move v0, v6

    .line 79
    :catch_1
    const-string v7, "parse error:"

    .line 80
    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object v4

    .line 85
    const-string v7, "InterpolatorFactory"

    .line 86
    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_3
    :goto_2
    move v10, v6

    .line 91
    move v6, v0

    .line 92
    move v0, v2

    .line 93
    move v2, v10

    .line 94
    goto :goto_3

    .line 95
    :cond_4
    move v5, v0

    .line 96
    move v2, v6

    .line 97
    :goto_3
    const-string v4, "BackEaseIn"

    .line 98
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 100
    move-result v7

    .line 103
    if-eqz v7, :cond_5

    .line 104
    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;

    .line 106
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 108
    return-object p0

    .line 111
    :cond_5
    const-string v7, "BackEaseOut"

    .line 112
    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 114
    move-result v8

    .line 117
    if-eqz v8, :cond_6

    .line 118
    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;

    .line 120
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 122
    return-object p0

    .line 125
    :cond_6
    const-string v8, "BackEaseInOut"

    .line 126
    invoke-virtual {v8, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 128
    move-result v9

    .line 131
    if-eqz v9, :cond_7

    .line 132
    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;

    .line 134
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 136
    return-object p0

    .line 139
    :cond_7
    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 140
    move-result v8

    .line 143
    if-eqz v8, :cond_9

    .line 144
    if-eqz v3, :cond_8

    .line 146
    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;

    .line 148
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 150
    return-object p0

    .line 153
    :cond_8
    if-eqz v0, :cond_32

    .line 154
    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;

    .line 156
    invoke-direct {p0, v6}, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;-><init>(F)V

    .line 158
    return-object p0

    .line 161
    :cond_9
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 162
    move-result v4

    .line 165
    if-eqz v4, :cond_b

    .line 166
    if-eqz v3, :cond_a

    .line 168
    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;

    .line 170
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 172
    return-object p0

    .line 175
    :cond_a
    if-eqz v0, :cond_32

    .line 176
    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;

    .line 178
    invoke-direct {p0, v6}, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;-><init>(F)V

    .line 180
    return-object p0

    .line 183
    :cond_b
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 184
    move-result v4

    .line 187
    if-eqz v4, :cond_d

    .line 188
    if-eqz v3, :cond_c

    .line 190
    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;

    .line 192
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 194
    return-object p0

    .line 197
    :cond_c
    if-eqz v0, :cond_32

    .line 198
    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;

    .line 200
    invoke-direct {p0, v6}, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;-><init>(F)V

    .line 202
    return-object p0

    .line 205
    :cond_d
    const-string v0, "BounceEaseIn"

    .line 206
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 208
    move-result v0

    .line 211
    if-eqz v0, :cond_e

    .line 212
    new-instance p0, Lcom/miui/maml/animation/interpolater/BounceEaseInInterpolater;

    .line 214
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/BounceEaseInInterpolater;-><init>()V

    .line 216
    return-object p0

    .line 219
    :cond_e
    const-string v0, "BounceEaseOut"

    .line 220
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 222
    move-result v0

    .line 225
    if-eqz v0, :cond_f

    .line 226
    new-instance p0, Lcom/miui/maml/animation/interpolater/BounceEaseOutInterpolater;

    .line 228
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/BounceEaseOutInterpolater;-><init>()V

    .line 230
    return-object p0

    .line 233
    :cond_f
    const-string v0, "BounceEaseInOut"

    .line 234
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 236
    move-result v0

    .line 239
    if-eqz v0, :cond_10

    .line 240
    new-instance p0, Lcom/miui/maml/animation/interpolater/BounceEaseInOutInterpolater;

    .line 242
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/BounceEaseInOutInterpolater;-><init>()V

    .line 244
    return-object p0

    .line 247
    :cond_10
    const-string v0, "CircEaseIn"

    .line 248
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 250
    move-result v0

    .line 253
    if-eqz v0, :cond_11

    .line 254
    new-instance p0, Lcom/miui/maml/animation/interpolater/CircEaseInInterpolater;

    .line 256
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/CircEaseInInterpolater;-><init>()V

    .line 258
    return-object p0

    .line 261
    :cond_11
    const-string v0, "CircEaseOut"

    .line 262
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 264
    move-result v0

    .line 267
    if-eqz v0, :cond_12

    .line 268
    new-instance p0, Lcom/miui/maml/animation/interpolater/CircEaseOutInterpolater;

    .line 270
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/CircEaseOutInterpolater;-><init>()V

    .line 272
    return-object p0

    .line 275
    :cond_12
    const-string v0, "CircEaseInOut"

    .line 276
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 278
    move-result v0

    .line 281
    if-eqz v0, :cond_13

    .line 282
    new-instance p0, Lcom/miui/maml/animation/interpolater/CircEaseInOutInterpolater;

    .line 284
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/CircEaseInOutInterpolater;-><init>()V

    .line 286
    return-object p0

    .line 289
    :cond_13
    const-string v0, "CubicEaseIn"

    .line 290
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 292
    move-result v0

    .line 295
    if-eqz v0, :cond_14

    .line 296
    new-instance p0, Lcom/miui/maml/animation/interpolater/CubicEaseInInterpolater;

    .line 298
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/CubicEaseInInterpolater;-><init>()V

    .line 300
    return-object p0

    .line 303
    :cond_14
    const-string v0, "CubicEaseOut"

    .line 304
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 306
    move-result v0

    .line 309
    if-eqz v0, :cond_15

    .line 310
    new-instance p0, Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    .line 312
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    .line 314
    return-object p0

    .line 317
    :cond_15
    const-string v0, "CubicEaseInOut"

    .line 318
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 320
    move-result v0

    .line 323
    if-eqz v0, :cond_16

    .line 324
    new-instance p0, Lcom/miui/maml/animation/interpolater/CubicEaseInOutInterpolater;

    .line 326
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/CubicEaseInOutInterpolater;-><init>()V

    .line 328
    return-object p0

    .line 331
    :cond_16
    const-string v0, "ElasticEaseIn"

    .line 332
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 334
    move-result v4

    .line 337
    if-eqz v4, :cond_17

    .line 338
    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;

    .line 340
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 342
    return-object p0

    .line 345
    :cond_17
    const-string v4, "ElasticEaseOut"

    .line 346
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 348
    move-result v7

    .line 351
    if-eqz v7, :cond_18

    .line 352
    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    .line 354
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 356
    return-object p0

    .line 359
    :cond_18
    const-string v7, "ElasticEaseInOut"

    .line 360
    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 362
    move-result v8

    .line 365
    if-eqz v8, :cond_19

    .line 366
    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;

    .line 368
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 370
    return-object p0

    .line 373
    :cond_19
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 374
    move-result v7

    .line 377
    if-eqz v7, :cond_1b

    .line 378
    if-eqz v3, :cond_1a

    .line 380
    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;

    .line 382
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 384
    return-object p0

    .line 387
    :cond_1a
    if-eqz v5, :cond_32

    .line 388
    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;

    .line 390
    invoke-direct {p0, v6, v2}, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;-><init>(FF)V

    .line 392
    return-object p0

    .line 395
    :cond_1b
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 396
    move-result v0

    .line 399
    if-eqz v0, :cond_1d

    .line 400
    if-eqz v3, :cond_1c

    .line 402
    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;

    .line 404
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 406
    return-object p0

    .line 409
    :cond_1c
    if-eqz v5, :cond_32

    .line 410
    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;

    .line 412
    invoke-direct {p0, v6, v2}, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;-><init>(FF)V

    .line 414
    return-object p0

    .line 417
    :cond_1d
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 418
    move-result v0

    .line 421
    if-eqz v0, :cond_1f

    .line 422
    if-eqz v3, :cond_1e

    .line 424
    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    .line 426
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 428
    return-object p0

    .line 431
    :cond_1e
    if-eqz v5, :cond_32

    .line 432
    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    .line 434
    invoke-direct {p0, v6, v2}, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>(FF)V

    .line 436
    return-object p0

    .line 439
    :cond_1f
    const-string v0, "ExpoEaseIn"

    .line 440
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 442
    move-result v0

    .line 445
    if-eqz v0, :cond_20

    .line 446
    new-instance p0, Lcom/miui/maml/animation/interpolater/ExpoEaseInInterpolater;

    .line 448
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/ExpoEaseInInterpolater;-><init>()V

    .line 450
    return-object p0

    .line 453
    :cond_20
    const-string v0, "ExpoEaseOut"

    .line 454
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 456
    move-result v0

    .line 459
    if-eqz v0, :cond_21

    .line 460
    new-instance p0, Lcom/miui/maml/animation/interpolater/ExpoEaseOutInterpolater;

    .line 462
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/ExpoEaseOutInterpolater;-><init>()V

    .line 464
    return-object p0

    .line 467
    :cond_21
    const-string v0, "ExpoEaseInOut"

    .line 468
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 470
    move-result v0

    .line 473
    if-eqz v0, :cond_22

    .line 474
    new-instance p0, Lcom/miui/maml/animation/interpolater/ExpoEaseInOutInterpolater;

    .line 476
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/ExpoEaseInOutInterpolater;-><init>()V

    .line 478
    return-object p0

    .line 481
    :cond_22
    const-string v0, "QuadEaseIn"

    .line 482
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 484
    move-result v0

    .line 487
    if-eqz v0, :cond_23

    .line 488
    new-instance p0, Lcom/miui/maml/animation/interpolater/QuadEaseInInterpolater;

    .line 490
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuadEaseInInterpolater;-><init>()V

    .line 492
    return-object p0

    .line 495
    :cond_23
    const-string v0, "QuadEaseOut"

    .line 496
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 498
    move-result v0

    .line 501
    if-eqz v0, :cond_24

    .line 502
    new-instance p0, Lcom/miui/maml/animation/interpolater/QuadEaseOutInterpolater;

    .line 504
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuadEaseOutInterpolater;-><init>()V

    .line 506
    return-object p0

    .line 509
    :cond_24
    const-string v0, "QuadEaseInOut"

    .line 510
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 512
    move-result v0

    .line 515
    if-eqz v0, :cond_25

    .line 516
    new-instance p0, Lcom/miui/maml/animation/interpolater/QuadEaseInOutInterpolater;

    .line 518
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuadEaseInOutInterpolater;-><init>()V

    .line 520
    return-object p0

    .line 523
    :cond_25
    const-string v0, "QuartEaseIn"

    .line 524
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 526
    move-result v0

    .line 529
    if-eqz v0, :cond_26

    .line 530
    new-instance p0, Lcom/miui/maml/animation/interpolater/QuartEaseInInterpolater;

    .line 532
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuartEaseInInterpolater;-><init>()V

    .line 534
    return-object p0

    .line 537
    :cond_26
    const-string v0, "QuartEaseOut"

    .line 538
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 540
    move-result v0

    .line 543
    if-eqz v0, :cond_27

    .line 544
    new-instance p0, Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;

    .line 546
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;-><init>()V

    .line 548
    return-object p0

    .line 551
    :cond_27
    const-string v0, "QuartEaseInOut"

    .line 552
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 554
    move-result v0

    .line 557
    if-eqz v0, :cond_28

    .line 558
    new-instance p0, Lcom/miui/maml/animation/interpolater/QuartEaseInOutInterpolater;

    .line 560
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuartEaseInOutInterpolater;-><init>()V

    .line 562
    return-object p0

    .line 565
    :cond_28
    const-string v0, "QuintEaseIn"

    .line 566
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 568
    move-result v0

    .line 571
    if-eqz v0, :cond_29

    .line 572
    new-instance p0, Lcom/miui/maml/animation/interpolater/QuintEaseInInterpolater;

    .line 574
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuintEaseInInterpolater;-><init>()V

    .line 576
    return-object p0

    .line 579
    :cond_29
    const-string v0, "QuintEaseOut"

    .line 580
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 582
    move-result v0

    .line 585
    if-eqz v0, :cond_2a

    .line 586
    new-instance p0, Lcom/miui/maml/animation/interpolater/QuintEaseOutInterpolater;

    .line 588
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuintEaseOutInterpolater;-><init>()V

    .line 590
    return-object p0

    .line 593
    :cond_2a
    const-string v0, "QuintEaseInOut"

    .line 594
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 596
    move-result v0

    .line 599
    if-eqz v0, :cond_2b

    .line 600
    new-instance p0, Lcom/miui/maml/animation/interpolater/QuintEaseInOutInterpolater;

    .line 602
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuintEaseInOutInterpolater;-><init>()V

    .line 604
    return-object p0

    .line 607
    :cond_2b
    const-string v0, "SineEaseIn"

    .line 608
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 610
    move-result v0

    .line 613
    if-eqz v0, :cond_2c

    .line 614
    new-instance p0, Lcom/miui/maml/animation/interpolater/SineEaseInInterpolater;

    .line 616
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/SineEaseInInterpolater;-><init>()V

    .line 618
    return-object p0

    .line 621
    :cond_2c
    const-string v0, "SineEaseOut"

    .line 622
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 624
    move-result v0

    .line 627
    if-eqz v0, :cond_2d

    .line 628
    new-instance p0, Lcom/miui/maml/animation/interpolater/SineEaseOutInterpolater;

    .line 630
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/SineEaseOutInterpolater;-><init>()V

    .line 632
    return-object p0

    .line 635
    :cond_2d
    const-string v0, "SineEaseInOut"

    .line 636
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 638
    move-result v0

    .line 641
    if-eqz v0, :cond_2e

    .line 642
    new-instance p0, Lcom/miui/maml/animation/interpolater/SineEaseInOutInterpolater;

    .line 644
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/SineEaseInOutInterpolater;-><init>()V

    .line 646
    return-object p0

    .line 649
    :cond_2e
    const-string v0, "Linear"

    .line 650
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 652
    move-result v0

    .line 655
    if-eqz v0, :cond_2f

    .line 656
    new-instance p0, Lcom/miui/maml/animation/interpolater/LinearInterpolater;

    .line 658
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/LinearInterpolater;-><init>()V

    .line 660
    return-object p0

    .line 663
    :cond_2f
    const-string v0, "PhysicBased"

    .line 664
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 666
    move-result v4

    .line 669
    if-eqz v4, :cond_30

    .line 670
    new-instance p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;

    .line 672
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 674
    return-object p0

    .line 677
    :cond_30
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 678
    move-result p0

    .line 681
    if-eqz p0, :cond_32

    .line 682
    if-eqz v3, :cond_31

    .line 684
    new-instance p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;

    .line 686
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 688
    return-object p0

    .line 691
    :cond_31
    if-eqz v5, :cond_32

    .line 692
    new-instance p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;

    .line 694
    invoke-direct {p0, v6, v2}, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;-><init>(FF)V

    .line 696
    return-object p0

    .line 699
    :cond_32
    return-object v1
    .line 700
.end method
