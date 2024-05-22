.class public final Lcom/google/zxing/common/BitArray;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public bits:[I

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 6
    const/4 v0, 0x1

    .line 8
    new-array v0, v0, [I

    .line 9
    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final appendBit(Z)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 2
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    .line 6
    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 11
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 13
    shr-int/lit8 v2, v0, 0x5

    .line 15
    aget v3, p1, v2

    .line 17
    and-int/lit8 v0, v0, 0x1f

    .line 19
    shl-int v0, v1, v0

    .line 21
    or-int/2addr v0, v3

    .line 23
    aput v0, p1, v2

    .line 24
    :cond_0
    iget p1, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 26
    add-int/2addr p1, v1

    .line 28
    iput p1, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 29
    return-void
    .line 31
.end method

.method public final appendBits(II)V
    .locals 2

    .line 1
    if-ltz p2, :cond_2

    .line 2
    const/16 v0, 0x20

    .line 4
    if-gt p2, v0, :cond_2

    .line 6
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 8
    add-int/2addr v0, p2

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    .line 11
    :goto_0
    if-lez p2, :cond_1

    .line 14
    add-int/lit8 v0, p2, -0x1

    .line 16
    shr-int v0, p1, v0

    .line 18
    const/4 v1, 0x1

    .line 20
    and-int/2addr v0, v1

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    goto :goto_1

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 26
    add-int/lit8 p2, p2, -0x1

    .line 29
    goto :goto_0

    .line 31
    :cond_1
    return-void

    .line 32
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 33
    const-string p1, "Num bits must be between 0 and 32"

    .line 35
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p0
    .line 40
.end method

.method public final ensureCapacity(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 2
    array-length v1, v0

    .line 4
    shl-int/lit8 v1, v1, 0x5

    .line 5
    if-le p1, v1, :cond_0

    .line 7
    add-int/lit8 p1, p1, 0x1f

    .line 9
    shr-int/lit8 p1, p1, 0x5

    .line 11
    new-array p1, p1, [I

    .line 13
    array-length v1, v0

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    iput-object p1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 20
    :cond_0
    return-void
    .line 22
.end method

.method public final get(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 2
    shr-int/lit8 v0, p1, 0x5

    .line 4
    aget p0, p0, v0

    .line 6
    and-int/lit8 p1, p1, 0x1f

    .line 8
    const/4 v0, 0x1

    .line 10
    shl-int p1, v0, p1

    .line 11
    and-int/2addr p0, p1

    .line 13
    if-eqz p0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
    .line 18
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    const/4 v1, 0x0

    .line 9
    :goto_0
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 10
    if-ge v1, v2, :cond_2

    .line 12
    and-int/lit8 v2, v1, 0x7

    .line 14
    if-nez v2, :cond_0

    .line 16
    const/16 v2, 0x20

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 23
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    const/16 v2, 0x58

    .line 29
    goto :goto_1

    .line 31
    :cond_1
    const/16 v2, 0x2e

    .line 32
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 37
    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 43
    return-object p0
    .line 44
.end method
