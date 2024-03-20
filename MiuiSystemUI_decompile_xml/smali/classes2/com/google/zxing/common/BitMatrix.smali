.class public final Lcom/google/zxing/common/BitMatrix;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final bits:[I

.field public final height:I

.field public final rowSize:I

.field public final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    .line 5
    if-lt p1, v0, :cond_0

    .line 6
    if-lt p2, v0, :cond_0

    .line 8
    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 10
    iput p2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 12
    add-int/lit8 p1, p1, 0x1f

    .line 14
    shr-int/lit8 p1, p1, 0x5

    .line 16
    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 18
    mul-int/2addr p1, p2

    .line 20
    new-array p1, p1, [I

    .line 21
    iput-object p1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 23
    return-void

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 26
    const-string p1, "Both dimensions must be greater than 0"

    .line 28
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p0
    .line 33
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/google/zxing/common/BitMatrix;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/google/zxing/common/BitMatrix;

    .line 8
    iget v0, p1, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 10
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 12
    if-ne v2, v0, :cond_4

    .line 14
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 16
    iget v2, p1, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 18
    if-ne v0, v2, :cond_4

    .line 20
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 22
    iget v2, p1, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 24
    if-ne v0, v2, :cond_4

    .line 26
    iget-object p0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 28
    array-length v0, p0

    .line 30
    iget-object p1, p1, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 31
    array-length v2, p1

    .line 33
    if-eq v0, v2, :cond_1

    .line 34
    goto :goto_1

    .line 36
    :cond_1
    move v0, v1

    .line 37
    :goto_0
    array-length v2, p0

    .line 38
    if-ge v0, v2, :cond_3

    .line 39
    aget v2, p0, v0

    .line 41
    aget v3, p1, v0

    .line 43
    if-eq v2, v3, :cond_2

    .line 45
    return v1

    .line 47
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 48
    goto :goto_0

    .line 50
    :cond_3
    const/4 p0, 0x1

    .line 51
    return p0

    .line 52
    :cond_4
    :goto_1
    return v1
    .line 53
.end method

.method public final get(II)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 2
    mul-int/2addr p2, v0

    .line 4
    shr-int/lit8 v0, p1, 0x5

    .line 5
    add-int/2addr p2, v0

    .line 7
    iget-object p0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 8
    aget p0, p0, p2

    .line 10
    and-int/lit8 p1, p1, 0x1f

    .line 12
    ushr-int/2addr p0, p1

    .line 14
    const/4 p1, 0x1

    .line 15
    and-int/2addr p0, p1

    .line 16
    if-eqz p0, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
    .line 21
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 2
    mul-int/lit8 v1, v0, 0x1f

    .line 4
    add-int/2addr v1, v0

    .line 6
    mul-int/lit8 v1, v1, 0x1f

    .line 7
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 9
    add-int/2addr v1, v0

    .line 11
    mul-int/lit8 v1, v1, 0x1f

    .line 12
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 14
    add-int/2addr v1, v0

    .line 16
    iget-object p0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 17
    array-length v0, p0

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    if-ge v2, v0, :cond_0

    .line 21
    aget v3, p0, v2

    .line 23
    mul-int/lit8 v1, v1, 0x1f

    .line 25
    add-int/2addr v1, v3

    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    return v1
    .line 31
.end method

.method public final setRegion(IIII)V
    .locals 7

    .line 1
    if-ltz p2, :cond_4

    .line 2
    if-ltz p1, :cond_4

    .line 4
    const/4 v0, 0x1

    .line 6
    if-lt p4, v0, :cond_3

    .line 7
    if-lt p3, v0, :cond_3

    .line 9
    add-int/2addr p3, p1

    .line 11
    add-int/2addr p4, p2

    .line 12
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 13
    if-gt p4, v1, :cond_2

    .line 15
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 17
    if-gt p3, v1, :cond_2

    .line 19
    :goto_0
    if-ge p2, p4, :cond_1

    .line 21
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 23
    mul-int/2addr v1, p2

    .line 25
    move v2, p1

    .line 26
    :goto_1
    if-ge v2, p3, :cond_0

    .line 27
    shr-int/lit8 v3, v2, 0x5

    .line 29
    add-int/2addr v3, v1

    .line 31
    iget-object v4, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 32
    aget v5, v4, v3

    .line 34
    and-int/lit8 v6, v2, 0x1f

    .line 36
    shl-int v6, v0, v6

    .line 38
    or-int/2addr v5, v6

    .line 40
    aput v5, v4, v3

    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 43
    goto :goto_1

    .line 45
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 46
    goto :goto_0

    .line 48
    :cond_1
    return-void

    .line 49
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 50
    const-string p1, "The region must fit inside the matrix"

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p0

    .line 57
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 58
    const-string p1, "Height and width must be at least 1"

    .line 60
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    throw p0

    .line 65
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 66
    const-string p1, "Left and top must be nonnegative"

    .line 68
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    throw p0
    .line 73
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 4
    add-int/lit8 v2, v1, 0x1

    .line 6
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 8
    mul-int/2addr v2, v3

    .line 10
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 11
    const/4 v2, 0x0

    .line 14
    move v4, v2

    .line 15
    :goto_0
    if-ge v4, v3, :cond_2

    .line 16
    move v5, v2

    .line 18
    :goto_1
    if-ge v5, v1, :cond_1

    .line 19
    invoke-virtual {p0, v5, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 21
    move-result v6

    .line 24
    if-eqz v6, :cond_0

    .line 25
    const-string v6, "X "

    .line 27
    goto :goto_2

    .line 29
    :cond_0
    const-string v6, "  "

    .line 30
    :goto_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    add-int/lit8 v5, v5, 0x1

    .line 35
    goto :goto_1

    .line 37
    :cond_1
    const/16 v5, 0xa

    .line 38
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    add-int/lit8 v4, v4, 0x1

    .line 43
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 49
    return-object p0
    .line 50
.end method
