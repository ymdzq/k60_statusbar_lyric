.class public final Lcom/miui/clock/module/FontNeumaticCompressed;
.super Lcom/miui/clock/module/BaseFontStyle;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mHourOffset:[[[I

.field public final mLargeClockWidth:[I

.field public final mMinuteOffset:[[[I

.field public final mPercentages:[F

.field public final mSVGEmptyLeft:[F

.field public final mSVGEmptyRight:[F

.field public final mSVGResource:[I


# direct methods
.method public constructor <init>()V
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/miui/clock/module/BaseFontStyle;-><init>()V

    .line 4
    const/16 v1, 0xa

    .line 7
    new-array v2, v1, [I

    .line 9
    fill-array-data v2, :array_0

    .line 11
    iput-object v2, v0, Lcom/miui/clock/module/FontNeumaticCompressed;->mSVGResource:[I

    .line 14
    const/16 v2, 0xb8

    .line 16
    const/16 v3, 0x56

    .line 18
    const/16 v4, 0xda

    .line 20
    const/16 v5, 0xaa

    .line 22
    filled-new-array {v2, v3, v4, v5}, [I

    .line 24
    move-result-object v6

    .line 27
    filled-new-array {v2, v3, v4, v5}, [I

    .line 28
    move-result-object v7

    .line 31
    filled-new-array {v2, v3, v4, v5}, [I

    .line 32
    move-result-object v8

    .line 35
    filled-new-array {v2, v3, v4, v5}, [I

    .line 36
    move-result-object v9

    .line 39
    const/16 v10, 0xd9

    .line 40
    const/16 v15, 0xb5

    .line 42
    filled-new-array {v15, v3, v10, v5}, [I

    .line 44
    move-result-object v10

    .line 47
    const/16 v11, 0xdb

    .line 48
    filled-new-array {v2, v3, v11, v5}, [I

    .line 50
    move-result-object v11

    .line 53
    filled-new-array {v2, v3, v4, v5}, [I

    .line 54
    move-result-object v12

    .line 57
    const/16 v14, 0xa6

    .line 58
    filled-new-array {v15, v3, v4, v14}, [I

    .line 60
    move-result-object v13

    .line 63
    filled-new-array {v2, v3, v4, v5}, [I

    .line 64
    move-result-object v16

    .line 67
    filled-new-array {v2, v3, v4, v5}, [I

    .line 68
    move-result-object v3

    .line 71
    move v1, v14

    .line 72
    move-object/from16 v14, v16

    .line 73
    move-object v15, v3

    .line 75
    filled-new-array/range {v6 .. v15}, [[I

    .line 76
    move-result-object v3

    .line 79
    const/16 v6, 0xbb

    .line 80
    const/16 v7, 0x51

    .line 82
    const/16 v8, 0xab

    .line 84
    filled-new-array {v6, v7, v4, v8}, [I

    .line 86
    move-result-object v18

    .line 89
    const/16 v9, 0xbd

    .line 90
    const/16 v10, 0xd6

    .line 92
    filled-new-array {v9, v7, v10, v1}, [I

    .line 94
    move-result-object v19

    .line 97
    filled-new-array {v6, v7, v4, v8}, [I

    .line 98
    move-result-object v20

    .line 101
    filled-new-array {v6, v7, v4, v8}, [I

    .line 102
    move-result-object v21

    .line 105
    const/16 v9, 0xc2

    .line 106
    const/16 v10, 0xcd

    .line 108
    filled-new-array {v9, v7, v10, v8}, [I

    .line 110
    move-result-object v22

    .line 113
    const/16 v9, 0xdb

    .line 114
    filled-new-array {v6, v7, v9, v8}, [I

    .line 116
    move-result-object v23

    .line 119
    filled-new-array {v6, v7, v4, v8}, [I

    .line 120
    move-result-object v24

    .line 123
    const/16 v9, 0xd7

    .line 124
    filled-new-array {v6, v7, v9, v8}, [I

    .line 126
    move-result-object v25

    .line 129
    filled-new-array {v6, v7, v4, v8}, [I

    .line 130
    move-result-object v26

    .line 133
    filled-new-array {v6, v7, v4, v8}, [I

    .line 134
    move-result-object v27

    .line 137
    filled-new-array/range {v18 .. v27}, [[I

    .line 138
    move-result-object v7

    .line 141
    const/16 v9, 0x4e

    .line 142
    filled-new-array {v2, v9, v4, v8}, [I

    .line 144
    move-result-object v10

    .line 147
    const/16 v11, 0xb2

    .line 148
    const/16 v12, 0xd9

    .line 150
    const/16 v13, 0xb3

    .line 152
    filled-new-array {v11, v9, v12, v13}, [I

    .line 154
    move-result-object v11

    .line 157
    filled-new-array {v2, v9, v4, v8}, [I

    .line 158
    move-result-object v12

    .line 161
    filled-new-array {v2, v9, v4, v8}, [I

    .line 162
    move-result-object v2

    .line 165
    filled-new-array {v10, v11, v12, v2}, [[I

    .line 166
    move-result-object v2

    .line 169
    filled-new-array {v3, v7, v2}, [[[I

    .line 170
    move-result-object v2

    .line 173
    iput-object v2, v0, Lcom/miui/clock/module/FontNeumaticCompressed;->mHourOffset:[[[I

    .line 174
    const/16 v2, 0xdc

    .line 176
    const/16 v3, 0x4b

    .line 178
    const/16 v4, 0xa8

    .line 180
    filled-new-array {v2, v3, v6, v4}, [I

    .line 182
    move-result-object v18

    .line 185
    const/16 v7, 0xbe

    .line 186
    filled-new-array {v2, v3, v7, v5}, [I

    .line 188
    move-result-object v19

    .line 191
    filled-new-array {v2, v3, v6, v4}, [I

    .line 192
    move-result-object v20

    .line 195
    filled-new-array {v2, v3, v6, v4}, [I

    .line 196
    move-result-object v21

    .line 199
    filled-new-array {v2, v3, v13, v4}, [I

    .line 200
    move-result-object v22

    .line 203
    const/16 v8, 0xbc

    .line 204
    filled-new-array {v2, v3, v8, v4}, [I

    .line 206
    move-result-object v23

    .line 209
    filled-new-array {v2, v3, v6, v4}, [I

    .line 210
    move-result-object v24

    .line 213
    filled-new-array {v2, v3, v8, v5}, [I

    .line 214
    move-result-object v25

    .line 217
    filled-new-array {v2, v3, v6, v4}, [I

    .line 218
    move-result-object v26

    .line 221
    filled-new-array {v2, v3, v6, v4}, [I

    .line 222
    move-result-object v27

    .line 225
    filled-new-array/range {v18 .. v27}, [[I

    .line 226
    move-result-object v28

    .line 229
    const/16 v9, 0xde

    .line 230
    const/16 v10, 0x55

    .line 232
    filled-new-array {v9, v10, v6, v4}, [I

    .line 234
    move-result-object v18

    .line 237
    filled-new-array {v9, v10, v7, v5}, [I

    .line 238
    move-result-object v19

    .line 241
    filled-new-array {v9, v10, v6, v4}, [I

    .line 242
    move-result-object v20

    .line 245
    filled-new-array {v9, v10, v6, v4}, [I

    .line 246
    move-result-object v21

    .line 249
    filled-new-array {v9, v10, v13, v4}, [I

    .line 250
    move-result-object v22

    .line 253
    filled-new-array {v9, v10, v8, v4}, [I

    .line 254
    move-result-object v23

    .line 257
    filled-new-array {v9, v10, v6, v4}, [I

    .line 258
    move-result-object v24

    .line 261
    filled-new-array {v9, v10, v8, v5}, [I

    .line 262
    move-result-object v25

    .line 265
    filled-new-array {v9, v10, v6, v4}, [I

    .line 266
    move-result-object v26

    .line 269
    filled-new-array {v9, v10, v6, v4}, [I

    .line 270
    move-result-object v27

    .line 273
    filled-new-array/range {v18 .. v27}, [[I

    .line 274
    move-result-object v29

    .line 277
    const/16 v5, 0x49

    .line 278
    filled-new-array {v2, v5, v6, v1}, [I

    .line 280
    move-result-object v18

    .line 283
    const/16 v9, 0xc3

    .line 284
    const/16 v10, 0x52

    .line 286
    filled-new-array {v2, v10, v7, v9}, [I

    .line 288
    move-result-object v19

    .line 291
    filled-new-array {v2, v5, v6, v1}, [I

    .line 292
    move-result-object v20

    .line 295
    filled-new-array {v2, v5, v6, v1}, [I

    .line 296
    move-result-object v21

    .line 299
    filled-new-array {v2, v5, v13, v1}, [I

    .line 300
    move-result-object v22

    .line 303
    filled-new-array {v2, v5, v8, v1}, [I

    .line 304
    move-result-object v23

    .line 307
    filled-new-array {v2, v5, v6, v1}, [I

    .line 308
    move-result-object v24

    .line 311
    const/16 v9, 0xc1

    .line 312
    const/16 v11, 0xb5

    .line 314
    filled-new-array {v2, v5, v11, v9}, [I

    .line 316
    move-result-object v25

    .line 319
    filled-new-array {v2, v5, v6, v1}, [I

    .line 320
    move-result-object v26

    .line 323
    filled-new-array {v2, v5, v6, v1}, [I

    .line 324
    move-result-object v27

    .line 327
    filled-new-array/range {v18 .. v27}, [[I

    .line 328
    move-result-object v30

    .line 331
    filled-new-array {v2, v5, v6, v1}, [I

    .line 332
    move-result-object v17

    .line 335
    filled-new-array {v2, v5, v7, v4}, [I

    .line 336
    move-result-object v18

    .line 339
    filled-new-array {v2, v5, v6, v1}, [I

    .line 340
    move-result-object v19

    .line 343
    filled-new-array {v2, v5, v6, v1}, [I

    .line 344
    move-result-object v20

    .line 347
    filled-new-array {v2, v5, v13, v1}, [I

    .line 348
    move-result-object v21

    .line 351
    filled-new-array {v2, v5, v8, v1}, [I

    .line 352
    move-result-object v22

    .line 355
    filled-new-array {v2, v5, v6, v1}, [I

    .line 356
    move-result-object v23

    .line 359
    filled-new-array {v2, v5, v8, v4}, [I

    .line 360
    move-result-object v24

    .line 363
    filled-new-array {v2, v5, v6, v1}, [I

    .line 364
    move-result-object v25

    .line 367
    filled-new-array {v2, v5, v6, v1}, [I

    .line 368
    move-result-object v26

    .line 371
    filled-new-array/range {v17 .. v26}, [[I

    .line 372
    move-result-object v31

    .line 375
    const/16 v5, 0xa7

    .line 376
    filled-new-array {v2, v10, v6, v5}, [I

    .line 378
    move-result-object v17

    .line 381
    const/16 v9, 0xa9

    .line 382
    filled-new-array {v2, v10, v7, v9}, [I

    .line 384
    move-result-object v18

    .line 387
    filled-new-array {v2, v10, v6, v5}, [I

    .line 388
    move-result-object v19

    .line 391
    filled-new-array {v2, v10, v6, v5}, [I

    .line 392
    move-result-object v20

    .line 395
    filled-new-array {v2, v10, v13, v5}, [I

    .line 396
    move-result-object v21

    .line 399
    filled-new-array {v2, v10, v8, v5}, [I

    .line 400
    move-result-object v22

    .line 403
    filled-new-array {v2, v10, v6, v5}, [I

    .line 404
    move-result-object v23

    .line 407
    filled-new-array {v2, v10, v8, v9}, [I

    .line 408
    move-result-object v24

    .line 411
    filled-new-array {v2, v10, v6, v5}, [I

    .line 412
    move-result-object v25

    .line 415
    filled-new-array {v2, v10, v6, v1}, [I

    .line 416
    move-result-object v26

    .line 419
    filled-new-array/range {v17 .. v26}, [[I

    .line 420
    move-result-object v32

    .line 423
    filled-new-array {v2, v3, v6, v1}, [I

    .line 424
    move-result-object v17

    .line 427
    filled-new-array {v2, v3, v7, v4}, [I

    .line 428
    move-result-object v18

    .line 431
    filled-new-array {v2, v3, v6, v1}, [I

    .line 432
    move-result-object v19

    .line 435
    filled-new-array {v2, v3, v6, v1}, [I

    .line 436
    move-result-object v20

    .line 439
    filled-new-array {v2, v3, v13, v1}, [I

    .line 440
    move-result-object v21

    .line 443
    filled-new-array {v2, v3, v8, v1}, [I

    .line 444
    move-result-object v22

    .line 447
    filled-new-array {v2, v3, v6, v1}, [I

    .line 448
    move-result-object v23

    .line 451
    filled-new-array {v2, v3, v8, v4}, [I

    .line 452
    move-result-object v24

    .line 455
    filled-new-array {v2, v3, v6, v1}, [I

    .line 456
    move-result-object v25

    .line 459
    filled-new-array {v2, v3, v6, v1}, [I

    .line 460
    move-result-object v26

    .line 463
    filled-new-array/range {v17 .. v26}, [[I

    .line 464
    move-result-object v33

    .line 467
    filled-new-array/range {v28 .. v33}, [[[I

    .line 468
    move-result-object v1

    .line 471
    iput-object v1, v0, Lcom/miui/clock/module/FontNeumaticCompressed;->mMinuteOffset:[[[I

    .line 472
    const/4 v1, 0x7

    .line 474
    new-array v1, v1, [F

    .line 475
    fill-array-data v1, :array_1

    .line 477
    iput-object v1, v0, Lcom/miui/clock/module/FontNeumaticCompressed;->mPercentages:[F

    .line 480
    const/16 v1, 0xa

    .line 482
    new-array v2, v1, [F

    .line 484
    fill-array-data v2, :array_2

    .line 486
    iput-object v2, v0, Lcom/miui/clock/module/FontNeumaticCompressed;->mSVGEmptyLeft:[F

    .line 489
    new-array v2, v1, [F

    .line 491
    fill-array-data v2, :array_3

    .line 493
    iput-object v2, v0, Lcom/miui/clock/module/FontNeumaticCompressed;->mSVGEmptyRight:[F

    .line 496
    new-array v1, v1, [I

    .line 498
    fill-array-data v1, :array_4

    .line 500
    iput-object v1, v0, Lcom/miui/clock/module/FontNeumaticCompressed;->mLargeClockWidth:[I

    .line 503
    return-void

    .line 505
    :array_0
    .array-data 4
        0x7f080cde    # @drawable/font_h_0 'res/drawable/font_h_0.xml'
        0x7f080cdf    # @drawable/font_h_1 'res/drawable/font_h_1.xml'
        0x7f080ce0    # @drawable/font_h_2 'res/drawable/font_h_2.xml'
        0x7f080ce1    # @drawable/font_h_3 'res/drawable/font_h_3.xml'
        0x7f080ce2    # @drawable/font_h_4 'res/drawable/font_h_4.xml'
        0x7f080ce3    # @drawable/font_h_5 'res/drawable/font_h_5.xml'
        0x7f080ce4    # @drawable/font_h_6 'res/drawable/font_h_6.xml'
        0x7f080ce5    # @drawable/font_h_7 'res/drawable/font_h_7.xml'
        0x7f080ce6    # @drawable/font_h_8 'res/drawable/font_h_8.xml'
        0x7f080ce7    # @drawable/font_h_9 'res/drawable/font_h_9.xml'
    .end array-data

    .line 506
    :array_1
    .array-data 4
        0x3f47ae14    # 0.78f
        0x3e8a3d71    # 0.27f
        0x3e8a3d71    # 0.27f
        0x3e8a3d71    # 0.27f
        0x3e8a3d71    # 0.27f
        0x3e6b851f    # 0.23f
        0x3df5c28f    # 0.12f
    .end array-data

    :array_2
    .array-data 4
        0x3fc30c31
        0x3f924925
        0x3fc30c31
        0x3fc30c31
        0x3f924925
        0x3f924925
        0x3fc30c31
        0x3f430c31
        0x3fc30c31
        0x3fc30c31
    .end array-data

    :array_3
    .array-data 4
        0x422aaaab
        0x41d55555
        0x422aaaab
        0x422aaaab
        0x42400000    # 48.0f
        0x42279e7a
        0x422aaaab
        0x421b6db7
        0x422aaaab
        0x422aaaab
    .end array-data

    :array_4
    .array-data 4
        0x2c
        0x1c
        0x2c
        0x2c
        0x31
        0x2b
        0x2c
        0x28
        0x2c
        0x2c
    .end array-data
.end method


# virtual methods
.method public final getColonInterval()F
    .locals 0

    .line 1
    const/high16 p0, 0x42400000    # 48.0f

    .line 2
    return p0
    .line 4
.end method

.method public final getColonResource()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/clock/module/BaseFontStyle;->mUserDefinedColonResource:I

    .line 2
    if-eqz p0, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    const p0, 0x7f081317    # @drawable/miui_rhombus_colon_rect_8 'res/drawable/miui_rhombus_colon_rect_8.xml'

    .line 7
    :goto_0
    return p0
    .line 10
.end method

.method public final getColonSize()F
    .locals 0

    .line 1
    const/high16 p0, 0x41e00000    # 28.0f

    .line 2
    return p0
    .line 4
.end method

.method public final getFontStyle()Lcom/miui/clock/module/BaseFontStyle$Style;
    .locals 0

    .line 1
    sget-object p0, Lcom/miui/clock/module/BaseFontStyle$Style;->NeumaticCompressed:Lcom/miui/clock/module/BaseFontStyle$Style;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getHourOffset()[[[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontNeumaticCompressed;->mHourOffset:[[[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getLargeClockHeight()I
    .locals 0

    .line 1
    const/16 p0, 0xb5

    .line 2
    return p0
    .line 4
.end method

.method public final getLargeClockWidth()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontNeumaticCompressed;->mLargeClockWidth:[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getLeftEmpty()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontNeumaticCompressed;->mSVGEmptyLeft:[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getMinuteOffset()[[[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontNeumaticCompressed;->mMinuteOffset:[[[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getNotificationColonHeight()F
    .locals 0

    .line 1
    const/high16 p0, 0x42900000    # 72.0f

    .line 2
    return p0
    .line 4
.end method

.method public final getNotificationColonWidth()F
    .locals 0

    .line 1
    const p0, 0x40feb852    # 7.96f

    .line 2
    return p0
    .line 5
.end method

.method public final getPercentages()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontNeumaticCompressed;->mPercentages:[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getRightEmpty()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontNeumaticCompressed;->mSVGEmptyRight:[F

    .line 2
    return-object p0
    .line 4
.end method

.method public final getSmallClockInnerHeight()I
    .locals 0

    .line 1
    const/16 p0, 0x48

    .line 2
    return p0
    .line 4
.end method

.method public final getSmallClockInnerMarginOffset()I
    .locals 0

    .line 1
    const/16 p0, 0x1c

    .line 2
    return p0
    .line 4
.end method

.method public final getSmallColon1MarginInnerTop()F
    .locals 0

    .line 1
    const p0, 0x41a93333    # 21.15f

    .line 2
    return p0
    .line 5
.end method

.method public final getSmallColon2MarginInnerTop()F
    .locals 0

    .line 1
    const p0, 0x422d851f    # 43.38f

    .line 2
    return p0
    .line 5
.end method

.method public final getSmallColonRealWidth()F
    .locals 0

    .line 1
    const p0, 0x40e851ec    # 7.26f

    .line 2
    return p0
    .line 5
.end method

.method public final getSmallColonResource()I
    .locals 0

    .line 1
    const p0, 0x7f080ce8    # @drawable/font_h_colon 'res/drawable/font_h_colon.xml'

    .line 2
    return p0
    .line 5
.end method

.method public final getSmallColonResourceHeight()I
    .locals 0

    .line 1
    const/16 p0, 0xb5

    .line 2
    return p0
    .line 4
.end method

.method public final getSmallColonResourceWidth()I
    .locals 0

    .line 1
    const/16 p0, 0x14

    .line 2
    return p0
    .line 4
.end method

.method public final getSvgResource()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/FontNeumaticCompressed;->mSVGResource:[I

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTextBoxWidth()I
    .locals 0

    .line 1
    const/16 p0, 0x31

    .line 2
    return p0
    .line 4
.end method
