.class public final Landroidx/collection/CircularArray;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public capacityBitmask:I

.field public elements:[Ljava/lang/Object;

.field public head:I

.field public tail:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/16 v0, 0x40

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    .line 7
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eq v1, v2, :cond_0

    .line 12
    const/16 v0, 0x3f

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 16
    move-result v0

    .line 19
    shl-int/2addr v0, v2

    .line 20
    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 21
    iput v1, p0, Landroidx/collection/CircularArray;->capacityBitmask:I

    .line 23
    new-array v0, v0, [Ljava/lang/Object;

    .line 25
    iput-object v0, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    .line 27
    return-void
    .line 29
.end method


# virtual methods
.method public final doubleCapacity()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    .line 2
    array-length v1, v0

    .line 4
    iget v2, p0, Landroidx/collection/CircularArray;->head:I

    .line 5
    sub-int v3, v1, v2

    .line 7
    shl-int/lit8 v4, v1, 0x1

    .line 9
    if-ltz v4, :cond_0

    .line 11
    new-array v5, v4, [Ljava/lang/Object;

    .line 13
    sub-int v6, v1, v2

    .line 15
    const/4 v7, 0x0

    .line 17
    invoke-static {v0, v2, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    iget-object v0, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    .line 21
    iget v2, p0, Landroidx/collection/CircularArray;->head:I

    .line 23
    sub-int/2addr v2, v7

    .line 25
    invoke-static {v0, v7, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    iput-object v5, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    .line 29
    iput v7, p0, Landroidx/collection/CircularArray;->head:I

    .line 31
    iput v1, p0, Landroidx/collection/CircularArray;->tail:I

    .line 33
    add-int/lit8 v4, v4, -0x1

    .line 35
    iput v4, p0, Landroidx/collection/CircularArray;->capacityBitmask:I

    .line 37
    return-void

    .line 39
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 40
    const-string v0, "Max array capacity exceeded"

    .line 42
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p0
    .line 47
.end method

.method public final removeFromEnd(I)V
    .locals 5

    .line 1
    if-gtz p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    .line 5
    move-result v0

    .line 8
    if-gt p1, v0, :cond_5

    .line 9
    iget v0, p0, Landroidx/collection/CircularArray;->tail:I

    .line 11
    if-ge p1, v0, :cond_1

    .line 13
    sub-int v1, v0, p1

    .line 15
    goto :goto_0

    .line 17
    :cond_1
    const/4 v1, 0x0

    .line 18
    :goto_0
    move v2, v1

    .line 19
    :goto_1
    const/4 v3, 0x0

    .line 20
    if-ge v2, v0, :cond_2

    .line 21
    iget-object v4, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    .line 23
    aput-object v3, v4, v2

    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 27
    goto :goto_1

    .line 29
    :cond_2
    iget v0, p0, Landroidx/collection/CircularArray;->tail:I

    .line 30
    sub-int v1, v0, v1

    .line 32
    sub-int/2addr p1, v1

    .line 34
    sub-int/2addr v0, v1

    .line 35
    iput v0, p0, Landroidx/collection/CircularArray;->tail:I

    .line 36
    if-lez p1, :cond_4

    .line 38
    iget-object v0, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    .line 40
    array-length v0, v0

    .line 42
    iput v0, p0, Landroidx/collection/CircularArray;->tail:I

    .line 43
    sub-int p1, v0, p1

    .line 45
    move v1, p1

    .line 47
    :goto_2
    if-ge v1, v0, :cond_3

    .line 48
    iget-object v2, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    .line 50
    aput-object v3, v2, v1

    .line 52
    add-int/lit8 v1, v1, 0x1

    .line 54
    goto :goto_2

    .line 56
    :cond_3
    iput p1, p0, Landroidx/collection/CircularArray;->tail:I

    .line 57
    :cond_4
    return-void

    .line 59
    :cond_5
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 60
    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .line 62
    throw p0
    .line 65
.end method

.method public final removeFromStart(I)V
    .locals 4

    .line 1
    if-gtz p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    .line 5
    move-result v0

    .line 8
    if-gt p1, v0, :cond_5

    .line 9
    iget-object v0, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    .line 11
    array-length v0, v0

    .line 13
    iget v1, p0, Landroidx/collection/CircularArray;->head:I

    .line 14
    sub-int v2, v0, v1

    .line 16
    if-ge p1, v2, :cond_1

    .line 18
    add-int v0, v1, p1

    .line 20
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 22
    if-ge v1, v0, :cond_2

    .line 23
    iget-object v3, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    .line 25
    aput-object v2, v3, v1

    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 29
    goto :goto_0

    .line 31
    :cond_2
    iget v1, p0, Landroidx/collection/CircularArray;->head:I

    .line 32
    sub-int/2addr v0, v1

    .line 34
    sub-int/2addr p1, v0

    .line 35
    add-int/2addr v1, v0

    .line 36
    iget v0, p0, Landroidx/collection/CircularArray;->capacityBitmask:I

    .line 37
    and-int/2addr v0, v1

    .line 39
    iput v0, p0, Landroidx/collection/CircularArray;->head:I

    .line 40
    if-lez p1, :cond_4

    .line 42
    const/4 v0, 0x0

    .line 44
    :goto_1
    if-ge v0, p1, :cond_3

    .line 45
    iget-object v1, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    .line 47
    aput-object v2, v1, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 51
    goto :goto_1

    .line 53
    :cond_3
    iput p1, p0, Landroidx/collection/CircularArray;->head:I

    .line 54
    :cond_4
    return-void

    .line 56
    :cond_5
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 57
    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .line 59
    throw p0
    .line 62
.end method

.method public final size()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/collection/CircularArray;->tail:I

    .line 2
    iget v1, p0, Landroidx/collection/CircularArray;->head:I

    .line 4
    sub-int/2addr v0, v1

    .line 6
    iget p0, p0, Landroidx/collection/CircularArray;->capacityBitmask:I

    .line 7
    and-int/2addr p0, v0

    .line 9
    return p0
    .line 10
.end method
