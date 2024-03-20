.class public Lokio/ByteString;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final EMPTY:Lokio/ByteString;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final data:[B

.field public transient hashCode:I

.field public transient utf8:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lokio/ByteString;

    .line 2
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [B

    .line 5
    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    .line 7
    sput-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 10
    return-void
    .line 12
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lokio/ByteString;->data:[B

    .line 5
    return-void
    .line 7
.end method

.method public static final encodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    .locals 2

    .line 1
    new-instance v0, Lokio/ByteString;

    .line 2
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 6
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    .line 10
    iput-object p0, v0, Lokio/ByteString;->utf8:Ljava/lang/String;

    .line 13
    return-object v0
    .line 15
.end method

.method private final readObject(Ljava/io/ObjectInputStream;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ltz v0, :cond_0

    .line 8
    move v3, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v3, v2

    .line 12
    :goto_0
    if-eqz v3, :cond_3

    .line 13
    new-array v3, v0, [B

    .line 15
    :goto_1
    if-ge v2, v0, :cond_2

    .line 17
    sub-int v4, v0, v2

    .line 19
    invoke-virtual {p1, v3, v2, v4}, Ljava/io/InputStream;->read([BII)I

    .line 21
    move-result v4

    .line 24
    const/4 v5, -0x1

    .line 25
    if-eq v4, v5, :cond_1

    .line 26
    add-int/2addr v2, v4

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    .line 30
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 32
    throw p0

    .line 35
    :cond_2
    new-instance p1, Lokio/ByteString;

    .line 36
    invoke-direct {p1, v3}, Lokio/ByteString;-><init>([B)V

    .line 38
    const-class v0, Lokio/ByteString;

    .line 41
    const-string v2, "data"

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 45
    move-result-object v0

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 49
    iget-object p1, p1, Lokio/ByteString;->data:[B

    .line 52
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    return-void

    .line 57
    :cond_3
    const-string p0, "byteCount < 0: "

    .line 58
    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 63
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 69
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    throw p1
    .line 73
.end method

.method private final writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/ByteString;->data:[B

    .line 2
    array-length v0, v0

    .line 4
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 5
    iget-object p0, p0, Lokio/ByteString;->data:[B

    .line 8
    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->write([B)V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 7

    .line 1
    check-cast p1, Lokio/ByteString;

    .line 2
    invoke-virtual {p0}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    .line 4
    move-result v0

    .line 7
    invoke-virtual {p1}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    .line 8
    move-result v1

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 12
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    move v4, v3

    .line 17
    :goto_0
    if-ge v4, v2, :cond_1

    .line 18
    invoke-virtual {p0, v4}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    .line 20
    move-result v5

    .line 23
    and-int/lit16 v5, v5, 0xff

    .line 24
    invoke-virtual {p1, v4}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    .line 26
    move-result v6

    .line 29
    and-int/lit16 v6, v6, 0xff

    .line 30
    if-ne v5, v6, :cond_0

    .line 32
    add-int/lit8 v4, v4, 0x1

    .line 34
    goto :goto_0

    .line 36
    :cond_0
    if-ge v5, v6, :cond_3

    .line 37
    goto :goto_1

    .line 39
    :cond_1
    if-ne v0, v1, :cond_2

    .line 40
    goto :goto_2

    .line 42
    :cond_2
    if-ge v0, v1, :cond_3

    .line 43
    :goto_1
    const/4 v3, -0x1

    .line 45
    goto :goto_2

    .line 46
    :cond_3
    const/4 v3, 0x1

    .line 47
    :goto_2
    return v3
    .line 48
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    goto :goto_0

    .line 5
    :cond_0
    instance-of v1, p1, Lokio/ByteString;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    check-cast p1, Lokio/ByteString;

    .line 11
    invoke-virtual {p1}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    .line 13
    move-result v1

    .line 16
    iget-object p0, p0, Lokio/ByteString;->data:[B

    .line 17
    array-length v3, p0

    .line 19
    if-ne v1, v3, :cond_1

    .line 20
    array-length v1, p0

    .line 22
    invoke-virtual {p1, v2, v2, v1, p0}, Lokio/ByteString;->rangeEquals(III[B)Z

    .line 23
    move-result p0

    .line 26
    if-eqz p0, :cond_1

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    move v0, v2

    .line 30
    :goto_0
    return v0
    .line 31
.end method

.method public final getData$external__okio__android_common__okio_lib()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/ByteString;->data:[B

    .line 2
    return-object p0
    .line 4
.end method

.method public getSize$external__okio__android_common__okio_lib()I
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/ByteString;->data:[B

    .line 2
    array-length p0, p0

    .line 4
    return p0
    .line 5
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lokio/ByteString;->hashCode:I

    .line 2
    if-eqz v0, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lokio/ByteString;->data:[B

    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    .line 9
    move-result v0

    .line 12
    iput v0, p0, Lokio/ByteString;->hashCode:I

    .line 13
    :goto_0
    return v0
    .line 15
.end method

.method public hex()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object p0, p0, Lokio/ByteString;->data:[B

    .line 2
    array-length v0, p0

    .line 4
    mul-int/lit8 v0, v0, 0x2

    .line 5
    new-array v0, v0, [C

    .line 7
    array-length v1, p0

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    if-ge v2, v1, :cond_0

    .line 12
    aget-byte v4, p0, v2

    .line 14
    add-int/lit8 v5, v3, 0x1

    .line 16
    sget-object v6, Lokio/internal/ByteStringKt;->HEX_DIGIT_CHARS:[C

    .line 18
    shr-int/lit8 v7, v4, 0x4

    .line 20
    and-int/lit8 v7, v7, 0xf

    .line 22
    aget-char v7, v6, v7

    .line 24
    aput-char v7, v0, v3

    .line 26
    add-int/lit8 v3, v5, 0x1

    .line 28
    and-int/lit8 v4, v4, 0xf

    .line 30
    aget-char v4, v6, v4

    .line 32
    aput-char v4, v0, v5

    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 36
    goto :goto_0

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/String;

    .line 39
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    .line 41
    return-object p0
    .line 44
.end method

.method public internalArray$external__okio__android_common__okio_lib()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/ByteString;->data:[B

    .line 2
    return-object p0
    .line 4
.end method

.method public internalGet$external__okio__android_common__okio_lib(I)B
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/ByteString;->data:[B

    .line 2
    aget-byte p0, p0, p1

    .line 4
    return p0
    .line 6
.end method

.method public rangeEquals(III[B)Z
    .locals 5

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    .line 1
    iget-object p0, p0, Lokio/ByteString;->data:[B

    .line 2
    array-length v1, p0

    sub-int/2addr v1, p3

    if-gt p1, v1, :cond_2

    if-ltz p2, :cond_2

    .line 3
    array-length v1, p4

    sub-int/2addr v1, p3

    if-gt p2, v1, :cond_2

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, p3, :cond_1

    add-int v3, v1, p1

    .line 4
    aget-byte v3, p0, v3

    add-int v4, v1, p2

    aget-byte v4, p4, v4

    if-eq v3, v4, :cond_0

    move p0, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move p0, v2

    :goto_1
    if-eqz p0, :cond_2

    move v0, v2

    :cond_2
    return v0
.end method

.method public rangeEquals(Lokio/ByteString;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 5
    iget-object p0, p0, Lokio/ByteString;->data:[B

    .line 6
    invoke-virtual {p1, v0, v0, p2, p0}, Lokio/ByteString;->rangeEquals(III[B)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    .line 1
    iget-object v0, p0, Lokio/ByteString;->data:[B

    .line 2
    array-length v1, v0

    .line 4
    if-nez v1, :cond_0

    .line 5
    const/4 v1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-eqz v1, :cond_1

    .line 10
    const-string p0, "[size=0]"

    .line 12
    goto/16 :goto_28

    .line 14
    :cond_1
    array-length v1, v0

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    :cond_2
    :goto_1
    const/16 v5, 0x40

    .line 20
    if-ge v2, v1, :cond_47

    .line 22
    aget-byte v6, v0, v2

    .line 24
    const/16 v7, 0xd

    .line 26
    const/16 v8, 0x7f

    .line 28
    const/16 v9, 0xa0

    .line 30
    const/16 v10, 0x20

    .line 32
    const v11, 0xfffd

    .line 34
    const/high16 v12, 0x10000

    .line 37
    const/16 v13, 0xa

    .line 39
    if-ltz v6, :cond_13

    .line 41
    add-int/lit8 v14, v3, 0x1

    .line 43
    if-ne v3, v5, :cond_3

    .line 45
    goto/16 :goto_25

    .line 47
    :cond_3
    if-eq v6, v13, :cond_8

    .line 49
    if-eq v6, v7, :cond_8

    .line 51
    if-ltz v6, :cond_4

    .line 53
    if-ge v6, v10, :cond_4

    .line 55
    const/4 v3, 0x1

    .line 57
    goto :goto_2

    .line 58
    :cond_4
    const/4 v3, 0x0

    .line 59
    :goto_2
    if-nez v3, :cond_7

    .line 60
    if-gt v8, v6, :cond_5

    .line 62
    if-ge v6, v9, :cond_5

    .line 64
    const/4 v3, 0x1

    .line 66
    goto :goto_3

    .line 67
    :cond_5
    const/4 v3, 0x0

    .line 68
    :goto_3
    if-eqz v3, :cond_6

    .line 69
    goto :goto_4

    .line 71
    :cond_6
    const/4 v3, 0x0

    .line 72
    goto :goto_5

    .line 73
    :cond_7
    :goto_4
    const/4 v3, 0x1

    .line 74
    :goto_5
    if-nez v3, :cond_46

    .line 75
    :cond_8
    if-ne v6, v11, :cond_9

    .line 77
    goto/16 :goto_24

    .line 79
    :cond_9
    if-ge v6, v12, :cond_a

    .line 81
    const/4 v3, 0x1

    .line 83
    goto :goto_6

    .line 84
    :cond_a
    const/4 v3, 0x2

    .line 85
    :goto_6
    add-int/2addr v4, v3

    .line 86
    add-int/lit8 v2, v2, 0x1

    .line 87
    :goto_7
    move v3, v14

    .line 89
    if-ge v2, v1, :cond_2

    .line 90
    aget-byte v6, v0, v2

    .line 92
    if-ltz v6, :cond_2

    .line 94
    add-int/lit8 v2, v2, 0x1

    .line 96
    add-int/lit8 v14, v3, 0x1

    .line 98
    if-ne v3, v5, :cond_b

    .line 100
    goto/16 :goto_25

    .line 102
    :cond_b
    if-eq v6, v13, :cond_10

    .line 104
    if-eq v6, v7, :cond_10

    .line 106
    if-ltz v6, :cond_c

    .line 108
    if-ge v6, v10, :cond_c

    .line 110
    const/4 v3, 0x1

    .line 112
    goto :goto_8

    .line 113
    :cond_c
    const/4 v3, 0x0

    .line 114
    :goto_8
    if-nez v3, :cond_f

    .line 115
    if-gt v8, v6, :cond_d

    .line 117
    if-ge v6, v9, :cond_d

    .line 119
    const/4 v3, 0x1

    .line 121
    goto :goto_9

    .line 122
    :cond_d
    const/4 v3, 0x0

    .line 123
    :goto_9
    if-eqz v3, :cond_e

    .line 124
    goto :goto_a

    .line 126
    :cond_e
    const/4 v3, 0x0

    .line 127
    goto :goto_b

    .line 128
    :cond_f
    :goto_a
    const/4 v3, 0x1

    .line 129
    :goto_b
    if-nez v3, :cond_46

    .line 130
    :cond_10
    if-ne v6, v11, :cond_11

    .line 132
    goto/16 :goto_24

    .line 134
    :cond_11
    if-ge v6, v12, :cond_12

    .line 136
    const/4 v3, 0x1

    .line 138
    goto :goto_c

    .line 139
    :cond_12
    const/4 v3, 0x2

    .line 140
    :goto_c
    add-int/2addr v4, v3

    .line 141
    goto :goto_7

    .line 142
    :cond_13
    shr-int/lit8 v11, v6, 0x5

    .line 143
    const/4 v12, -0x2

    .line 145
    const/16 v14, 0x80

    .line 146
    if-ne v11, v12, :cond_20

    .line 148
    add-int/lit8 v11, v2, 0x1

    .line 150
    if-gt v1, v11, :cond_14

    .line 152
    if-ne v3, v5, :cond_46

    .line 154
    goto/16 :goto_25

    .line 156
    :cond_14
    aget-byte v11, v0, v11

    .line 158
    and-int/lit16 v12, v11, 0xc0

    .line 160
    if-ne v12, v14, :cond_15

    .line 162
    const/4 v12, 0x1

    .line 164
    goto :goto_d

    .line 165
    :cond_15
    const/4 v12, 0x0

    .line 166
    :goto_d
    if-nez v12, :cond_16

    .line 167
    if-ne v3, v5, :cond_46

    .line 169
    goto/16 :goto_25

    .line 171
    :cond_16
    xor-int/lit16 v11, v11, 0xf80

    .line 173
    shl-int/lit8 v6, v6, 0x6

    .line 175
    xor-int/2addr v6, v11

    .line 177
    if-ge v6, v14, :cond_17

    .line 178
    if-ne v3, v5, :cond_46

    .line 180
    goto/16 :goto_25

    .line 182
    :cond_17
    add-int/lit8 v11, v3, 0x1

    .line 184
    if-ne v3, v5, :cond_18

    .line 186
    goto/16 :goto_25

    .line 188
    :cond_18
    if-eq v6, v13, :cond_1d

    .line 190
    if-eq v6, v7, :cond_1d

    .line 192
    if-ltz v6, :cond_19

    .line 194
    if-ge v6, v10, :cond_19

    .line 196
    const/4 v3, 0x1

    .line 198
    goto :goto_e

    .line 199
    :cond_19
    const/4 v3, 0x0

    .line 200
    :goto_e
    if-nez v3, :cond_1c

    .line 201
    if-gt v8, v6, :cond_1a

    .line 203
    if-ge v6, v9, :cond_1a

    .line 205
    const/4 v3, 0x1

    .line 207
    goto :goto_f

    .line 208
    :cond_1a
    const/4 v3, 0x0

    .line 209
    :goto_f
    if-eqz v3, :cond_1b

    .line 210
    goto :goto_10

    .line 212
    :cond_1b
    const/4 v3, 0x0

    .line 213
    goto :goto_11

    .line 214
    :cond_1c
    :goto_10
    const/4 v3, 0x1

    .line 215
    :goto_11
    if-nez v3, :cond_46

    .line 216
    :cond_1d
    const v3, 0xfffd

    .line 218
    if-ne v6, v3, :cond_1e

    .line 221
    goto/16 :goto_24

    .line 223
    :cond_1e
    const/high16 v3, 0x10000

    .line 225
    if-ge v6, v3, :cond_1f

    .line 227
    const/4 v3, 0x1

    .line 229
    goto :goto_12

    .line 230
    :cond_1f
    const/4 v3, 0x2

    .line 231
    :goto_12
    add-int/2addr v4, v3

    .line 232
    add-int/lit8 v2, v2, 0x2

    .line 233
    move v3, v11

    .line 235
    goto/16 :goto_1

    .line 236
    :cond_20
    shr-int/lit8 v8, v6, 0x4

    .line 238
    const v9, 0xe000

    .line 240
    const v10, 0xd800

    .line 243
    if-ne v8, v12, :cond_31

    .line 246
    add-int/lit8 v8, v2, 0x2

    .line 248
    if-gt v1, v8, :cond_21

    .line 250
    if-ne v3, v5, :cond_46

    .line 252
    goto/16 :goto_25

    .line 254
    :cond_21
    add-int/lit8 v11, v2, 0x1

    .line 256
    aget-byte v11, v0, v11

    .line 258
    and-int/lit16 v12, v11, 0xc0

    .line 260
    if-ne v12, v14, :cond_22

    .line 262
    const/4 v12, 0x1

    .line 264
    goto :goto_13

    .line 265
    :cond_22
    const/4 v12, 0x0

    .line 266
    :goto_13
    if-nez v12, :cond_23

    .line 267
    if-ne v3, v5, :cond_46

    .line 269
    goto/16 :goto_25

    .line 271
    :cond_23
    aget-byte v8, v0, v8

    .line 273
    and-int/lit16 v12, v8, 0xc0

    .line 275
    if-ne v12, v14, :cond_24

    .line 277
    const/4 v12, 0x1

    .line 279
    goto :goto_14

    .line 280
    :cond_24
    const/4 v12, 0x0

    .line 281
    :goto_14
    if-nez v12, :cond_25

    .line 282
    if-ne v3, v5, :cond_46

    .line 284
    goto/16 :goto_25

    .line 286
    :cond_25
    const v12, -0x1e080

    .line 288
    xor-int/2addr v8, v12

    .line 291
    shl-int/lit8 v11, v11, 0x6

    .line 292
    xor-int/2addr v8, v11

    .line 294
    shl-int/lit8 v6, v6, 0xc

    .line 295
    xor-int/2addr v6, v8

    .line 297
    const/16 v8, 0x800

    .line 298
    if-ge v6, v8, :cond_26

    .line 300
    if-ne v3, v5, :cond_46

    .line 302
    goto/16 :goto_25

    .line 304
    :cond_26
    if-gt v10, v6, :cond_27

    .line 306
    if-ge v6, v9, :cond_27

    .line 308
    const/4 v8, 0x1

    .line 310
    goto :goto_15

    .line 311
    :cond_27
    const/4 v8, 0x0

    .line 312
    :goto_15
    if-eqz v8, :cond_28

    .line 313
    if-ne v3, v5, :cond_46

    .line 315
    goto/16 :goto_25

    .line 317
    :cond_28
    add-int/lit8 v8, v3, 0x1

    .line 319
    if-ne v3, v5, :cond_29

    .line 321
    goto/16 :goto_25

    .line 323
    :cond_29
    if-eq v6, v13, :cond_2e

    .line 325
    if-eq v6, v7, :cond_2e

    .line 327
    if-ltz v6, :cond_2a

    .line 329
    const/16 v3, 0x20

    .line 331
    if-ge v6, v3, :cond_2a

    .line 333
    const/4 v3, 0x1

    .line 335
    goto :goto_16

    .line 336
    :cond_2a
    const/4 v3, 0x0

    .line 337
    :goto_16
    if-nez v3, :cond_2d

    .line 338
    const/16 v3, 0x7f

    .line 340
    if-gt v3, v6, :cond_2b

    .line 342
    const/16 v3, 0xa0

    .line 344
    if-ge v6, v3, :cond_2b

    .line 346
    const/4 v3, 0x1

    .line 348
    goto :goto_17

    .line 349
    :cond_2b
    const/4 v3, 0x0

    .line 350
    :goto_17
    if-eqz v3, :cond_2c

    .line 351
    goto :goto_18

    .line 353
    :cond_2c
    const/4 v3, 0x0

    .line 354
    goto :goto_19

    .line 355
    :cond_2d
    :goto_18
    const/4 v3, 0x1

    .line 356
    :goto_19
    if-nez v3, :cond_46

    .line 357
    :cond_2e
    const v3, 0xfffd

    .line 359
    if-ne v6, v3, :cond_2f

    .line 362
    goto/16 :goto_24

    .line 364
    :cond_2f
    const/high16 v3, 0x10000

    .line 366
    if-ge v6, v3, :cond_30

    .line 368
    const/4 v3, 0x1

    .line 370
    goto :goto_1a

    .line 371
    :cond_30
    const/4 v3, 0x2

    .line 372
    :goto_1a
    add-int/2addr v4, v3

    .line 373
    add-int/lit8 v2, v2, 0x3

    .line 374
    move v3, v8

    .line 376
    goto/16 :goto_1

    .line 377
    :cond_31
    shr-int/lit8 v7, v6, 0x3

    .line 379
    if-ne v7, v12, :cond_45

    .line 381
    add-int/lit8 v7, v2, 0x3

    .line 383
    if-gt v1, v7, :cond_32

    .line 385
    if-ne v3, v5, :cond_46

    .line 387
    goto/16 :goto_25

    .line 389
    :cond_32
    add-int/lit8 v8, v2, 0x1

    .line 391
    aget-byte v8, v0, v8

    .line 393
    and-int/lit16 v11, v8, 0xc0

    .line 395
    if-ne v11, v14, :cond_33

    .line 397
    const/4 v11, 0x1

    .line 399
    goto :goto_1b

    .line 400
    :cond_33
    const/4 v11, 0x0

    .line 401
    :goto_1b
    if-nez v11, :cond_34

    .line 402
    if-ne v3, v5, :cond_46

    .line 404
    goto/16 :goto_25

    .line 406
    :cond_34
    add-int/lit8 v11, v2, 0x2

    .line 408
    aget-byte v11, v0, v11

    .line 410
    and-int/lit16 v12, v11, 0xc0

    .line 412
    if-ne v12, v14, :cond_35

    .line 414
    const/4 v12, 0x1

    .line 416
    goto :goto_1c

    .line 417
    :cond_35
    const/4 v12, 0x0

    .line 418
    :goto_1c
    if-nez v12, :cond_36

    .line 419
    if-ne v3, v5, :cond_46

    .line 421
    goto/16 :goto_25

    .line 423
    :cond_36
    aget-byte v7, v0, v7

    .line 425
    and-int/lit16 v12, v7, 0xc0

    .line 427
    if-ne v12, v14, :cond_37

    .line 429
    const/4 v12, 0x1

    .line 431
    goto :goto_1d

    .line 432
    :cond_37
    const/4 v12, 0x0

    .line 433
    :goto_1d
    if-nez v12, :cond_38

    .line 434
    if-ne v3, v5, :cond_46

    .line 436
    goto/16 :goto_25

    .line 438
    :cond_38
    const v12, 0x381f80

    .line 440
    xor-int/2addr v7, v12

    .line 443
    shl-int/lit8 v11, v11, 0x6

    .line 444
    xor-int/2addr v7, v11

    .line 446
    shl-int/lit8 v8, v8, 0xc

    .line 447
    xor-int/2addr v7, v8

    .line 449
    shl-int/lit8 v6, v6, 0x12

    .line 450
    xor-int/2addr v6, v7

    .line 452
    const v7, 0x10ffff

    .line 453
    if-le v6, v7, :cond_39

    .line 456
    if-ne v3, v5, :cond_46

    .line 458
    goto/16 :goto_25

    .line 460
    :cond_39
    if-gt v10, v6, :cond_3a

    .line 462
    if-ge v6, v9, :cond_3a

    .line 464
    const/4 v7, 0x1

    .line 466
    goto :goto_1e

    .line 467
    :cond_3a
    const/4 v7, 0x0

    .line 468
    :goto_1e
    if-eqz v7, :cond_3b

    .line 469
    if-ne v3, v5, :cond_46

    .line 471
    goto :goto_25

    .line 473
    :cond_3b
    const/high16 v7, 0x10000

    .line 474
    if-ge v6, v7, :cond_3c

    .line 476
    if-ne v3, v5, :cond_46

    .line 478
    goto :goto_25

    .line 480
    :cond_3c
    add-int/lit8 v7, v3, 0x1

    .line 481
    if-ne v3, v5, :cond_3d

    .line 483
    goto :goto_25

    .line 485
    :cond_3d
    if-eq v6, v13, :cond_42

    .line 486
    const/16 v3, 0xd

    .line 488
    if-eq v6, v3, :cond_42

    .line 490
    if-ltz v6, :cond_3e

    .line 492
    const/16 v3, 0x20

    .line 494
    if-ge v6, v3, :cond_3e

    .line 496
    const/4 v3, 0x1

    .line 498
    goto :goto_1f

    .line 499
    :cond_3e
    const/4 v3, 0x0

    .line 500
    :goto_1f
    if-nez v3, :cond_41

    .line 501
    const/16 v3, 0x7f

    .line 503
    if-gt v3, v6, :cond_3f

    .line 505
    const/16 v3, 0xa0

    .line 507
    if-ge v6, v3, :cond_3f

    .line 509
    const/4 v3, 0x1

    .line 511
    goto :goto_20

    .line 512
    :cond_3f
    const/4 v3, 0x0

    .line 513
    :goto_20
    if-eqz v3, :cond_40

    .line 514
    goto :goto_21

    .line 516
    :cond_40
    const/4 v3, 0x0

    .line 517
    goto :goto_22

    .line 518
    :cond_41
    :goto_21
    const/4 v3, 0x1

    .line 519
    :goto_22
    if-nez v3, :cond_46

    .line 520
    :cond_42
    const v3, 0xfffd

    .line 522
    if-ne v6, v3, :cond_43

    .line 525
    goto :goto_24

    .line 527
    :cond_43
    const/high16 v3, 0x10000

    .line 528
    if-ge v6, v3, :cond_44

    .line 530
    const/4 v3, 0x1

    .line 532
    goto :goto_23

    .line 533
    :cond_44
    const/4 v3, 0x2

    .line 534
    :goto_23
    add-int/2addr v4, v3

    .line 535
    add-int/lit8 v2, v2, 0x4

    .line 536
    move v3, v7

    .line 538
    goto/16 :goto_1

    .line 539
    :cond_45
    if-ne v3, v5, :cond_46

    .line 541
    goto :goto_25

    .line 543
    :cond_46
    :goto_24
    const/4 v4, -0x1

    .line 544
    :cond_47
    :goto_25
    const-string v0, "\u2026]"

    .line 545
    const-string v1, "[size="

    .line 547
    const-string v2, "]"

    .line 549
    const/4 v3, -0x1

    .line 551
    if-ne v4, v3, :cond_4c

    .line 552
    iget-object v3, p0, Lokio/ByteString;->data:[B

    .line 554
    array-length v4, v3

    .line 556
    if-gt v4, v5, :cond_48

    .line 557
    invoke-virtual {p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 559
    move-result-object p0

    .line 562
    const-string v0, "[hex="

    .line 563
    invoke-static {v0, p0, v2}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 565
    move-result-object p0

    .line 568
    goto/16 :goto_28

    .line 569
    :cond_48
    array-length v2, v3

    .line 571
    array-length v4, v3

    .line 572
    if-gt v5, v4, :cond_49

    .line 573
    const/4 v4, 0x1

    .line 575
    goto :goto_26

    .line 576
    :cond_49
    const/4 v4, 0x0

    .line 577
    :goto_26
    if-eqz v4, :cond_4b

    .line 578
    array-length v4, v3

    .line 580
    if-ne v5, v4, :cond_4a

    .line 581
    goto :goto_27

    .line 583
    :cond_4a
    new-instance p0, Lokio/ByteString;

    .line 584
    array-length v4, v3

    .line 586
    invoke-static {v5, v4}, Lkotlin/collections/ArraysKt__ArraysKt;->copyOfRangeToIndexCheck(II)V

    .line 587
    const/4 v4, 0x0

    .line 590
    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 591
    move-result-object v3

    .line 594
    invoke-direct {p0, v3}, Lokio/ByteString;-><init>([B)V

    .line 595
    :goto_27
    invoke-virtual {p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 598
    move-result-object p0

    .line 601
    new-instance v3, Ljava/lang/StringBuilder;

    .line 602
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 604
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 607
    const-string v1, " hex="

    .line 610
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 621
    move-result-object p0

    .line 624
    goto :goto_28

    .line 625
    :cond_4b
    array-length p0, v3

    .line 626
    const-string v0, "endIndex > length("

    .line 627
    const-string v1, ")"

    .line 629
    invoke-static {v0, p0, v1}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 631
    move-result-object p0

    .line 634
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 635
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 637
    move-result-object p0

    .line 640
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 641
    throw v0

    .line 644
    :cond_4c
    iget-object v3, p0, Lokio/ByteString;->utf8:Ljava/lang/String;

    .line 645
    if-nez v3, :cond_4d

    .line 647
    invoke-virtual {p0}, Lokio/ByteString;->internalArray$external__okio__android_common__okio_lib()[B

    .line 649
    move-result-object v3

    .line 652
    new-instance v5, Ljava/lang/String;

    .line 653
    sget-object v6, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 655
    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 657
    iput-object v5, p0, Lokio/ByteString;->utf8:Ljava/lang/String;

    .line 660
    move-object v3, v5

    .line 662
    :cond_4d
    const/4 v5, 0x0

    .line 663
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 664
    move-result-object v5

    .line 667
    const-string v6, "\\"

    .line 668
    const-string v7, "\\\\"

    .line 670
    invoke-static {v5, v6, v7}, Lkotlin/text/StringsKt__StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 672
    move-result-object v5

    .line 675
    const-string v6, "\n"

    .line 676
    const-string v7, "\\n"

    .line 678
    invoke-static {v5, v6, v7}, Lkotlin/text/StringsKt__StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 680
    move-result-object v5

    .line 683
    const-string v6, "\r"

    .line 684
    const-string v7, "\\r"

    .line 686
    invoke-static {v5, v6, v7}, Lkotlin/text/StringsKt__StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 688
    move-result-object v5

    .line 691
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 692
    move-result v3

    .line 695
    if-ge v4, v3, :cond_4e

    .line 696
    iget-object p0, p0, Lokio/ByteString;->data:[B

    .line 698
    array-length p0, p0

    .line 700
    new-instance v2, Ljava/lang/StringBuilder;

    .line 701
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 703
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 706
    const-string p0, " text="

    .line 709
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 720
    move-result-object p0

    .line 723
    goto :goto_28

    .line 724
    :cond_4e
    const-string p0, "[text="

    .line 725
    invoke-static {p0, v5, v2}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 727
    move-result-object p0

    .line 730
    :goto_28
    return-object p0
.end method
