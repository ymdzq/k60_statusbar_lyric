.class public Lcom/google/gson/stream/JsonReader;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final buffer:[C

.field public final in:Ljava/io/Reader;

.field public lenient:Z

.field public limit:I

.field public lineNumber:I

.field public lineStart:I

.field public pathIndices:[I

.field public pathNames:[Ljava/lang/String;

.field public peeked:I

.field public peekedLong:J

.field public peekedNumberLength:I

.field public peekedString:Ljava/lang/String;

.field public pos:I

.field public stack:[I

.field public stackSize:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/stream/JsonReader$1;

    .line 2
    invoke-direct {v0}, Lcom/google/gson/stream/JsonReader$1;-><init>()V

    .line 4
    sput-object v0, Lcom/google/gson/stream/JsonReader$1;->INSTANCE:Lcom/google/gson/stream/JsonReader$1;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 6
    const/16 v1, 0x400

    .line 8
    new-array v1, v1, [C

    .line 10
    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 12
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 14
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 16
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 18
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 20
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 22
    const/16 v1, 0x20

    .line 24
    new-array v2, v1, [I

    .line 26
    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 28
    const/4 v3, 0x1

    .line 30
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 31
    const/4 v3, 0x6

    .line 33
    aput v3, v2, v0

    .line 34
    new-array v0, v1, [Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 38
    new-array v0, v1, [I

    .line 40
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 42
    iput-object p1, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    .line 44
    return-void
    .line 46
.end method


# virtual methods
.method public final beginArray()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 6
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x3

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 14
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 17
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 19
    sub-int/2addr v2, v0

    .line 21
    const/4 v0, 0x0

    .line 22
    aput v0, v1, v2

    .line 23
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 25
    return-void

    .line 27
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    const-string v2, "Expected BEGIN_ARRAY but was "

    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 37
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 54
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    throw v0
    .line 58
.end method

.method public final beginObject()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 6
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    const/4 v0, 0x3

    .line 13
    invoke-virtual {p0, v0}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 14
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 18
    return-void

    .line 20
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    const-string v2, "Expected BEGIN_OBJECT but was "

    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 30
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 47
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    throw v0
    .line 51
.end method

.method public final checkLenient()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 9
    const/4 p0, 0x0

    .line 12
    throw p0
    .line 13
.end method

.method public final close()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 3
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 5
    const/16 v2, 0x8

    .line 7
    aput v2, v1, v0

    .line 9
    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 12
    iget-object p0, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    .line 14
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    .line 16
    return-void
    .line 19
.end method

.method public final doPeek()I
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 4
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 6
    add-int/lit8 v3, v2, -0x1

    .line 8
    aget v3, v1, v3

    .line 10
    const/4 v8, 0x0

    .line 12
    const/16 v9, 0xa

    .line 13
    const/16 v10, 0x27

    .line 15
    const/16 v11, 0x5d

    .line 17
    const/16 v12, 0x3b

    .line 19
    const/16 v13, 0x2c

    .line 21
    const/4 v14, 0x3

    .line 23
    const/4 v15, 0x6

    .line 24
    const/4 v5, 0x5

    .line 25
    const/4 v4, 0x2

    .line 26
    const/4 v6, 0x4

    .line 27
    const/4 v7, 0x1

    .line 28
    if-ne v3, v7, :cond_1

    .line 29
    sub-int/2addr v2, v7

    .line 31
    aput v4, v1, v2

    .line 32
    :cond_0
    :goto_0
    const/4 v4, 0x7

    .line 34
    goto/16 :goto_2

    .line 35
    :cond_1
    if-ne v3, v4, :cond_4

    .line 37
    invoke-virtual {v0, v7}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 39
    move-result v1

    .line 42
    if-eq v1, v13, :cond_0

    .line 43
    if-eq v1, v12, :cond_3

    .line 45
    if-ne v1, v11, :cond_2

    .line 47
    iput v6, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 49
    return v6

    .line 51
    :cond_2
    const-string v1, "Unterminated array"

    .line 52
    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 54
    throw v8

    .line 57
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 58
    goto :goto_0

    .line 61
    :cond_4
    const/16 v4, 0x7d

    .line 62
    if-eq v3, v14, :cond_42

    .line 64
    if-ne v3, v5, :cond_5

    .line 66
    goto/16 :goto_18

    .line 68
    :cond_5
    if-ne v3, v6, :cond_8

    .line 70
    sub-int/2addr v2, v7

    .line 72
    aput v5, v1, v2

    .line 73
    invoke-virtual {v0, v7}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 75
    move-result v1

    .line 78
    const/16 v2, 0x3a

    .line 79
    if-eq v1, v2, :cond_0

    .line 81
    const/16 v2, 0x3d

    .line 83
    if-ne v1, v2, :cond_7

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 87
    iget v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 90
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 92
    if-lt v1, v2, :cond_6

    .line 94
    invoke-virtual {v0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 96
    move-result v1

    .line 99
    if-eqz v1, :cond_0

    .line 100
    :cond_6
    iget-object v1, v0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 102
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 104
    aget-char v1, v1, v2

    .line 106
    const/16 v4, 0x3e

    .line 108
    if-ne v1, v4, :cond_0

    .line 110
    add-int/2addr v2, v7

    .line 112
    iput v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 113
    goto :goto_0

    .line 115
    :cond_7
    const-string v1, "Expected \':\'"

    .line 116
    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 118
    throw v8

    .line 121
    :cond_8
    if-ne v3, v15, :cond_c

    .line 122
    iget-boolean v1, v0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 124
    if-eqz v1, :cond_b

    .line 126
    invoke-virtual {v0, v7}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 128
    iget v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 131
    sub-int/2addr v1, v7

    .line 133
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 134
    add-int/2addr v1, v5

    .line 136
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 137
    if-le v1, v2, :cond_9

    .line 139
    invoke-virtual {v0, v5}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 141
    move-result v1

    .line 144
    if-nez v1, :cond_9

    .line 145
    goto :goto_1

    .line 147
    :cond_9
    iget v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 148
    iget-object v2, v0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 150
    aget-char v8, v2, v1

    .line 152
    const/16 v6, 0x29

    .line 154
    if-ne v8, v6, :cond_b

    .line 156
    add-int/lit8 v6, v1, 0x1

    .line 158
    aget-char v6, v2, v6

    .line 160
    if-ne v6, v11, :cond_b

    .line 162
    add-int/lit8 v6, v1, 0x2

    .line 164
    aget-char v6, v2, v6

    .line 166
    if-ne v6, v4, :cond_b

    .line 168
    add-int/lit8 v4, v1, 0x3

    .line 170
    aget-char v4, v2, v4

    .line 172
    if-ne v4, v10, :cond_b

    .line 174
    add-int/lit8 v4, v1, 0x4

    .line 176
    aget-char v2, v2, v4

    .line 178
    if-eq v2, v9, :cond_a

    .line 180
    goto :goto_1

    .line 182
    :cond_a
    add-int/2addr v1, v5

    .line 183
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 184
    :cond_b
    :goto_1
    iget-object v1, v0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 186
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 188
    sub-int/2addr v2, v7

    .line 190
    const/4 v4, 0x7

    .line 191
    aput v4, v1, v2

    .line 192
    :goto_2
    const/4 v1, 0x0

    .line 194
    goto :goto_3

    .line 195
    :cond_c
    const/4 v4, 0x7

    .line 196
    if-ne v3, v4, :cond_e

    .line 197
    const/4 v1, 0x0

    .line 199
    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 200
    move-result v2

    .line 203
    const/4 v4, -0x1

    .line 204
    if-ne v2, v4, :cond_d

    .line 205
    const/16 v1, 0x11

    .line 207
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 209
    return v1

    .line 211
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 212
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 215
    sub-int/2addr v2, v7

    .line 217
    iput v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 218
    goto :goto_3

    .line 220
    :cond_e
    const/4 v1, 0x0

    .line 221
    const/16 v2, 0x8

    .line 222
    if-eq v3, v2, :cond_41

    .line 224
    :goto_3
    invoke-virtual {v0, v7}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 226
    move-result v2

    .line 229
    const/16 v4, 0x22

    .line 230
    if-eq v2, v4, :cond_40

    .line 232
    if-eq v2, v10, :cond_3f

    .line 234
    if-eq v2, v13, :cond_3b

    .line 236
    if-eq v2, v12, :cond_3b

    .line 238
    const/16 v4, 0x5b

    .line 240
    if-eq v2, v4, :cond_3a

    .line 242
    if-eq v2, v11, :cond_39

    .line 244
    const/16 v3, 0x7b

    .line 246
    if-eq v2, v3, :cond_38

    .line 248
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 250
    sub-int/2addr v2, v7

    .line 252
    iput v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 253
    iget-object v3, v0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 255
    aget-char v2, v3, v2

    .line 257
    const/16 v3, 0x74

    .line 259
    if-eq v2, v3, :cond_13

    .line 261
    const/16 v3, 0x54

    .line 263
    if-ne v2, v3, :cond_f

    .line 265
    goto :goto_5

    .line 267
    :cond_f
    const/16 v3, 0x66

    .line 268
    if-eq v2, v3, :cond_12

    .line 270
    const/16 v3, 0x46

    .line 272
    if-ne v2, v3, :cond_10

    .line 274
    goto :goto_4

    .line 276
    :cond_10
    const/16 v3, 0x6e

    .line 277
    if-eq v2, v3, :cond_11

    .line 279
    const/16 v3, 0x4e

    .line 281
    if-ne v2, v3, :cond_18

    .line 283
    :cond_11
    const-string v2, "null"

    .line 285
    const-string v3, "NULL"

    .line 287
    const/4 v4, 0x7

    .line 289
    goto :goto_6

    .line 290
    :cond_12
    :goto_4
    const-string v2, "false"

    .line 291
    const-string v3, "FALSE"

    .line 293
    move v4, v15

    .line 295
    goto :goto_6

    .line 296
    :cond_13
    :goto_5
    const-string/jumbo v2, "true"

    .line 297
    const-string v3, "TRUE"

    .line 300
    move v4, v5

    .line 302
    :goto_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 303
    move-result v6

    .line 306
    move v8, v7

    .line 307
    :goto_7
    if-ge v8, v6, :cond_16

    .line 308
    iget v10, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 310
    add-int/2addr v10, v8

    .line 312
    iget v11, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 313
    if-lt v10, v11, :cond_14

    .line 315
    add-int/lit8 v10, v8, 0x1

    .line 317
    invoke-virtual {v0, v10}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 319
    move-result v10

    .line 322
    if-nez v10, :cond_14

    .line 323
    goto :goto_8

    .line 325
    :cond_14
    iget-object v10, v0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 326
    iget v11, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 328
    add-int/2addr v11, v8

    .line 330
    aget-char v10, v10, v11

    .line 331
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    .line 333
    move-result v11

    .line 336
    if-eq v10, v11, :cond_15

    .line 337
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    .line 339
    move-result v11

    .line 342
    if-eq v10, v11, :cond_15

    .line 343
    goto :goto_8

    .line 345
    :cond_15
    add-int/lit8 v8, v8, 0x1

    .line 346
    goto :goto_7

    .line 348
    :cond_16
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 349
    add-int/2addr v2, v6

    .line 351
    iget v3, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 352
    if-lt v2, v3, :cond_17

    .line 354
    add-int/lit8 v2, v6, 0x1

    .line 356
    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 358
    move-result v2

    .line 361
    if-eqz v2, :cond_19

    .line 362
    :cond_17
    iget-object v2, v0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 364
    iget v3, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 366
    add-int/2addr v3, v6

    .line 368
    aget-char v2, v2, v3

    .line 369
    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    .line 371
    move-result v2

    .line 374
    if-eqz v2, :cond_19

    .line 375
    :cond_18
    :goto_8
    move v4, v1

    .line 377
    goto :goto_9

    .line 378
    :cond_19
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 379
    add-int/2addr v2, v6

    .line 381
    iput v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 382
    iput v4, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 384
    :goto_9
    if-eqz v4, :cond_1a

    .line 386
    return v4

    .line 388
    :cond_1a
    iget-object v2, v0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 389
    iget v3, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 391
    iget v4, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 393
    const-wide/16 v10, 0x0

    .line 395
    move v6, v1

    .line 397
    move v8, v6

    .line 398
    move v12, v8

    .line 399
    move v13, v7

    .line 400
    move-wide v14, v10

    .line 401
    :goto_a
    add-int v1, v3, v8

    .line 402
    if-ne v1, v4, :cond_1d

    .line 404
    array-length v1, v2

    .line 406
    if-ne v8, v1, :cond_1b

    .line 407
    goto/16 :goto_15

    .line 409
    :cond_1b
    add-int/lit8 v1, v8, 0x1

    .line 411
    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 413
    move-result v1

    .line 416
    if-nez v1, :cond_1c

    .line 417
    move/from16 v16, v8

    .line 419
    goto/16 :goto_11

    .line 421
    :cond_1c
    iget v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 423
    iget v3, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 425
    move v4, v3

    .line 427
    move v3, v1

    .line 428
    :cond_1d
    add-int v1, v3, v8

    .line 429
    aget-char v1, v2, v1

    .line 431
    const/16 v9, 0x2b

    .line 433
    if-eq v1, v9, :cond_34

    .line 435
    const/16 v9, 0x45

    .line 437
    if-eq v1, v9, :cond_32

    .line 439
    const/16 v9, 0x65

    .line 441
    if-eq v1, v9, :cond_32

    .line 443
    const/16 v9, 0x2d

    .line 445
    if-eq v1, v9, :cond_30

    .line 447
    const/16 v9, 0x2e

    .line 449
    if-eq v1, v9, :cond_2f

    .line 451
    const/16 v9, 0x30

    .line 453
    if-lt v1, v9, :cond_28

    .line 455
    const/16 v9, 0x39

    .line 457
    if-le v1, v9, :cond_1e

    .line 459
    goto :goto_10

    .line 461
    :cond_1e
    if-eq v6, v7, :cond_27

    .line 462
    if-nez v6, :cond_1f

    .line 464
    goto :goto_f

    .line 466
    :cond_1f
    const/4 v9, 0x2

    .line 467
    if-ne v6, v9, :cond_23

    .line 468
    cmp-long v9, v14, v10

    .line 470
    if-nez v9, :cond_20

    .line 472
    goto/16 :goto_15

    .line 474
    :cond_20
    const-wide/16 v17, 0xa

    .line 476
    mul-long v17, v17, v14

    .line 478
    add-int/lit8 v1, v1, -0x30

    .line 480
    move/from16 v16, v8

    .line 482
    int-to-long v7, v1

    .line 484
    sub-long v17, v17, v7

    .line 485
    const-wide v7, -0xcccccccccccccccL

    .line 487
    cmp-long v1, v14, v7

    .line 492
    if-gtz v1, :cond_22

    .line 494
    if-nez v1, :cond_21

    .line 496
    cmp-long v1, v17, v14

    .line 498
    if-gez v1, :cond_21

    .line 500
    goto :goto_b

    .line 502
    :cond_21
    const/4 v1, 0x0

    .line 503
    goto :goto_c

    .line 504
    :cond_22
    :goto_b
    const/4 v1, 0x1

    .line 505
    :goto_c
    and-int/2addr v1, v13

    .line 506
    move v13, v1

    .line 507
    move-wide/from16 v14, v17

    .line 508
    goto :goto_d

    .line 510
    :cond_23
    move/from16 v16, v8

    .line 511
    const/4 v1, 0x3

    .line 513
    if-ne v6, v1, :cond_24

    .line 514
    const/4 v6, 0x4

    .line 516
    :goto_d
    move/from16 v1, v16

    .line 517
    const/4 v7, 0x6

    .line 519
    goto/16 :goto_14

    .line 520
    :cond_24
    const/4 v7, 0x6

    .line 522
    if-eq v6, v5, :cond_26

    .line 523
    if-ne v6, v7, :cond_25

    .line 525
    goto :goto_e

    .line 527
    :cond_25
    move/from16 v1, v16

    .line 528
    goto/16 :goto_14

    .line 530
    :cond_26
    :goto_e
    move/from16 v1, v16

    .line 532
    const/4 v6, 0x7

    .line 534
    goto/16 :goto_14

    .line 535
    :cond_27
    :goto_f
    move/from16 v16, v8

    .line 537
    const/4 v7, 0x6

    .line 539
    add-int/lit8 v1, v1, -0x30

    .line 540
    neg-int v1, v1

    .line 542
    int-to-long v14, v1

    .line 543
    move/from16 v1, v16

    .line 544
    const/4 v6, 0x2

    .line 546
    goto/16 :goto_14

    .line 547
    :cond_28
    :goto_10
    move/from16 v16, v8

    .line 549
    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    .line 551
    move-result v1

    .line 554
    if-nez v1, :cond_35

    .line 555
    :goto_11
    const/4 v1, 0x2

    .line 557
    if-ne v6, v1, :cond_2d

    .line 558
    if-eqz v13, :cond_2c

    .line 560
    const-wide/high16 v1, -0x8000000000000000L

    .line 562
    cmp-long v1, v14, v1

    .line 564
    if-nez v1, :cond_29

    .line 566
    if-eqz v12, :cond_2c

    .line 568
    :cond_29
    cmp-long v1, v14, v10

    .line 570
    if-nez v1, :cond_2a

    .line 572
    if-nez v12, :cond_2c

    .line 574
    :cond_2a
    if-eqz v12, :cond_2b

    .line 576
    goto :goto_12

    .line 578
    :cond_2b
    neg-long v14, v14

    .line 579
    :goto_12
    iput-wide v14, v0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 580
    iget v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 582
    add-int v1, v1, v16

    .line 584
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 586
    const/16 v6, 0xf

    .line 588
    iput v6, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 590
    goto :goto_16

    .line 592
    :cond_2c
    const/4 v1, 0x2

    .line 593
    :cond_2d
    if-eq v6, v1, :cond_2e

    .line 594
    const/4 v1, 0x4

    .line 596
    if-eq v6, v1, :cond_2e

    .line 597
    const/4 v1, 0x7

    .line 599
    if-ne v6, v1, :cond_35

    .line 600
    :cond_2e
    move/from16 v1, v16

    .line 602
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 604
    const/16 v6, 0x10

    .line 606
    iput v6, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 608
    goto :goto_16

    .line 610
    :cond_2f
    move v1, v8

    .line 611
    const/4 v7, 0x6

    .line 612
    const/4 v8, 0x2

    .line 613
    if-ne v6, v8, :cond_35

    .line 614
    const/4 v6, 0x3

    .line 616
    goto :goto_14

    .line 617
    :cond_30
    move v1, v8

    .line 618
    const/4 v7, 0x6

    .line 619
    const/4 v8, 0x2

    .line 620
    if-nez v6, :cond_31

    .line 621
    const/4 v6, 0x1

    .line 623
    const/4 v12, 0x1

    .line 624
    goto :goto_14

    .line 625
    :cond_31
    if-ne v6, v5, :cond_35

    .line 626
    goto :goto_13

    .line 628
    :cond_32
    move v1, v8

    .line 629
    const/4 v7, 0x6

    .line 630
    const/4 v8, 0x2

    .line 631
    if-eq v6, v8, :cond_33

    .line 632
    const/4 v8, 0x4

    .line 634
    if-ne v6, v8, :cond_35

    .line 635
    :cond_33
    move v6, v5

    .line 637
    goto :goto_14

    .line 638
    :cond_34
    move v1, v8

    .line 639
    const/4 v7, 0x6

    .line 640
    if-ne v6, v5, :cond_35

    .line 641
    :goto_13
    move v6, v7

    .line 643
    :goto_14
    add-int/lit8 v8, v1, 0x1

    .line 644
    const/4 v7, 0x1

    .line 646
    const/16 v9, 0xa

    .line 647
    goto/16 :goto_a

    .line 649
    :cond_35
    :goto_15
    const/4 v6, 0x0

    .line 651
    :goto_16
    if-eqz v6, :cond_36

    .line 652
    return v6

    .line 654
    :cond_36
    iget-object v1, v0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 655
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 657
    aget-char v1, v1, v2

    .line 659
    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    .line 661
    move-result v1

    .line 664
    if-eqz v1, :cond_37

    .line 665
    invoke-virtual/range {p0 .. p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 667
    const/16 v1, 0xa

    .line 670
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 672
    return v1

    .line 674
    :cond_37
    const-string v1, "Expected value"

    .line 675
    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 677
    const/4 v0, 0x0

    .line 680
    throw v0

    .line 681
    :cond_38
    move v1, v7

    .line 682
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 683
    return v1

    .line 685
    :cond_39
    move v1, v7

    .line 686
    if-ne v3, v1, :cond_3c

    .line 687
    const/4 v2, 0x4

    .line 689
    iput v2, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 690
    return v2

    .line 692
    :cond_3a
    move v2, v14

    .line 693
    iput v2, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 694
    return v2

    .line 696
    :cond_3b
    move v1, v7

    .line 697
    :cond_3c
    if-eq v3, v1, :cond_3e

    .line 698
    const/4 v2, 0x2

    .line 700
    if-ne v3, v2, :cond_3d

    .line 701
    goto :goto_17

    .line 703
    :cond_3d
    const-string v1, "Unexpected value"

    .line 704
    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 706
    const/4 v0, 0x0

    .line 709
    throw v0

    .line 710
    :cond_3e
    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 711
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 714
    sub-int/2addr v2, v1

    .line 716
    iput v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 717
    const/4 v1, 0x7

    .line 719
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 720
    return v1

    .line 722
    :cond_3f
    invoke-virtual/range {p0 .. p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 723
    const/16 v1, 0x8

    .line 726
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 728
    return v1

    .line 730
    :cond_40
    const/16 v1, 0x9

    .line 731
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 733
    return v1

    .line 735
    :cond_41
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 736
    const-string v1, "JsonReader is closed"

    .line 738
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 740
    throw v0

    .line 743
    :cond_42
    :goto_18
    move v6, v7

    .line 744
    sub-int/2addr v2, v6

    .line 745
    const/4 v7, 0x4

    .line 746
    aput v7, v1, v2

    .line 747
    if-ne v3, v5, :cond_46

    .line 749
    invoke-virtual {v0, v6}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 751
    move-result v1

    .line 754
    if-eq v1, v13, :cond_45

    .line 755
    if-eq v1, v12, :cond_44

    .line 757
    if-ne v1, v4, :cond_43

    .line 759
    const/4 v1, 0x2

    .line 761
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 762
    return v1

    .line 764
    :cond_43
    const-string v1, "Unterminated object"

    .line 765
    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 767
    const/4 v0, 0x0

    .line 770
    throw v0

    .line 771
    :cond_44
    invoke-virtual/range {p0 .. p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 772
    :cond_45
    const/4 v1, 0x1

    .line 775
    goto :goto_19

    .line 776
    :cond_46
    move v1, v6

    .line 777
    :goto_19
    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 778
    move-result v2

    .line 781
    const/16 v6, 0x22

    .line 782
    if-eq v2, v6, :cond_4b

    .line 784
    if-eq v2, v10, :cond_4a

    .line 786
    const-string v6, "Expected name"

    .line 788
    if-eq v2, v4, :cond_48

    .line 790
    invoke-virtual/range {p0 .. p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 792
    iget v3, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 795
    sub-int/2addr v3, v1

    .line 797
    iput v3, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 798
    int-to-char v1, v2

    .line 800
    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    .line 801
    move-result v1

    .line 804
    if-eqz v1, :cond_47

    .line 805
    const/16 v1, 0xe

    .line 807
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 809
    return v1

    .line 811
    :cond_47
    invoke-virtual {v0, v6}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 812
    const/4 v1, 0x0

    .line 815
    throw v1

    .line 816
    :cond_48
    const/4 v1, 0x0

    .line 817
    if-eq v3, v5, :cond_49

    .line 818
    const/4 v2, 0x2

    .line 820
    iput v2, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 821
    return v2

    .line 823
    :cond_49
    invoke-virtual {v0, v6}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 824
    throw v1

    .line 827
    :cond_4a
    invoke-virtual/range {p0 .. p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 828
    const/16 v1, 0xc

    .line 831
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 833
    return v1

    .line 835
    :cond_4b
    const/16 v1, 0xd

    .line 836
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 838
    return v1
    .line 840
.end method

.method public final endArray()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 6
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x4

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 15
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 17
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 21
    aget v2, v1, v0

    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 25
    aput v2, v1, v0

    .line 27
    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 30
    return-void

    .line 32
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    const-string v2, "Expected END_ARRAY but was "

    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 42
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 52
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 59
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    throw v0
    .line 63
.end method

.method public final endObject()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 6
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x2

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 15
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 17
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 19
    const/4 v2, 0x0

    .line 21
    aput-object v2, v1, v0

    .line 22
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 24
    add-int/lit8 v0, v0, -0x1

    .line 26
    aget v2, v1, v0

    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 30
    aput v2, v1, v0

    .line 32
    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 35
    return-void

    .line 37
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    const-string v2, "Expected END_OBJECT but was "

    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 47
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 57
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 64
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    throw v0
    .line 68
.end method

.method public final fillBuffer(I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 2
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 4
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 6
    sub-int/2addr v1, v2

    .line 8
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 9
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 11
    const/4 v3, 0x0

    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    sub-int/2addr v1, v2

    .line 16
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 17
    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    goto :goto_0

    .line 22
    :cond_0
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 23
    :goto_0
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 25
    :cond_1
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    .line 27
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 29
    array-length v4, v0

    .line 31
    sub-int/2addr v4, v2

    .line 32
    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Reader;->read([CII)I

    .line 33
    move-result v1

    .line 36
    const/4 v2, -0x1

    .line 37
    if-eq v1, v2, :cond_3

    .line 38
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 40
    add-int/2addr v2, v1

    .line 42
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 43
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 45
    const/4 v4, 0x1

    .line 47
    if-nez v1, :cond_2

    .line 48
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 50
    if-nez v1, :cond_2

    .line 52
    if-lez v2, :cond_2

    .line 54
    aget-char v5, v0, v3

    .line 56
    const v6, 0xfeff

    .line 58
    if-ne v5, v6, :cond_2

    .line 61
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 63
    add-int/2addr v5, v4

    .line 65
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 68
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 70
    add-int/lit8 p1, p1, 0x1

    .line 72
    :cond_2
    if-lt v2, p1, :cond_1

    .line 74
    return v4

    .line 76
    :cond_3
    return v3
    .line 77
.end method

.method public final getPath(Z)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "$"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    const/4 v1, 0x0

    .line 9
    :goto_0
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 10
    if-ge v1, v2, :cond_4

    .line 12
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 14
    aget v3, v3, v1

    .line 16
    const/4 v4, 0x1

    .line 18
    if-eq v3, v4, :cond_1

    .line 19
    const/4 v4, 0x2

    .line 21
    if-eq v3, v4, :cond_1

    .line 22
    const/4 v2, 0x3

    .line 24
    if-eq v3, v2, :cond_0

    .line 25
    const/4 v2, 0x4

    .line 27
    if-eq v3, v2, :cond_0

    .line 28
    const/4 v2, 0x5

    .line 30
    if-eq v3, v2, :cond_0

    .line 31
    goto :goto_1

    .line 33
    :cond_0
    const/16 v2, 0x2e

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 39
    aget-object v2, v2, v1

    .line 41
    if-eqz v2, :cond_3

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    goto :goto_1

    .line 48
    :cond_1
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 49
    aget v3, v3, v1

    .line 51
    if-eqz p1, :cond_2

    .line 53
    if-lez v3, :cond_2

    .line 55
    add-int/lit8 v2, v2, -0x1

    .line 57
    if-ne v1, v2, :cond_2

    .line 59
    add-int/lit8 v3, v3, -0x1

    .line 61
    :cond_2
    const/16 v2, 0x5b

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    const/16 v2, 0x5d

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 76
    goto :goto_0

    .line 78
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 82
    return-object p0
    .line 83
.end method

.method public final hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 6
    move-result v0

    .line 9
    :cond_0
    const/4 p0, 0x2

    .line 10
    if-eq v0, p0, :cond_1

    .line 11
    const/4 p0, 0x4

    .line 13
    if-eq v0, p0, :cond_1

    .line 14
    const/16 p0, 0x11

    .line 16
    if-eq v0, p0, :cond_1

    .line 18
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
    .line 23
.end method

.method public final isLiteral(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 2
    if-eq p1, v0, :cond_1

    .line 4
    const/16 v0, 0xa

    .line 6
    if-eq p1, v0, :cond_1

    .line 8
    const/16 v0, 0xc

    .line 10
    if-eq p1, v0, :cond_1

    .line 12
    const/16 v0, 0xd

    .line 14
    if-eq p1, v0, :cond_1

    .line 16
    const/16 v0, 0x20

    .line 18
    if-eq p1, v0, :cond_1

    .line 20
    const/16 v0, 0x23

    .line 22
    if-eq p1, v0, :cond_0

    .line 24
    const/16 v0, 0x2c

    .line 26
    if-eq p1, v0, :cond_1

    .line 28
    const/16 v0, 0x2f

    .line 30
    if-eq p1, v0, :cond_0

    .line 32
    const/16 v0, 0x3d

    .line 34
    if-eq p1, v0, :cond_0

    .line 36
    const/16 v0, 0x7b

    .line 38
    if-eq p1, v0, :cond_1

    .line 40
    const/16 v0, 0x7d

    .line 42
    if-eq p1, v0, :cond_1

    .line 44
    const/16 v0, 0x3a

    .line 46
    if-eq p1, v0, :cond_1

    .line 48
    const/16 v0, 0x3b

    .line 50
    if-eq p1, v0, :cond_0

    .line 52
    packed-switch p1, :pswitch_data_0

    .line 54
    const/4 p0, 0x1

    .line 57
    return p0

    .line 58
    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 59
    :cond_1
    :pswitch_1
    const/4 p0, 0x0

    .line 62
    return p0

    .line 63
    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
    .line 64
.end method

.method public final locationString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 2
    add-int/lit8 v0, v0, 0x1

    .line 4
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 6
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 8
    sub-int/2addr v1, v2

    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    const-string v2, " at line "

    .line 13
    const-string v3, " column "

    .line 15
    const-string v4, " path "

    .line 17
    invoke-static {v2, v0, v3, v1, v4}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p0, v1}, Lcom/google/gson/stream/JsonReader;->getPath(Z)Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 34
    return-object p0
    .line 35
.end method

.method public final nextBoolean()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 6
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x5

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 15
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 17
    iget p0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 19
    sub-int/2addr p0, v3

    .line 21
    aget v1, v0, p0

    .line 22
    add-int/2addr v1, v3

    .line 24
    aput v1, v0, p0

    .line 25
    return v3

    .line 27
    :cond_1
    const/4 v1, 0x6

    .line 28
    if-ne v0, v1, :cond_2

    .line 29
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 31
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 33
    iget p0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 35
    sub-int/2addr p0, v3

    .line 37
    aget v1, v0, p0

    .line 38
    add-int/2addr v1, v3

    .line 40
    aput v1, v0, p0

    .line 41
    return v2

    .line 43
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    const-string v2, "Expected a boolean but was "

    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 53
    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 70
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    throw v0
    .line 74
.end method

.method public final nextDouble()D
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 6
    move-result v0

    .line 9
    :cond_0
    const/16 v1, 0xf

    .line 10
    const/4 v2, 0x0

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 15
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 17
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 19
    add-int/lit8 v1, v1, -0x1

    .line 21
    aget v2, v0, v1

    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 25
    aput v2, v0, v1

    .line 27
    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 29
    long-to-double v0, v0

    .line 31
    return-wide v0

    .line 32
    :cond_1
    const/16 v1, 0x10

    .line 33
    const/16 v3, 0xb

    .line 35
    if-ne v0, v1, :cond_2

    .line 37
    new-instance v0, Ljava/lang/String;

    .line 39
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 41
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 43
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 45
    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    .line 47
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 50
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 52
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 54
    add-int/2addr v0, v1

    .line 56
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 57
    goto :goto_2

    .line 59
    :cond_2
    const/16 v1, 0x8

    .line 60
    if-eq v0, v1, :cond_6

    .line 62
    const/16 v4, 0x9

    .line 64
    if-ne v0, v4, :cond_3

    .line 66
    goto :goto_0

    .line 68
    :cond_3
    const/16 v1, 0xa

    .line 69
    if-ne v0, v1, :cond_4

    .line 71
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 77
    goto :goto_2

    .line 79
    :cond_4
    if-ne v0, v3, :cond_5

    .line 80
    goto :goto_2

    .line 82
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    const-string v2, "Expected a double but was "

    .line 87
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 92
    move-result-object v2

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 99
    move-result-object p0

    .line 102
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object p0

    .line 109
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 110
    throw v0

    .line 113
    :cond_6
    :goto_0
    if-ne v0, v1, :cond_7

    .line 114
    const/16 v0, 0x27

    .line 116
    goto :goto_1

    .line 118
    :cond_7
    const/16 v0, 0x22

    .line 119
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    .line 121
    move-result-object v0

    .line 124
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 125
    :goto_2
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 127
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 129
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 131
    move-result-wide v0

    .line 134
    iget-boolean v3, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 135
    if-nez v3, :cond_9

    .line 137
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 139
    move-result v3

    .line 142
    if-nez v3, :cond_8

    .line 143
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    .line 145
    move-result v3

    .line 148
    if-nez v3, :cond_8

    .line 149
    goto :goto_3

    .line 151
    :cond_8
    new-instance v2, Lcom/google/gson/stream/MalformedJsonException;

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    .line 154
    const-string v4, "JSON forbids NaN and infinities: "

    .line 156
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 164
    move-result-object p0

    .line 167
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object p0

    .line 174
    invoke-direct {v2, p0}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    .line 175
    throw v2

    .line 178
    :cond_9
    :goto_3
    const/4 v3, 0x0

    .line 179
    iput-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 180
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 182
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 184
    iget p0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 186
    add-int/lit8 p0, p0, -0x1

    .line 188
    aget v3, v2, p0

    .line 190
    add-int/lit8 v3, v3, 0x1

    .line 192
    aput v3, v2, p0

    .line 194
    return-wide v0
    .line 196
.end method

.method public final nextInt()I
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 6
    move-result v0

    .line 9
    :cond_0
    const/16 v1, 0xf

    .line 10
    const-string v2, "Expected an int but was "

    .line 12
    const/4 v3, 0x0

    .line 14
    if-ne v0, v1, :cond_2

    .line 15
    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 17
    long-to-int v4, v0

    .line 19
    int-to-long v5, v4

    .line 20
    cmp-long v0, v0, v5

    .line 21
    if-nez v0, :cond_1

    .line 23
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 25
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 27
    iget p0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 29
    add-int/lit8 p0, p0, -0x1

    .line 31
    aget v1, v0, p0

    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 35
    aput v1, v0, p0

    .line 37
    return v4

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    iget-wide v2, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 47
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 55
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 62
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 63
    throw v0

    .line 66
    :cond_2
    const/16 v1, 0x10

    .line 67
    if-ne v0, v1, :cond_3

    .line 69
    new-instance v0, Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 73
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 75
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 77
    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    .line 79
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 82
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 84
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 86
    add-int/2addr v0, v1

    .line 88
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 89
    goto :goto_3

    .line 91
    :cond_3
    const/16 v1, 0xa

    .line 92
    const/16 v4, 0x8

    .line 94
    if-eq v0, v4, :cond_5

    .line 96
    const/16 v5, 0x9

    .line 98
    if-eq v0, v5, :cond_5

    .line 100
    if-ne v0, v1, :cond_4

    .line 102
    goto :goto_0

    .line 104
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    .line 107
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 112
    move-result-object v2

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 119
    move-result-object p0

    .line 122
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object p0

    .line 129
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 130
    throw v0

    .line 133
    :cond_5
    :goto_0
    if-ne v0, v1, :cond_6

    .line 134
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    .line 136
    move-result-object v0

    .line 139
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 140
    goto :goto_2

    .line 142
    :cond_6
    if-ne v0, v4, :cond_7

    .line 143
    const/16 v0, 0x27

    .line 145
    goto :goto_1

    .line 147
    :cond_7
    const/16 v0, 0x22

    .line 148
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    .line 150
    move-result-object v0

    .line 153
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 154
    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 156
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 158
    move-result v0

    .line 161
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 162
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 164
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 166
    add-int/lit8 v4, v4, -0x1

    .line 168
    aget v5, v1, v4

    .line 170
    add-int/lit8 v5, v5, 0x1

    .line 172
    aput v5, v1, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    return v0

    .line 176
    :catch_0
    :goto_3
    const/16 v0, 0xb

    .line 177
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 179
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 181
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 183
    move-result-wide v0

    .line 186
    double-to-int v4, v0

    .line 187
    int-to-double v5, v4

    .line 188
    cmpl-double v0, v5, v0

    .line 189
    if-nez v0, :cond_8

    .line 191
    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 194
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 196
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 198
    iget p0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 200
    add-int/lit8 p0, p0, -0x1

    .line 202
    aget v1, v0, p0

    .line 204
    add-int/lit8 v1, v1, 0x1

    .line 206
    aput v1, v0, p0

    .line 208
    return v4

    .line 210
    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    .line 213
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 218
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 223
    move-result-object p0

    .line 226
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    move-result-object p0

    .line 233
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 234
    throw v0
    .line 237
.end method

.method public final nextLong()J
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 6
    move-result v0

    .line 9
    :cond_0
    const/16 v1, 0xf

    .line 10
    const/4 v2, 0x0

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 15
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 17
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 19
    add-int/lit8 v1, v1, -0x1

    .line 21
    aget v2, v0, v1

    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 25
    aput v2, v0, v1

    .line 27
    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 29
    return-wide v0

    .line 31
    :cond_1
    const/16 v1, 0x10

    .line 32
    const-string v3, "Expected a long but was "

    .line 34
    if-ne v0, v1, :cond_2

    .line 36
    new-instance v0, Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 40
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 42
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 44
    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    .line 46
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 49
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 51
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 53
    add-int/2addr v0, v1

    .line 55
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 56
    goto :goto_3

    .line 58
    :cond_2
    const/16 v1, 0xa

    .line 59
    const/16 v4, 0x8

    .line 61
    if-eq v0, v4, :cond_4

    .line 63
    const/16 v5, 0x9

    .line 65
    if-eq v0, v5, :cond_4

    .line 67
    if-ne v0, v1, :cond_3

    .line 69
    goto :goto_0

    .line 71
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 79
    move-result-object v2

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 89
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p0

    .line 96
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 97
    throw v0

    .line 100
    :cond_4
    :goto_0
    if-ne v0, v1, :cond_5

    .line 101
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 106
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 107
    goto :goto_2

    .line 109
    :cond_5
    if-ne v0, v4, :cond_6

    .line 110
    const/16 v0, 0x27

    .line 112
    goto :goto_1

    .line 114
    :cond_6
    const/16 v0, 0x22

    .line 115
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 120
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 121
    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 123
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 125
    move-result-wide v0

    .line 128
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 129
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 131
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 133
    add-int/lit8 v5, v5, -0x1

    .line 135
    aget v6, v4, v5

    .line 137
    add-int/lit8 v6, v6, 0x1

    .line 139
    aput v6, v4, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    return-wide v0

    .line 143
    :catch_0
    :goto_3
    const/16 v0, 0xb

    .line 144
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 146
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 148
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 150
    move-result-wide v0

    .line 153
    double-to-long v4, v0

    .line 154
    long-to-double v6, v4

    .line 155
    cmpl-double v0, v6, v0

    .line 156
    if-nez v0, :cond_7

    .line 158
    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 161
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 163
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 165
    iget p0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 167
    add-int/lit8 p0, p0, -0x1

    .line 169
    aget v1, v0, p0

    .line 171
    add-int/lit8 v1, v1, 0x1

    .line 173
    aput v1, v0, p0

    .line 175
    return-wide v4

    .line 177
    :cond_7
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    .line 180
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 190
    move-result-object p0

    .line 193
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    move-result-object p0

    .line 200
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 201
    throw v0
    .line 204
.end method

.method public final nextName()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 6
    move-result v0

    .line 9
    :cond_0
    const/16 v1, 0xe

    .line 10
    if-ne v0, v1, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/16 v1, 0xc

    .line 19
    if-ne v0, v1, :cond_2

    .line 21
    const/16 v0, 0x27

    .line 23
    invoke-virtual {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/16 v1, 0xd

    .line 30
    if-ne v0, v1, :cond_3

    .line 32
    const/16 v0, 0x22

    .line 34
    invoke-virtual {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 39
    :goto_0
    const/4 v1, 0x0

    .line 40
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 41
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 43
    iget p0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 45
    add-int/lit8 p0, p0, -0x1

    .line 47
    aput-object v0, v1, p0

    .line 49
    return-object v0

    .line 51
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    const-string v2, "Expected a name but was "

    .line 56
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 61
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 71
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 78
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    throw v0
    .line 82
.end method

.method public final nextNonWhitespace(Z)I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 2
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 4
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 6
    :goto_0
    const/4 v3, 0x1

    .line 8
    if-ne v1, v2, :cond_2

    .line 9
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 11
    invoke-virtual {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 13
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    if-nez p1, :cond_0

    .line 19
    const/4 p0, -0x1

    .line 21
    return p0

    .line 22
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    const-string v1, "End of input"

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 42
    invoke-direct {p1, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 43
    throw p1

    .line 46
    :cond_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 47
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 49
    :cond_2
    add-int/lit8 v4, v1, 0x1

    .line 51
    aget-char v1, v0, v1

    .line 53
    const/16 v5, 0xa

    .line 55
    if-ne v1, v5, :cond_3

    .line 57
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 59
    add-int/2addr v1, v3

    .line 61
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 62
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 64
    goto/16 :goto_6

    .line 66
    :cond_3
    const/16 v6, 0x20

    .line 68
    if-eq v1, v6, :cond_10

    .line 70
    const/16 v6, 0xd

    .line 72
    if-eq v1, v6, :cond_10

    .line 74
    const/16 v6, 0x9

    .line 76
    if-ne v1, v6, :cond_4

    .line 78
    goto/16 :goto_6

    .line 80
    :cond_4
    const/16 v6, 0x2f

    .line 82
    if-ne v1, v6, :cond_e

    .line 84
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 86
    const/4 v7, 0x2

    .line 88
    if-ne v4, v2, :cond_5

    .line 89
    add-int/lit8 v4, v4, -0x1

    .line 91
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 93
    invoke-virtual {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 95
    move-result v2

    .line 98
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 99
    add-int/2addr v4, v3

    .line 101
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 102
    if-nez v2, :cond_5

    .line 104
    return v1

    .line 106
    :cond_5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 107
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 110
    aget-char v4, v0, v2

    .line 112
    const/16 v8, 0x2a

    .line 114
    if-eq v4, v8, :cond_7

    .line 116
    if-eq v4, v6, :cond_6

    .line 118
    return v1

    .line 120
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 121
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 123
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 125
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 128
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 130
    goto :goto_0

    .line 132
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 133
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 135
    :goto_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 137
    add-int/2addr v1, v7

    .line 139
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 140
    const/4 v4, 0x0

    .line 142
    if-le v1, v2, :cond_9

    .line 143
    invoke-virtual {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 145
    move-result v1

    .line 148
    if-eqz v1, :cond_8

    .line 149
    goto :goto_2

    .line 151
    :cond_8
    move v3, v4

    .line 152
    goto :goto_5

    .line 153
    :cond_9
    :goto_2
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 154
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 156
    aget-char v1, v1, v2

    .line 158
    if-ne v1, v5, :cond_a

    .line 160
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 162
    add-int/2addr v1, v3

    .line 164
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 165
    add-int/lit8 v2, v2, 0x1

    .line 167
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 169
    goto :goto_4

    .line 171
    :cond_a
    :goto_3
    if-ge v4, v7, :cond_c

    .line 172
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 174
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 176
    add-int/2addr v2, v4

    .line 178
    aget-char v1, v1, v2

    .line 179
    const-string v2, "*/"

    .line 181
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    .line 183
    move-result v2

    .line 186
    if-eq v1, v2, :cond_b

    .line 187
    :goto_4
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 189
    add-int/2addr v1, v3

    .line 191
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 192
    goto :goto_1

    .line 194
    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 195
    goto :goto_3

    .line 197
    :cond_c
    :goto_5
    if-eqz v3, :cond_d

    .line 198
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 200
    add-int/2addr v1, v7

    .line 202
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 203
    goto/16 :goto_0

    .line 205
    :cond_d
    const-string p1, "Unterminated comment"

    .line 207
    invoke-virtual {p0, p1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 209
    const/4 p0, 0x0

    .line 212
    throw p0

    .line 213
    :cond_e
    const/16 v2, 0x23

    .line 214
    if-ne v1, v2, :cond_f

    .line 216
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 218
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 220
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 223
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 226
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 228
    goto/16 :goto_0

    .line 230
    :cond_f
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 232
    return v1

    .line 234
    :cond_10
    :goto_6
    move v1, v4

    .line 235
    goto/16 :goto_0
    .line 236
.end method

.method public final nextNull()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 6
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x7

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 14
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 16
    iget p0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 18
    add-int/lit8 p0, p0, -0x1

    .line 20
    aget v1, v0, p0

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 24
    aput v1, v0, p0

    .line 26
    return-void

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    const-string v2, "Expected null but was "

    .line 33
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 38
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 48
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 55
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    throw v0
    .line 59
.end method

.method public final nextQuotedValue(C)Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 2
    const/4 v1, 0x0

    .line 4
    move-object v2, v1

    .line 5
    :goto_0
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 6
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 8
    :goto_1
    move v5, v3

    .line 10
    :goto_2
    const/4 v6, 0x1

    .line 11
    const/16 v7, 0x10

    .line 12
    if-ge v5, v4, :cond_5

    .line 14
    add-int/lit8 v8, v5, 0x1

    .line 16
    aget-char v5, v0, v5

    .line 18
    if-ne v5, p1, :cond_1

    .line 20
    iput v8, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 22
    sub-int/2addr v8, v3

    .line 24
    sub-int/2addr v8, v6

    .line 25
    if-nez v2, :cond_0

    .line 26
    new-instance p0, Ljava/lang/String;

    .line 28
    invoke-direct {p0, v0, v3, v8}, Ljava/lang/String;-><init>([CII)V

    .line 30
    return-object p0

    .line 33
    :cond_0
    invoke-virtual {v2, v0, v3, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_1
    const/16 v9, 0x5c

    .line 42
    if-ne v5, v9, :cond_3

    .line 44
    iput v8, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 46
    sub-int/2addr v8, v3

    .line 48
    sub-int/2addr v8, v6

    .line 49
    if-nez v2, :cond_2

    .line 50
    add-int/lit8 v2, v8, 0x1

    .line 52
    mul-int/lit8 v2, v2, 0x2

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    .line 56
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    .line 58
    move-result v2

    .line 61
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 62
    move-object v2, v4

    .line 65
    :cond_2
    invoke-virtual {v2, v0, v3, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    .line 69
    move-result v3

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 76
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 78
    goto :goto_1

    .line 80
    :cond_3
    const/16 v7, 0xa

    .line 81
    if-ne v5, v7, :cond_4

    .line 83
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 85
    add-int/2addr v5, v6

    .line 87
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 88
    iput v8, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 90
    :cond_4
    move v5, v8

    .line 92
    goto :goto_2

    .line 93
    :cond_5
    if-nez v2, :cond_6

    .line 94
    sub-int v2, v5, v3

    .line 96
    mul-int/lit8 v2, v2, 0x2

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    .line 100
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    .line 102
    move-result v2

    .line 105
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 106
    move-object v2, v4

    .line 109
    :cond_6
    sub-int v4, v5, v3

    .line 110
    invoke-virtual {v2, v0, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 112
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 115
    invoke-virtual {p0, v6}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 117
    move-result v3

    .line 120
    if-eqz v3, :cond_7

    .line 121
    goto :goto_0

    .line 123
    :cond_7
    const-string p1, "Unterminated string"

    .line 124
    invoke-virtual {p0, p1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 126
    throw v1
    .line 129
.end method

.method public final nextString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 6
    move-result v0

    .line 9
    :cond_0
    const/16 v1, 0xa

    .line 10
    if-ne v0, v1, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/16 v1, 0x8

    .line 19
    if-ne v0, v1, :cond_2

    .line 21
    const/16 v0, 0x27

    .line 23
    invoke-virtual {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/16 v1, 0x9

    .line 30
    if-ne v0, v1, :cond_3

    .line 32
    const/16 v0, 0x22

    .line 34
    invoke-virtual {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    const/16 v1, 0xb

    .line 41
    if-ne v0, v1, :cond_4

    .line 43
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 45
    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 48
    goto :goto_0

    .line 50
    :cond_4
    const/16 v1, 0xf

    .line 51
    if-ne v0, v1, :cond_5

    .line 53
    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 55
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 60
    goto :goto_0

    .line 61
    :cond_5
    const/16 v1, 0x10

    .line 62
    if-ne v0, v1, :cond_6

    .line 64
    new-instance v0, Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 68
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 70
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 72
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 74
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 77
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 79
    add-int/2addr v1, v2

    .line 81
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 82
    :goto_0
    const/4 v1, 0x0

    .line 84
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 85
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 87
    iget p0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 89
    add-int/lit8 p0, p0, -0x1

    .line 91
    aget v2, v1, p0

    .line 93
    add-int/lit8 v2, v2, 0x1

    .line 95
    aput v2, v1, p0

    .line 97
    return-object v0

    .line 99
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    .line 102
    const-string v2, "Expected a string but was "

    .line 104
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 109
    move-result-object v2

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 116
    move-result-object p0

    .line 119
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object p0

    .line 126
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 127
    throw v0
    .line 130
.end method

.method public final nextUnquotedValue()Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :cond_0
    move v2, v1

    .line 4
    :goto_0
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 5
    add-int v4, v3, v2

    .line 7
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 9
    if-ge v4, v5, :cond_2

    .line 11
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 13
    add-int/2addr v3, v2

    .line 15
    aget-char v3, v4, v3

    .line 16
    const/16 v4, 0x9

    .line 18
    if-eq v3, v4, :cond_3

    .line 20
    const/16 v4, 0xa

    .line 22
    if-eq v3, v4, :cond_3

    .line 24
    const/16 v4, 0xc

    .line 26
    if-eq v3, v4, :cond_3

    .line 28
    const/16 v4, 0xd

    .line 30
    if-eq v3, v4, :cond_3

    .line 32
    const/16 v4, 0x20

    .line 34
    if-eq v3, v4, :cond_3

    .line 36
    const/16 v4, 0x23

    .line 38
    if-eq v3, v4, :cond_1

    .line 40
    const/16 v4, 0x2c

    .line 42
    if-eq v3, v4, :cond_3

    .line 44
    const/16 v4, 0x2f

    .line 46
    if-eq v3, v4, :cond_1

    .line 48
    const/16 v4, 0x3d

    .line 50
    if-eq v3, v4, :cond_1

    .line 52
    const/16 v4, 0x7b

    .line 54
    if-eq v3, v4, :cond_3

    .line 56
    const/16 v4, 0x7d

    .line 58
    if-eq v3, v4, :cond_3

    .line 60
    const/16 v4, 0x3a

    .line 62
    if-eq v3, v4, :cond_3

    .line 64
    const/16 v4, 0x3b

    .line 66
    if-eq v3, v4, :cond_1

    .line 68
    packed-switch v3, :pswitch_data_0

    .line 70
    add-int/lit8 v2, v2, 0x1

    .line 73
    goto :goto_0

    .line 75
    :cond_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 76
    goto :goto_1

    .line 79
    :cond_2
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 80
    array-length v3, v3

    .line 82
    if-ge v2, v3, :cond_4

    .line 83
    add-int/lit8 v3, v2, 0x1

    .line 85
    invoke-virtual {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 87
    move-result v3

    .line 90
    if-eqz v3, :cond_3

    .line 91
    goto :goto_0

    .line 93
    :cond_3
    :goto_1
    :pswitch_1
    move v1, v2

    .line 94
    goto :goto_2

    .line 95
    :cond_4
    if-nez v0, :cond_5

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    const/16 v3, 0x10

    .line 100
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 102
    move-result v3

    .line 105
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 106
    :cond_5
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 109
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 111
    invoke-virtual {v0, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 113
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 116
    add-int/2addr v3, v2

    .line 118
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 119
    const/4 v2, 0x1

    .line 121
    invoke-virtual {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 122
    move-result v2

    .line 125
    if-nez v2, :cond_0

    .line 126
    :goto_2
    if-nez v0, :cond_6

    .line 128
    new-instance v0, Ljava/lang/String;

    .line 130
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 132
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 134
    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    .line 136
    goto :goto_3

    .line 139
    :cond_6
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 140
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 142
    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object v0

    .line 150
    :goto_3
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 151
    add-int/2addr v2, v1

    .line 153
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 154
    return-object v0

    .line 156
    nop

    .line 157
    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
    .line 158
.end method

.method public final peek()Lcom/google/gson/stream/JsonToken;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 6
    move-result v0

    .line 9
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 10
    new-instance p0, Ljava/lang/AssertionError;

    .line 13
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 15
    throw p0

    .line 18
    :pswitch_0
    sget-object p0, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    .line 19
    return-object p0

    .line 21
    :pswitch_1
    sget-object p0, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    .line 22
    return-object p0

    .line 24
    :pswitch_2
    sget-object p0, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    .line 25
    return-object p0

    .line 27
    :pswitch_3
    sget-object p0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    .line 28
    return-object p0

    .line 30
    :pswitch_4
    sget-object p0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    .line 31
    return-object p0

    .line 33
    :pswitch_5
    sget-object p0, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    .line 34
    return-object p0

    .line 36
    :pswitch_6
    sget-object p0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    .line 37
    return-object p0

    .line 39
    :pswitch_7
    sget-object p0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    .line 40
    return-object p0

    .line 42
    :pswitch_8
    sget-object p0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    .line 43
    return-object p0

    .line 45
    :pswitch_9
    sget-object p0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    .line 46
    return-object p0

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 50
.end method

.method public final push(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 2
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 4
    array-length v2, v1

    .line 6
    if-ne v0, v2, :cond_0

    .line 7
    mul-int/lit8 v0, v0, 0x2

    .line 9
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 11
    move-result-object v1

    .line 14
    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 15
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 17
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 19
    move-result-object v1

    .line 22
    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 23
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 25
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 30
    check-cast v0, [Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 35
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 37
    add-int/lit8 v2, v1, 0x1

    .line 39
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 41
    aput p1, v0, v1

    .line 43
    return-void
    .line 45
.end method

.method public final readEscapeCharacter()C
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 2
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 4
    const/4 v2, 0x0

    .line 6
    const-string v3, "Unterminated escape sequence"

    .line 7
    const/4 v4, 0x1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    invoke-virtual {p0, v4}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 19
    throw v2

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 23
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 25
    add-int/lit8 v5, v1, 0x1

    .line 27
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 29
    aget-char v0, v0, v1

    .line 31
    const/16 v1, 0xa

    .line 33
    if-eq v0, v1, :cond_e

    .line 35
    const/16 v4, 0x22

    .line 37
    if-eq v0, v4, :cond_f

    .line 39
    const/16 v4, 0x27

    .line 41
    if-eq v0, v4, :cond_f

    .line 43
    const/16 v4, 0x2f

    .line 45
    if-eq v0, v4, :cond_f

    .line 47
    const/16 v4, 0x5c

    .line 49
    if-eq v0, v4, :cond_f

    .line 51
    const/16 v4, 0x62

    .line 53
    if-eq v0, v4, :cond_d

    .line 55
    const/16 v4, 0x66

    .line 57
    if-eq v0, v4, :cond_c

    .line 59
    const/16 v6, 0x6e

    .line 61
    if-eq v0, v6, :cond_b

    .line 63
    const/16 v6, 0x72

    .line 65
    if-eq v0, v6, :cond_a

    .line 67
    const/16 v6, 0x74

    .line 69
    if-eq v0, v6, :cond_9

    .line 71
    const/16 v6, 0x75

    .line 73
    if-ne v0, v6, :cond_8

    .line 75
    const/4 v0, 0x4

    .line 77
    add-int/2addr v5, v0

    .line 78
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 79
    if-le v5, v6, :cond_3

    .line 81
    invoke-virtual {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 83
    move-result v5

    .line 86
    if-eqz v5, :cond_2

    .line 87
    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 90
    throw v2

    .line 93
    :cond_3
    :goto_1
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 94
    add-int/lit8 v3, v2, 0x4

    .line 96
    const/4 v5, 0x0

    .line 98
    :goto_2
    if-ge v2, v3, :cond_7

    .line 99
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 101
    aget-char v6, v6, v2

    .line 103
    shl-int/lit8 v5, v5, 0x4

    .line 105
    int-to-char v5, v5

    .line 107
    const/16 v7, 0x30

    .line 108
    if-lt v6, v7, :cond_4

    .line 110
    const/16 v7, 0x39

    .line 112
    if-gt v6, v7, :cond_4

    .line 114
    add-int/lit8 v6, v6, -0x30

    .line 116
    goto :goto_4

    .line 118
    :cond_4
    const/16 v7, 0x61

    .line 119
    if-lt v6, v7, :cond_5

    .line 121
    if-gt v6, v4, :cond_5

    .line 123
    add-int/lit8 v6, v6, -0x61

    .line 125
    goto :goto_3

    .line 127
    :cond_5
    const/16 v7, 0x41

    .line 128
    if-lt v6, v7, :cond_6

    .line 130
    const/16 v7, 0x46

    .line 132
    if-gt v6, v7, :cond_6

    .line 134
    add-int/lit8 v6, v6, -0x41

    .line 136
    :goto_3
    add-int/2addr v6, v1

    .line 138
    :goto_4
    add-int/2addr v6, v5

    .line 139
    int-to-char v5, v6

    .line 140
    add-int/lit8 v2, v2, 0x1

    .line 141
    goto :goto_2

    .line 143
    :cond_6
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 144
    new-instance v2, Ljava/lang/String;

    .line 146
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 148
    iget p0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 150
    invoke-direct {v2, v3, p0, v0}, Ljava/lang/String;-><init>([CII)V

    .line 152
    const-string p0, "\\u"

    .line 155
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    move-result-object p0

    .line 160
    invoke-direct {v1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 161
    throw v1

    .line 164
    :cond_7
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 165
    add-int/2addr v1, v0

    .line 167
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 168
    return v5

    .line 170
    :cond_8
    const-string v0, "Invalid escape sequence"

    .line 171
    invoke-virtual {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 173
    throw v2

    .line 176
    :cond_9
    const/16 p0, 0x9

    .line 177
    return p0

    .line 179
    :cond_a
    const/16 p0, 0xd

    .line 180
    return p0

    .line 182
    :cond_b
    return v1

    .line 183
    :cond_c
    const/16 p0, 0xc

    .line 184
    return p0

    .line 186
    :cond_d
    const/16 p0, 0x8

    .line 187
    return p0

    .line 189
    :cond_e
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 190
    add-int/2addr v1, v4

    .line 192
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 193
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 195
    :cond_f
    return v0
    .line 197
.end method

.method public final skipQuotedValue(C)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 2
    :goto_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 4
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 6
    :goto_1
    const/4 v3, 0x1

    .line 8
    if-ge v1, v2, :cond_3

    .line 9
    add-int/lit8 v4, v1, 0x1

    .line 11
    aget-char v1, v0, v1

    .line 13
    if-ne v1, p1, :cond_0

    .line 15
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 17
    return-void

    .line 19
    :cond_0
    const/16 v5, 0x5c

    .line 20
    if-ne v1, v5, :cond_1

    .line 22
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 24
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    .line 26
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 29
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 31
    goto :goto_1

    .line 33
    :cond_1
    const/16 v5, 0xa

    .line 34
    if-ne v1, v5, :cond_2

    .line 36
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 38
    add-int/2addr v1, v3

    .line 40
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 41
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 43
    :cond_2
    move v1, v4

    .line 45
    goto :goto_1

    .line 46
    :cond_3
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 47
    invoke-virtual {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 49
    move-result v1

    .line 52
    if-eqz v1, :cond_4

    .line 53
    goto :goto_0

    .line 55
    :cond_4
    const-string p1, "Unterminated string"

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 58
    const/4 p0, 0x0

    .line 61
    throw p0
    .line 62
.end method

.method public final skipToEndOfLine()V
    .locals 4

    .line 1
    :cond_0
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 2
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 4
    const/4 v2, 0x1

    .line 6
    if-lt v0, v1, :cond_1

    .line 7
    invoke-virtual {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 15
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 17
    add-int/lit8 v3, v1, 0x1

    .line 19
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 21
    aget-char v0, v0, v1

    .line 23
    const/16 v1, 0xa

    .line 25
    if-ne v0, v1, :cond_2

    .line 27
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 29
    add-int/2addr v0, v2

    .line 31
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 32
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 34
    goto :goto_0

    .line 36
    :cond_2
    const/16 v1, 0xd

    .line 37
    if-ne v0, v1, :cond_0

    .line 39
    :cond_3
    :goto_0
    return-void
    .line 41
.end method

.method public final skipUnquotedValue()V
    .locals 4

    .line 1
    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 3
    add-int v2, v1, v0

    .line 5
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 7
    if-ge v2, v3, :cond_3

    .line 9
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 11
    add-int/2addr v1, v0

    .line 13
    aget-char v1, v2, v1

    .line 14
    const/16 v2, 0x9

    .line 16
    if-eq v1, v2, :cond_2

    .line 18
    const/16 v2, 0xa

    .line 20
    if-eq v1, v2, :cond_2

    .line 22
    const/16 v2, 0xc

    .line 24
    if-eq v1, v2, :cond_2

    .line 26
    const/16 v2, 0xd

    .line 28
    if-eq v1, v2, :cond_2

    .line 30
    const/16 v2, 0x20

    .line 32
    if-eq v1, v2, :cond_2

    .line 34
    const/16 v2, 0x23

    .line 36
    if-eq v1, v2, :cond_1

    .line 38
    const/16 v2, 0x2c

    .line 40
    if-eq v1, v2, :cond_2

    .line 42
    const/16 v2, 0x2f

    .line 44
    if-eq v1, v2, :cond_1

    .line 46
    const/16 v2, 0x3d

    .line 48
    if-eq v1, v2, :cond_1

    .line 50
    const/16 v2, 0x7b

    .line 52
    if-eq v1, v2, :cond_2

    .line 54
    const/16 v2, 0x7d

    .line 56
    if-eq v1, v2, :cond_2

    .line 58
    const/16 v2, 0x3a

    .line 60
    if-eq v1, v2, :cond_2

    .line 62
    const/16 v2, 0x3b

    .line 64
    if-eq v1, v2, :cond_1

    .line 66
    packed-switch v1, :pswitch_data_0

    .line 68
    add-int/lit8 v0, v0, 0x1

    .line 71
    goto :goto_0

    .line 73
    :cond_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 74
    :cond_2
    :pswitch_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 77
    add-int/2addr v1, v0

    .line 79
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 80
    return-void

    .line 82
    :cond_3
    add-int/2addr v1, v0

    .line 83
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 84
    const/4 v0, 0x1

    .line 86
    invoke-virtual {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 87
    move-result v0

    .line 90
    if-nez v0, :cond_0

    .line 91
    return-void

    .line 93
    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
    .line 94
.end method

.method public final skipValue()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :cond_0
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 4
    if-nez v2, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 8
    move-result v2

    .line 11
    :cond_1
    const/16 v3, 0x22

    .line 12
    const/16 v4, 0x27

    .line 14
    const-string v5, "<skipped>"

    .line 16
    const/4 v6, 0x1

    .line 18
    packed-switch v2, :pswitch_data_0

    .line 19
    :pswitch_0
    goto :goto_2

    .line 22
    :pswitch_1
    return-void

    .line 23
    :pswitch_2
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 24
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 26
    add-int/2addr v2, v3

    .line 28
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 29
    goto :goto_2

    .line 31
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->skipUnquotedValue()V

    .line 32
    if-nez v1, :cond_3

    .line 35
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 37
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 39
    sub-int/2addr v3, v6

    .line 41
    aput-object v5, v2, v3

    .line 42
    goto :goto_2

    .line 44
    :pswitch_4
    invoke-virtual {p0, v3}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    .line 45
    if-nez v1, :cond_3

    .line 48
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 50
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 52
    sub-int/2addr v3, v6

    .line 54
    aput-object v5, v2, v3

    .line 55
    goto :goto_2

    .line 57
    :pswitch_5
    invoke-virtual {p0, v4}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    .line 58
    if-nez v1, :cond_3

    .line 61
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 63
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 65
    sub-int/2addr v3, v6

    .line 67
    aput-object v5, v2, v3

    .line 68
    goto :goto_2

    .line 70
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->skipUnquotedValue()V

    .line 71
    goto :goto_2

    .line 74
    :pswitch_7
    invoke-virtual {p0, v3}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    .line 75
    goto :goto_2

    .line 78
    :pswitch_8
    invoke-virtual {p0, v4}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    .line 79
    goto :goto_2

    .line 82
    :pswitch_9
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 83
    sub-int/2addr v2, v6

    .line 85
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 86
    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 88
    goto :goto_2

    .line 90
    :pswitch_a
    invoke-virtual {p0, v6}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 91
    goto :goto_1

    .line 94
    :pswitch_b
    if-nez v1, :cond_2

    .line 95
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 97
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 99
    sub-int/2addr v3, v6

    .line 101
    const/4 v4, 0x0

    .line 102
    aput-object v4, v2, v3

    .line 103
    :cond_2
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 105
    sub-int/2addr v2, v6

    .line 107
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 108
    goto :goto_0

    .line 110
    :pswitch_c
    const/4 v2, 0x3

    .line 111
    invoke-virtual {p0, v2}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 112
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 115
    :cond_3
    :goto_2
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 117
    if-gtz v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 121
    iget p0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 123
    sub-int/2addr p0, v6

    .line 125
    aget v1, v0, p0

    .line 126
    add-int/2addr v1, v6

    .line 128
    aput v1, v0, p0

    .line 129
    return-void

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
    .line 132
.end method

.method public final syntaxError(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    .line 2
    invoke-static {p1}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 18
    invoke-direct {v0, p0}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0
    .line 22
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "JsonReader"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    const-class v1, Lcom/google/gson/stream/JsonReader;

    .line 9
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 21
    return-object p0
    .line 22
.end method
