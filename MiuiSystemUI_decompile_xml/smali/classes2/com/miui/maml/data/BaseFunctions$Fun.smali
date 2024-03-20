.class final enum Lcom/miui/maml/data/BaseFunctions$Fun;
.super Ljava/lang/Enum;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum ABS:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum ACOS:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum AND:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum ASIN:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum ATAN:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum CEIL:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum COS:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum COSH:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum DIGIT:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum EQ:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum EQS:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum EVAL:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum FLOOR:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum GE:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum GT:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum HASH:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum IFELSE:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum INT:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum INVALID:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum ISNULL:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum LE:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum LEN:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum LOG:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum LOG10:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum LT:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum MAX:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum MIN:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum NE:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum NOT:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum NUM:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum OR:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum POW:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum PRECISE_EVAL:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum RAND:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum ROUND:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum SIN:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum SINH:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum SQRT:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum SUBSTR:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum TAN:Lcom/miui/maml/data/BaseFunctions$Fun;


# direct methods
.method public static constructor <clinit>()V
    .locals 43

    .line 1
    new-instance v1, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 2
    move-object v0, v1

    .line 4
    const-string v2, "INVALID"

    .line 5
    const/4 v3, 0x0

    .line 7
    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 8
    sput-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->INVALID:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 11
    new-instance v2, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 13
    move-object v1, v2

    .line 15
    const-string v3, "RAND"

    .line 16
    const/4 v4, 0x1

    .line 18
    invoke-direct {v2, v3, v4}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->RAND:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 22
    new-instance v3, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 24
    move-object v2, v3

    .line 26
    const-string v4, "SIN"

    .line 27
    const/4 v5, 0x2

    .line 29
    invoke-direct {v3, v4, v5}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 30
    sput-object v3, Lcom/miui/maml/data/BaseFunctions$Fun;->SIN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 33
    new-instance v4, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 35
    move-object v3, v4

    .line 37
    const-string v5, "COS"

    .line 38
    const/4 v6, 0x3

    .line 40
    invoke-direct {v4, v5, v6}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 41
    sput-object v4, Lcom/miui/maml/data/BaseFunctions$Fun;->COS:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 44
    new-instance v5, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 46
    move-object v4, v5

    .line 48
    const-string v6, "TAN"

    .line 49
    const/4 v7, 0x4

    .line 51
    invoke-direct {v5, v6, v7}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 52
    sput-object v5, Lcom/miui/maml/data/BaseFunctions$Fun;->TAN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 55
    new-instance v6, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 57
    move-object v5, v6

    .line 59
    const-string v7, "ASIN"

    .line 60
    const/4 v8, 0x5

    .line 62
    invoke-direct {v6, v7, v8}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 63
    sput-object v6, Lcom/miui/maml/data/BaseFunctions$Fun;->ASIN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 66
    new-instance v7, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 68
    move-object v6, v7

    .line 70
    const-string v8, "ACOS"

    .line 71
    const/4 v9, 0x6

    .line 73
    invoke-direct {v7, v8, v9}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 74
    sput-object v7, Lcom/miui/maml/data/BaseFunctions$Fun;->ACOS:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 77
    new-instance v8, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 79
    move-object v7, v8

    .line 81
    const-string v9, "ATAN"

    .line 82
    const/4 v10, 0x7

    .line 84
    invoke-direct {v8, v9, v10}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 85
    sput-object v8, Lcom/miui/maml/data/BaseFunctions$Fun;->ATAN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 88
    new-instance v9, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 90
    move-object v8, v9

    .line 92
    const-string v10, "SINH"

    .line 93
    const/16 v11, 0x8

    .line 95
    invoke-direct {v9, v10, v11}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 97
    sput-object v9, Lcom/miui/maml/data/BaseFunctions$Fun;->SINH:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 100
    new-instance v10, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 102
    move-object v9, v10

    .line 104
    const-string v11, "COSH"

    .line 105
    const/16 v12, 0x9

    .line 107
    invoke-direct {v10, v11, v12}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 109
    sput-object v10, Lcom/miui/maml/data/BaseFunctions$Fun;->COSH:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 112
    new-instance v11, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 114
    move-object v10, v11

    .line 116
    const-string v12, "SQRT"

    .line 117
    const/16 v13, 0xa

    .line 119
    invoke-direct {v11, v12, v13}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 121
    sput-object v11, Lcom/miui/maml/data/BaseFunctions$Fun;->SQRT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 124
    new-instance v12, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 126
    move-object v11, v12

    .line 128
    const-string v13, "ABS"

    .line 129
    const/16 v14, 0xb

    .line 131
    invoke-direct {v12, v13, v14}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 133
    sput-object v12, Lcom/miui/maml/data/BaseFunctions$Fun;->ABS:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 136
    new-instance v13, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 138
    move-object v12, v13

    .line 140
    const-string v14, "LEN"

    .line 141
    const/16 v15, 0xc

    .line 143
    invoke-direct {v13, v14, v15}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 145
    sput-object v13, Lcom/miui/maml/data/BaseFunctions$Fun;->LEN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 148
    new-instance v14, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 150
    move-object v13, v14

    .line 152
    const-string v15, "EVAL"

    .line 153
    move-object/from16 v40, v0

    .line 155
    const/16 v0, 0xd

    .line 157
    invoke-direct {v14, v15, v0}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 159
    sput-object v14, Lcom/miui/maml/data/BaseFunctions$Fun;->EVAL:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 162
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 164
    move-object v14, v0

    .line 166
    const-string v15, "PRECISE_EVAL"

    .line 167
    move-object/from16 v41, v1

    .line 169
    const/16 v1, 0xe

    .line 171
    invoke-direct {v0, v15, v1}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 173
    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->PRECISE_EVAL:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 176
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 178
    move-object v15, v0

    .line 180
    const-string v1, "ROUND"

    .line 181
    move-object/from16 v42, v2

    .line 183
    const/16 v2, 0xf

    .line 185
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 187
    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->ROUND:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 190
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 192
    move-object/from16 v16, v0

    .line 194
    const-string v1, "INT"

    .line 196
    const/16 v2, 0x10

    .line 198
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 200
    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->INT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 203
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 205
    move-object/from16 v17, v0

    .line 207
    const-string v1, "NUM"

    .line 209
    const/16 v2, 0x11

    .line 211
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 213
    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->NUM:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 216
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 218
    move-object/from16 v18, v0

    .line 220
    const-string v1, "MIN"

    .line 222
    const/16 v2, 0x12

    .line 224
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 226
    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->MIN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 229
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 231
    move-object/from16 v19, v0

    .line 233
    const-string v1, "MAX"

    .line 235
    const/16 v2, 0x13

    .line 237
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 239
    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->MAX:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 242
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 244
    move-object/from16 v20, v0

    .line 246
    const-string v1, "POW"

    .line 248
    const/16 v2, 0x14

    .line 250
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 252
    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->POW:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 255
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 257
    move-object/from16 v21, v0

    .line 259
    const-string v1, "LOG"

    .line 261
    const/16 v2, 0x15

    .line 263
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 265
    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->LOG:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 268
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 270
    move-object/from16 v22, v0

    .line 272
    const-string v1, "LOG10"

    .line 274
    const/16 v2, 0x16

    .line 276
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 278
    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->LOG10:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 281
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 283
    move-object/from16 v23, v0

    .line 285
    const-string v1, "DIGIT"

    .line 287
    const/16 v2, 0x17

    .line 289
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 291
    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->DIGIT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 294
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 296
    move-object/from16 v24, v0

    .line 298
    const-string v1, "EQ"

    .line 300
    const/16 v2, 0x18

    .line 302
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 304
    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->EQ:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 307
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 309
    move-object/from16 v25, v0

    .line 311
    const-string v1, "NE"

    .line 313
    const/16 v2, 0x19

    .line 315
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 317
    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->NE:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 320
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 322
    move-object/from16 v26, v0

    .line 324
    const-string v1, "GE"

    .line 326
    const/16 v2, 0x1a

    .line 328
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 330
    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->GE:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 333
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 335
    move-object/from16 v27, v0

    .line 337
    const-string v1, "GT"

    .line 339
    const/16 v2, 0x1b

    .line 341
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 343
    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->GT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 346
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 348
    move-object/from16 v28, v0

    .line 350
    const-string v1, "LE"

    .line 352
    const/16 v2, 0x1c

    .line 354
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 356
    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->LE:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 359
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 361
    move-object/from16 v29, v0

    .line 363
    const-string v1, "LT"

    .line 365
    const/16 v2, 0x1d

    .line 367
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 369
    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->LT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 372
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 374
    move-object/from16 v30, v0

    .line 376
    const-string v1, "ISNULL"

    .line 378
    const/16 v2, 0x1e

    .line 380
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 382
    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->ISNULL:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 385
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 387
    move-object/from16 v31, v0

    .line 389
    const-string v1, "NOT"

    .line 391
    const/16 v2, 0x1f

    .line 393
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 395
    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->NOT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 398
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 400
    move-object/from16 v32, v0

    .line 402
    const-string v1, "IFELSE"

    .line 404
    const/16 v2, 0x20

    .line 406
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 408
    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->IFELSE:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 411
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 413
    move-object/from16 v33, v0

    .line 415
    const-string v1, "AND"

    .line 417
    const/16 v2, 0x21

    .line 419
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 421
    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->AND:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 424
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 426
    move-object/from16 v34, v0

    .line 428
    const-string v1, "OR"

    .line 430
    const/16 v2, 0x22

    .line 432
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 434
    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->OR:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 437
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 439
    move-object/from16 v35, v0

    .line 441
    const-string v1, "EQS"

    .line 443
    const/16 v2, 0x23

    .line 445
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 447
    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->EQS:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 450
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 452
    move-object/from16 v36, v0

    .line 454
    const-string v1, "SUBSTR"

    .line 456
    const/16 v2, 0x24

    .line 458
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 460
    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->SUBSTR:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 463
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 465
    move-object/from16 v37, v0

    .line 467
    const-string v1, "HASH"

    .line 469
    const/16 v2, 0x25

    .line 471
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 473
    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->HASH:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 476
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 478
    move-object/from16 v38, v0

    .line 480
    const-string v1, "FLOOR"

    .line 482
    const/16 v2, 0x26

    .line 484
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 486
    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->FLOOR:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 489
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 491
    move-object/from16 v39, v0

    .line 493
    const-string v1, "CEIL"

    .line 495
    const/16 v2, 0x27

    .line 497
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 499
    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->CEIL:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 502
    move-object/from16 v0, v40

    .line 504
    move-object/from16 v1, v41

    .line 506
    move-object/from16 v2, v42

    .line 508
    filled-new-array/range {v0 .. v39}, [Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 510
    move-result-object v0

    .line 513
    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->$VALUES:[Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 514
    return-void
    .line 516
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    return-void
    .line 5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/data/BaseFunctions$Fun;
    .locals 1

    .line 1
    const-class v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/miui/maml/data/BaseFunctions$Fun;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->$VALUES:[Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 2
    invoke-virtual {v0}, [Lcom/miui/maml/data/BaseFunctions$Fun;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 8
    return-object v0
    .line 10
.end method
