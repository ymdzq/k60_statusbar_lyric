.class public abstract Lcom/google/zxing/qrcode/encoder/MaskUtil;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I
    .locals 10

    .line 1
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    .line 2
    iget v1, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    .line 4
    if-eqz p1, :cond_0

    .line 6
    move v2, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v2, v1

    .line 10
    :goto_0
    if-eqz p1, :cond_1

    .line 11
    move v0, v1

    .line 13
    :cond_1
    const/4 v1, 0x0

    .line 14
    move v3, v1

    .line 15
    move v4, v3

    .line 16
    :goto_1
    if-ge v3, v2, :cond_7

    .line 17
    const/4 v5, -0x1

    .line 19
    move v6, v1

    .line 20
    move v7, v6

    .line 21
    :goto_2
    const/4 v8, 0x5

    .line 22
    if-ge v6, v0, :cond_5

    .line 23
    iget-object v9, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    .line 25
    if-eqz p1, :cond_2

    .line 27
    aget-object v9, v9, v3

    .line 29
    aget-byte v9, v9, v6

    .line 31
    goto :goto_3

    .line 33
    :cond_2
    aget-object v9, v9, v6

    .line 34
    aget-byte v9, v9, v3

    .line 36
    :goto_3
    if-ne v9, v5, :cond_3

    .line 38
    add-int/lit8 v7, v7, 0x1

    .line 40
    goto :goto_4

    .line 42
    :cond_3
    if-lt v7, v8, :cond_4

    .line 43
    add-int/lit8 v7, v7, -0x5

    .line 45
    add-int/lit8 v7, v7, 0x3

    .line 47
    add-int/2addr v4, v7

    .line 49
    :cond_4
    const/4 v5, 0x1

    .line 50
    move v7, v5

    .line 51
    move v5, v9

    .line 52
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 53
    goto :goto_2

    .line 55
    :cond_5
    if-lt v7, v8, :cond_6

    .line 56
    add-int/lit8 v7, v7, -0x5

    .line 58
    add-int/lit8 v7, v7, 0x3

    .line 60
    add-int/2addr v7, v4

    .line 62
    move v4, v7

    .line 63
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 64
    goto :goto_1

    .line 66
    :cond_7
    return v4
    .line 67
.end method
