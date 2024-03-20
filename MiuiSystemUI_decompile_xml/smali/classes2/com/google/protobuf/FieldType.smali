.class public final enum Lcom/google/protobuf/FieldType;
.super Ljava/lang/Enum;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $VALUES:[Lcom/google/protobuf/FieldType;

.field public static final enum DOUBLE_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final enum SINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

.field public static final VALUES:[Lcom/google/protobuf/FieldType;


# instance fields
.field private final collection:Lcom/google/protobuf/FieldType$Collection;

.field private final elementType:Ljava/lang/Class;

.field private final id:I

.field private final javaType:Lcom/google/protobuf/JavaType;

.field private final primitiveScalar:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 64

    .line 1
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 2
    move-object v6, v0

    .line 4
    const-string v1, "DOUBLE"

    .line 5
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    sget-object v29, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    .line 9
    sget-object v47, Lcom/google/protobuf/JavaType;->DOUBLE:Lcom/google/protobuf/JavaType;

    .line 11
    move-object/from16 v4, v29

    .line 13
    move-object/from16 v5, v47

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 17
    new-instance v8, Lcom/google/protobuf/FieldType;

    .line 20
    move-object v7, v8

    .line 22
    const-string v9, "FLOAT"

    .line 23
    const/4 v10, 0x1

    .line 25
    const/4 v11, 0x1

    .line 26
    sget-object v48, Lcom/google/protobuf/JavaType;->FLOAT:Lcom/google/protobuf/JavaType;

    .line 27
    move-object/from16 v12, v29

    .line 29
    move-object/from16 v13, v48

    .line 31
    invoke-direct/range {v8 .. v13}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 33
    new-instance v9, Lcom/google/protobuf/FieldType;

    .line 36
    move-object v8, v9

    .line 38
    const-string v10, "INT64"

    .line 39
    const/4 v11, 0x2

    .line 41
    const/4 v12, 0x2

    .line 42
    sget-object v55, Lcom/google/protobuf/JavaType;->LONG:Lcom/google/protobuf/JavaType;

    .line 43
    move-object/from16 v13, v29

    .line 45
    move-object/from16 v14, v55

    .line 47
    invoke-direct/range {v9 .. v14}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 49
    new-instance v10, Lcom/google/protobuf/FieldType;

    .line 52
    move-object v9, v10

    .line 54
    const-string v11, "UINT64"

    .line 55
    const/4 v12, 0x3

    .line 57
    const/4 v13, 0x3

    .line 58
    move-object/from16 v14, v29

    .line 59
    move-object/from16 v15, v55

    .line 61
    invoke-direct/range {v10 .. v15}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 63
    new-instance v11, Lcom/google/protobuf/FieldType;

    .line 66
    move-object v10, v11

    .line 68
    const-string v12, "INT32"

    .line 69
    const/4 v13, 0x4

    .line 71
    const/4 v14, 0x4

    .line 72
    sget-object v54, Lcom/google/protobuf/JavaType;->INT:Lcom/google/protobuf/JavaType;

    .line 73
    move-object/from16 v15, v29

    .line 75
    move-object/from16 v16, v54

    .line 77
    invoke-direct/range {v11 .. v16}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 79
    new-instance v12, Lcom/google/protobuf/FieldType;

    .line 82
    move-object v11, v12

    .line 84
    const-string v13, "FIXED64"

    .line 85
    const/4 v14, 0x5

    .line 87
    const/4 v15, 0x5

    .line 88
    move-object/from16 v16, v29

    .line 89
    move-object/from16 v17, v55

    .line 91
    invoke-direct/range {v12 .. v17}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 93
    new-instance v13, Lcom/google/protobuf/FieldType;

    .line 96
    move-object v12, v13

    .line 98
    const-string v14, "FIXED32"

    .line 99
    const/4 v15, 0x6

    .line 101
    const/16 v16, 0x6

    .line 102
    move-object/from16 v17, v29

    .line 104
    move-object/from16 v18, v54

    .line 106
    invoke-direct/range {v13 .. v18}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 108
    new-instance v14, Lcom/google/protobuf/FieldType;

    .line 111
    move-object v13, v14

    .line 113
    const-string v15, "BOOL"

    .line 114
    const/16 v16, 0x7

    .line 116
    const/16 v17, 0x7

    .line 118
    sget-object v49, Lcom/google/protobuf/JavaType;->BOOLEAN:Lcom/google/protobuf/JavaType;

    .line 120
    move-object/from16 v18, v29

    .line 122
    move-object/from16 v19, v49

    .line 124
    invoke-direct/range {v14 .. v19}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 126
    new-instance v15, Lcom/google/protobuf/FieldType;

    .line 129
    move-object v14, v15

    .line 131
    const-string v16, "STRING"

    .line 132
    const/16 v17, 0x8

    .line 134
    const/16 v18, 0x8

    .line 136
    sget-object v36, Lcom/google/protobuf/JavaType;->STRING:Lcom/google/protobuf/JavaType;

    .line 138
    move-object/from16 v19, v29

    .line 140
    move-object/from16 v20, v36

    .line 142
    invoke-direct/range {v15 .. v20}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 144
    new-instance v16, Lcom/google/protobuf/FieldType;

    .line 147
    move-object/from16 v15, v16

    .line 149
    const-string v17, "MESSAGE"

    .line 151
    const/16 v18, 0x9

    .line 153
    const/16 v19, 0x9

    .line 155
    sget-object v56, Lcom/google/protobuf/JavaType;->MESSAGE:Lcom/google/protobuf/JavaType;

    .line 157
    move-object/from16 v20, v29

    .line 159
    move-object/from16 v21, v56

    .line 161
    invoke-direct/range {v16 .. v21}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 163
    new-instance v17, Lcom/google/protobuf/FieldType;

    .line 166
    move-object/from16 v16, v17

    .line 168
    const-string v18, "BYTES"

    .line 170
    const/16 v19, 0xa

    .line 172
    const/16 v20, 0xa

    .line 174
    sget-object v37, Lcom/google/protobuf/JavaType;->BYTE_STRING:Lcom/google/protobuf/JavaType;

    .line 176
    move-object/from16 v21, v29

    .line 178
    move-object/from16 v22, v37

    .line 180
    invoke-direct/range {v17 .. v22}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 182
    new-instance v18, Lcom/google/protobuf/FieldType;

    .line 185
    move-object/from16 v17, v18

    .line 187
    const-string v19, "UINT32"

    .line 189
    const/16 v20, 0xb

    .line 191
    const/16 v21, 0xb

    .line 193
    move-object/from16 v22, v29

    .line 195
    move-object/from16 v23, v54

    .line 197
    invoke-direct/range {v18 .. v23}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 199
    new-instance v19, Lcom/google/protobuf/FieldType;

    .line 202
    move-object/from16 v18, v19

    .line 204
    const-string v20, "ENUM"

    .line 206
    const/16 v21, 0xc

    .line 208
    const/16 v22, 0xc

    .line 210
    sget-object v51, Lcom/google/protobuf/JavaType;->ENUM:Lcom/google/protobuf/JavaType;

    .line 212
    move-object/from16 v23, v29

    .line 214
    move-object/from16 v24, v51

    .line 216
    invoke-direct/range {v19 .. v24}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 218
    new-instance v20, Lcom/google/protobuf/FieldType;

    .line 221
    move-object/from16 v19, v20

    .line 223
    const-string v21, "SFIXED32"

    .line 225
    const/16 v22, 0xd

    .line 227
    const/16 v23, 0xd

    .line 229
    move-object/from16 v24, v29

    .line 231
    move-object/from16 v25, v54

    .line 233
    invoke-direct/range {v20 .. v25}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 235
    new-instance v21, Lcom/google/protobuf/FieldType;

    .line 238
    move-object/from16 v20, v21

    .line 240
    const-string v22, "SFIXED64"

    .line 242
    const/16 v23, 0xe

    .line 244
    const/16 v24, 0xe

    .line 246
    move-object/from16 v25, v29

    .line 248
    move-object/from16 v26, v55

    .line 250
    invoke-direct/range {v21 .. v26}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 252
    new-instance v22, Lcom/google/protobuf/FieldType;

    .line 255
    move-object/from16 v21, v22

    .line 257
    const-string v23, "SINT32"

    .line 259
    const/16 v24, 0xf

    .line 261
    const/16 v25, 0xf

    .line 263
    move-object/from16 v26, v29

    .line 265
    move-object/from16 v27, v54

    .line 267
    invoke-direct/range {v22 .. v27}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 269
    new-instance v23, Lcom/google/protobuf/FieldType;

    .line 272
    move-object/from16 v22, v23

    .line 274
    const-string v24, "SINT64"

    .line 276
    const/16 v25, 0x10

    .line 278
    const/16 v26, 0x10

    .line 280
    move-object/from16 v27, v29

    .line 282
    move-object/from16 v28, v55

    .line 284
    invoke-direct/range {v23 .. v28}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 286
    new-instance v24, Lcom/google/protobuf/FieldType;

    .line 289
    move-object/from16 v23, v24

    .line 291
    const-string v25, "GROUP"

    .line 293
    const/16 v26, 0x11

    .line 295
    const/16 v27, 0x11

    .line 297
    move-object/from16 v28, v29

    .line 299
    move-object/from16 v29, v56

    .line 301
    invoke-direct/range {v24 .. v29}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 303
    new-instance v30, Lcom/google/protobuf/FieldType;

    .line 306
    move-object/from16 v24, v30

    .line 308
    const-string v31, "DOUBLE_LIST"

    .line 310
    const/16 v32, 0x12

    .line 312
    const/16 v33, 0x12

    .line 314
    sget-object v57, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    .line 316
    move-object/from16 v34, v57

    .line 318
    move-object/from16 v35, v47

    .line 320
    invoke-direct/range {v30 .. v35}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 322
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 325
    move-object/from16 v25, v0

    .line 327
    const-string v1, "FLOAT_LIST"

    .line 329
    const/16 v2, 0x13

    .line 331
    const/16 v3, 0x13

    .line 333
    move-object/from16 v4, v57

    .line 335
    move-object/from16 v5, v48

    .line 337
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 339
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 342
    move-object/from16 v26, v0

    .line 344
    const-string v1, "INT64_LIST"

    .line 346
    const/16 v2, 0x14

    .line 348
    const/16 v3, 0x14

    .line 350
    move-object/from16 v5, v55

    .line 352
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 354
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 357
    move-object/from16 v27, v0

    .line 359
    const-string v1, "UINT64_LIST"

    .line 361
    const/16 v2, 0x15

    .line 363
    const/16 v3, 0x15

    .line 365
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 367
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 370
    move-object/from16 v28, v0

    .line 372
    const-string v1, "INT32_LIST"

    .line 374
    const/16 v2, 0x16

    .line 376
    const/16 v3, 0x16

    .line 378
    move-object/from16 v5, v54

    .line 380
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 382
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 385
    move-object/from16 v29, v0

    .line 387
    const-string v1, "FIXED64_LIST"

    .line 389
    const/16 v2, 0x17

    .line 391
    const/16 v3, 0x17

    .line 393
    move-object/from16 v5, v55

    .line 395
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 397
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 400
    move-object/from16 v30, v0

    .line 402
    const-string v1, "FIXED32_LIST"

    .line 404
    const/16 v2, 0x18

    .line 406
    const/16 v3, 0x18

    .line 408
    move-object/from16 v5, v54

    .line 410
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 412
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 415
    move-object/from16 v31, v0

    .line 417
    const-string v1, "BOOL_LIST"

    .line 419
    const/16 v2, 0x19

    .line 421
    const/16 v3, 0x19

    .line 423
    move-object/from16 v5, v49

    .line 425
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 427
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 430
    move-object/from16 v32, v0

    .line 432
    const-string v1, "STRING_LIST"

    .line 434
    const/16 v2, 0x1a

    .line 436
    const/16 v3, 0x1a

    .line 438
    move-object/from16 v5, v36

    .line 440
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 442
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 445
    move-object/from16 v33, v0

    .line 447
    const-string v1, "MESSAGE_LIST"

    .line 449
    const/16 v2, 0x1b

    .line 451
    const/16 v3, 0x1b

    .line 453
    move-object/from16 v5, v56

    .line 455
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 457
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 460
    move-object/from16 v34, v0

    .line 462
    const-string v1, "BYTES_LIST"

    .line 464
    const/16 v2, 0x1c

    .line 466
    const/16 v3, 0x1c

    .line 468
    move-object/from16 v5, v37

    .line 470
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 472
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 475
    move-object/from16 v35, v0

    .line 477
    const-string v1, "UINT32_LIST"

    .line 479
    const/16 v2, 0x1d

    .line 481
    const/16 v3, 0x1d

    .line 483
    move-object/from16 v5, v54

    .line 485
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 487
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 490
    move-object/from16 v36, v0

    .line 492
    const-string v1, "ENUM_LIST"

    .line 494
    const/16 v2, 0x1e

    .line 496
    const/16 v3, 0x1e

    .line 498
    move-object/from16 v5, v51

    .line 500
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 502
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 505
    move-object/from16 v37, v0

    .line 507
    const-string v1, "SFIXED32_LIST"

    .line 509
    const/16 v2, 0x1f

    .line 511
    const/16 v3, 0x1f

    .line 513
    move-object/from16 v5, v54

    .line 515
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 517
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 520
    move-object/from16 v38, v0

    .line 522
    const-string v1, "SFIXED64_LIST"

    .line 524
    const/16 v2, 0x20

    .line 526
    const/16 v3, 0x20

    .line 528
    move-object/from16 v5, v55

    .line 530
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 532
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 535
    move-object/from16 v39, v0

    .line 537
    const-string v1, "SINT32_LIST"

    .line 539
    const/16 v2, 0x21

    .line 541
    const/16 v3, 0x21

    .line 543
    move-object/from16 v5, v54

    .line 545
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 547
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 550
    move-object/from16 v40, v0

    .line 552
    const-string v1, "SINT64_LIST"

    .line 554
    const/16 v2, 0x22

    .line 556
    const/16 v3, 0x22

    .line 558
    move-object/from16 v5, v55

    .line 560
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 562
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 565
    move-object/from16 v41, v0

    .line 567
    const-string v43, "DOUBLE_LIST_PACKED"

    .line 569
    const/16 v44, 0x23

    .line 571
    const/16 v45, 0x23

    .line 573
    sget-object v58, Lcom/google/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$Collection;

    .line 575
    move-object/from16 v42, v0

    .line 577
    move-object/from16 v46, v58

    .line 579
    invoke-direct/range {v42 .. v47}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 581
    sput-object v0, Lcom/google/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 584
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 586
    move-object/from16 v42, v0

    .line 588
    const-string v1, "FLOAT_LIST_PACKED"

    .line 590
    const/16 v2, 0x24

    .line 592
    const/16 v3, 0x24

    .line 594
    move-object/from16 v4, v58

    .line 596
    move-object/from16 v5, v48

    .line 598
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 600
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 603
    move-object/from16 v43, v0

    .line 605
    const-string v1, "INT64_LIST_PACKED"

    .line 607
    const/16 v2, 0x25

    .line 609
    const/16 v3, 0x25

    .line 611
    move-object/from16 v5, v55

    .line 613
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 615
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 618
    move-object/from16 v44, v0

    .line 620
    const-string v1, "UINT64_LIST_PACKED"

    .line 622
    const/16 v2, 0x26

    .line 624
    const/16 v3, 0x26

    .line 626
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 628
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 631
    move-object/from16 v45, v0

    .line 633
    const-string v1, "INT32_LIST_PACKED"

    .line 635
    const/16 v2, 0x27

    .line 637
    const/16 v3, 0x27

    .line 639
    move-object/from16 v5, v54

    .line 641
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 643
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 646
    move-object/from16 v46, v0

    .line 648
    const-string v1, "FIXED64_LIST_PACKED"

    .line 650
    const/16 v2, 0x28

    .line 652
    const/16 v3, 0x28

    .line 654
    move-object/from16 v5, v55

    .line 656
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 658
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 661
    move-object/from16 v47, v0

    .line 663
    const-string v1, "FIXED32_LIST_PACKED"

    .line 665
    const/16 v2, 0x29

    .line 667
    const/16 v3, 0x29

    .line 669
    move-object/from16 v5, v54

    .line 671
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 673
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 676
    move-object/from16 v48, v0

    .line 678
    const-string v1, "BOOL_LIST_PACKED"

    .line 680
    const/16 v2, 0x2a

    .line 682
    const/16 v3, 0x2a

    .line 684
    move-object/from16 v5, v49

    .line 686
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 688
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 691
    move-object/from16 v49, v0

    .line 693
    const-string v1, "UINT32_LIST_PACKED"

    .line 695
    const/16 v2, 0x2b

    .line 697
    const/16 v3, 0x2b

    .line 699
    move-object/from16 v5, v54

    .line 701
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 703
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 706
    move-object/from16 v50, v0

    .line 708
    const-string v1, "ENUM_LIST_PACKED"

    .line 710
    const/16 v2, 0x2c

    .line 712
    const/16 v3, 0x2c

    .line 714
    move-object/from16 v5, v51

    .line 716
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 718
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 721
    move-object/from16 v51, v0

    .line 723
    const-string v1, "SFIXED32_LIST_PACKED"

    .line 725
    const/16 v2, 0x2d

    .line 727
    const/16 v3, 0x2d

    .line 729
    move-object/from16 v5, v54

    .line 731
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 733
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 736
    move-object/from16 v52, v0

    .line 738
    const-string v1, "SFIXED64_LIST_PACKED"

    .line 740
    const/16 v2, 0x2e

    .line 742
    const/16 v3, 0x2e

    .line 744
    move-object/from16 v5, v55

    .line 746
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 748
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 751
    move-object/from16 v53, v0

    .line 753
    const-string v1, "SINT32_LIST_PACKED"

    .line 755
    const/16 v2, 0x2f

    .line 757
    const/16 v3, 0x2f

    .line 759
    move-object/from16 v5, v54

    .line 761
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 763
    new-instance v59, Lcom/google/protobuf/FieldType;

    .line 766
    move-object/from16 v54, v59

    .line 768
    const-string v1, "SINT64_LIST_PACKED"

    .line 770
    const/16 v2, 0x30

    .line 772
    const/16 v3, 0x30

    .line 774
    move-object/from16 v0, v59

    .line 776
    move-object/from16 v5, v55

    .line 778
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 780
    sput-object v59, Lcom/google/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 783
    new-instance v0, Lcom/google/protobuf/FieldType;

    .line 785
    move-object/from16 v55, v0

    .line 787
    const-string v1, "GROUP_LIST"

    .line 789
    const/16 v2, 0x31

    .line 791
    const/16 v3, 0x31

    .line 793
    move-object/from16 v4, v57

    .line 795
    move-object/from16 v5, v56

    .line 797
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 799
    new-instance v58, Lcom/google/protobuf/FieldType;

    .line 802
    move-object/from16 v56, v58

    .line 804
    const-string v59, "MAP"

    .line 806
    const/16 v60, 0x32

    .line 808
    const/16 v61, 0x32

    .line 810
    sget-object v62, Lcom/google/protobuf/FieldType$Collection;->MAP:Lcom/google/protobuf/FieldType$Collection;

    .line 812
    sget-object v63, Lcom/google/protobuf/JavaType;->VOID:Lcom/google/protobuf/JavaType;

    .line 814
    invoke-direct/range {v58 .. v63}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    .line 816
    filled-new-array/range {v6 .. v56}, [Lcom/google/protobuf/FieldType;

    .line 819
    move-result-object v0

    .line 822
    sput-object v0, Lcom/google/protobuf/FieldType;->$VALUES:[Lcom/google/protobuf/FieldType;

    .line 823
    invoke-static {}, Lcom/google/protobuf/FieldType;->values()[Lcom/google/protobuf/FieldType;

    .line 825
    move-result-object v0

    .line 828
    array-length v1, v0

    .line 829
    new-array v1, v1, [Lcom/google/protobuf/FieldType;

    .line 830
    sput-object v1, Lcom/google/protobuf/FieldType;->VALUES:[Lcom/google/protobuf/FieldType;

    .line 832
    array-length v1, v0

    .line 834
    const/4 v2, 0x0

    .line 835
    :goto_0
    if-ge v2, v1, :cond_0

    .line 836
    aget-object v3, v0, v2

    .line 838
    sget-object v4, Lcom/google/protobuf/FieldType;->VALUES:[Lcom/google/protobuf/FieldType;

    .line 840
    iget v5, v3, Lcom/google/protobuf/FieldType;->id:I

    .line 842
    aput-object v3, v4, v5

    .line 844
    add-int/lit8 v2, v2, 0x1

    .line 846
    goto :goto_0

    .line 848
    :cond_0
    return-void
    .line 849
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/google/protobuf/FieldType;->id:I

    .line 5
    iput-object p4, p0, Lcom/google/protobuf/FieldType;->collection:Lcom/google/protobuf/FieldType$Collection;

    .line 7
    iput-object p5, p0, Lcom/google/protobuf/FieldType;->javaType:Lcom/google/protobuf/JavaType;

    .line 9
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    .line 11
    move-result p1

    .line 14
    const/4 p2, 0x1

    .line 15
    if-eq p1, p2, :cond_1

    .line 16
    const/4 p3, 0x3

    .line 18
    if-eq p1, p3, :cond_0

    .line 19
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/google/protobuf/FieldType;->elementType:Ljava/lang/Class;

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p5}, Lcom/google/protobuf/JavaType;->getBoxedType()Ljava/lang/Class;

    .line 25
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/google/protobuf/FieldType;->elementType:Ljava/lang/Class;

    .line 29
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p5}, Lcom/google/protobuf/JavaType;->getBoxedType()Ljava/lang/Class;

    .line 32
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/google/protobuf/FieldType;->elementType:Ljava/lang/Class;

    .line 36
    :goto_0
    sget-object p1, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    .line 38
    if-ne p4, p1, :cond_2

    .line 40
    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    .line 42
    move-result p1

    .line 45
    const/4 p3, 0x6

    .line 46
    if-eq p1, p3, :cond_2

    .line 47
    const/4 p3, 0x7

    .line 49
    if-eq p1, p3, :cond_2

    .line 50
    const/16 p3, 0x9

    .line 52
    if-eq p1, p3, :cond_2

    .line 54
    goto :goto_1

    .line 56
    :cond_2
    const/4 p2, 0x0

    .line 57
    :goto_1
    iput-boolean p2, p0, Lcom/google/protobuf/FieldType;->primitiveScalar:Z

    .line 58
    return-void
    .line 60
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/FieldType;
    .locals 1

    .line 1
    const-class v0, Lcom/google/protobuf/FieldType;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/protobuf/FieldType;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/google/protobuf/FieldType;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/FieldType;->$VALUES:[Lcom/google/protobuf/FieldType;

    .line 2
    invoke-virtual {v0}, [Lcom/google/protobuf/FieldType;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/protobuf/FieldType;

    .line 8
    return-object v0
    .line 10
.end method


# virtual methods
.method public final id()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/protobuf/FieldType;->id:I

    .line 2
    return p0
    .line 4
.end method
