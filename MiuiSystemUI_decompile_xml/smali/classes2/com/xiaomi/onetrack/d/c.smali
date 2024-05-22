.class public abstract Lcom/xiaomi/onetrack/d/c;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final b:[C

.field public static final c:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x40

    .line 2
    new-array v0, v0, [C

    .line 4
    fill-array-data v0, :array_0

    .line 6
    sput-object v0, Lcom/xiaomi/onetrack/d/c;->b:[C

    .line 9
    const/16 v0, 0x80

    .line 11
    new-array v0, v0, [B

    .line 13
    fill-array-data v0, :array_1

    .line 15
    sput-object v0, Lcom/xiaomi/onetrack/d/c;->c:[B

    .line 18
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data

    .line 22
    :array_1
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public static a([B)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    add-int/lit8 v3, v2, 0x1

    .line 3
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 4
    sget-object v4, Lcom/xiaomi/onetrack/d/c;->b:[C

    if-ne v3, v1, :cond_0

    ushr-int/lit8 p0, v2, 0x2

    .line 5
    aget-char p0, v4, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 p0, v2, 0x3

    shl-int/lit8 p0, p0, 0x4

    .line 6
    aget-char p0, v4, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string p0, "=="

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v3, 0x1

    .line 8
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    if-ne v5, v1, :cond_1

    ushr-int/lit8 p0, v2, 0x2

    .line 9
    aget-char p0, v4, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 p0, v2, 0x3

    shl-int/lit8 p0, p0, 0x4

    and-int/lit16 v1, v3, 0xf0

    ushr-int/lit8 v1, v1, 0x4

    or-int/2addr p0, v1

    .line 10
    aget-char p0, v4, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 p0, v3, 0xf

    shl-int/lit8 p0, p0, 0x2

    .line 11
    aget-char p0, v4, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string p0, "="

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v5, 0x1

    .line 13
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    ushr-int/lit8 v7, v2, 0x2

    .line 14
    aget-char v7, v4, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v7, v3, 0xf0

    ushr-int/lit8 v7, v7, 0x4

    or-int/2addr v2, v7

    .line 15
    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 v2, v3, 0xf

    shl-int/lit8 v2, v2, 0x2

    and-int/lit16 v3, v5, 0xc0

    ushr-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    .line 16
    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 v2, v5, 0x3f

    .line 17
    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v6

    goto :goto_0

    .line 18
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 2

    .line 19
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/c;->b(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Base64Util"

    .line 20
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "decode e"

    invoke-static {v0, v1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    const-string v1, "US-ASCII"

    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 9
    move-result-object p0

    .line 12
    array-length v1, p0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    const-string v3, "iso8859-1"

    .line 15
    if-ge v2, v1, :cond_e

    .line 17
    :goto_1
    sget-object v4, Lcom/xiaomi/onetrack/d/c;->c:[B

    .line 19
    add-int/lit8 v5, v2, 0x1

    .line 21
    aget-byte v2, p0, v2

    .line 23
    aget-byte v2, v4, v2

    .line 25
    const/4 v6, -0x1

    .line 27
    if-ge v5, v1, :cond_1

    .line 28
    if-eq v2, v6, :cond_0

    .line 30
    goto :goto_2

    .line 32
    :cond_0
    move v2, v5

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_2
    if-ne v2, v6, :cond_2

    .line 35
    goto/16 :goto_9

    .line 37
    :cond_2
    :goto_3
    add-int/lit8 v7, v5, 0x1

    .line 39
    aget-byte v5, p0, v5

    .line 41
    aget-byte v5, v4, v5

    .line 43
    if-ge v7, v1, :cond_4

    .line 45
    if-eq v5, v6, :cond_3

    .line 47
    goto :goto_4

    .line 49
    :cond_3
    move v5, v7

    .line 50
    goto :goto_3

    .line 51
    :cond_4
    :goto_4
    if-ne v5, v6, :cond_5

    .line 52
    goto :goto_9

    .line 54
    :cond_5
    shl-int/lit8 v2, v2, 0x2

    .line 55
    and-int/lit8 v8, v5, 0x30

    .line 57
    ushr-int/lit8 v8, v8, 0x4

    .line 59
    or-int/2addr v2, v8

    .line 61
    int-to-char v2, v2

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 63
    :goto_5
    add-int/lit8 v2, v7, 0x1

    .line 66
    aget-byte v7, p0, v7

    .line 68
    const/16 v8, 0x3d

    .line 70
    if-ne v7, v8, :cond_6

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 77
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 78
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    :cond_6
    aget-byte v7, v4, v7

    .line 83
    if-ge v2, v1, :cond_8

    .line 85
    if-eq v7, v6, :cond_7

    .line 87
    goto :goto_6

    .line 89
    :cond_7
    move v7, v2

    .line 90
    goto :goto_5

    .line 91
    :cond_8
    :goto_6
    if-ne v7, v6, :cond_9

    .line 92
    goto :goto_9

    .line 94
    :cond_9
    and-int/lit8 v5, v5, 0xf

    .line 95
    shl-int/lit8 v5, v5, 0x4

    .line 97
    and-int/lit8 v9, v7, 0x3c

    .line 99
    ushr-int/lit8 v9, v9, 0x2

    .line 101
    or-int/2addr v5, v9

    .line 103
    int-to-char v5, v5

    .line 104
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 105
    :goto_7
    add-int/lit8 v5, v2, 0x1

    .line 108
    aget-byte v2, p0, v2

    .line 110
    if-ne v2, v8, :cond_a

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 114
    move-result-object p0

    .line 117
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 118
    move-result-object p0

    .line 121
    return-object p0

    .line 122
    :cond_a
    aget-byte v2, v4, v2

    .line 123
    if-ge v5, v1, :cond_c

    .line 125
    if-eq v2, v6, :cond_b

    .line 127
    goto :goto_8

    .line 129
    :cond_b
    move v2, v5

    .line 130
    goto :goto_7

    .line 131
    :cond_c
    :goto_8
    if-ne v2, v6, :cond_d

    .line 132
    goto :goto_9

    .line 134
    :cond_d
    and-int/lit8 v3, v7, 0x3

    .line 135
    shl-int/lit8 v3, v3, 0x6

    .line 137
    or-int/2addr v2, v3

    .line 139
    int-to-char v2, v2

    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 141
    move v2, v5

    .line 144
    goto/16 :goto_0

    .line 145
    :cond_e
    :goto_9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 147
    move-result-object p0

    .line 150
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 151
    move-result-object p0

    .line 154
    return-object p0
    .line 155
.end method
