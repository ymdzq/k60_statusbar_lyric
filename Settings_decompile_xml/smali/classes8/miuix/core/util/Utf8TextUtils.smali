.class public Lmiuix/core/util/Utf8TextUtils;
.super Ljava/lang/Object;
.source "Utf8TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/core/util/Utf8TextUtils$CharRange;
    }
.end annotation


# direct methods
.method private static findRange([BII)Lmiuix/core/util/Utf8TextUtils$CharRange;
    .locals 1

    .line 152
    new-instance v0, Lmiuix/core/util/Utf8TextUtils$CharRange;

    invoke-direct {v0}, Lmiuix/core/util/Utf8TextUtils$CharRange;-><init>()V

    .line 153
    invoke-static {p0, p1, p2}, Lmiuix/core/util/Utf8TextUtils;->isValidCharacter([BII)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 154
    iput p1, v0, Lmiuix/core/util/Utf8TextUtils$CharRange;->start:I

    .line 155
    iput p2, v0, Lmiuix/core/util/Utf8TextUtils$CharRange;->length:I

    :cond_0
    return-object v0
.end method

.method private static getByteCount(B)I
    .locals 4

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x7

    :goto_0
    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    shr-int v3, p0, v1

    int-to-byte v3, v3

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private static getCharRangeAt([BI)Lmiuix/core/util/Utf8TextUtils$CharRange;
    .locals 1

    .line 143
    aget-byte v0, p0, p1

    invoke-static {v0}, Lmiuix/core/util/Utf8TextUtils;->getByteCount(B)I

    move-result v0

    if-nez v0, :cond_0

    .line 145
    new-instance p0, Lmiuix/core/util/Utf8TextUtils$CharRange;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmiuix/core/util/Utf8TextUtils$CharRange;-><init>(II)V

    return-object p0

    .line 147
    :cond_0
    invoke-static {p0, p1, v0}, Lmiuix/core/util/Utf8TextUtils;->findRange([BII)Lmiuix/core/util/Utf8TextUtils$CharRange;

    move-result-object p0

    return-object p0
.end method

.method private static getUtf8CharList([B)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lmiuix/core/util/Utf8TextUtils$CharRange;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 130
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 131
    invoke-static {p0, v1}, Lmiuix/core/util/Utf8TextUtils;->getCharRangeAt([BI)Lmiuix/core/util/Utf8TextUtils$CharRange;

    move-result-object v2

    .line 132
    invoke-virtual {v2}, Lmiuix/core/util/Utf8TextUtils$CharRange;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 133
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 136
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget v2, v2, Lmiuix/core/util/Utf8TextUtils$CharRange;->length:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static isValidCharacter([BII)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p2, v1, :cond_3

    const/4 v2, 0x6

    if-le p2, v2, :cond_0

    goto :goto_1

    :cond_0
    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_2

    add-int v3, p1, v2

    .line 166
    aget-byte v3, p0, v3

    invoke-static {v3}, Lmiuix/core/util/Utf8TextUtils;->getByteCount(B)I

    move-result v3

    if-eq v3, v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v0
.end method

.method public static truncateByte(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    .line 89
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 90
    invoke-static {v0}, Lmiuix/core/util/Utf8TextUtils;->getUtf8CharList([B)Ljava/util/List;

    move-result-object v1

    .line 91
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-ge v1, p1, :cond_0

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-le v1, p1, :cond_1

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 99
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 101
    :cond_2
    array-length v2, v0

    .line 102
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_5

    .line 103
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/core/util/Utf8TextUtils$CharRange;

    .line 104
    iget v5, v4, Lmiuix/core/util/Utf8TextUtils$CharRange;->start:I

    if-lt v5, p1, :cond_3

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 107
    :cond_3
    invoke-virtual {v4}, Lmiuix/core/util/Utf8TextUtils$CharRange;->getEndIndex()I

    move-result v2

    if-gt v2, p1, :cond_4

    goto :goto_2

    .line 111
    :cond_4
    iget v2, v4, Lmiuix/core/util/Utf8TextUtils$CharRange;->start:I

    .line 115
    :cond_5
    :goto_2
    array-length p1, v0

    if-ge v2, p1, :cond_6

    .line 116
    new-array p1, v2, [B

    const/4 v1, 0x0

    .line 117
    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_6
    return-object p0

    :catch_0
    move-exception p1

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to get bytes of UTF-8 from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Utf8TextUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
