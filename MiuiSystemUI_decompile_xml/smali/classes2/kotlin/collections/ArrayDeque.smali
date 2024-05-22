.class public final Lkotlin/collections/ArrayDeque;
.super Lkotlin/collections/AbstractMutableList;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final emptyElementData:[Ljava/lang/Object;


# instance fields
.field public elementData:[Ljava/lang/Object;

.field public head:I

.field public size:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    sput-object v0, Lkotlin/collections/ArrayDeque;->emptyElementData:[Ljava/lang/Object;

    .line 5
    return-void
    .line 7
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlin/collections/AbstractMutableList;-><init>()V

    .line 2
    sget-object v0, Lkotlin/collections/ArrayDeque;->emptyElementData:[Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Lkotlin/collections/ArrayDeque;->size:I

    if-ltz p1, :cond_8

    if-gt p1, v0, :cond_8

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_2

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0, v0}, Lkotlin/collections/ArrayDeque;->ensureCapacity(I)V

    .line 4
    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 6
    array-length p1, p1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 7
    iput p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 8
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 9
    iget p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    add-int/2addr p1, v1

    .line 10
    iput p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    return-void

    :cond_2
    add-int/2addr v0, v1

    .line 11
    invoke-virtual {p0, v0}, Lkotlin/collections/ArrayDeque;->ensureCapacity(I)V

    .line 12
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    move-result v0

    .line 13
    iget v2, p0, Lkotlin/collections/ArrayDeque;->size:I

    add-int/lit8 v3, v2, 0x1

    shr-int/2addr v3, v1

    const/4 v4, 0x0

    if-ge p1, v3, :cond_6

    if-nez v0, :cond_3

    .line 14
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 15
    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 p1, v0, -0x1

    .line 16
    :goto_0
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    if-nez v0, :cond_4

    .line 17
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 18
    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-lt p1, v0, :cond_5

    .line 19
    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    aget-object v4, v3, v0

    aput-object v4, v3, v2

    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, p1, 0x1

    sub-int/2addr v5, v4

    .line 20
    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 21
    :cond_5
    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    add-int/lit8 v5, v0, -0x1

    array-length v6, v3

    sub-int/2addr v6, v0

    .line 22
    invoke-static {v3, v0, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v3, v0

    sub-int/2addr v3, v1

    aget-object v5, v0, v4

    aput-object v5, v0, v3

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v3, v1

    .line 24
    invoke-static {v0, v1, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    :goto_2
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 26
    iput v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    goto :goto_4

    .line 27
    :cond_6
    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    move-result p1

    if-ge v0, p1, :cond_7

    .line 28
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr p1, v0

    .line 29
    invoke-static {v2, v0, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 30
    :cond_7
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    sub-int/2addr p1, v4

    .line 31
    invoke-static {v2, v4, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v2, p1

    sub-int/2addr v2, v1

    aget-object v2, p1, v2

    aput-object v2, p1, v4

    add-int/lit8 v2, v0, 0x1

    .line 33
    array-length v3, p1

    sub-int/2addr v3, v1

    sub-int/2addr v3, v0

    .line 34
    invoke-static {p1, v0, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    :goto_3
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    aput-object p2, p1, v0

    .line 36
    :goto_4
    iget p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    add-int/2addr p1, v1

    .line 37
    iput p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    return-void

    .line 38
    :cond_8
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "index: "

    const-string v1, ", size: "

    .line 39
    invoke-static {p2, p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 8

    .line 1
    iget v0, p0, Lkotlin/collections/ArrayDeque;->size:I

    if-ltz p1, :cond_c

    if-gt p1, v0, :cond_c

    .line 2
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget v0, p0, Lkotlin/collections/ArrayDeque;->size:I

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {p0, p2}, Lkotlin/collections/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    .line 5
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lkotlin/collections/ArrayDeque;->ensureCapacity(I)V

    .line 6
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 7
    iget v2, p0, Lkotlin/collections/ArrayDeque;->size:I

    add-int/2addr v2, v0

    .line 8
    invoke-virtual {p0, v2}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    move-result v0

    .line 9
    iget v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    move-result v2

    .line 10
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    .line 11
    iget v4, p0, Lkotlin/collections/ArrayDeque;->size:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    shr-int/2addr v4, v5

    if-ge p1, v4, :cond_7

    .line 12
    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    sub-int v0, p1, v3

    if-lt v2, p1, :cond_4

    if-ltz v0, :cond_2

    .line 13
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    sub-int v4, v2, p1

    .line 14
    invoke-static {v1, p1, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v6, v4

    add-int/2addr v0, v6

    sub-int v6, v2, p1

    .line 16
    array-length v7, v4

    sub-int/2addr v7, v0

    if-lt v7, v6, :cond_3

    .line 17
    invoke-static {v4, p1, v4, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    add-int v6, p1, v7

    sub-int/2addr v6, p1

    .line 18
    invoke-static {v4, p1, v4, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    iget v4, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/2addr v4, v7

    sub-int v6, v2, v4

    .line 20
    invoke-static {p1, v4, p1, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 21
    :cond_4
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v6, v4

    sub-int/2addr v6, p1

    .line 22
    invoke-static {v4, p1, v4, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lt v3, v2, :cond_5

    .line 23
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v4, p1

    sub-int/2addr v4, v3

    add-int/lit8 v6, v2, 0x0

    .line 24
    invoke-static {p1, v1, p1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 25
    :cond_5
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v4, p1

    sub-int/2addr v4, v3

    add-int/lit8 v6, v3, 0x0

    .line 26
    invoke-static {p1, v1, p1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    sub-int v4, v2, v3

    .line 28
    invoke-static {p1, v3, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    :goto_0
    iput v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_6

    .line 30
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length p1, p1

    add-int/2addr v2, p1

    .line 31
    :cond_6
    invoke-virtual {p0, v2, p2}, Lkotlin/collections/ArrayDeque;->copyCollectionElements(ILjava/util/Collection;)V

    goto :goto_2

    :cond_7
    add-int p1, v2, v3

    if-ge v2, v0, :cond_a

    add-int/2addr v3, v0

    .line 32
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v6, v4

    if-gt v3, v6, :cond_8

    sub-int/2addr v0, v2

    .line 33
    invoke-static {v4, v2, v4, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 34
    :cond_8
    array-length v6, v4

    if-lt p1, v6, :cond_9

    .line 35
    array-length v1, v4

    sub-int/2addr p1, v1

    sub-int/2addr v0, v2

    .line 36
    invoke-static {v4, v2, v4, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 37
    :cond_9
    array-length v6, v4

    sub-int/2addr v3, v6

    sub-int v3, v0, v3

    sub-int/2addr v0, v3

    .line 38
    invoke-static {v4, v3, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    sub-int/2addr v3, v2

    .line 40
    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 41
    :cond_a
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    sub-int/2addr v0, v1

    .line 42
    invoke-static {v4, v1, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v4, v0

    if-lt p1, v4, :cond_b

    .line 44
    array-length v1, v0

    sub-int/2addr p1, v1

    array-length v1, v0

    sub-int/2addr v1, v2

    .line 45
    invoke-static {v0, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 46
    :cond_b
    array-length v4, v0

    sub-int/2addr v4, v3

    array-length v6, v0

    sub-int/2addr v6, v4

    .line 47
    invoke-static {v0, v4, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v1, v0

    sub-int/2addr v1, v3

    sub-int/2addr v1, v2

    .line 49
    invoke-static {v0, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    :goto_1
    invoke-virtual {p0, v2, p2}, Lkotlin/collections/ArrayDeque;->copyCollectionElements(ILjava/util/Collection;)V

    :goto_2
    return v5

    .line 51
    :cond_c
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "index: "

    const-string v1, ", size: "

    .line 52
    invoke-static {p2, p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 2

    .line 60
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v0

    .line 62
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lkotlin/collections/ArrayDeque;->ensureCapacity(I)V

    .line 63
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 64
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v1

    add-int/2addr v1, v0

    .line 65
    invoke-virtual {p0, v1}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lkotlin/collections/ArrayDeque;->copyCollectionElements(ILjava/util/Collection;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final addLast(Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 2
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lkotlin/collections/ArrayDeque;->ensureCapacity(I)V

    .line 8
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 11
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 13
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 15
    move-result v2

    .line 18
    add-int/2addr v2, v1

    .line 19
    invoke-virtual {p0, v2}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    .line 20
    move-result v1

    .line 23
    aput-object p1, v0, v1

    .line 24
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 26
    move-result p1

    .line 29
    add-int/lit8 p1, p1, 0x1

    .line 30
    iput p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    .line 32
    return-void
    .line 34
.end method

.method public final clear()V
    .locals 6

    .line 1
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 2
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 4
    move-result v1

    .line 7
    add-int/2addr v1, v0

    .line 8
    invoke-virtual {p0, v1}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    .line 9
    move-result v0

    .line 12
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 13
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    if-ge v1, v0, :cond_0

    .line 17
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 19
    invoke-static {v4, v1, v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 21
    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 25
    move-result v1

    .line 28
    xor-int/lit8 v1, v1, 0x1

    .line 29
    if-eqz v1, :cond_1

    .line 31
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 33
    iget v4, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 35
    array-length v5, v1

    .line 37
    invoke-static {v1, v4, v5, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 38
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 41
    invoke-static {v1, v2, v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 43
    :cond_1
    :goto_0
    iput v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 46
    iput v2, p0, Lkotlin/collections/ArrayDeque;->size:I

    .line 48
    return-void
    .line 50
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->indexOf(Ljava/lang/Object;)I

    .line 2
    move-result p0

    .line 5
    const/4 p1, -0x1

    .line 6
    if-eq p0, p1, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
    .line 12
.end method

.method public final copyCollectionElements(ILjava/util/Collection;)V
    .locals 4

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 6
    array-length v1, v1

    .line 8
    :goto_0
    if-ge p1, v1, :cond_0

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v3

    .line 22
    aput-object v3, v2, p1

    .line 23
    add-int/lit8 p1, p1, 0x1

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 28
    const/4 v1, 0x0

    .line 30
    :goto_1
    if-ge v1, p1, :cond_1

    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v3

    .line 44
    aput-object v3, v2, v1

    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 47
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 50
    move-result p1

    .line 53
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 54
    move-result p2

    .line 57
    add-int/2addr p2, p1

    .line 58
    iput p2, p0, Lkotlin/collections/ArrayDeque;->size:I

    .line 59
    return-void
    .line 61
.end method

.method public final ensureCapacity(I)V
    .locals 4

    .line 1
    if-ltz p1, :cond_6

    .line 2
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 4
    array-length v1, v0

    .line 6
    if-gt p1, v1, :cond_0

    .line 7
    return-void

    .line 9
    :cond_0
    sget-object v1, Lkotlin/collections/ArrayDeque;->emptyElementData:[Ljava/lang/Object;

    .line 10
    if-ne v0, v1, :cond_2

    .line 12
    const/16 v0, 0xa

    .line 14
    if-ge p1, v0, :cond_1

    .line 16
    move p1, v0

    .line 18
    :cond_1
    new-array p1, p1, [Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 21
    return-void

    .line 23
    :cond_2
    array-length v1, v0

    .line 24
    shr-int/lit8 v2, v1, 0x1

    .line 25
    add-int/2addr v1, v2

    .line 27
    sub-int v2, v1, p1

    .line 28
    if-gez v2, :cond_3

    .line 30
    move v1, p1

    .line 32
    :cond_3
    const v2, 0x7ffffff7

    .line 33
    sub-int v3, v1, v2

    .line 36
    if-lez v3, :cond_5

    .line 38
    if-le p1, v2, :cond_4

    .line 40
    const v1, 0x7fffffff

    .line 42
    goto :goto_0

    .line 45
    :cond_4
    move v1, v2

    .line 46
    :cond_5
    :goto_0
    new-array p1, v1, [Ljava/lang/Object;

    .line 47
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 49
    array-length v2, v0

    .line 51
    sub-int/2addr v2, v1

    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-static {v0, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 57
    array-length v1, v0

    .line 59
    iget v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 60
    sub-int/2addr v1, v2

    .line 62
    sub-int/2addr v2, v3

    .line 63
    invoke-static {v0, v3, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iput v3, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 67
    iput-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 69
    return-void

    .line 71
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 72
    const-string p1, "Deque is too big."

    .line 74
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 76
    throw p0
    .line 79
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 2
    move-result v0

    .line 5
    if-ltz p1, :cond_0

    .line 6
    if-ge p1, v0, :cond_0

    .line 8
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 10
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 12
    add-int/2addr v1, p1

    .line 14
    invoke-virtual {p0, v1}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    .line 15
    move-result p0

    .line 18
    aget-object p0, v0, p0

    .line 19
    return-object p0

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 22
    const-string v1, "index: "

    .line 24
    const-string v2, ", size: "

    .line 26
    invoke-static {v1, p1, v2, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p0
    .line 35
.end method

.method public final getSize()I
    .locals 0

    .line 1
    iget p0, p0, Lkotlin/collections/ArrayDeque;->size:I

    .line 2
    return p0
    .line 4
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 4

    .line 1
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 2
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 4
    move-result v1

    .line 7
    add-int/2addr v1, v0

    .line 8
    invoke-virtual {p0, v1}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    .line 9
    move-result v0

    .line 12
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 13
    if-ge v1, v0, :cond_1

    .line 15
    :goto_0
    if-ge v1, v0, :cond_5

    .line 17
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 19
    aget-object v2, v2, v1

    .line 21
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    iget p0, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 29
    :goto_1
    sub-int/2addr v1, p0

    .line 31
    return v1

    .line 32
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    if-lt v1, v0, :cond_5

    .line 36
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 38
    array-length v2, v2

    .line 40
    :goto_2
    if-ge v1, v2, :cond_3

    .line 41
    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 43
    aget-object v3, v3, v1

    .line 45
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    move-result v3

    .line 50
    if-eqz v3, :cond_2

    .line 51
    iget p0, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 53
    goto :goto_1

    .line 55
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 56
    goto :goto_2

    .line 58
    :cond_3
    const/4 v1, 0x0

    .line 59
    :goto_3
    if-ge v1, v0, :cond_5

    .line 60
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 62
    aget-object v2, v2, v1

    .line 64
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    move-result v2

    .line 69
    if-eqz v2, :cond_4

    .line 70
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 72
    array-length p1, p1

    .line 74
    add-int/2addr v1, p1

    .line 75
    iget p0, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 76
    goto :goto_1

    .line 78
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 79
    goto :goto_3

    .line 81
    :cond_5
    const/4 p0, -0x1

    .line 82
    return p0
    .line 83
.end method

.method public final isEmpty()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 2
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
    .line 11
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 4

    .line 1
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 2
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 4
    move-result v1

    .line 7
    add-int/2addr v1, v0

    .line 8
    invoke-virtual {p0, v1}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    .line 9
    move-result v0

    .line 12
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 13
    const/4 v2, -0x1

    .line 15
    if-ge v1, v0, :cond_1

    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 18
    if-gt v1, v0, :cond_5

    .line 20
    :goto_0
    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 22
    aget-object v3, v3, v0

    .line 24
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    iget p0, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 32
    :goto_1
    sub-int/2addr v0, p0

    .line 34
    return v0

    .line 35
    :cond_0
    if-eq v0, v1, :cond_5

    .line 36
    add-int/lit8 v0, v0, -0x1

    .line 38
    goto :goto_0

    .line 40
    :cond_1
    if-le v1, v0, :cond_5

    .line 41
    add-int/lit8 v0, v0, -0x1

    .line 43
    :goto_2
    if-ge v2, v0, :cond_3

    .line 45
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 47
    aget-object v1, v1, v0

    .line 49
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 57
    array-length p1, p1

    .line 59
    add-int/2addr v0, p1

    .line 60
    iget p0, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 61
    goto :goto_1

    .line 63
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 64
    goto :goto_2

    .line 66
    :cond_3
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 67
    array-length v0, v0

    .line 69
    add-int/2addr v0, v2

    .line 70
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 71
    if-gt v1, v0, :cond_5

    .line 73
    :goto_3
    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 75
    aget-object v3, v3, v0

    .line 77
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    move-result v3

    .line 82
    if-eqz v3, :cond_4

    .line 83
    iget p0, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 85
    goto :goto_1

    .line 87
    :cond_4
    if-eq v0, v1, :cond_5

    .line 88
    add-int/lit8 v0, v0, -0x1

    .line 90
    goto :goto_3

    .line 92
    :cond_5
    return v2
    .line 93
.end method

.method public final positiveMod(I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 2
    array-length v0, p0

    .line 4
    if-lt p1, v0, :cond_0

    .line 5
    array-length p0, p0

    .line 7
    sub-int/2addr p1, p0

    .line 8
    :cond_0
    return p1
    .line 9
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->indexOf(Ljava/lang/Object;)I

    .line 2
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->removeAt(I)Ljava/lang/Object;

    .line 11
    const/4 p0, 0x1

    .line 14
    return p0
    .line 15
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 11

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_b

    .line 7
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 9
    array-length v0, v0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-nez v0, :cond_0

    .line 13
    move v0, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v1

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    goto/16 :goto_8

    .line 20
    :cond_1
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 22
    iget v3, p0, Lkotlin/collections/ArrayDeque;->size:I

    .line 24
    add-int/2addr v3, v0

    .line 26
    invoke-virtual {p0, v3}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    .line 27
    move-result v0

    .line 30
    iget v3, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 31
    const/4 v4, 0x0

    .line 33
    if-ge v3, v0, :cond_4

    .line 34
    move v5, v3

    .line 36
    :goto_1
    if-ge v3, v0, :cond_3

    .line 37
    iget-object v6, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 39
    aget-object v6, v6, v3

    .line 41
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 43
    move-result v7

    .line 46
    xor-int/2addr v7, v2

    .line 47
    if-eqz v7, :cond_2

    .line 48
    iget-object v7, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 50
    add-int/lit8 v8, v5, 0x1

    .line 52
    aput-object v6, v7, v5

    .line 54
    move v5, v8

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    move v1, v2

    .line 58
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 59
    goto :goto_1

    .line 61
    :cond_3
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 62
    invoke-static {p1, v5, v0, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 64
    goto :goto_7

    .line 67
    :cond_4
    iget-object v5, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 68
    array-length v5, v5

    .line 70
    move v7, v1

    .line 71
    move v6, v3

    .line 72
    :goto_3
    if-ge v3, v5, :cond_6

    .line 73
    iget-object v8, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 75
    aget-object v9, v8, v3

    .line 77
    aput-object v4, v8, v3

    .line 79
    invoke-interface {p1, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 81
    move-result v8

    .line 84
    xor-int/2addr v8, v2

    .line 85
    if-eqz v8, :cond_5

    .line 86
    iget-object v8, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 88
    add-int/lit8 v10, v6, 0x1

    .line 90
    aput-object v9, v8, v6

    .line 92
    move v6, v10

    .line 94
    goto :goto_4

    .line 95
    :cond_5
    move v7, v2

    .line 96
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 97
    goto :goto_3

    .line 99
    :cond_6
    invoke-virtual {p0, v6}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    .line 100
    move-result v3

    .line 103
    move v5, v3

    .line 104
    move v3, v1

    .line 105
    :goto_5
    if-ge v3, v0, :cond_9

    .line 106
    iget-object v6, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 108
    aget-object v8, v6, v3

    .line 110
    aput-object v4, v6, v3

    .line 112
    invoke-interface {p1, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 114
    move-result v6

    .line 117
    xor-int/2addr v6, v2

    .line 118
    if-eqz v6, :cond_8

    .line 119
    iget-object v6, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 121
    aput-object v8, v6, v5

    .line 123
    array-length v6, v6

    .line 125
    add-int/lit8 v6, v6, -0x1

    .line 126
    if-ne v5, v6, :cond_7

    .line 128
    move v5, v1

    .line 130
    goto :goto_6

    .line 131
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 132
    goto :goto_6

    .line 134
    :cond_8
    move v7, v2

    .line 135
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 136
    goto :goto_5

    .line 138
    :cond_9
    move v1, v7

    .line 139
    :goto_7
    if-eqz v1, :cond_b

    .line 140
    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 142
    sub-int/2addr v5, p1

    .line 144
    if-gez v5, :cond_a

    .line 145
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 147
    array-length p1, p1

    .line 149
    add-int/2addr v5, p1

    .line 150
    :cond_a
    iput v5, p0, Lkotlin/collections/ArrayDeque;->size:I

    .line 151
    :cond_b
    :goto_8
    return v1
    .line 153
.end method

.method public final removeAt(I)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lkotlin/collections/ArrayDeque;->size:I

    .line 2
    if-ltz p1, :cond_9

    .line 4
    if-ge p1, v0, :cond_9

    .line 6
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    .line 8
    move-result v0

    .line 11
    const-string v1, "ArrayDeque is empty."

    .line 12
    const/4 v2, 0x0

    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 17
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 23
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    .line 25
    move-result v0

    .line 28
    add-int/2addr v0, p1

    .line 29
    invoke-virtual {p0, v0}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    .line 30
    move-result p1

    .line 33
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 34
    aget-object v1, v0, p1

    .line 36
    aput-object v2, v0, p1

    .line 38
    iget p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    .line 40
    add-int/lit8 p1, p1, -0x1

    .line 42
    iput p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    .line 44
    return-object v1

    .line 46
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 47
    invoke-direct {p0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p0

    .line 52
    :cond_1
    const/4 v0, 0x0

    .line 53
    const/4 v3, 0x1

    .line 54
    if-nez p1, :cond_4

    .line 55
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 57
    move-result p1

    .line 60
    if-nez p1, :cond_3

    .line 61
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 63
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 65
    aget-object v3, p1, v1

    .line 67
    aput-object v2, p1, v1

    .line 69
    array-length p1, p1

    .line 71
    add-int/lit8 p1, p1, -0x1

    .line 72
    if-ne v1, p1, :cond_2

    .line 74
    goto :goto_0

    .line 76
    :cond_2
    add-int/lit8 v0, v1, 0x1

    .line 77
    :goto_0
    iput v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 79
    iget p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    .line 81
    add-int/lit8 p1, p1, -0x1

    .line 83
    iput p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    .line 85
    return-object v3

    .line 87
    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 88
    invoke-direct {p0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 90
    throw p0

    .line 93
    :cond_4
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 94
    add-int/2addr v1, p1

    .line 96
    invoke-virtual {p0, v1}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    .line 97
    move-result v1

    .line 100
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 101
    aget-object v5, v4, v1

    .line 103
    iget v6, p0, Lkotlin/collections/ArrayDeque;->size:I

    .line 105
    shr-int/2addr v6, v3

    .line 107
    if-ge p1, v6, :cond_7

    .line 108
    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 110
    if-lt v1, p1, :cond_5

    .line 112
    add-int/lit8 v6, p1, 0x1

    .line 114
    sub-int/2addr v1, p1

    .line 116
    invoke-static {v4, p1, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    goto :goto_1

    .line 120
    :cond_5
    sub-int/2addr v1, v0

    .line 121
    invoke-static {v4, v0, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 125
    array-length v1, p1

    .line 127
    sub-int/2addr v1, v3

    .line 128
    aget-object v1, p1, v1

    .line 129
    aput-object v1, p1, v0

    .line 131
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 133
    add-int/lit8 v4, v1, 0x1

    .line 135
    array-length v6, p1

    .line 137
    sub-int/2addr v6, v3

    .line 138
    sub-int/2addr v6, v1

    .line 139
    invoke-static {p1, v1, p1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    :goto_1
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 143
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 145
    aput-object v2, p1, v1

    .line 147
    array-length p1, p1

    .line 149
    add-int/lit8 p1, p1, -0x1

    .line 150
    if-ne v1, p1, :cond_6

    .line 152
    goto :goto_2

    .line 154
    :cond_6
    add-int/lit8 v0, v1, 0x1

    .line 155
    :goto_2
    iput v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 157
    goto :goto_4

    .line 159
    :cond_7
    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 160
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    .line 162
    move-result v4

    .line 165
    add-int/2addr v4, p1

    .line 166
    invoke-virtual {p0, v4}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    .line 167
    move-result p1

    .line 170
    if-gt v1, p1, :cond_8

    .line 171
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 173
    add-int/lit8 v4, v1, 0x1

    .line 175
    add-int/lit8 v6, p1, 0x1

    .line 177
    sub-int/2addr v6, v4

    .line 179
    invoke-static {v0, v4, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    goto :goto_3

    .line 183
    :cond_8
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 184
    add-int/lit8 v6, v1, 0x1

    .line 186
    array-length v7, v4

    .line 188
    sub-int/2addr v7, v6

    .line 189
    invoke-static {v4, v6, v4, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 193
    array-length v4, v1

    .line 195
    sub-int/2addr v4, v3

    .line 196
    aget-object v6, v1, v0

    .line 197
    aput-object v6, v1, v4

    .line 199
    add-int/lit8 v4, p1, 0x1

    .line 201
    sub-int/2addr v4, v3

    .line 203
    invoke-static {v1, v3, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    :goto_3
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 207
    aput-object v2, v0, p1

    .line 209
    :goto_4
    iget p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    .line 211
    sub-int/2addr p1, v3

    .line 213
    iput p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    .line 214
    return-object v5

    .line 216
    :cond_9
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 217
    const-string v1, "index: "

    .line 219
    const-string v2, ", size: "

    .line 221
    invoke-static {v1, p1, v2, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 223
    move-result-object p1

    .line 226
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 227
    throw p0
    .line 230
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 11

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_b

    .line 7
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 9
    array-length v0, v0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-nez v0, :cond_0

    .line 13
    move v0, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v1

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    goto/16 :goto_8

    .line 20
    :cond_1
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 22
    iget v3, p0, Lkotlin/collections/ArrayDeque;->size:I

    .line 24
    add-int/2addr v3, v0

    .line 26
    invoke-virtual {p0, v3}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    .line 27
    move-result v0

    .line 30
    iget v3, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 31
    const/4 v4, 0x0

    .line 33
    if-ge v3, v0, :cond_4

    .line 34
    move v5, v3

    .line 36
    :goto_1
    if-ge v3, v0, :cond_3

    .line 37
    iget-object v6, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 39
    aget-object v6, v6, v3

    .line 41
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 43
    move-result v7

    .line 46
    if-eqz v7, :cond_2

    .line 47
    iget-object v7, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 49
    add-int/lit8 v8, v5, 0x1

    .line 51
    aput-object v6, v7, v5

    .line 53
    move v5, v8

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    move v1, v2

    .line 57
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 58
    goto :goto_1

    .line 60
    :cond_3
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 61
    invoke-static {p1, v5, v0, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 63
    goto :goto_7

    .line 66
    :cond_4
    iget-object v5, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 67
    array-length v5, v5

    .line 69
    move v7, v1

    .line 70
    move v6, v3

    .line 71
    :goto_3
    if-ge v3, v5, :cond_6

    .line 72
    iget-object v8, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 74
    aget-object v9, v8, v3

    .line 76
    aput-object v4, v8, v3

    .line 78
    invoke-interface {p1, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 80
    move-result v8

    .line 83
    if-eqz v8, :cond_5

    .line 84
    iget-object v8, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 86
    add-int/lit8 v10, v6, 0x1

    .line 88
    aput-object v9, v8, v6

    .line 90
    move v6, v10

    .line 92
    goto :goto_4

    .line 93
    :cond_5
    move v7, v2

    .line 94
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 95
    goto :goto_3

    .line 97
    :cond_6
    invoke-virtual {p0, v6}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    .line 98
    move-result v3

    .line 101
    move v5, v3

    .line 102
    move v3, v1

    .line 103
    :goto_5
    if-ge v3, v0, :cond_9

    .line 104
    iget-object v6, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 106
    aget-object v8, v6, v3

    .line 108
    aput-object v4, v6, v3

    .line 110
    invoke-interface {p1, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 112
    move-result v6

    .line 115
    if-eqz v6, :cond_8

    .line 116
    iget-object v6, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 118
    aput-object v8, v6, v5

    .line 120
    array-length v6, v6

    .line 122
    add-int/lit8 v6, v6, -0x1

    .line 123
    if-ne v5, v6, :cond_7

    .line 125
    move v5, v1

    .line 127
    goto :goto_6

    .line 128
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 129
    goto :goto_6

    .line 131
    :cond_8
    move v7, v2

    .line 132
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 133
    goto :goto_5

    .line 135
    :cond_9
    move v1, v7

    .line 136
    :goto_7
    if-eqz v1, :cond_b

    .line 137
    iget p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 139
    sub-int/2addr v5, p1

    .line 141
    if-gez v5, :cond_a

    .line 142
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 144
    array-length p1, p1

    .line 146
    add-int/2addr v5, p1

    .line 147
    :cond_a
    iput v5, p0, Lkotlin/collections/ArrayDeque;->size:I

    .line 148
    :cond_b
    :goto_8
    return v1
    .line 150
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    .line 2
    move-result v0

    .line 5
    if-ltz p1, :cond_0

    .line 6
    if-ge p1, v0, :cond_0

    .line 8
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 10
    add-int/2addr v0, p1

    .line 12
    invoke-virtual {p0, v0}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    .line 13
    move-result p1

    .line 16
    iget-object p0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 17
    aget-object v0, p0, p1

    .line 19
    aput-object p2, p0, p1

    .line 21
    return-object v0

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 24
    const-string p2, "index: "

    .line 26
    const-string v1, ", size: "

    .line 28
    invoke-static {p2, p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 33
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p0
    .line 37
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lkotlin/collections/ArrayDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6

    .line 3
    array-length v0, p1

    .line 4
    iget v1, p0, Lkotlin/collections/ArrayDeque;->size:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 6
    :goto_0
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 7
    iget v1, p0, Lkotlin/collections/ArrayDeque;->size:I

    add-int/2addr v1, v0

    .line 8
    invoke-virtual {p0, v1}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    move-result v4

    .line 9
    iget v3, p0, Lkotlin/collections/ArrayDeque;->head:I

    if-ge v3, v4, :cond_1

    .line 10
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v5, 0x2

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIII)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    array-length v2, v0

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    .line 13
    invoke-static {v0, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v1, v0

    iget v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    sub-int/2addr v1, v2

    sub-int/2addr v4, v3

    .line 15
    invoke-static {v0, v3, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    :cond_2
    :goto_1
    array-length v0, p1

    .line 17
    iget p0, p0, Lkotlin/collections/ArrayDeque;->size:I

    if-le v0, p0, :cond_3

    const/4 v0, 0x0

    .line 18
    aput-object v0, p1, p0

    :cond_3
    return-object p1
.end method
