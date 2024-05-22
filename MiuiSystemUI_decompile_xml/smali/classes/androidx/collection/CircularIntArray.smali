.class public final Landroidx/collection/CircularIntArray;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public capacityBitmask:I

.field public elements:[I

.field public tail:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/16 v0, 0x8

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    .line 7
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eq v1, v2, :cond_0

    .line 12
    const/4 v0, 0x7

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 15
    move-result v0

    .line 18
    shl-int/2addr v0, v2

    .line 19
    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 20
    iput v1, p0, Landroidx/collection/CircularIntArray;->capacityBitmask:I

    .line 22
    new-array v0, v0, [I

    .line 24
    iput-object v0, p0, Landroidx/collection/CircularIntArray;->elements:[I

    .line 26
    return-void
    .line 28
.end method


# virtual methods
.method public final addLast(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/collection/CircularIntArray;->elements:[I

    .line 2
    iget v1, p0, Landroidx/collection/CircularIntArray;->tail:I

    .line 4
    aput p1, v0, v1

    .line 6
    add-int/lit8 v1, v1, 0x1

    .line 8
    iget p1, p0, Landroidx/collection/CircularIntArray;->capacityBitmask:I

    .line 10
    and-int/2addr p1, v1

    .line 12
    iput p1, p0, Landroidx/collection/CircularIntArray;->tail:I

    .line 13
    if-nez p1, :cond_1

    .line 15
    array-length p1, v0

    .line 17
    add-int/lit8 v1, p1, 0x0

    .line 18
    shl-int/lit8 v2, p1, 0x1

    .line 20
    if-ltz v2, :cond_0

    .line 22
    new-array v3, v2, [I

    .line 24
    const/4 v4, 0x0

    .line 26
    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    iget-object v0, p0, Landroidx/collection/CircularIntArray;->elements:[I

    .line 30
    invoke-static {v0, v4, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    iput-object v3, p0, Landroidx/collection/CircularIntArray;->elements:[I

    .line 35
    iput p1, p0, Landroidx/collection/CircularIntArray;->tail:I

    .line 37
    add-int/lit8 v2, v2, -0x1

    .line 39
    iput v2, p0, Landroidx/collection/CircularIntArray;->capacityBitmask:I

    .line 41
    goto :goto_0

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 44
    const-string p1, "Max array capacity exceeded"

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p0

    .line 51
    :cond_1
    :goto_0
    return-void
    .line 52
.end method

.method public final get(I)I
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    iget v0, p0, Landroidx/collection/CircularIntArray;->tail:I

    .line 4
    add-int/lit8 v0, v0, 0x0

    .line 6
    iget v1, p0, Landroidx/collection/CircularIntArray;->capacityBitmask:I

    .line 8
    and-int/2addr v0, v1

    .line 10
    if-ge p1, v0, :cond_0

    .line 11
    iget-object p0, p0, Landroidx/collection/CircularIntArray;->elements:[I

    .line 13
    add-int/lit8 p1, p1, 0x0

    .line 15
    and-int/2addr p1, v1

    .line 17
    aget p0, p0, p1

    .line 18
    return p0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 21
    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .line 23
    throw p0
    .line 26
.end method
