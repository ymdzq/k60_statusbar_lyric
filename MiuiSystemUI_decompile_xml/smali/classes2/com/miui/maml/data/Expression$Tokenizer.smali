.class Lcom/miui/maml/data/Expression$Tokenizer;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final BRACKET_MODE_NONE:I = 0x0

.field private static final BRACKET_MODE_ROUND:I = 0x1

.field private static final BRACKET_MODE_SQUARE:I = 0x2


# instance fields
.field private mOpeParser:Lcom/miui/maml/data/Expression$OpeInfo$Parser;

.field private mPos:I

.field private mString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;

    .line 5
    invoke-direct {v0}, Lcom/miui/maml/data/Expression$OpeInfo$Parser;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mOpeParser:Lcom/miui/maml/data/Expression$OpeInfo$Parser;

    .line 10
    iput-object p1, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 12
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression$Tokenizer;->reset()V

    .line 14
    return-void
    .line 17
.end method


# virtual methods
.method public getToken()Lcom/miui/maml/data/Expression$Tokenizer$Token;
    .locals 15

    .line 1
    sget-object v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->INVALID:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 2
    iget-object v1, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 6
    move-result v1

    .line 9
    iget v2, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    .line 10
    const/4 v3, -0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    :goto_0
    const-string v8, "Expression"

    .line 17
    if-ge v2, v1, :cond_1e

    .line 19
    iget-object v9, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 21
    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    .line 23
    move-result v9

    .line 26
    const/16 v10, 0x28

    .line 27
    const/4 v11, 0x1

    .line 29
    if-nez v5, :cond_18

    .line 30
    const/16 v12, 0x23

    .line 32
    const/16 v13, 0x40

    .line 34
    const/16 v14, 0x24

    .line 36
    if-eq v9, v12, :cond_10

    .line 38
    if-eq v9, v13, :cond_10

    .line 40
    if-ne v9, v14, :cond_0

    .line 42
    goto/16 :goto_b

    .line 44
    :cond_0
    const/16 v8, 0x27

    .line 46
    if-ne v9, v8, :cond_4

    .line 48
    add-int/2addr v2, v11

    .line 50
    const/4 v0, 0x0

    .line 51
    move v3, v2

    .line 52
    :goto_1
    if-ge v3, v1, :cond_3

    .line 53
    iget-object v4, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 55
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    .line 57
    move-result v4

    .line 60
    if-nez v0, :cond_1

    .line 61
    if-ne v4, v8, :cond_1

    .line 63
    goto :goto_3

    .line 65
    :cond_1
    const/16 v0, 0x5c

    .line 66
    if-ne v4, v0, :cond_2

    .line 68
    move v0, v11

    .line 70
    goto :goto_2

    .line 71
    :cond_2
    const/4 v0, 0x0

    .line 72
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 73
    goto :goto_1

    .line 75
    :cond_3
    :goto_3
    add-int/lit8 v0, v3, 0x1

    .line 76
    iput v0, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    .line 78
    new-instance v0, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    .line 80
    sget-object v1, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->STR:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 82
    iget-object p0, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 84
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 89
    const-string v2, "\\\'"

    .line 90
    const-string v3, "\'"

    .line 92
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 94
    move-result-object p0

    .line 97
    invoke-direct {v0, v1, p0}, Lcom/miui/maml/data/Expression$Tokenizer$Token;-><init>(Lcom/miui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    .line 98
    return-object v0

    .line 101
    :cond_4
    if-ne v9, v10, :cond_5

    .line 102
    move v5, v11

    .line 104
    goto/16 :goto_11

    .line 105
    :cond_5
    const/16 v8, 0x5b

    .line 107
    if-ne v9, v8, :cond_6

    .line 109
    const/4 v5, 0x2

    .line 111
    goto/16 :goto_11

    .line 112
    :cond_6
    invoke-static {v9}, Lcom/miui/maml/data/Expression;->access$300(C)Z

    .line 114
    move-result v8

    .line 117
    if-eqz v8, :cond_a

    .line 118
    add-int/lit8 v0, v2, 0x1

    .line 120
    iget-object v3, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 122
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    .line 124
    move-result v3

    .line 127
    const/16 v4, 0x30

    .line 128
    if-ne v3, v4, :cond_7

    .line 130
    if-ge v0, v1, :cond_7

    .line 132
    iget-object v3, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 134
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    .line 136
    move-result v3

    .line 139
    const/16 v4, 0x78

    .line 140
    if-ne v3, v4, :cond_7

    .line 142
    goto :goto_5

    .line 144
    :cond_7
    :goto_4
    if-ge v0, v1, :cond_9

    .line 145
    iget-object v3, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 147
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    .line 149
    move-result v3

    .line 152
    invoke-static {v3}, Lcom/miui/maml/data/Expression;->access$400(C)Z

    .line 153
    move-result v3

    .line 156
    if-nez v3, :cond_8

    .line 157
    goto :goto_6

    .line 159
    :cond_8
    :goto_5
    add-int/lit8 v0, v0, 0x1

    .line 160
    goto :goto_4

    .line 162
    :cond_9
    :goto_6
    iput v0, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    .line 163
    new-instance v1, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    .line 165
    sget-object v3, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->NUM:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 167
    iget-object p0, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 169
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 171
    move-result-object p0

    .line 174
    invoke-direct {v1, v3, p0}, Lcom/miui/maml/data/Expression$Tokenizer$Token;-><init>(Lcom/miui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    .line 175
    return-object v1

    .line 178
    :cond_a
    invoke-static {v9}, Lcom/miui/maml/data/Expression;->access$500(C)Z

    .line 179
    move-result v8

    .line 182
    if-eqz v8, :cond_d

    .line 183
    add-int/lit8 v0, v2, 0x1

    .line 185
    :goto_7
    if-ge v0, v1, :cond_c

    .line 187
    iget-object v3, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 189
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    .line 191
    move-result v3

    .line 194
    invoke-static {v3}, Lcom/miui/maml/data/Expression;->access$600(C)Z

    .line 195
    move-result v3

    .line 198
    if-nez v3, :cond_b

    .line 199
    goto :goto_8

    .line 201
    :cond_b
    add-int/lit8 v0, v0, 0x1

    .line 202
    goto :goto_7

    .line 204
    :cond_c
    :goto_8
    iput v0, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    .line 205
    new-instance v1, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    .line 207
    sget-object v3, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->FUN:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 209
    iget-object p0, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 211
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 213
    move-result-object p0

    .line 216
    invoke-direct {v1, v3, p0}, Lcom/miui/maml/data/Expression$Tokenizer$Token;-><init>(Lcom/miui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    .line 217
    return-object v1

    .line 220
    :cond_d
    iget-object v8, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mOpeParser:Lcom/miui/maml/data/Expression$OpeInfo$Parser;

    .line 221
    invoke-virtual {v8, v9, v11}, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->accept(CZ)Z

    .line 223
    move-result v8

    .line 226
    if-eqz v8, :cond_18

    .line 227
    add-int/lit8 v8, v2, 0x1

    .line 229
    :goto_9
    if-ge v8, v1, :cond_f

    .line 231
    iget-object v12, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mOpeParser:Lcom/miui/maml/data/Expression$OpeInfo$Parser;

    .line 233
    iget-object v13, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 235
    invoke-virtual {v13, v8}, Ljava/lang/String;->charAt(I)C

    .line 237
    move-result v13

    .line 240
    const/4 v14, 0x0

    .line 241
    invoke-virtual {v12, v13, v14}, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->accept(CZ)Z

    .line 242
    move-result v12

    .line 245
    if-nez v12, :cond_e

    .line 246
    goto :goto_a

    .line 248
    :cond_e
    add-int/lit8 v8, v8, 0x1

    .line 249
    goto :goto_9

    .line 251
    :cond_f
    :goto_a
    iget-object v12, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mOpeParser:Lcom/miui/maml/data/Expression$OpeInfo$Parser;

    .line 252
    invoke-virtual {v12}, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->getMatch()Lcom/miui/maml/data/Expression$Ope;

    .line 254
    move-result-object v12

    .line 257
    sget-object v13, Lcom/miui/maml/data/Expression$Ope;->INVALID:Lcom/miui/maml/data/Expression$Ope;

    .line 258
    if-eq v12, v13, :cond_18

    .line 260
    iput v8, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    .line 262
    new-instance v0, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    .line 264
    sget-object v1, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 266
    iget-object p0, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 268
    invoke-virtual {p0, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 270
    move-result-object p0

    .line 273
    invoke-direct {v0, v1, p0, v12}, Lcom/miui/maml/data/Expression$Tokenizer$Token;-><init>(Lcom/miui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;Lcom/miui/maml/data/Expression$Ope;)V

    .line 274
    return-object v0

    .line 277
    :cond_10
    :goto_b
    add-int/lit8 v0, v2, 0x1

    .line 278
    if-ge v0, v1, :cond_11

    .line 280
    iget-object v3, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 282
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    .line 284
    move-result v0

    .line 287
    if-ne v0, v14, :cond_11

    .line 288
    const/4 v0, 0x2

    .line 290
    goto :goto_c

    .line 291
    :cond_11
    move v0, v11

    .line 292
    :goto_c
    add-int/2addr v2, v0

    .line 293
    move v3, v2

    .line 294
    :goto_d
    if-ge v3, v1, :cond_13

    .line 295
    iget-object v4, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 297
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    .line 299
    move-result v4

    .line 302
    invoke-static {v4}, Lcom/miui/maml/data/Expression;->access$200(C)Z

    .line 303
    move-result v4

    .line 306
    if-nez v4, :cond_12

    .line 307
    goto :goto_e

    .line 309
    :cond_12
    add-int/lit8 v3, v3, 0x1

    .line 310
    goto :goto_d

    .line 312
    :cond_13
    :goto_e
    if-ne v3, v2, :cond_14

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    .line 315
    const-string v1, "invalid variable name:"

    .line 317
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 319
    iget-object p0, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 322
    invoke-static {v0, p0, v8}, Landroidx/constraintlayout/helper/widget/CircularFlow$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const/4 p0, 0x0

    .line 327
    return-object p0

    .line 328
    :cond_14
    iput v3, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    .line 329
    sget-object v1, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->VAR_NUM:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 331
    if-ne v9, v13, :cond_15

    .line 333
    sget-object v1, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->VAR_STR:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 335
    goto :goto_10

    .line 337
    :cond_15
    if-ne v9, v14, :cond_17

    .line 338
    if-ne v0, v11, :cond_16

    .line 340
    sget-object v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->VAR_JSON_OBJ:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 342
    goto :goto_f

    .line 344
    :cond_16
    sget-object v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->VAR_JSON_ARR:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 345
    :goto_f
    move-object v1, v0

    .line 347
    :cond_17
    :goto_10
    new-instance v0, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    .line 348
    iget-object p0, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 350
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 352
    move-result-object p0

    .line 355
    invoke-direct {v0, v1, p0}, Lcom/miui/maml/data/Expression$Tokenizer$Token;-><init>(Lcom/miui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    .line 356
    return-object v0

    .line 359
    :cond_18
    :goto_11
    if-eqz v5, :cond_1d

    .line 360
    if-nez v4, :cond_1b

    .line 362
    if-eq v5, v11, :cond_1a

    .line 364
    const/4 v3, 0x2

    .line 366
    if-eq v5, v3, :cond_19

    .line 367
    goto :goto_12

    .line 369
    :cond_19
    sget-object v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_SQUARE:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 370
    const/16 v3, 0x5d

    .line 372
    const/16 v6, 0x5b

    .line 374
    move v7, v3

    .line 376
    goto :goto_12

    .line 377
    :cond_1a
    sget-object v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_ROUND:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 378
    const/16 v3, 0x29

    .line 380
    move v7, v3

    .line 382
    move v6, v10

    .line 383
    :goto_12
    add-int/lit8 v3, v2, 0x1

    .line 384
    :cond_1b
    if-ne v9, v6, :cond_1c

    .line 386
    add-int/lit8 v4, v4, 0x1

    .line 388
    goto :goto_13

    .line 390
    :cond_1c
    if-ne v9, v7, :cond_1d

    .line 391
    add-int/lit8 v4, v4, -0x1

    .line 393
    if-nez v4, :cond_1d

    .line 395
    add-int/lit8 v1, v2, 0x1

    .line 397
    iput v1, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    .line 399
    new-instance v1, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    .line 401
    iget-object p0, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 403
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 405
    move-result-object p0

    .line 408
    invoke-direct {v1, v0, p0}, Lcom/miui/maml/data/Expression$Tokenizer$Token;-><init>(Lcom/miui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    .line 409
    return-object v1

    .line 412
    :cond_1d
    :goto_13
    add-int/lit8 v2, v2, 0x1

    .line 413
    goto/16 :goto_0

    .line 415
    :cond_1e
    if-eqz v4, :cond_1f

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    .line 419
    const-string v1, "mismatched bracket:"

    .line 421
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 423
    iget-object p0, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 426
    invoke-static {v0, p0, v8}, Landroidx/constraintlayout/helper/widget/CircularFlow$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_1f
    const/4 p0, 0x0

    .line 431
    return-object p0
    .line 432
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    .line 3
    return-void
    .line 5
.end method
