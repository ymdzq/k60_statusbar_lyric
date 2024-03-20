.class public final Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;
.super Lcom/airbnb/lottie/parser/moshi/JsonReader;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

.field public static final SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

.field public static final UNQUOTED_STRING_TERMINALS:Lokio/ByteString;


# instance fields
.field public final buffer:Lokio/Buffer;

.field public peeked:I

.field public peekedLong:J

.field public peekedNumberLength:I

.field public peekedString:Ljava/lang/String;

.field public final source:Lokio/BufferedSource;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "\'\\"

    .line 2
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 8
    const-string v0, "\"\\"

    .line 10
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 12
    move-result-object v0

    .line 15
    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 16
    const-string/jumbo v0, "{}[]:, \n\t\r\u000c/\\;#="

    .line 18
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 21
    move-result-object v0

    .line 24
    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->UNQUOTED_STRING_TERMINALS:Lokio/ByteString;

    .line 25
    const-string v0, "\n\r"

    .line 27
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 29
    const-string v0, "*/"

    .line 32
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 34
    return-void
    .line 37
.end method

.method public constructor <init>(Lokio/RealBufferedSource;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 6
    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 8
    iget-object p1, p1, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 10
    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 12
    const/4 p1, 0x6

    .line 14
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pushScope(I)V

    .line 15
    return-void
    .line 18
.end method


# virtual methods
.method public final beginArray()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

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
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pushScope(I)V

    .line 14
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 17
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 19
    sub-int/2addr v2, v0

    .line 21
    const/4 v0, 0x0

    .line 22
    aput v0, v1, v2

    .line 23
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 25
    return-void

    .line 27
    :cond_1
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    const-string v2, "Expected BEGIN_ARRAY but was "

    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 37
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    const-string v2, " at path "

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 52
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 59
    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 60
    throw v0
    .line 63
.end method

.method public final beginObject()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

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
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pushScope(I)V

    .line 14
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 18
    return-void

    .line 20
    :cond_1
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    const-string v2, "Expected BEGIN_OBJECT but was "

    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 30
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    const-string v2, " at path "

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 52
    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 53
    throw v0
    .line 56
.end method

.method public final checkLenient()V
    .locals 1

    .line 1
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    .line 2
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 4
    const/4 p0, 0x0

    .line 7
    throw p0
    .line 8
.end method

.method public final close()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 3
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->scopes:[I

    .line 5
    const/16 v2, 0x8

    .line 7
    aput v2, v1, v0

    .line 9
    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 12
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 14
    iget-wide v1, v0, Lokio/Buffer;->size:J

    .line 16
    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->skip(J)V

    .line 18
    iget-object p0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 21
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 23
    return-void
    .line 26
.end method

.method public final doPeek()I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->scopes:[I

    .line 4
    iget v2, v0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 6
    add-int/lit8 v3, v2, -0x1

    .line 8
    aget v3, v1, v3

    .line 10
    const/4 v5, 0x0

    .line 12
    const/16 v7, 0x5d

    .line 13
    const/4 v8, 0x0

    .line 15
    const/16 v9, 0x3b

    .line 16
    const/16 v10, 0x2c

    .line 18
    const/4 v11, 0x3

    .line 20
    const/4 v12, 0x6

    .line 21
    const/4 v13, 0x7

    .line 22
    const/4 v14, 0x2

    .line 23
    const/4 v15, 0x4

    .line 24
    const/4 v4, 0x5

    .line 25
    const/4 v6, 0x1

    .line 26
    if-ne v3, v6, :cond_0

    .line 27
    sub-int/2addr v2, v6

    .line 29
    aput v14, v1, v2

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    if-ne v3, v14, :cond_3

    .line 33
    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    .line 35
    move-result v1

    .line 38
    iget-object v2, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 39
    invoke-virtual {v2}, Lokio/Buffer;->readByte()B

    .line 41
    if-eq v1, v10, :cond_a

    .line 44
    if-eq v1, v9, :cond_2

    .line 46
    if-ne v1, v7, :cond_1

    .line 48
    iput v15, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 50
    return v15

    .line 52
    :cond_1
    const-string v1, "Unterminated array"

    .line 53
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 55
    throw v5

    .line 58
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 59
    throw v5

    .line 62
    :cond_3
    if-eq v3, v11, :cond_3a

    .line 63
    if-ne v3, v4, :cond_4

    .line 65
    goto/16 :goto_16

    .line 67
    :cond_4
    if-ne v3, v15, :cond_6

    .line 69
    sub-int/2addr v2, v6

    .line 71
    aput v4, v1, v2

    .line 72
    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    .line 74
    move-result v1

    .line 77
    iget-object v2, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 78
    invoke-virtual {v2}, Lokio/Buffer;->readByte()B

    .line 80
    const/16 v2, 0x3a

    .line 83
    if-eq v1, v2, :cond_a

    .line 85
    const/16 v2, 0x3d

    .line 87
    if-eq v1, v2, :cond_5

    .line 89
    const-string v1, "Expected \':\'"

    .line 91
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 93
    throw v5

    .line 96
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 97
    throw v5

    .line 100
    :cond_6
    if-ne v3, v12, :cond_7

    .line 101
    sub-int/2addr v2, v6

    .line 103
    aput v13, v1, v2

    .line 104
    goto :goto_0

    .line 106
    :cond_7
    if-ne v3, v13, :cond_9

    .line 107
    invoke-virtual {v0, v8}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    .line 109
    move-result v1

    .line 112
    const/4 v2, -0x1

    .line 113
    if-ne v1, v2, :cond_8

    .line 114
    const/16 v1, 0x12

    .line 116
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 118
    return v1

    .line 120
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 121
    throw v5

    .line 124
    :cond_9
    const/16 v1, 0x8

    .line 125
    if-eq v3, v1, :cond_39

    .line 127
    :cond_a
    :goto_0
    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    .line 129
    move-result v1

    .line 132
    const/16 v2, 0x22

    .line 133
    if-eq v1, v2, :cond_38

    .line 135
    const/16 v2, 0x27

    .line 137
    if-eq v1, v2, :cond_37

    .line 139
    if-eq v1, v10, :cond_34

    .line 141
    if-eq v1, v9, :cond_34

    .line 143
    const/16 v2, 0x5b

    .line 145
    if-eq v1, v2, :cond_33

    .line 147
    if-eq v1, v7, :cond_32

    .line 149
    const/16 v2, 0x7b

    .line 151
    if-eq v1, v2, :cond_31

    .line 153
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 155
    const-wide/16 v2, 0x0

    .line 157
    invoke-virtual {v1, v2, v3}, Lokio/Buffer;->getByte(J)B

    .line 159
    move-result v1

    .line 162
    const/16 v7, 0x74

    .line 163
    if-eq v1, v7, :cond_10

    .line 165
    const/16 v7, 0x54

    .line 167
    if-ne v1, v7, :cond_b

    .line 169
    goto :goto_3

    .line 171
    :cond_b
    const/16 v7, 0x66

    .line 172
    if-eq v1, v7, :cond_f

    .line 174
    const/16 v7, 0x46

    .line 176
    if-ne v1, v7, :cond_c

    .line 178
    goto :goto_2

    .line 180
    :cond_c
    const/16 v7, 0x6e

    .line 181
    if-eq v1, v7, :cond_e

    .line 183
    const/16 v7, 0x4e

    .line 185
    if-ne v1, v7, :cond_d

    .line 187
    goto :goto_1

    .line 189
    :cond_d
    move v9, v8

    .line 190
    goto :goto_7

    .line 191
    :cond_e
    :goto_1
    const-string v1, "null"

    .line 192
    const-string v7, "NULL"

    .line 194
    move v9, v13

    .line 196
    goto :goto_4

    .line 197
    :cond_f
    :goto_2
    const-string v1, "false"

    .line 198
    const-string v7, "FALSE"

    .line 200
    move v9, v12

    .line 202
    goto :goto_4

    .line 203
    :cond_10
    :goto_3
    const-string/jumbo v1, "true"

    .line 204
    const-string v7, "TRUE"

    .line 207
    move v9, v4

    .line 209
    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 210
    move-result v10

    .line 213
    move v8, v6

    .line 214
    :goto_5
    if-ge v8, v10, :cond_13

    .line 215
    iget-object v5, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 217
    add-int/lit8 v13, v8, 0x1

    .line 219
    int-to-long v11, v13

    .line 221
    invoke-interface {v5, v11, v12}, Lokio/BufferedSource;->request(J)Z

    .line 222
    move-result v5

    .line 225
    if-nez v5, :cond_11

    .line 226
    goto :goto_6

    .line 228
    :cond_11
    iget-object v5, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 229
    int-to-long v11, v8

    .line 231
    invoke-virtual {v5, v11, v12}, Lokio/Buffer;->getByte(J)B

    .line 232
    move-result v5

    .line 235
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 236
    move-result v11

    .line 239
    if-eq v5, v11, :cond_12

    .line 240
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    .line 242
    move-result v8

    .line 245
    if-eq v5, v8, :cond_12

    .line 246
    goto :goto_6

    .line 248
    :cond_12
    move v8, v13

    .line 249
    const/4 v5, 0x0

    .line 250
    const/4 v11, 0x3

    .line 251
    const/4 v12, 0x6

    .line 252
    const/4 v13, 0x7

    .line 253
    goto :goto_5

    .line 254
    :cond_13
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 255
    add-int/lit8 v5, v10, 0x1

    .line 257
    int-to-long v7, v5

    .line 259
    invoke-interface {v1, v7, v8}, Lokio/BufferedSource;->request(J)Z

    .line 260
    move-result v1

    .line 263
    if-eqz v1, :cond_14

    .line 264
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 266
    int-to-long v7, v10

    .line 268
    invoke-virtual {v1, v7, v8}, Lokio/Buffer;->getByte(J)B

    .line 269
    move-result v1

    .line 272
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->isLiteral(I)Z

    .line 273
    move-result v1

    .line 276
    if-eqz v1, :cond_14

    .line 277
    :goto_6
    const/4 v9, 0x0

    .line 279
    goto :goto_7

    .line 280
    :cond_14
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 281
    int-to-long v7, v10

    .line 283
    invoke-virtual {v1, v7, v8}, Lokio/Buffer;->skip(J)V

    .line 284
    iput v9, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 287
    :goto_7
    if-eqz v9, :cond_15

    .line 289
    return v9

    .line 291
    :cond_15
    move-wide v8, v2

    .line 292
    move v7, v6

    .line 293
    const/4 v1, 0x0

    .line 294
    const/4 v5, 0x0

    .line 295
    const/4 v10, 0x0

    .line 296
    :goto_8
    iget-object v11, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 297
    add-int/lit8 v12, v1, 0x1

    .line 299
    int-to-long v2, v12

    .line 301
    invoke-interface {v11, v2, v3}, Lokio/BufferedSource;->request(J)Z

    .line 302
    move-result v2

    .line 305
    if-nez v2, :cond_16

    .line 306
    move v2, v14

    .line 308
    goto/16 :goto_f

    .line 309
    :cond_16
    iget-object v2, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 311
    int-to-long v14, v1

    .line 313
    invoke-virtual {v2, v14, v15}, Lokio/Buffer;->getByte(J)B

    .line 314
    move-result v2

    .line 317
    const/16 v3, 0x2b

    .line 318
    if-eq v2, v3, :cond_2d

    .line 320
    const/16 v3, 0x45

    .line 322
    if-eq v2, v3, :cond_2b

    .line 324
    const/16 v3, 0x65

    .line 326
    if-eq v2, v3, :cond_2b

    .line 328
    const/16 v3, 0x2d

    .line 330
    if-eq v2, v3, :cond_29

    .line 332
    const/16 v3, 0x2e

    .line 334
    if-eq v2, v3, :cond_28

    .line 336
    const/16 v3, 0x30

    .line 338
    if-lt v2, v3, :cond_21

    .line 340
    const/16 v3, 0x39

    .line 342
    if-le v2, v3, :cond_17

    .line 344
    goto :goto_e

    .line 346
    :cond_17
    if-eq v5, v6, :cond_1f

    .line 347
    if-nez v5, :cond_18

    .line 349
    goto :goto_c

    .line 351
    :cond_18
    const/4 v1, 0x2

    .line 352
    if-ne v5, v1, :cond_1c

    .line 353
    const-wide/16 v14, 0x0

    .line 355
    cmp-long v1, v8, v14

    .line 357
    if-nez v1, :cond_19

    .line 359
    goto/16 :goto_13

    .line 361
    :cond_19
    const-wide/16 v14, 0xa

    .line 363
    mul-long/2addr v14, v8

    .line 365
    add-int/lit8 v2, v2, -0x30

    .line 366
    int-to-long v1, v2

    .line 368
    sub-long/2addr v14, v1

    .line 369
    const-wide v1, -0xcccccccccccccccL

    .line 370
    cmp-long v1, v8, v1

    .line 375
    if-gtz v1, :cond_1b

    .line 377
    if-nez v1, :cond_1a

    .line 379
    cmp-long v1, v14, v8

    .line 381
    if-gez v1, :cond_1a

    .line 383
    goto :goto_9

    .line 385
    :cond_1a
    const/4 v1, 0x0

    .line 386
    goto :goto_a

    .line 387
    :cond_1b
    :goto_9
    move v1, v6

    .line 388
    :goto_a
    and-int/2addr v7, v1

    .line 389
    move-wide v8, v14

    .line 390
    goto :goto_b

    .line 391
    :cond_1c
    const/4 v1, 0x3

    .line 392
    if-ne v5, v1, :cond_1d

    .line 393
    const/4 v5, 0x4

    .line 395
    :goto_b
    const/4 v3, 0x6

    .line 396
    goto :goto_d

    .line 397
    :cond_1d
    const/4 v3, 0x6

    .line 398
    if-eq v5, v4, :cond_1e

    .line 399
    if-ne v5, v3, :cond_20

    .line 401
    :cond_1e
    const/4 v5, 0x7

    .line 403
    goto :goto_d

    .line 404
    :cond_1f
    :goto_c
    const/4 v3, 0x6

    .line 405
    add-int/lit8 v2, v2, -0x30

    .line 406
    neg-int v1, v2

    .line 408
    int-to-long v1, v1

    .line 409
    move-wide v8, v1

    .line 410
    const/4 v5, 0x2

    .line 411
    :cond_20
    :goto_d
    const/4 v2, 0x7

    .line 412
    goto/16 :goto_12

    .line 413
    :cond_21
    :goto_e
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->isLiteral(I)Z

    .line 415
    move-result v2

    .line 418
    if-nez v2, :cond_2e

    .line 419
    const/4 v2, 0x2

    .line 421
    :goto_f
    if-ne v5, v2, :cond_26

    .line 422
    if-eqz v7, :cond_25

    .line 424
    const-wide/high16 v2, -0x8000000000000000L

    .line 426
    cmp-long v2, v8, v2

    .line 428
    if-nez v2, :cond_22

    .line 430
    if-eqz v10, :cond_25

    .line 432
    :cond_22
    const-wide/16 v2, 0x0

    .line 434
    cmp-long v4, v8, v2

    .line 436
    if-nez v4, :cond_23

    .line 438
    if-nez v10, :cond_25

    .line 440
    :cond_23
    if-eqz v10, :cond_24

    .line 442
    goto :goto_10

    .line 444
    :cond_24
    neg-long v8, v8

    .line 445
    :goto_10
    iput-wide v8, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    .line 446
    iget-object v2, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 448
    int-to-long v3, v1

    .line 450
    invoke-virtual {v2, v3, v4}, Lokio/Buffer;->skip(J)V

    .line 451
    const/16 v8, 0x10

    .line 454
    iput v8, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 456
    goto :goto_14

    .line 458
    :cond_25
    const/4 v2, 0x2

    .line 459
    :cond_26
    if-eq v5, v2, :cond_27

    .line 460
    const/4 v2, 0x4

    .line 462
    if-eq v5, v2, :cond_27

    .line 463
    const/4 v2, 0x7

    .line 465
    if-ne v5, v2, :cond_2e

    .line 466
    :cond_27
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    .line 468
    const/16 v8, 0x11

    .line 470
    iput v8, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 472
    goto :goto_14

    .line 474
    :cond_28
    const/4 v1, 0x2

    .line 475
    const/4 v2, 0x7

    .line 476
    const/4 v3, 0x6

    .line 477
    if-ne v5, v1, :cond_2e

    .line 478
    const/4 v5, 0x3

    .line 480
    goto :goto_12

    .line 481
    :cond_29
    const/4 v1, 0x2

    .line 482
    const/4 v2, 0x7

    .line 483
    const/4 v3, 0x6

    .line 484
    if-nez v5, :cond_2a

    .line 485
    move v5, v6

    .line 487
    move v10, v5

    .line 488
    goto :goto_12

    .line 489
    :cond_2a
    if-ne v5, v4, :cond_2e

    .line 490
    goto :goto_11

    .line 492
    :cond_2b
    const/4 v1, 0x2

    .line 493
    const/4 v2, 0x7

    .line 494
    const/4 v3, 0x6

    .line 495
    if-eq v5, v1, :cond_2c

    .line 496
    const/4 v1, 0x4

    .line 498
    if-ne v5, v1, :cond_2e

    .line 499
    :cond_2c
    move v5, v4

    .line 501
    goto :goto_12

    .line 502
    :cond_2d
    const/4 v2, 0x7

    .line 503
    const/4 v3, 0x6

    .line 504
    if-ne v5, v4, :cond_2e

    .line 505
    :goto_11
    move v5, v3

    .line 507
    :goto_12
    move v1, v12

    .line 508
    const-wide/16 v2, 0x0

    .line 509
    const/4 v14, 0x2

    .line 511
    const/4 v15, 0x4

    .line 512
    goto/16 :goto_8

    .line 513
    :cond_2e
    :goto_13
    const/4 v8, 0x0

    .line 515
    :goto_14
    if-eqz v8, :cond_2f

    .line 516
    return v8

    .line 518
    :cond_2f
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 519
    const-wide/16 v2, 0x0

    .line 521
    invoke-virtual {v1, v2, v3}, Lokio/Buffer;->getByte(J)B

    .line 523
    move-result v1

    .line 526
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->isLiteral(I)Z

    .line 527
    move-result v1

    .line 530
    if-nez v1, :cond_30

    .line 531
    const-string v1, "Expected value"

    .line 533
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 535
    const/4 v1, 0x0

    .line 538
    throw v1

    .line 539
    :cond_30
    const/4 v1, 0x0

    .line 540
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 541
    throw v1

    .line 544
    :cond_31
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 545
    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 547
    iput v6, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 550
    return v6

    .line 552
    :cond_32
    if-ne v3, v6, :cond_34

    .line 553
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 555
    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 557
    const/4 v1, 0x4

    .line 560
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 561
    return v1

    .line 563
    :cond_33
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 564
    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 566
    const/4 v1, 0x3

    .line 569
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 570
    return v1

    .line 572
    :cond_34
    if-eq v3, v6, :cond_36

    .line 573
    const/4 v1, 0x2

    .line 575
    if-ne v3, v1, :cond_35

    .line 576
    goto :goto_15

    .line 578
    :cond_35
    const-string v1, "Unexpected value"

    .line 579
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 581
    const/4 v1, 0x0

    .line 584
    throw v1

    .line 585
    :cond_36
    :goto_15
    const/4 v1, 0x0

    .line 586
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 587
    throw v1

    .line 590
    :cond_37
    move-object v1, v5

    .line 591
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 592
    throw v1

    .line 595
    :cond_38
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 596
    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 598
    const/16 v1, 0x9

    .line 601
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 603
    return v1

    .line 605
    :cond_39
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 606
    const-string v1, "JsonReader is closed"

    .line 608
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 610
    throw v0

    .line 613
    :cond_3a
    :goto_16
    sub-int/2addr v2, v6

    .line 614
    const/4 v5, 0x4

    .line 615
    aput v5, v1, v2

    .line 616
    const/16 v1, 0x7d

    .line 618
    if-ne v3, v4, :cond_3d

    .line 620
    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    .line 622
    move-result v2

    .line 625
    iget-object v5, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 626
    invoke-virtual {v5}, Lokio/Buffer;->readByte()B

    .line 628
    if-eq v2, v10, :cond_3d

    .line 631
    if-eq v2, v9, :cond_3c

    .line 633
    if-ne v2, v1, :cond_3b

    .line 635
    const/4 v1, 0x2

    .line 637
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 638
    return v1

    .line 640
    :cond_3b
    const-string v1, "Unterminated object"

    .line 641
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 643
    const/4 v1, 0x0

    .line 646
    throw v1

    .line 647
    :cond_3c
    const/4 v1, 0x0

    .line 648
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 649
    throw v1

    .line 652
    :cond_3d
    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    .line 653
    move-result v2

    .line 656
    const/16 v5, 0x22

    .line 657
    if-eq v2, v5, :cond_41

    .line 659
    const/16 v5, 0x27

    .line 661
    if-eq v2, v5, :cond_40

    .line 663
    if-ne v2, v1, :cond_3f

    .line 665
    if-eq v3, v4, :cond_3e

    .line 667
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 669
    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 671
    const/4 v1, 0x2

    .line 674
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 675
    return v1

    .line 677
    :cond_3e
    const-string v1, "Expected name"

    .line 678
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 680
    const/4 v1, 0x0

    .line 683
    throw v1

    .line 684
    :cond_3f
    const/4 v1, 0x0

    .line 685
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 686
    throw v1

    .line 689
    :cond_40
    const/4 v1, 0x0

    .line 690
    iget-object v2, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 691
    invoke-virtual {v2}, Lokio/Buffer;->readByte()B

    .line 693
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 696
    throw v1

    .line 699
    :cond_41
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 700
    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 702
    const/16 v1, 0xd

    .line 705
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 707
    return v1
    .line 709
.end method

.method public final endArray()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 6
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x4

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 15
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 17
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

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
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 30
    return-void

    .line 32
    :cond_1
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    const-string v2, "Expected END_ARRAY but was "

    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 42
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    const-string v2, " at path "

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 57
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 64
    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 65
    throw v0
    .line 68
.end method

.method public final endObject()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 6
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x2

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 15
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 17
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    .line 19
    const/4 v2, 0x0

    .line 21
    aput-object v2, v1, v0

    .line 22
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

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
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 35
    return-void

    .line 37
    :cond_1
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    const-string v2, "Expected END_OBJECT but was "

    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 47
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    const-string v2, " at path "

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 62
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 69
    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 70
    throw v0
    .line 73
.end method

.method public final findName(Ljava/lang/String;Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I
    .locals 4

    .line 1
    iget-object v0, p2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    .line 2
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    iget-object v3, p2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    .line 9
    aget-object v3, v3, v2

    .line 11
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 19
    iget-object p2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    .line 21
    iget p0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 23
    add-int/lit8 p0, p0, -0x1

    .line 25
    aput-object p1, p2, p0

    .line 27
    return v2

    .line 29
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, -0x1

    .line 33
    return p0
    .line 34
.end method

.method public final hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

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
    const/16 p0, 0x12

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

.method public final isLiteral(I)Z
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
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 59
    const/4 p0, 0x0

    .line 62
    throw p0

    .line 63
    :cond_1
    :pswitch_1
    const/4 p0, 0x0

    .line 64
    return p0

    .line 65
    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
    .line 66
.end method

.method public final nextBoolean()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

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
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 15
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 17
    iget p0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

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
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 31
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 33
    iget p0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

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
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    const-string v2, "Expected a boolean but was "

    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 53
    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    const-string v2, " at path "

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 68
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 75
    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 76
    throw v0
    .line 79
.end method

.method public final nextDouble()D
    .locals 8

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 6
    move-result v0

    .line 9
    :cond_0
    const/16 v1, 0x10

    .line 10
    const/4 v2, 0x0

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 15
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 17
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 19
    add-int/lit8 v1, v1, -0x1

    .line 21
    aget v2, v0, v1

    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 25
    aput v2, v0, v1

    .line 27
    iget-wide v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    .line 29
    long-to-double v0, v0

    .line 31
    return-wide v0

    .line 32
    :cond_1
    const/16 v1, 0x11

    .line 33
    const-string v3, "Expected a double but was "

    .line 35
    const/16 v4, 0xb

    .line 37
    const-string v5, " at path "

    .line 39
    if-ne v0, v1, :cond_2

    .line 41
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 43
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    .line 45
    int-to-long v6, v1

    .line 47
    invoke-virtual {v0, v6, v7}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 52
    goto :goto_0

    .line 54
    :cond_2
    const/16 v1, 0x9

    .line 55
    if-ne v0, v1, :cond_3

    .line 57
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 59
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 65
    goto :goto_0

    .line 67
    :cond_3
    const/16 v1, 0x8

    .line 68
    if-ne v0, v1, :cond_4

    .line 70
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 72
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 78
    goto :goto_0

    .line 80
    :cond_4
    const/16 v1, 0xa

    .line 81
    if-ne v0, v1, :cond_5

    .line 83
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextUnquotedValue()Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 88
    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 89
    goto :goto_0

    .line 91
    :cond_5
    if-ne v0, v4, :cond_7

    .line 92
    :goto_0
    iput v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 96
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 98
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 102
    move-result v3

    .line 105
    if-nez v3, :cond_6

    .line 106
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    .line 108
    move-result v3

    .line 111
    if-nez v3, :cond_6

    .line 112
    const/4 v3, 0x0

    .line 114
    iput-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 115
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 117
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 119
    iget p0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 121
    add-int/lit8 p0, p0, -0x1

    .line 123
    aget v3, v2, p0

    .line 125
    add-int/lit8 v3, v3, 0x1

    .line 127
    aput v3, v2, p0

    .line 129
    return-wide v0

    .line 131
    :cond_6
    new-instance v2, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    .line 134
    const-string v4, "JSON forbids NaN and infinities: "

    .line 136
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 147
    move-result-object p0

    .line 150
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object p0

    .line 157
    invoke-direct {v2, p0}, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;-><init>(Ljava/lang/String;)V

    .line 158
    throw v2

    .line 161
    :catch_0
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    .line 164
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 177
    move-result-object p0

    .line 180
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    move-result-object p0

    .line 187
    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 188
    throw v0

    .line 191
    :cond_7
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    .line 194
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 199
    move-result-object v2

    .line 202
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 209
    move-result-object p0

    .line 212
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    move-result-object p0

    .line 219
    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 220
    throw v0
    .line 223
.end method

.method public final nextInt()I
    .locals 8

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 6
    move-result v0

    .line 9
    :cond_0
    const/16 v1, 0x10

    .line 10
    const/4 v2, 0x0

    .line 12
    const-string v3, " at path "

    .line 13
    const-string v4, "Expected an int but was "

    .line 15
    if-ne v0, v1, :cond_2

    .line 17
    iget-wide v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    .line 19
    long-to-int v5, v0

    .line 21
    int-to-long v6, v5

    .line 22
    cmp-long v0, v0, v6

    .line 23
    if-nez v0, :cond_1

    .line 25
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 27
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 29
    iget p0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 31
    add-int/lit8 p0, p0, -0x1

    .line 33
    aget v1, v0, p0

    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 37
    aput v1, v0, p0

    .line 39
    return v5

    .line 41
    :cond_1
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    iget-wide v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    .line 49
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 60
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 67
    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 68
    throw v0

    .line 71
    :cond_2
    const/16 v1, 0x11

    .line 72
    const/16 v5, 0xb

    .line 74
    if-ne v0, v1, :cond_3

    .line 76
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 78
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    .line 80
    int-to-long v6, v1

    .line 82
    invoke-virtual {v0, v6, v7}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 87
    goto :goto_2

    .line 89
    :cond_3
    const/16 v1, 0x9

    .line 90
    if-eq v0, v1, :cond_6

    .line 92
    const/16 v6, 0x8

    .line 94
    if-ne v0, v6, :cond_4

    .line 96
    goto :goto_0

    .line 98
    :cond_4
    if-ne v0, v5, :cond_5

    .line 99
    goto :goto_2

    .line 101
    :cond_5
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 109
    move-result-object v2

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 119
    move-result-object p0

    .line 122
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object p0

    .line 129
    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 130
    throw v0

    .line 133
    :cond_6
    :goto_0
    if-ne v0, v1, :cond_7

    .line 134
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 136
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    .line 138
    move-result-object v0

    .line 141
    goto :goto_1

    .line 142
    :cond_7
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 143
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    .line 145
    move-result-object v0

    .line 148
    :goto_1
    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 149
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 151
    move-result v0

    .line 154
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 155
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 157
    iget v6, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 159
    add-int/lit8 v6, v6, -0x1

    .line 161
    aget v7, v1, v6

    .line 163
    add-int/lit8 v7, v7, 0x1

    .line 165
    aput v7, v1, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    return v0

    .line 169
    :catch_0
    :goto_2
    iput v5, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 170
    :try_start_1
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 172
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 174
    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 177
    double-to-int v5, v0

    .line 178
    int-to-double v6, v5

    .line 179
    cmpl-double v0, v6, v0

    .line 180
    if-nez v0, :cond_8

    .line 182
    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 185
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 187
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 189
    iget p0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 191
    add-int/lit8 p0, p0, -0x1

    .line 193
    aget v1, v0, p0

    .line 195
    add-int/lit8 v1, v1, 0x1

    .line 197
    aput v1, v0, p0

    .line 199
    return v5

    .line 201
    :cond_8
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    .line 204
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 217
    move-result-object p0

    .line 220
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    move-result-object p0

    .line 227
    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 228
    throw v0

    .line 231
    :catch_1
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    .line 234
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 239
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 247
    move-result-object p0

    .line 250
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    move-result-object p0

    .line 257
    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 258
    throw v0
    .line 261
.end method

.method public final nextName()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 6
    move-result v0

    .line 9
    :cond_0
    const/16 v1, 0xe

    .line 10
    if-ne v0, v1, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextUnquotedValue()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/16 v1, 0xd

    .line 19
    if-ne v0, v1, :cond_2

    .line 21
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 23
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/16 v1, 0xc

    .line 30
    if-ne v0, v1, :cond_3

    .line 32
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 34
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    const/16 v1, 0xf

    .line 41
    if-ne v0, v1, :cond_4

    .line 43
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 45
    :goto_0
    const/4 v1, 0x0

    .line 47
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 48
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    .line 50
    iget p0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 52
    add-int/lit8 p0, p0, -0x1

    .line 54
    aput-object v0, v1, p0

    .line 56
    return-object v0

    .line 58
    :cond_4
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    const-string v2, "Expected a name but was "

    .line 63
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 68
    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    const-string v2, " at path "

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 83
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p0

    .line 90
    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 91
    throw v0
    .line 94
.end method

.method public final nextNonWhitespace(Z)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 3
    add-int/lit8 v2, v0, 0x1

    .line 5
    int-to-long v3, v2

    .line 7
    invoke-interface {v1, v3, v4}, Lokio/BufferedSource;->request(J)Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_5

    .line 12
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 14
    int-to-long v3, v0

    .line 16
    invoke-virtual {v1, v3, v4}, Lokio/Buffer;->getByte(J)B

    .line 17
    move-result v0

    .line 20
    const/16 v1, 0xa

    .line 21
    if-eq v0, v1, :cond_4

    .line 23
    const/16 v1, 0x20

    .line 25
    if-eq v0, v1, :cond_4

    .line 27
    const/16 v1, 0xd

    .line 29
    if-eq v0, v1, :cond_4

    .line 31
    const/16 v1, 0x9

    .line 33
    if-ne v0, v1, :cond_0

    .line 35
    goto :goto_1

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 38
    add-int/lit8 v2, v2, -0x1

    .line 40
    int-to-long v1, v2

    .line 42
    invoke-virtual {p1, v1, v2}, Lokio/Buffer;->skip(J)V

    .line 43
    const/16 p1, 0x2f

    .line 46
    const/4 v1, 0x0

    .line 48
    if-ne v0, p1, :cond_2

    .line 49
    iget-object p1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 51
    const-wide/16 v2, 0x2

    .line 53
    invoke-interface {p1, v2, v3}, Lokio/BufferedSource;->request(J)Z

    .line 55
    move-result p1

    .line 58
    if-nez p1, :cond_1

    .line 59
    return v0

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 62
    throw v1

    .line 65
    :cond_2
    const/16 p1, 0x23

    .line 66
    if-eq v0, p1, :cond_3

    .line 68
    return v0

    .line 70
    :cond_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 71
    throw v1

    .line 74
    :cond_4
    :goto_1
    move v0, v2

    .line 75
    goto :goto_0

    .line 76
    :cond_5
    if-nez p1, :cond_6

    .line 77
    const/4 p0, -0x1

    .line 79
    return p0

    .line 80
    :cond_6
    new-instance p0, Ljava/io/EOFException;

    .line 81
    const-string p1, "End of input"

    .line 83
    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 85
    throw p0
    .line 88
.end method

.method public final nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 4
    invoke-interface {v2, p1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    .line 6
    move-result-wide v2

    .line 9
    const-wide/16 v4, -0x1

    .line 10
    cmp-long v4, v2, v4

    .line 12
    if-eqz v4, :cond_3

    .line 14
    iget-object v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 16
    invoke-virtual {v4, v2, v3}, Lokio/Buffer;->getByte(J)B

    .line 18
    move-result v4

    .line 21
    const/16 v5, 0x5c

    .line 22
    if-ne v4, v5, :cond_1

    .line 24
    if-nez v1, :cond_0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    :cond_0
    iget-object v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 33
    invoke-virtual {v4, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 42
    invoke-virtual {v2}, Lokio/Buffer;->readByte()B

    .line 44
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->readEscapeCharacter()C

    .line 47
    move-result v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    goto :goto_0

    .line 54
    :cond_1
    if-nez v1, :cond_2

    .line 55
    iget-object p1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 57
    invoke-virtual {p1, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 62
    iget-object p0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 63
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    .line 65
    return-object p1

    .line 68
    :cond_2
    iget-object p1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 69
    invoke-virtual {p1, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object p0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 78
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :cond_3
    const-string p1, "Unterminated string"

    .line 88
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 90
    throw v0
    .line 93
.end method

.method public final nextString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 6
    move-result v0

    .line 9
    :cond_0
    const/16 v1, 0xa

    .line 10
    if-ne v0, v1, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextUnquotedValue()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/16 v1, 0x9

    .line 19
    if-ne v0, v1, :cond_2

    .line 21
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 23
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/16 v1, 0x8

    .line 30
    if-ne v0, v1, :cond_3

    .line 32
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 34
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

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
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 45
    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 48
    goto :goto_0

    .line 50
    :cond_4
    const/16 v1, 0x10

    .line 51
    if-ne v0, v1, :cond_5

    .line 53
    iget-wide v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    .line 55
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 60
    goto :goto_0

    .line 61
    :cond_5
    const/16 v1, 0x11

    .line 62
    if-ne v0, v1, :cond_6

    .line 64
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 66
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    .line 68
    int-to-long v1, v1

    .line 70
    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 74
    :goto_0
    const/4 v1, 0x0

    .line 75
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 76
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 78
    iget p0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 80
    add-int/lit8 p0, p0, -0x1

    .line 82
    aget v2, v1, p0

    .line 84
    add-int/lit8 v2, v2, 0x1

    .line 86
    aput v2, v1, p0

    .line 88
    return-object v0

    .line 90
    :cond_6
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    const-string v2, "Expected a string but was "

    .line 95
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 100
    move-result-object v2

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    const-string v2, " at path "

    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 112
    move-result-object p0

    .line 115
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object p0

    .line 122
    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 123
    throw v0
    .line 126
.end method

.method public final nextUnquotedValue()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 2
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->UNQUOTED_STRING_TERMINALS:Lokio/ByteString;

    .line 4
    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    .line 6
    move-result-wide v0

    .line 9
    const-wide/16 v2, -0x1

    .line 10
    cmp-long v2, v0, v2

    .line 12
    iget-object p0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 14
    if-eqz v2, :cond_0

    .line 16
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    .line 23
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 25
    invoke-virtual {p0, v0, v1, v2}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 30
    :goto_0
    return-object p0
    .line 31
.end method

.method public final peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

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
    sget-object p0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_DOCUMENT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 19
    return-object p0

    .line 21
    :pswitch_1
    sget-object p0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 22
    return-object p0

    .line 24
    :pswitch_2
    sget-object p0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NAME:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 25
    return-object p0

    .line 27
    :pswitch_3
    sget-object p0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->STRING:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 28
    return-object p0

    .line 30
    :pswitch_4
    sget-object p0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NULL:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 31
    return-object p0

    .line 33
    :pswitch_5
    sget-object p0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BOOLEAN:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 34
    return-object p0

    .line 36
    :pswitch_6
    sget-object p0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 37
    return-object p0

    .line 39
    :pswitch_7
    sget-object p0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 40
    return-object p0

    .line 42
    :pswitch_8
    sget-object p0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 43
    return-object p0

    .line 45
    :pswitch_9
    sget-object p0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

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
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 50
.end method

.method public final readEscapeCharacter()C
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 2
    const-wide/16 v1, 0x1

    .line 4
    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->request(J)Z

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_c

    .line 11
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 13
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    .line 15
    move-result v0

    .line 18
    const/16 v2, 0xa

    .line 19
    if-eq v0, v2, :cond_b

    .line 21
    const/16 v3, 0x22

    .line 23
    if-eq v0, v3, :cond_b

    .line 25
    const/16 v3, 0x27

    .line 27
    if-eq v0, v3, :cond_b

    .line 29
    const/16 v3, 0x2f

    .line 31
    if-eq v0, v3, :cond_b

    .line 33
    const/16 v3, 0x5c

    .line 35
    if-eq v0, v3, :cond_b

    .line 37
    const/16 v3, 0x62

    .line 39
    if-eq v0, v3, :cond_a

    .line 41
    const/16 v3, 0x66

    .line 43
    if-eq v0, v3, :cond_9

    .line 45
    const/16 v4, 0x6e

    .line 47
    if-eq v0, v4, :cond_8

    .line 49
    const/16 v4, 0x72

    .line 51
    if-eq v0, v4, :cond_7

    .line 53
    const/16 v4, 0x74

    .line 55
    if-eq v0, v4, :cond_6

    .line 57
    const/16 v4, 0x75

    .line 59
    if-ne v0, v4, :cond_5

    .line 61
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 63
    const-wide/16 v4, 0x4

    .line 65
    invoke-interface {v0, v4, v5}, Lokio/BufferedSource;->request(J)Z

    .line 67
    move-result v0

    .line 70
    if-eqz v0, :cond_4

    .line 71
    const/4 v0, 0x0

    .line 73
    move v6, v0

    .line 74
    :goto_0
    const/4 v7, 0x4

    .line 75
    if-ge v0, v7, :cond_3

    .line 76
    iget-object v7, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 78
    int-to-long v8, v0

    .line 80
    invoke-virtual {v7, v8, v9}, Lokio/Buffer;->getByte(J)B

    .line 81
    move-result v7

    .line 84
    shl-int/lit8 v6, v6, 0x4

    .line 85
    int-to-char v6, v6

    .line 87
    const/16 v8, 0x30

    .line 88
    if-lt v7, v8, :cond_0

    .line 90
    const/16 v8, 0x39

    .line 92
    if-gt v7, v8, :cond_0

    .line 94
    add-int/lit8 v7, v7, -0x30

    .line 96
    goto :goto_2

    .line 98
    :cond_0
    const/16 v8, 0x61

    .line 99
    if-lt v7, v8, :cond_1

    .line 101
    if-gt v7, v3, :cond_1

    .line 103
    add-int/lit8 v7, v7, -0x61

    .line 105
    goto :goto_1

    .line 107
    :cond_1
    const/16 v8, 0x41

    .line 108
    if-lt v7, v8, :cond_2

    .line 110
    const/16 v8, 0x46

    .line 112
    if-gt v7, v8, :cond_2

    .line 114
    add-int/lit8 v7, v7, -0x41

    .line 116
    :goto_1
    add-int/2addr v7, v2

    .line 118
    :goto_2
    add-int/2addr v7, v6

    .line 119
    int-to-char v6, v7

    .line 120
    add-int/lit8 v0, v0, 0x1

    .line 121
    goto :goto_0

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 124
    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    .line 126
    move-result-object v0

    .line 129
    const-string v2, "\\u"

    .line 130
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    move-result-object v0

    .line 135
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 136
    throw v1

    .line 139
    :cond_3
    iget-object p0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 140
    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->skip(J)V

    .line 142
    return v6

    .line 145
    :cond_4
    new-instance v0, Ljava/io/EOFException;

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    .line 148
    const-string v2, "Unterminated escape sequence at path "

    .line 150
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 155
    move-result-object p0

    .line 158
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object p0

    .line 165
    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 166
    throw v0

    .line 169
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 170
    const-string v3, "Invalid escape sequence: \\"

    .line 172
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    int-to-char v0, v0

    .line 177
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object v0

    .line 184
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 185
    throw v1

    .line 188
    :cond_6
    const/16 p0, 0x9

    .line 189
    return p0

    .line 191
    :cond_7
    const/16 p0, 0xd

    .line 192
    return p0

    .line 194
    :cond_8
    return v2

    .line 195
    :cond_9
    const/16 p0, 0xc

    .line 196
    return p0

    .line 198
    :cond_a
    const/16 p0, 0x8

    .line 199
    return p0

    .line 201
    :cond_b
    int-to-char p0, v0

    .line 202
    return p0

    .line 203
    :cond_c
    const-string v0, "Unterminated escape sequence"

    .line 204
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 206
    throw v1
    .line 209
.end method

.method public final selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I
    .locals 4

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 6
    move-result v0

    .line 9
    :cond_0
    const/16 v1, 0xc

    .line 10
    const/4 v2, -0x1

    .line 12
    if-lt v0, v1, :cond_5

    .line 13
    const/16 v1, 0xf

    .line 15
    if-le v0, v1, :cond_1

    .line 17
    goto :goto_0

    .line 19
    :cond_1
    if-ne v0, v1, :cond_2

    .line 20
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 22
    invoke-virtual {p0, v0, p1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->findName(Ljava/lang/String;Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 24
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 29
    iget-object v3, p1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->doubleQuoteSuffix:Lokio/Options;

    .line 31
    invoke-interface {v0, v3}, Lokio/BufferedSource;->select(Lokio/Options;)I

    .line 33
    move-result v0

    .line 36
    if-eq v0, v2, :cond_3

    .line 37
    const/4 v1, 0x0

    .line 39
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 40
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    .line 42
    iget p0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 44
    add-int/lit8 p0, p0, -0x1

    .line 46
    iget-object p1, p1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    .line 48
    aget-object p1, p1, v0

    .line 50
    aput-object p1, v1, p0

    .line 52
    return v0

    .line 54
    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    .line 55
    iget v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 57
    add-int/lit8 v3, v3, -0x1

    .line 59
    aget-object v0, v0, v3

    .line 61
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextName()Ljava/lang/String;

    .line 63
    move-result-object v3

    .line 66
    invoke-virtual {p0, v3, p1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->findName(Ljava/lang/String;Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 67
    move-result p1

    .line 70
    if-ne p1, v2, :cond_4

    .line 71
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 73
    iput-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    .line 77
    iget p0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 79
    add-int/lit8 p0, p0, -0x1

    .line 81
    aput-object v0, v1, p0

    .line 83
    :cond_4
    return p1

    .line 85
    :cond_5
    :goto_0
    return v2
    .line 86
.end method

.method public final skipName()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 6
    move-result v0

    .line 9
    :cond_0
    const/16 v1, 0xe

    .line 10
    if-ne v0, v1, :cond_2

    .line 12
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 14
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->UNQUOTED_STRING_TERMINALS:Lokio/ByteString;

    .line 16
    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    .line 18
    move-result-wide v0

    .line 21
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 22
    const-wide/16 v3, -0x1

    .line 24
    cmp-long v3, v0, v3

    .line 26
    if-eqz v3, :cond_1

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    iget-wide v0, v2, Lokio/Buffer;->size:J

    .line 31
    :goto_0
    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->skip(J)V

    .line 33
    goto :goto_1

    .line 36
    :cond_2
    const/16 v1, 0xd

    .line 37
    if-ne v0, v1, :cond_3

    .line 39
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 41
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    .line 43
    goto :goto_1

    .line 46
    :cond_3
    const/16 v1, 0xc

    .line 47
    if-ne v0, v1, :cond_4

    .line 49
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 51
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    .line 53
    goto :goto_1

    .line 56
    :cond_4
    const/16 v1, 0xf

    .line 57
    if-ne v0, v1, :cond_5

    .line 59
    :goto_1
    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 62
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    .line 64
    iget p0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 66
    add-int/lit8 p0, p0, -0x1

    .line 68
    const-string v1, "null"

    .line 70
    aput-object v1, v0, p0

    .line 72
    return-void

    .line 74
    :cond_5
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    const-string v2, "Expected a name but was "

    .line 79
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 84
    move-result-object v2

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    const-string v2, " at path "

    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 99
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object p0

    .line 106
    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 107
    throw v0
    .line 110
.end method

.method public final skipQuotedValue(Lokio/ByteString;)V
    .locals 6

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 2
    invoke-interface {v0, p1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    .line 4
    move-result-wide v0

    .line 7
    const-wide/16 v2, -0x1

    .line 8
    cmp-long v2, v0, v2

    .line 10
    if-eqz v2, :cond_1

    .line 12
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 14
    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->getByte(J)B

    .line 16
    move-result v2

    .line 19
    const/16 v3, 0x5c

    .line 20
    const-wide/16 v4, 0x1

    .line 22
    if-ne v2, v3, :cond_0

    .line 24
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 26
    add-long/2addr v0, v4

    .line 28
    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->skip(J)V

    .line 29
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->readEscapeCharacter()C

    .line 32
    goto :goto_0

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 36
    add-long/2addr v0, v4

    .line 38
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    .line 39
    return-void

    .line 42
    :cond_1
    const-string p1, "Unterminated string"

    .line 43
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)V

    .line 45
    const/4 p0, 0x0

    .line 48
    throw p0
    .line 49
.end method

.method public final skipValue()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :cond_0
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 4
    if-nez v2, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 8
    move-result v2

    .line 11
    :cond_1
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x3

    .line 13
    if-ne v2, v4, :cond_2

    .line 14
    invoke-virtual {p0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pushScope(I)V

    .line 16
    goto :goto_0

    .line 19
    :cond_2
    if-ne v2, v3, :cond_3

    .line 20
    invoke-virtual {p0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pushScope(I)V

    .line 22
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto/16 :goto_5

    .line 27
    :cond_3
    const/4 v4, 0x4

    .line 29
    const-string v5, " at path "

    .line 30
    const-string v6, "Expected a value but was "

    .line 32
    if-ne v2, v4, :cond_5

    .line 34
    add-int/lit8 v1, v1, -0x1

    .line 36
    if-ltz v1, :cond_4

    .line 38
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 40
    sub-int/2addr v2, v3

    .line 42
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 43
    goto/16 :goto_5

    .line 45
    :cond_4
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 54
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 67
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 74
    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 75
    throw v0

    .line 78
    :cond_5
    const/4 v4, 0x2

    .line 79
    if-ne v2, v4, :cond_7

    .line 80
    add-int/lit8 v1, v1, -0x1

    .line 82
    if-ltz v1, :cond_6

    .line 84
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 86
    sub-int/2addr v2, v3

    .line 88
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 89
    goto/16 :goto_5

    .line 91
    :cond_6
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 100
    move-result-object v2

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 110
    move-result-object p0

    .line 113
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p0

    .line 120
    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 121
    throw v0

    .line 124
    :cond_7
    const/16 v4, 0xe

    .line 125
    if-eq v2, v4, :cond_f

    .line 127
    const/16 v4, 0xa

    .line 129
    if-ne v2, v4, :cond_8

    .line 131
    goto :goto_3

    .line 133
    :cond_8
    const/16 v4, 0x9

    .line 134
    if-eq v2, v4, :cond_e

    .line 136
    const/16 v4, 0xd

    .line 138
    if-ne v2, v4, :cond_9

    .line 140
    goto :goto_2

    .line 142
    :cond_9
    const/16 v4, 0x8

    .line 143
    if-eq v2, v4, :cond_d

    .line 145
    const/16 v4, 0xc

    .line 147
    if-ne v2, v4, :cond_a

    .line 149
    goto :goto_1

    .line 151
    :cond_a
    const/16 v4, 0x11

    .line 152
    if-ne v2, v4, :cond_b

    .line 154
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 156
    iget v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    .line 158
    int-to-long v4, v4

    .line 160
    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->skip(J)V

    .line 161
    goto :goto_5

    .line 164
    :cond_b
    const/16 v4, 0x12

    .line 165
    if-eq v2, v4, :cond_c

    .line 167
    goto :goto_5

    .line 169
    :cond_c
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    .line 172
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 177
    move-result-object v2

    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 187
    move-result-object p0

    .line 190
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    move-result-object p0

    .line 197
    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 198
    throw v0

    .line 201
    :cond_d
    :goto_1
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 202
    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    .line 204
    goto :goto_5

    .line 207
    :cond_e
    :goto_2
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 208
    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    .line 210
    goto :goto_5

    .line 213
    :cond_f
    :goto_3
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 214
    sget-object v4, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->UNQUOTED_STRING_TERMINALS:Lokio/ByteString;

    .line 216
    invoke-interface {v2, v4}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    .line 218
    move-result-wide v4

    .line 221
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 222
    const-wide/16 v6, -0x1

    .line 224
    cmp-long v6, v4, v6

    .line 226
    if-eqz v6, :cond_10

    .line 228
    goto :goto_4

    .line 230
    :cond_10
    iget-wide v4, v2, Lokio/Buffer;->size:J

    .line 231
    :goto_4
    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->skip(J)V

    .line 233
    :goto_5
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 236
    if-nez v1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 240
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 242
    add-int/lit8 v2, v1, -0x1

    .line 244
    aget v4, v0, v2

    .line 246
    add-int/2addr v4, v3

    .line 248
    aput v4, v0, v2

    .line 249
    iget-object p0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    .line 251
    sub-int/2addr v1, v3

    .line 253
    const-string v0, "null"

    .line 254
    aput-object v0, p0, v1

    .line 256
    return-void
    .line 258
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "JsonReader("

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string p0, ")"

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 22
    return-object p0
    .line 23
.end method
