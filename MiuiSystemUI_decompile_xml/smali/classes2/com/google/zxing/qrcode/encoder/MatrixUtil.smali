.class public abstract Lcom/google/zxing/qrcode/encoder/MatrixUtil;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final POSITION_ADJUSTMENT_PATTERN:[[I

.field public static final POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

.field public static final POSITION_DETECTION_PATTERN:[[I

.field public static final TYPE_INFO_COORDINATES:[[I


# direct methods
.method public static constructor <clinit>()V
    .locals 44

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v1, v0, [I

    .line 3
    fill-array-data v1, :array_0

    .line 5
    new-array v2, v0, [I

    .line 8
    fill-array-data v2, :array_1

    .line 10
    new-array v3, v0, [I

    .line 13
    fill-array-data v3, :array_2

    .line 15
    new-array v4, v0, [I

    .line 18
    fill-array-data v4, :array_3

    .line 20
    new-array v5, v0, [I

    .line 23
    fill-array-data v5, :array_4

    .line 25
    new-array v6, v0, [I

    .line 28
    fill-array-data v6, :array_5

    .line 30
    new-array v7, v0, [I

    .line 33
    fill-array-data v7, :array_6

    .line 35
    filled-new-array/range {v1 .. v7}, [[I

    .line 38
    move-result-object v1

    .line 41
    sput-object v1, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    .line 42
    const/4 v1, 0x1

    .line 44
    filled-new-array {v1, v1, v1, v1, v1}, [I

    .line 45
    move-result-object v2

    .line 48
    const/4 v3, 0x0

    .line 49
    filled-new-array {v1, v3, v3, v3, v1}, [I

    .line 50
    move-result-object v4

    .line 53
    filled-new-array {v1, v3, v1, v3, v1}, [I

    .line 54
    move-result-object v5

    .line 57
    filled-new-array {v1, v3, v3, v3, v1}, [I

    .line 58
    move-result-object v6

    .line 61
    filled-new-array {v1, v1, v1, v1, v1}, [I

    .line 62
    move-result-object v7

    .line 65
    filled-new-array {v2, v4, v5, v6, v7}, [[I

    .line 66
    move-result-object v2

    .line 69
    sput-object v2, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    .line 70
    new-array v2, v0, [I

    .line 72
    move-object v4, v2

    .line 74
    fill-array-data v2, :array_7

    .line 75
    new-array v2, v0, [I

    .line 78
    move-object v5, v2

    .line 80
    fill-array-data v2, :array_8

    .line 81
    new-array v2, v0, [I

    .line 84
    move-object v6, v2

    .line 86
    fill-array-data v2, :array_9

    .line 87
    new-array v2, v0, [I

    .line 90
    move-object v7, v2

    .line 92
    fill-array-data v2, :array_a

    .line 93
    new-array v2, v0, [I

    .line 96
    move-object v8, v2

    .line 98
    fill-array-data v2, :array_b

    .line 99
    new-array v2, v0, [I

    .line 102
    move-object v9, v2

    .line 104
    fill-array-data v2, :array_c

    .line 105
    new-array v2, v0, [I

    .line 108
    move-object v10, v2

    .line 110
    fill-array-data v2, :array_d

    .line 111
    new-array v2, v0, [I

    .line 114
    move-object v11, v2

    .line 116
    fill-array-data v2, :array_e

    .line 117
    new-array v2, v0, [I

    .line 120
    move-object v12, v2

    .line 122
    fill-array-data v2, :array_f

    .line 123
    new-array v2, v0, [I

    .line 126
    move-object v13, v2

    .line 128
    fill-array-data v2, :array_10

    .line 129
    new-array v2, v0, [I

    .line 132
    move-object v14, v2

    .line 134
    fill-array-data v2, :array_11

    .line 135
    new-array v2, v0, [I

    .line 138
    move-object v15, v2

    .line 140
    fill-array-data v2, :array_12

    .line 141
    new-array v2, v0, [I

    .line 144
    move-object/from16 v16, v2

    .line 146
    fill-array-data v2, :array_13

    .line 148
    new-array v2, v0, [I

    .line 151
    move-object/from16 v17, v2

    .line 153
    fill-array-data v2, :array_14

    .line 155
    new-array v2, v0, [I

    .line 158
    move-object/from16 v18, v2

    .line 160
    fill-array-data v2, :array_15

    .line 162
    new-array v2, v0, [I

    .line 165
    move-object/from16 v19, v2

    .line 167
    fill-array-data v2, :array_16

    .line 169
    new-array v2, v0, [I

    .line 172
    move-object/from16 v20, v2

    .line 174
    fill-array-data v2, :array_17

    .line 176
    new-array v2, v0, [I

    .line 179
    move-object/from16 v21, v2

    .line 181
    fill-array-data v2, :array_18

    .line 183
    new-array v2, v0, [I

    .line 186
    move-object/from16 v22, v2

    .line 188
    fill-array-data v2, :array_19

    .line 190
    new-array v2, v0, [I

    .line 193
    move-object/from16 v23, v2

    .line 195
    fill-array-data v2, :array_1a

    .line 197
    new-array v2, v0, [I

    .line 200
    move-object/from16 v24, v2

    .line 202
    fill-array-data v2, :array_1b

    .line 204
    new-array v2, v0, [I

    .line 207
    move-object/from16 v25, v2

    .line 209
    fill-array-data v2, :array_1c

    .line 211
    new-array v2, v0, [I

    .line 214
    move-object/from16 v26, v2

    .line 216
    fill-array-data v2, :array_1d

    .line 218
    new-array v2, v0, [I

    .line 221
    move-object/from16 v27, v2

    .line 223
    fill-array-data v2, :array_1e

    .line 225
    new-array v2, v0, [I

    .line 228
    move-object/from16 v28, v2

    .line 230
    fill-array-data v2, :array_1f

    .line 232
    new-array v2, v0, [I

    .line 235
    move-object/from16 v29, v2

    .line 237
    fill-array-data v2, :array_20

    .line 239
    new-array v2, v0, [I

    .line 242
    move-object/from16 v30, v2

    .line 244
    fill-array-data v2, :array_21

    .line 246
    new-array v2, v0, [I

    .line 249
    move-object/from16 v31, v2

    .line 251
    fill-array-data v2, :array_22

    .line 253
    new-array v2, v0, [I

    .line 256
    move-object/from16 v32, v2

    .line 258
    fill-array-data v2, :array_23

    .line 260
    new-array v2, v0, [I

    .line 263
    move-object/from16 v33, v2

    .line 265
    fill-array-data v2, :array_24

    .line 267
    new-array v2, v0, [I

    .line 270
    move-object/from16 v34, v2

    .line 272
    fill-array-data v2, :array_25

    .line 274
    new-array v2, v0, [I

    .line 277
    move-object/from16 v35, v2

    .line 279
    fill-array-data v2, :array_26

    .line 281
    new-array v2, v0, [I

    .line 284
    move-object/from16 v36, v2

    .line 286
    fill-array-data v2, :array_27

    .line 288
    new-array v2, v0, [I

    .line 291
    move-object/from16 v37, v2

    .line 293
    fill-array-data v2, :array_28

    .line 295
    new-array v2, v0, [I

    .line 298
    move-object/from16 v38, v2

    .line 300
    fill-array-data v2, :array_29

    .line 302
    new-array v2, v0, [I

    .line 305
    move-object/from16 v39, v2

    .line 307
    fill-array-data v2, :array_2a

    .line 309
    new-array v2, v0, [I

    .line 312
    move-object/from16 v40, v2

    .line 314
    fill-array-data v2, :array_2b

    .line 316
    new-array v2, v0, [I

    .line 319
    move-object/from16 v41, v2

    .line 321
    fill-array-data v2, :array_2c

    .line 323
    new-array v2, v0, [I

    .line 326
    move-object/from16 v42, v2

    .line 328
    fill-array-data v2, :array_2d

    .line 330
    new-array v2, v0, [I

    .line 333
    move-object/from16 v43, v2

    .line 335
    fill-array-data v2, :array_2e

    .line 337
    filled-new-array/range {v4 .. v43}, [[I

    .line 340
    move-result-object v2

    .line 343
    sput-object v2, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    .line 344
    const/16 v2, 0x8

    .line 346
    filled-new-array {v2, v3}, [I

    .line 348
    move-result-object v4

    .line 351
    filled-new-array {v2, v1}, [I

    .line 352
    move-result-object v5

    .line 355
    const/4 v6, 0x2

    .line 356
    filled-new-array {v2, v6}, [I

    .line 357
    move-result-object v7

    .line 360
    const/4 v8, 0x3

    .line 361
    filled-new-array {v2, v8}, [I

    .line 362
    move-result-object v9

    .line 365
    const/4 v10, 0x4

    .line 366
    filled-new-array {v2, v10}, [I

    .line 367
    move-result-object v11

    .line 370
    const/4 v12, 0x5

    .line 371
    filled-new-array {v2, v12}, [I

    .line 372
    move-result-object v13

    .line 375
    filled-new-array {v2, v0}, [I

    .line 376
    move-result-object v14

    .line 379
    filled-new-array {v2, v2}, [I

    .line 380
    move-result-object v15

    .line 383
    filled-new-array {v0, v2}, [I

    .line 384
    move-result-object v0

    .line 387
    filled-new-array {v12, v2}, [I

    .line 388
    move-result-object v16

    .line 391
    filled-new-array {v10, v2}, [I

    .line 392
    move-result-object v17

    .line 395
    filled-new-array {v8, v2}, [I

    .line 396
    move-result-object v18

    .line 399
    filled-new-array {v6, v2}, [I

    .line 400
    move-result-object v19

    .line 403
    filled-new-array {v1, v2}, [I

    .line 404
    move-result-object v1

    .line 407
    filled-new-array {v3, v2}, [I

    .line 408
    move-result-object v2

    .line 411
    move-object v6, v7

    .line 412
    move-object v7, v9

    .line 413
    move-object v8, v11

    .line 414
    move-object v9, v13

    .line 415
    move-object v10, v14

    .line 416
    move-object v11, v15

    .line 417
    move-object v12, v0

    .line 418
    move-object/from16 v13, v16

    .line 419
    move-object/from16 v14, v17

    .line 421
    move-object/from16 v15, v18

    .line 423
    move-object/from16 v16, v19

    .line 425
    move-object/from16 v17, v1

    .line 427
    move-object/from16 v18, v2

    .line 429
    filled-new-array/range {v4 .. v18}, [[I

    .line 431
    move-result-object v0

    .line 434
    sput-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    .line 435
    return-void

    .line 437
    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 438
    :array_1
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    .line 456
    :array_2
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    .line 474
    :array_3
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    .line 492
    :array_4
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    .line 510
    :array_5
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_7
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_8
    .array-data 4
        0x6
        0x12
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_9
    .array-data 4
        0x6
        0x16
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_a
    .array-data 4
        0x6
        0x1a
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_b
    .array-data 4
        0x6
        0x1e
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_c
    .array-data 4
        0x6
        0x22
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_d
    .array-data 4
        0x6
        0x16
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_e
    .array-data 4
        0x6
        0x18
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_f
    .array-data 4
        0x6
        0x1a
        0x2e
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_10
    .array-data 4
        0x6
        0x1c
        0x32
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_11
    .array-data 4
        0x6
        0x1e
        0x36
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_12
    .array-data 4
        0x6
        0x20
        0x3a
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_13
    .array-data 4
        0x6
        0x22
        0x3e
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_14
    .array-data 4
        0x6
        0x1a
        0x2e
        0x42
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_15
    .array-data 4
        0x6
        0x1a
        0x30
        0x46
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_16
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_17
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_18
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_19
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1a
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1b
    .array-data 4
        0x6
        0x1c
        0x32
        0x48
        0x5e
        -0x1
        -0x1
    .end array-data

    :array_1c
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        -0x1
        -0x1
    .end array-data

    :array_1d
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        -0x1
        -0x1
    .end array-data

    :array_1e
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        -0x1
        -0x1
    .end array-data

    :array_1f
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        -0x1
        -0x1
    .end array-data

    :array_20
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        -0x1
        -0x1
    .end array-data

    :array_21
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        -0x1
        -0x1
    .end array-data

    :array_22
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        0x7a
        -0x1
    .end array-data

    :array_23
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        -0x1
    .end array-data

    :array_24
    .array-data 4
        0x6
        0x1a
        0x34
        0x4e
        0x68
        0x82
        -0x1
    .end array-data

    :array_25
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        0x6c
        0x86
        -0x1
    .end array-data

    :array_26
    .array-data 4
        0x6
        0x22
        0x3c
        0x56
        0x70
        0x8a
        -0x1
    .end array-data

    :array_27
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        -0x1
    .end array-data

    :array_28
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        0x92
        -0x1
    .end array-data

    :array_29
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        0x96
    .end array-data

    :array_2a
    .array-data 4
        0x6
        0x18
        0x32
        0x4c
        0x66
        0x80
        0x9a
    .end array-data

    :array_2b
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        0x84
        0x9e
    .end array-data

    :array_2c
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        0x88
        0xa2
    .end array-data

    :array_2d
    .array-data 4
        0x6
        0x1a
        0x36
        0x52
        0x6e
        0x8a
        0xa6
    .end array-data

    :array_2e
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        0xaa
    .end array-data
.end method

.method public static buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p3

    .line 4
    move-object/from16 v2, p4

    .line 6
    const/4 v3, 0x0

    .line 8
    move v4, v3

    .line 9
    :goto_0
    const/4 v5, -0x1

    .line 10
    iget v6, v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    .line 11
    iget v7, v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    .line 13
    if-ge v4, v7, :cond_1

    .line 15
    move v7, v3

    .line 17
    :goto_1
    if-ge v7, v6, :cond_0

    .line 18
    iget-object v8, v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    .line 20
    aget-object v8, v8, v4

    .line 22
    aput-byte v5, v8, v7

    .line 24
    add-int/lit8 v7, v7, 0x1

    .line 26
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 29
    goto :goto_0

    .line 31
    :cond_1
    sget-object v4, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    .line 32
    aget-object v4, v4, v3

    .line 34
    array-length v4, v4

    .line 36
    invoke-static {v3, v3, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 37
    sub-int v4, v6, v4

    .line 40
    invoke-static {v4, v3, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 42
    invoke-static {v3, v4, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 45
    const/4 v4, 0x7

    .line 48
    invoke-static {v3, v4, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 49
    add-int/lit8 v8, v6, -0x8

    .line 52
    invoke-static {v8, v4, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 54
    invoke-static {v3, v8, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 57
    invoke-static {v4, v3, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 60
    add-int/lit8 v9, v7, -0x7

    .line 63
    add-int/lit8 v10, v9, -0x1

    .line 65
    invoke-static {v10, v3, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 67
    invoke-static {v4, v9, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 70
    add-int/lit8 v4, v7, -0x8

    .line 73
    const/16 v10, 0x8

    .line 75
    invoke-virtual {v2, v10, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    .line 77
    move-result v11

    .line 80
    if-eqz v11, :cond_27

    .line 81
    const/4 v11, 0x1

    .line 83
    invoke-virtual {v2, v10, v4, v11}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 84
    const/4 v4, 0x5

    .line 87
    const/4 v10, 0x2

    .line 88
    move-object/from16 v11, p2

    .line 89
    iget v11, v11, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    .line 91
    if-ge v11, v10, :cond_2

    .line 93
    goto/16 :goto_7

    .line 95
    :cond_2
    add-int/lit8 v10, v11, -0x1

    .line 97
    sget-object v12, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    .line 99
    aget-object v10, v12, v10

    .line 101
    array-length v12, v10

    .line 103
    move v13, v5

    .line 104
    move v5, v4

    .line 105
    move v4, v3

    .line 106
    :goto_2
    if-ge v3, v12, :cond_7

    .line 107
    :goto_3
    if-ge v4, v12, :cond_6

    .line 109
    aget v14, v10, v3

    .line 111
    aget v15, v10, v4

    .line 113
    if-eq v15, v13, :cond_5

    .line 115
    if-ne v14, v13, :cond_3

    .line 117
    goto :goto_6

    .line 119
    :cond_3
    invoke-virtual {v2, v15, v14}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    .line 120
    move-result v13

    .line 123
    invoke-static {v13}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    .line 124
    move-result v13

    .line 127
    if-eqz v13, :cond_5

    .line 128
    add-int/lit8 v15, v15, -0x2

    .line 130
    add-int/lit8 v14, v14, -0x2

    .line 132
    const/4 v13, 0x0

    .line 134
    :goto_4
    if-ge v13, v5, :cond_5

    .line 135
    const/16 v16, 0x0

    .line 137
    move-object/from16 p2, v10

    .line 139
    move/from16 v10, v16

    .line 141
    :goto_5
    if-ge v10, v5, :cond_4

    .line 143
    add-int v5, v15, v10

    .line 145
    move/from16 v16, v12

    .line 147
    add-int v12, v14, v13

    .line 149
    sget-object v17, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    .line 151
    aget-object v17, v17, v13

    .line 153
    move/from16 v18, v14

    .line 155
    aget v14, v17, v10

    .line 157
    invoke-virtual {v2, v5, v12, v14}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 159
    add-int/lit8 v10, v10, 0x1

    .line 162
    const/4 v5, 0x5

    .line 164
    move/from16 v12, v16

    .line 165
    move/from16 v14, v18

    .line 167
    goto :goto_5

    .line 169
    :cond_4
    move/from16 v16, v12

    .line 170
    move/from16 v18, v14

    .line 172
    add-int/lit8 v13, v13, 0x1

    .line 174
    const/4 v5, 0x5

    .line 176
    move-object/from16 v10, p2

    .line 177
    goto :goto_4

    .line 179
    :cond_5
    :goto_6
    move-object/from16 p2, v10

    .line 180
    move/from16 v16, v12

    .line 182
    add-int/lit8 v4, v4, 0x1

    .line 184
    const/4 v13, -0x1

    .line 186
    const/4 v5, 0x5

    .line 187
    move-object/from16 v10, p2

    .line 188
    move/from16 v12, v16

    .line 190
    goto :goto_3

    .line 192
    :cond_6
    move-object/from16 p2, v10

    .line 193
    move/from16 v16, v12

    .line 195
    add-int/lit8 v3, v3, 0x1

    .line 197
    const/4 v4, 0x0

    .line 199
    const/4 v13, -0x1

    .line 200
    const/4 v5, 0x5

    .line 201
    goto :goto_2

    .line 202
    :cond_7
    :goto_7
    const/16 v3, 0x8

    .line 203
    :goto_8
    const/4 v4, 0x6

    .line 205
    if-ge v3, v8, :cond_a

    .line 206
    add-int/lit8 v5, v3, 0x1

    .line 208
    rem-int/lit8 v10, v5, 0x2

    .line 210
    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    .line 212
    move-result v12

    .line 215
    invoke-static {v12}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    .line 216
    move-result v12

    .line 219
    if-eqz v12, :cond_8

    .line 220
    invoke-virtual {v2, v3, v4, v10}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 222
    :cond_8
    invoke-virtual {v2, v4, v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    .line 225
    move-result v12

    .line 228
    invoke-static {v12}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    .line 229
    move-result v12

    .line 232
    if-eqz v12, :cond_9

    .line 233
    invoke-virtual {v2, v4, v3, v10}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 235
    :cond_9
    move v3, v5

    .line 238
    goto :goto_8

    .line 239
    :cond_a
    new-instance v3, Lcom/google/zxing/common/BitArray;

    .line 240
    invoke-direct {v3}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 242
    if-ltz v1, :cond_b

    .line 245
    const/16 v5, 0x8

    .line 247
    if-ge v1, v5, :cond_b

    .line 249
    const/4 v5, 0x1

    .line 251
    goto :goto_9

    .line 252
    :cond_b
    const/4 v5, 0x0

    .line 253
    :goto_9
    if-eqz v5, :cond_26

    .line 254
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->getBits()I

    .line 256
    move-result v5

    .line 259
    const/4 v8, 0x3

    .line 260
    shl-int/2addr v5, v8

    .line 261
    or-int/2addr v5, v1

    .line 262
    const/4 v10, 0x5

    .line 263
    invoke-virtual {v3, v5, v10}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 264
    const/16 v10, 0x537

    .line 267
    const/4 v12, 0x0

    .line 269
    move v13, v10

    .line 270
    :goto_a
    if-eqz v13, :cond_c

    .line 271
    ushr-int/lit8 v13, v13, 0x1

    .line 273
    add-int/lit8 v12, v12, 0x1

    .line 275
    goto :goto_a

    .line 277
    :cond_c
    add-int/lit8 v13, v12, -0x1

    .line 278
    shl-int/2addr v5, v13

    .line 280
    :goto_b
    const/4 v13, 0x0

    .line 281
    move v14, v5

    .line 282
    :goto_c
    if-eqz v14, :cond_d

    .line 283
    ushr-int/lit8 v14, v14, 0x1

    .line 285
    add-int/lit8 v13, v13, 0x1

    .line 287
    goto :goto_c

    .line 289
    :cond_d
    if-lt v13, v12, :cond_f

    .line 290
    const/4 v13, 0x0

    .line 292
    move v14, v5

    .line 293
    :goto_d
    if-eqz v14, :cond_e

    .line 294
    ushr-int/lit8 v14, v14, 0x1

    .line 296
    add-int/lit8 v13, v13, 0x1

    .line 298
    goto :goto_d

    .line 300
    :cond_e
    sub-int/2addr v13, v12

    .line 301
    shl-int v13, v10, v13

    .line 302
    xor-int/2addr v5, v13

    .line 304
    goto :goto_b

    .line 305
    :cond_f
    const/16 v10, 0xa

    .line 306
    invoke-virtual {v3, v5, v10}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 308
    new-instance v5, Lcom/google/zxing/common/BitArray;

    .line 311
    invoke-direct {v5}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 313
    const/16 v10, 0x5412

    .line 316
    const/16 v12, 0xf

    .line 318
    invoke-virtual {v5, v10, v12}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 320
    iget-object v10, v3, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 323
    array-length v10, v10

    .line 325
    iget-object v13, v5, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 326
    array-length v13, v13

    .line 328
    if-ne v10, v13, :cond_25

    .line 329
    const/4 v10, 0x0

    .line 331
    :goto_e
    iget-object v13, v3, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 332
    array-length v14, v13

    .line 334
    if-ge v10, v14, :cond_10

    .line 335
    aget v14, v13, v10

    .line 337
    iget-object v15, v5, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 339
    aget v15, v15, v10

    .line 341
    xor-int/2addr v14, v15

    .line 343
    aput v14, v13, v10

    .line 344
    add-int/lit8 v10, v10, 0x1

    .line 346
    goto :goto_e

    .line 348
    :cond_10
    iget v5, v3, Lcom/google/zxing/common/BitArray;->size:I

    .line 349
    const-string/jumbo v10, "should not happen but we got: "

    .line 351
    if-ne v5, v12, :cond_24

    .line 354
    const/4 v5, 0x0

    .line 356
    :goto_f
    iget v12, v3, Lcom/google/zxing/common/BitArray;->size:I

    .line 357
    if-ge v5, v12, :cond_12

    .line 359
    add-int/lit8 v12, v12, -0x1

    .line 361
    sub-int/2addr v12, v5

    .line 363
    invoke-virtual {v3, v12}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 364
    move-result v12

    .line 367
    sget-object v13, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    .line 368
    aget-object v13, v13, v5

    .line 370
    const/4 v14, 0x0

    .line 372
    aget v14, v13, v14

    .line 373
    const/4 v15, 0x1

    .line 375
    aget v13, v13, v15

    .line 376
    invoke-virtual {v2, v14, v13, v12}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 378
    const/16 v13, 0x8

    .line 381
    if-ge v5, v13, :cond_11

    .line 383
    sub-int v14, v6, v5

    .line 385
    add-int/lit8 v14, v14, -0x1

    .line 387
    invoke-virtual {v2, v14, v13, v12}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 389
    goto :goto_10

    .line 392
    :cond_11
    add-int/lit8 v14, v5, -0x8

    .line 393
    add-int/2addr v14, v9

    .line 395
    invoke-virtual {v2, v13, v14, v12}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 396
    :goto_10
    add-int/lit8 v5, v5, 0x1

    .line 399
    goto :goto_f

    .line 401
    :cond_12
    const/4 v3, 0x7

    .line 402
    const/4 v5, 0x0

    .line 403
    if-ge v11, v3, :cond_13

    .line 404
    goto :goto_17

    .line 406
    :cond_13
    new-instance v3, Lcom/google/zxing/common/BitArray;

    .line 407
    invoke-direct {v3}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 409
    invoke-virtual {v3, v11, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 412
    const/16 v9, 0x1f25

    .line 415
    move v13, v5

    .line 417
    move v12, v9

    .line 418
    :goto_11
    if-eqz v12, :cond_14

    .line 419
    ushr-int/lit8 v12, v12, 0x1

    .line 421
    add-int/lit8 v13, v13, 0x1

    .line 423
    goto :goto_11

    .line 425
    :cond_14
    add-int/lit8 v12, v13, -0x1

    .line 426
    shl-int/2addr v11, v12

    .line 428
    :goto_12
    move v14, v5

    .line 429
    move v12, v11

    .line 430
    :goto_13
    if-eqz v12, :cond_15

    .line 431
    ushr-int/lit8 v12, v12, 0x1

    .line 433
    add-int/lit8 v14, v14, 0x1

    .line 435
    goto :goto_13

    .line 437
    :cond_15
    if-lt v14, v13, :cond_17

    .line 438
    move v14, v5

    .line 440
    move v12, v11

    .line 441
    :goto_14
    if-eqz v12, :cond_16

    .line 442
    ushr-int/lit8 v12, v12, 0x1

    .line 444
    add-int/lit8 v14, v14, 0x1

    .line 446
    goto :goto_14

    .line 448
    :cond_16
    sub-int/2addr v14, v13

    .line 449
    shl-int v12, v9, v14

    .line 450
    xor-int/2addr v11, v12

    .line 452
    goto :goto_12

    .line 453
    :cond_17
    const/16 v9, 0xc

    .line 454
    invoke-virtual {v3, v11, v9}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 456
    iget v9, v3, Lcom/google/zxing/common/BitArray;->size:I

    .line 459
    const/16 v11, 0x12

    .line 461
    if-ne v9, v11, :cond_23

    .line 463
    const/16 v9, 0x11

    .line 465
    move v10, v5

    .line 467
    :goto_15
    if-ge v10, v4, :cond_19

    .line 468
    move v11, v5

    .line 470
    :goto_16
    if-ge v11, v8, :cond_18

    .line 471
    invoke-virtual {v3, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 473
    move-result v12

    .line 476
    add-int/lit8 v9, v9, -0x1

    .line 477
    add-int/lit8 v13, v7, -0xb

    .line 479
    add-int/2addr v13, v11

    .line 481
    invoke-virtual {v2, v10, v13, v12}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 482
    invoke-virtual {v2, v13, v10, v12}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 485
    add-int/lit8 v11, v11, 0x1

    .line 488
    goto :goto_16

    .line 490
    :cond_18
    add-int/lit8 v10, v10, 0x1

    .line 491
    goto :goto_15

    .line 493
    :cond_19
    :goto_17
    add-int/lit8 v6, v6, -0x1

    .line 494
    add-int/lit8 v3, v7, -0x1

    .line 496
    const/4 v8, -0x1

    .line 498
    move v9, v5

    .line 499
    :goto_18
    if-lez v6, :cond_21

    .line 500
    if-ne v6, v4, :cond_1a

    .line 502
    add-int/lit8 v6, v6, -0x1

    .line 504
    :cond_1a
    :goto_19
    if-ltz v3, :cond_20

    .line 506
    if-ge v3, v7, :cond_20

    .line 508
    const/4 v10, 0x2

    .line 510
    move v11, v5

    .line 511
    :goto_1a
    if-ge v11, v10, :cond_1f

    .line 512
    sub-int v12, v6, v11

    .line 514
    invoke-virtual {v2, v12, v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    .line 516
    move-result v13

    .line 519
    invoke-static {v13}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    .line 520
    move-result v13

    .line 523
    if-nez v13, :cond_1b

    .line 524
    goto :goto_21

    .line 526
    :cond_1b
    iget v13, v0, Lcom/google/zxing/common/BitArray;->size:I

    .line 527
    if-ge v9, v13, :cond_1c

    .line 529
    invoke-virtual {v0, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 531
    move-result v13

    .line 534
    add-int/lit8 v9, v9, 0x1

    .line 535
    goto :goto_1b

    .line 537
    :cond_1c
    move v13, v5

    .line 538
    :goto_1b
    const/4 v14, -0x1

    .line 539
    if-eq v1, v14, :cond_1e

    .line 540
    packed-switch v1, :pswitch_data_0

    .line 542
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 545
    const-string v2, "Invalid mask pattern: "

    .line 547
    invoke-static {v2, v1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 549
    move-result-object v1

    .line 552
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 553
    throw v0

    .line 556
    :pswitch_0
    mul-int v14, v3, v12

    .line 557
    rem-int/lit8 v14, v14, 0x3

    .line 559
    add-int v15, v3, v12

    .line 561
    and-int/lit8 v15, v15, 0x1

    .line 563
    goto :goto_1c

    .line 565
    :pswitch_1
    mul-int v14, v3, v12

    .line 566
    and-int/lit8 v15, v14, 0x1

    .line 568
    rem-int/lit8 v14, v14, 0x3

    .line 570
    :goto_1c
    add-int/2addr v14, v15

    .line 572
    goto :goto_1e

    .line 573
    :pswitch_2
    mul-int v14, v3, v12

    .line 574
    and-int/lit8 v15, v14, 0x1

    .line 576
    rem-int/lit8 v14, v14, 0x3

    .line 578
    add-int/2addr v14, v15

    .line 580
    goto :goto_1d

    .line 581
    :pswitch_3
    ushr-int/lit8 v14, v3, 0x1

    .line 582
    div-int/lit8 v15, v12, 0x3

    .line 584
    add-int/2addr v14, v15

    .line 586
    goto :goto_1e

    .line 587
    :pswitch_4
    add-int v14, v3, v12

    .line 588
    rem-int/lit8 v14, v14, 0x3

    .line 590
    goto :goto_1d

    .line 592
    :pswitch_5
    rem-int/lit8 v14, v12, 0x3

    .line 593
    :goto_1d
    const/4 v15, 0x1

    .line 595
    goto :goto_1f

    .line 596
    :pswitch_6
    move v14, v3

    .line 597
    goto :goto_1e

    .line 598
    :pswitch_7
    add-int v14, v3, v12

    .line 599
    :goto_1e
    const/4 v15, 0x1

    .line 601
    and-int/lit8 v14, v14, 0x1

    .line 602
    :goto_1f
    if-nez v14, :cond_1d

    .line 604
    goto :goto_20

    .line 606
    :cond_1d
    move v15, v5

    .line 607
    :goto_20
    if-eqz v15, :cond_1e

    .line 608
    xor-int/lit8 v13, v13, 0x1

    .line 610
    :cond_1e
    invoke-virtual {v2, v12, v3, v13}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 612
    :goto_21
    add-int/lit8 v11, v11, 0x1

    .line 615
    goto :goto_1a

    .line 617
    :cond_1f
    add-int/2addr v3, v8

    .line 618
    goto :goto_19

    .line 619
    :cond_20
    neg-int v8, v8

    .line 620
    add-int/2addr v3, v8

    .line 621
    add-int/lit8 v6, v6, -0x2

    .line 622
    goto :goto_18

    .line 624
    :cond_21
    iget v1, v0, Lcom/google/zxing/common/BitArray;->size:I

    .line 625
    if-ne v9, v1, :cond_22

    .line 627
    return-void

    .line 629
    :cond_22
    new-instance v1, Lcom/google/zxing/WriterException;

    .line 630
    new-instance v2, Ljava/lang/StringBuilder;

    .line 632
    const-string v3, "Not all bits consumed: "

    .line 634
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 636
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 639
    const/16 v3, 0x2f

    .line 642
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 644
    iget v0, v0, Lcom/google/zxing/common/BitArray;->size:I

    .line 647
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 649
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 652
    move-result-object v0

    .line 655
    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 656
    throw v1

    .line 659
    :cond_23
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 660
    new-instance v1, Ljava/lang/StringBuilder;

    .line 662
    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 664
    iget v2, v3, Lcom/google/zxing/common/BitArray;->size:I

    .line 667
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 669
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 672
    move-result-object v1

    .line 675
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 676
    throw v0

    .line 679
    :cond_24
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 680
    new-instance v1, Ljava/lang/StringBuilder;

    .line 682
    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 684
    iget v2, v3, Lcom/google/zxing/common/BitArray;->size:I

    .line 687
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 689
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 692
    move-result-object v1

    .line 695
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 696
    throw v0

    .line 699
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 700
    const-string v1, "Sizes don\'t match"

    .line 702
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 704
    throw v0

    .line 707
    :cond_26
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 708
    const-string v1, "Invalid mask pattern"

    .line 710
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 712
    throw v0

    .line 715
    :cond_27
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 716
    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    .line 718
    throw v0

    .line 721
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 722
.end method

.method public static embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/16 v2, 0x8

    .line 4
    if-ge v1, v2, :cond_1

    .line 6
    add-int v2, p0, v1

    .line 8
    invoke-virtual {p2, v2, p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    .line 10
    move-result v3

    .line 13
    invoke-static {v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    .line 14
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    invoke-virtual {p2, v2, p1, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    new-instance p0, Lcom/google/zxing/WriterException;

    .line 26
    invoke-direct {p0}, Lcom/google/zxing/WriterException;-><init>()V

    .line 28
    throw p0

    .line 31
    :cond_1
    return-void
    .line 32
.end method

.method public static embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x7

    .line 4
    if-ge v1, v2, :cond_1

    .line 5
    move v3, v0

    .line 7
    :goto_1
    if-ge v3, v2, :cond_0

    .line 8
    add-int v4, p0, v3

    .line 10
    add-int v5, p1, v1

    .line 12
    sget-object v6, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    .line 14
    aget-object v6, v6, v1

    .line 16
    aget v6, v6, v3

    .line 18
    invoke-virtual {p2, v4, v5, v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 20
    add-int/lit8 v3, v3, 0x1

    .line 23
    goto :goto_1

    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    return-void
    .line 29
.end method

.method public static embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x7

    .line 4
    if-ge v1, v2, :cond_1

    .line 5
    add-int v2, p1, v1

    .line 7
    invoke-virtual {p2, p0, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    .line 9
    move-result v3

    .line 12
    invoke-static {v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    .line 13
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    invoke-virtual {p2, p0, v2, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Lcom/google/zxing/WriterException;

    .line 25
    invoke-direct {p0}, Lcom/google/zxing/WriterException;-><init>()V

    .line 27
    throw p0

    .line 30
    :cond_1
    return-void
    .line 31
.end method

.method public static isEmpty(I)Z
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    const/4 p0, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    return p0
    .line 8
.end method
